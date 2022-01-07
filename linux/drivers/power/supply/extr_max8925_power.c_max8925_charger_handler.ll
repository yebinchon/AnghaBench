; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_max8925_power.c_max8925_charger_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_max8925_power.c_max8925_charger_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max8925_power_info = type { i32, %struct.max8925_chip* }
%struct.max8925_chip = type { i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"Adapter inserted\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"Adapter removed\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"Battery temperature is out of range\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Error detection\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"Battery temperature is in range\0A\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Sys power is too low\0A\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"Sys power is above low threshold\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"Charging is done\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"Charging in top-off mode\0A\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"Safe timer is expired\0A\00", align 1
@.str.10 = private unnamed_addr constant [18 x i8] c"Charger is reset\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @max8925_charger_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max8925_charger_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.max8925_power_info*, align 8
  %6 = alloca %struct.max8925_chip*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.max8925_power_info*
  store %struct.max8925_power_info* %8, %struct.max8925_power_info** %5, align 8
  %9 = load %struct.max8925_power_info*, %struct.max8925_power_info** %5, align 8
  %10 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %9, i32 0, i32 1
  %11 = load %struct.max8925_chip*, %struct.max8925_chip** %10, align 8
  store %struct.max8925_chip* %11, %struct.max8925_chip** %6, align 8
  %12 = load i32, i32* %3, align 4
  %13 = load %struct.max8925_chip*, %struct.max8925_chip** %6, align 8
  %14 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 %12, %15
  switch i32 %16, label %88 [
    i32 136, label %17
    i32 138, label %26
    i32 131, label %35
    i32 137, label %40
    i32 130, label %47
    i32 132, label %52
    i32 133, label %57
    i32 135, label %62
    i32 128, label %69
    i32 129, label %74
    i32 134, label %81
  ]

17:                                               ; preds = %2
  %18 = load %struct.max8925_power_info*, %struct.max8925_power_info** %5, align 8
  %19 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %18, i32 0, i32 0
  store i32 1, i32* %19, align 8
  %20 = load %struct.max8925_power_info*, %struct.max8925_power_info** %5, align 8
  %21 = call i32 @__set_charger(%struct.max8925_power_info* %20, i32 1)
  %22 = load %struct.max8925_chip*, %struct.max8925_chip** %6, align 8
  %23 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_dbg(i32 %24, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  br label %88

26:                                               ; preds = %2
  %27 = load %struct.max8925_power_info*, %struct.max8925_power_info** %5, align 8
  %28 = getelementptr inbounds %struct.max8925_power_info, %struct.max8925_power_info* %27, i32 0, i32 0
  store i32 0, i32* %28, align 8
  %29 = load %struct.max8925_power_info*, %struct.max8925_power_info** %5, align 8
  %30 = call i32 @__set_charger(%struct.max8925_power_info* %29, i32 0)
  %31 = load %struct.max8925_chip*, %struct.max8925_chip** %6, align 8
  %32 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_dbg(i32 %33, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  br label %88

35:                                               ; preds = %2
  %36 = load %struct.max8925_chip*, %struct.max8925_chip** %6, align 8
  %37 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @dev_dbg(i32 %38, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  br label %40

40:                                               ; preds = %2, %35
  %41 = load %struct.max8925_chip*, %struct.max8925_chip** %6, align 8
  %42 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @dev_dbg(i32 %43, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0))
  %45 = load %struct.max8925_power_info*, %struct.max8925_power_info** %5, align 8
  %46 = call i32 @__set_charger(%struct.max8925_power_info* %45, i32 0)
  br label %88

47:                                               ; preds = %2
  %48 = load %struct.max8925_chip*, %struct.max8925_chip** %6, align 8
  %49 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @dev_dbg(i32 %50, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.4, i64 0, i64 0))
  br label %88

52:                                               ; preds = %2
  %53 = load %struct.max8925_chip*, %struct.max8925_chip** %6, align 8
  %54 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_info(i32 %55, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0))
  br label %88

57:                                               ; preds = %2
  %58 = load %struct.max8925_chip*, %struct.max8925_chip** %6, align 8
  %59 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_dbg(i32 %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  br label %88

62:                                               ; preds = %2
  %63 = load %struct.max8925_power_info*, %struct.max8925_power_info** %5, align 8
  %64 = call i32 @__set_charger(%struct.max8925_power_info* %63, i32 0)
  %65 = load %struct.max8925_chip*, %struct.max8925_chip** %6, align 8
  %66 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @dev_dbg(i32 %67, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  br label %88

69:                                               ; preds = %2
  %70 = load %struct.max8925_chip*, %struct.max8925_chip** %6, align 8
  %71 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = call i32 @dev_dbg(i32 %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  br label %88

74:                                               ; preds = %2
  %75 = load %struct.max8925_power_info*, %struct.max8925_power_info** %5, align 8
  %76 = call i32 @__set_charger(%struct.max8925_power_info* %75, i32 0)
  %77 = load %struct.max8925_chip*, %struct.max8925_chip** %6, align 8
  %78 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @dev_dbg(i32 %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  br label %88

81:                                               ; preds = %2
  %82 = load %struct.max8925_power_info*, %struct.max8925_power_info** %5, align 8
  %83 = call i32 @__set_charger(%struct.max8925_power_info* %82, i32 0)
  %84 = load %struct.max8925_chip*, %struct.max8925_chip** %6, align 8
  %85 = getelementptr inbounds %struct.max8925_chip, %struct.max8925_chip* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dev_dbg(i32 %86, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.10, i64 0, i64 0))
  br label %88

88:                                               ; preds = %2, %81, %74, %69, %62, %57, %52, %47, %40, %26, %17
  %89 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %89
}

declare dso_local i32 @__set_charger(%struct.max8925_power_info*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @dev_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
