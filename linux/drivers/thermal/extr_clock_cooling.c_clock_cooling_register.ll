; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_clock_cooling.c_clock_cooling_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_clock_cooling.c_clock_cooling_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_cooling_device = type { i32 }
%struct.device = type { i32 }
%struct.clock_cooling_device = type { i32, %struct.TYPE_2__, %struct.thermal_cooling_device*, i32, i64, i32, %struct.thermal_cooling_device*, %struct.device*, i32 }
%struct.TYPE_2__ = type { i32 }

@THERMAL_NAME_LENGTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@clock_ida = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"thermal-clock-%d\00", align 1
@clock_cooling_ops = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@clock_cooling_clock_notifier = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.thermal_cooling_device* @clock_cooling_register(%struct.device* %0, i8* %1) #0 {
  %3 = alloca %struct.thermal_cooling_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.thermal_cooling_device*, align 8
  %7 = alloca %struct.clock_cooling_device*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.clock_cooling_device* null, %struct.clock_cooling_device** %7, align 8
  %12 = load i32, i32* @THERMAL_NAME_LENGTH, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i8, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.device*, %struct.device** %4, align 8
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.clock_cooling_device* @devm_kzalloc(%struct.device* %16, i32 64, i32 %17)
  store %struct.clock_cooling_device* %18, %struct.clock_cooling_device** %7, align 8
  %19 = load %struct.clock_cooling_device*, %struct.clock_cooling_device** %7, align 8
  %20 = icmp ne %struct.clock_cooling_device* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.thermal_cooling_device* @ERR_PTR(i32 %23)
  store %struct.thermal_cooling_device* %24, %struct.thermal_cooling_device** %3, align 8
  store i32 1, i32* %11, align 4
  br label %112

