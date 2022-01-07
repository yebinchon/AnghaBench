; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_twl4030_charger.c_twl4030_bci_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_twl4030_charger.c_twl4030_bci_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twl4030_bci = type { i32, i32, i32 }

@TWL4030_MODULE_INTERRUPTS = common dso_local global i32 0, align 4
@TWL4030_INTERRUPTS_BCIISR1A = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@TWL4030_INTERRUPTS_BCIISR2A = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"BCI irq %02x %02x\0A\00", align 1
@TWL4030_ICHGLOW = common dso_local global i32 0, align 4
@TWL4030_ICHGEOC = common dso_local global i32 0, align 4
@TWL4030_TBATOR2 = common dso_local global i32 0, align 4
@TWL4030_TBATOR1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"battery temperature out of range\0A\00", align 1
@TWL4030_BATSTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"battery disconnected\0A\00", align 1
@TWL4030_VBATOV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [18 x i8] c"VBAT overvoltage\0A\00", align 1
@TWL4030_VBUSOV = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [18 x i8] c"VBUS overvoltage\0A\00", align 1
@TWL4030_ACCHGOV = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [24 x i8] c"Ac charger overvoltage\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @twl4030_bci_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl4030_bci_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.twl4030_bci*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.twl4030_bci*
  store %struct.twl4030_bci* %11, %struct.twl4030_bci** %6, align 8
  %12 = load i32, i32* @TWL4030_MODULE_INTERRUPTS, align 4
  %13 = load i32, i32* @TWL4030_INTERRUPTS_BCIISR1A, align 4
  %14 = call i32 @twl_i2c_read_u8(i32 %12, i32* %7, i32 %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %18, i32* %3, align 4
  br label %105

19:                                               ; preds = %2
  %20 = load i32, i32* @TWL4030_MODULE_INTERRUPTS, align 4
  %21 = load i32, i32* @TWL4030_INTERRUPTS_BCIISR2A, align 4
  %22 = call i32 @twl_i2c_read_u8(i32 %20, i32* %8, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %19
  %26 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %26, i32* %3, align 4
  br label %105

27:                                               ; preds = %19
  %28 = load %struct.twl4030_bci*, %struct.twl4030_bci** %6, align 8
  %29 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @dev_dbg(i32 %30, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @TWL4030_ICHGLOW, align 4
  %36 = load i32, i32* @TWL4030_ICHGEOC, align 4
  %37 = or i32 %35, %36
  %38 = and i32 %34, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %27
  %41 = load %struct.twl4030_bci*, %struct.twl4030_bci** %6, align 8
  %42 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @power_supply_changed(i32 %43)
  %45 = load %struct.twl4030_bci*, %struct.twl4030_bci** %6, align 8
  %46 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @power_supply_changed(i32 %47)
  br label %49

49:                                               ; preds = %40, %27
  %50 = load %struct.twl4030_bci*, %struct.twl4030_bci** %6, align 8
  %51 = call i32 @twl4030_charger_update_current(%struct.twl4030_bci* %50)
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @TWL4030_TBATOR2, align 4
  %54 = load i32, i32* @TWL4030_TBATOR1, align 4
  %55 = or i32 %53, %54
  %56 = and i32 %52, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %49
  %59 = load %struct.twl4030_bci*, %struct.twl4030_bci** %6, align 8
  %60 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @dev_warn(i32 %61, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %63

63:                                               ; preds = %58, %49
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* @TWL4030_BATSTS, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.twl4030_bci*, %struct.twl4030_bci** %6, align 8
  %70 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @dev_crit(i32 %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  br label %73

73:                                               ; preds = %68, %63
  %74 = load i32, i32* %8, align 4
  %75 = load i32, i32* @TWL4030_VBATOV, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.twl4030_bci*, %struct.twl4030_bci** %6, align 8
  %80 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @dev_crit(i32 %81, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  br label %83

83:                                               ; preds = %78, %73
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* @TWL4030_VBUSOV, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %93

88:                                               ; preds = %83
  %89 = load %struct.twl4030_bci*, %struct.twl4030_bci** %6, align 8
  %90 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @dev_crit(i32 %91, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  br label %93

93:                                               ; preds = %88, %83
  %94 = load i32, i32* %8, align 4
  %95 = load i32, i32* @TWL4030_ACCHGOV, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %103

98:                                               ; preds = %93
  %99 = load %struct.twl4030_bci*, %struct.twl4030_bci** %6, align 8
  %100 = getelementptr inbounds %struct.twl4030_bci, %struct.twl4030_bci* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = call i32 @dev_crit(i32 %101, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %103

103:                                              ; preds = %98, %93
  %104 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %103, %25, %17
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @twl_i2c_read_u8(i32, i32*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @power_supply_changed(i32) #1

declare dso_local i32 @twl4030_charger_update_current(%struct.twl4030_bci*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @dev_crit(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
