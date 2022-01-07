; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_rt9455_charger.c_rt9455_irq_handler_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_rt9455_charger.c_rt9455_irq_handler_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt9455_info = type { i64, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.device }
%struct.device = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Interrupt is not for RT9455 charger\0A\00", align 1
@F_STAT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Failed to read STAT bits\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [22 x i8] c"Charger status is %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"Failed to handle IRQ1 register\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Failed to handle IRQ2 register\0A\00", align 1
@.str.5 = private unnamed_addr constant [32 x i8] c"Failed to handle IRQ3 register\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @rt9455_irq_handler_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt9455_irq_handler_thread(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rt9455_info*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.rt9455_info*
  store %struct.rt9455_info* %13, %struct.rt9455_info** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load %struct.rt9455_info*, %struct.rt9455_info** %6, align 8
  %15 = icmp ne %struct.rt9455_info* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @IRQ_NONE, align 4
  store i32 %17, i32* %3, align 4
  br label %95

18:                                               ; preds = %2
  %19 = load %struct.rt9455_info*, %struct.rt9455_info** %6, align 8
  %20 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  store %struct.device* %22, %struct.device** %7, align 8
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.rt9455_info*, %struct.rt9455_info** %6, align 8
  %25 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %24, i32 0, i32 2
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %23, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %18
  %31 = load %struct.device*, %struct.device** %7, align 8
  %32 = call i32 @dev_err(%struct.device* %31, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @IRQ_NONE, align 4
  store i32 %33, i32* %3, align 4
  br label %95

34:                                               ; preds = %18
  %35 = load %struct.rt9455_info*, %struct.rt9455_info** %6, align 8
  %36 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @F_STAT, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @regmap_field_read(i32 %40, i32* %10)
  store i32 %41, i32* %11, align 4
  %42 = load i32, i32* %11, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %34
  %45 = load %struct.device*, %struct.device** %7, align 8
  %46 = call i32 @dev_err(%struct.device* %45, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %47 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %47, i32* %3, align 4
  br label %95

48:                                               ; preds = %34
  %49 = load %struct.device*, %struct.device** %7, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @dev_dbg(%struct.device* %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0), i32 %50)
  %52 = load %struct.rt9455_info*, %struct.rt9455_info** %6, align 8
  %53 = call i32 @rt9455_irq_handler_check_irq1_register(%struct.rt9455_info* %52, i32* %9, i32* %8)
  store i32 %53, i32* %11, align 4
  %54 = load i32, i32* %11, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %48
  %57 = load %struct.device*, %struct.device** %7, align 8
  %58 = call i32 @dev_err(%struct.device* %57, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  %59 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %59, i32* %3, align 4
  br label %95

60:                                               ; preds = %48
  %61 = load %struct.rt9455_info*, %struct.rt9455_info** %6, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @rt9455_irq_handler_check_irq2_register(%struct.rt9455_info* %61, i32 %62, i32* %8)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load %struct.device*, %struct.device** %7, align 8
  %68 = call i32 @dev_err(%struct.device* %67, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %69 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %69, i32* %3, align 4
  br label %95

70:                                               ; preds = %60
  %71 = load %struct.rt9455_info*, %struct.rt9455_info** %6, align 8
  %72 = call i32 @rt9455_irq_handler_check_irq3_register(%struct.rt9455_info* %71, i32* %8)
  store i32 %72, i32* %11, align 4
  %73 = load i32, i32* %11, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %70
  %76 = load %struct.device*, %struct.device** %7, align 8
  %77 = call i32 @dev_err(%struct.device* %76, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %78 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %78, i32* %3, align 4
  br label %95

79:                                               ; preds = %70
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %93

82:                                               ; preds = %79
  %83 = load %struct.rt9455_info*, %struct.rt9455_info** %6, align 8
  %84 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %82
  %88 = load %struct.rt9455_info*, %struct.rt9455_info** %6, align 8
  %89 = getelementptr inbounds %struct.rt9455_info, %struct.rt9455_info* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @power_supply_changed(i64 %90)
  br label %92

92:                                               ; preds = %87, %82
  br label %93

93:                                               ; preds = %92, %79
  %94 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %94, i32* %3, align 4
  br label %95

95:                                               ; preds = %93, %75, %66, %56, %44, %30, %16
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @regmap_field_read(i32, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @rt9455_irq_handler_check_irq1_register(%struct.rt9455_info*, i32*, i32*) #1

declare dso_local i32 @rt9455_irq_handler_check_irq2_register(%struct.rt9455_info*, i32, i32*) #1

declare dso_local i32 @rt9455_irq_handler_check_irq3_register(%struct.rt9455_info*, i32*) #1

declare dso_local i32 @power_supply_changed(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