25:                                               ; preds = %2
  %26 = load %struct.clock_cooling_device*, %struct.clock_cooling_device** %7, align 8
  %27 = getelementptr inbounds %struct.clock_cooling_device, %struct.clock_cooling_device* %26, i32 0, i32 8
  %28 = call i32 @mutex_init(i32* %27)
  %29 = load %struct.device*, %struct.device** %4, align 8
  %30 = load %struct.clock_cooling_device*, %struct.clock_cooling_device** %7, align 8
  %31 = getelementptr inbounds %struct.clock_cooling_device, %struct.clock_cooling_device* %30, i32 0, i32 7
  store %struct.device* %29, %struct.device** %31, align 8
  %32 = load %struct.device*, %struct.device** %4, align 8
  %33 = load i8*, i8** %5, align 8
  %34 = call %struct.thermal_cooling_device* @devm_clk_get(%struct.device* %32, i8* %33)
  %35 = load %struct.clock_cooling_device*, %struct.clock_cooling_device** %7, align 8
  %36 = getelementptr inbounds %struct.clock_cooling_device, %struct.clock_cooling_device* %35, i32 0, i32 2
  store %struct.thermal_cooling_device* %34, %struct.thermal_cooling_device** %36, align 8
  %37 = load %struct.clock_cooling_device*, %struct.clock_cooling_device** %7, align 8
  %38 = getelementptr inbounds %struct.clock_cooling_device, %struct.clock_cooling_device* %37, i32 0, i32 2
  %39 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %38, align 8
  %40 = call i64 @IS_ERR(%struct.thermal_cooling_device* %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %47

42:                                               ; preds = %25
  %43 = load %struct.clock_cooling_device*, %struct.clock_cooling_device** %7, align 8
  %44 = getelementptr inbounds %struct.clock_cooling_device, %struct.clock_cooling_device* %43, i32 0, i32 2
  %45 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %44, align 8
  %46 = call %struct.thermal_cooling_device* @ERR_CAST(%struct.thermal_cooling_device* %45)
  store %struct.thermal_cooling_device* %46, %struct.thermal_cooling_device** %3, align 8
  store i32 1, i32* %11, align 4
  br label %112

47:                                               ; preds = %25
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i32 @ida_simple_get(i32* @clock_ida, i32 0, i32 0, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %47
  %53 = load i32, i32* %10, align 4
  %54 = call %struct.thermal_cooling_device* @ERR_PTR(i32 %53)
  store %struct.thermal_cooling_device* %54, %struct.thermal_cooling_device** %3, align 8
  store i32 1, i32* %11, align 4
  br label %112

55:                                               ; preds = %47
  %56 = load i32, i32* %10, align 4
  %57 = load %struct.clock_cooling_device*, %struct.clock_cooling_device** %7, align 8
  %58 = getelementptr inbounds %struct.clock_cooling_device, %struct.clock_cooling_device* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 8
  %59 = trunc i64 %13 to i32
  %60 = load %struct.clock_cooling_device*, %struct.clock_cooling_device** %7, align 8
  %61 = getelementptr inbounds %struct.clock_cooling_device, %struct.clock_cooling_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @snprintf(i8* %15, i32 %59, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load %struct.clock_cooling_device*, %struct.clock_cooling_device** %7, align 8
  %65 = call %struct.thermal_cooling_device* @thermal_cooling_device_register(i8* %15, %struct.clock_cooling_device* %64, i32* @clock_cooling_ops)
  store %struct.thermal_cooling_device* %65, %struct.thermal_cooling_device** %6, align 8
  %66 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %6, align 8
  %67 = call i64 @IS_ERR(%struct.thermal_cooling_device* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %77

69:                                               ; preds = %55
  %70 = load %struct.clock_cooling_device*, %struct.clock_cooling_device** %7, align 8
  %71 = getelementptr inbounds %struct.clock_cooling_device, %struct.clock_cooling_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @ida_simple_remove(i32* @clock_ida, i32 %72)
  %74 = load i32, i32* @EINVAL, align 4
  %75 = sub nsw i32 0, %74
  %76 = call %struct.thermal_cooling_device* @ERR_PTR(i32 %75)
  store %struct.thermal_cooling_device* %76, %struct.thermal_cooling_device** %3, align 8
  store i32 1, i32* %11, align 4
  br label %112

77:                                               ; preds = %55
  %78 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %6, align 8
  %79 = load %struct.clock_cooling_device*, %struct.clock_cooling_device** %7, align 8
  %80 = getelementptr inbounds %struct.clock_cooling_device, %struct.clock_cooling_device* %79, i32 0, i32 6
  store %struct.thermal_cooling_device* %78, %struct.thermal_cooling_device** %80, align 8
  %81 = load i32, i32* @clock_cooling_clock_notifier, align 4
  %82 = load %struct.clock_cooling_device*, %struct.clock_cooling_device** %7, align 8
  %83 = getelementptr inbounds %struct.clock_cooling_device, %struct.clock_cooling_device* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 4
  %85 = load %struct.device*, %struct.device** %4, align 8
  %86 = load %struct.clock_cooling_device*, %struct.clock_cooling_device** %7, align 8
  %87 = getelementptr inbounds %struct.clock_cooling_device, %struct.clock_cooling_device* %86, i32 0, i32 5
  %88 = call i32 @dev_pm_opp_init_cpufreq_table(%struct.device* %85, i32* %87)
  store i32 %88, i32* %10, align 4
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %77
  %92 = load %struct.clock_cooling_device*, %struct.clock_cooling_device** %7, align 8
  %93 = getelementptr inbounds %struct.clock_cooling_device, %struct.clock_cooling_device* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @ida_simple_remove(i32* @clock_ida, i32 %94)
  %96 = load i32, i32* %10, align 4
  %97 = call %struct.thermal_cooling_device* @ERR_PTR(i32 %96)
  store %struct.thermal_cooling_device* %97, %struct.thermal_cooling_device** %3, align 8
  store i32 1, i32* %11, align 4
  br label %112

98:                                               ; preds = %77
  %99 = load %struct.clock_cooling_device*, %struct.clock_cooling_device** %7, align 8
  %100 = getelementptr inbounds %struct.clock_cooling_device, %struct.clock_cooling_device* %99, i32 0, i32 4
  store i64 0, i64* %100, align 8
  %101 = load %struct.clock_cooling_device*, %struct.clock_cooling_device** %7, align 8
  %102 = call i32 @clock_cooling_get_frequency(%struct.clock_cooling_device* %101, i32 0)
  %103 = load %struct.clock_cooling_device*, %struct.clock_cooling_device** %7, align 8
  %104 = getelementptr inbounds %struct.clock_cooling_device, %struct.clock_cooling_device* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 8
  %105 = load %struct.clock_cooling_device*, %struct.clock_cooling_device** %7, align 8
  %106 = getelementptr inbounds %struct.clock_cooling_device, %struct.clock_cooling_device* %105, i32 0, i32 2
  %107 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %106, align 8
  %108 = load %struct.clock_cooling_device*, %struct.clock_cooling_device** %7, align 8
  %109 = getelementptr inbounds %struct.clock_cooling_device, %struct.clock_cooling_device* %108, i32 0, i32 1
  %110 = call i32 @clk_notifier_register(%struct.thermal_cooling_device* %107, %struct.TYPE_2__* %109)
  %111 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %6, align 8
  store %struct.thermal_cooling_device* %111, %struct.thermal_cooling_device** %3, align 8
  store i32 1, i32* %11, align 4
  br label %112

112:                                              ; preds = %98, %91, %69, %52, %42, %21
  %113 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %113)
  %114 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %3, align 8
  ret %struct.thermal_cooling_device* %114
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.clock_cooling_device* @devm_kzalloc(%struct.device*, i32, i32) #2

declare dso_local %struct.thermal_cooling_device* @ERR_PTR(i32) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local %struct.thermal_cooling_device* @devm_clk_get(%struct.device*, i8*) #2

declare dso_local i64 @IS_ERR(%struct.thermal_cooling_device*) #2

declare dso_local %struct.thermal_cooling_device* @ERR_CAST(%struct.thermal_cooling_device*) #2

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local %struct.thermal_cooling_device* @thermal_cooling_device_register(i8*, %struct.clock_cooling_device*, i32*) #2

declare dso_local i32 @ida_simple_remove(i32*, i32) #2

declare dso_local i32 @dev_pm_opp_init_cpufreq_table(%struct.device*, i32*) #2

declare dso_local i32 @clock_cooling_get_frequency(%struct.clock_cooling_device*, i32) #2

declare dso_local i32 @clk_notifier_register(%struct.thermal_cooling_device*, %struct.TYPE_2__*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
