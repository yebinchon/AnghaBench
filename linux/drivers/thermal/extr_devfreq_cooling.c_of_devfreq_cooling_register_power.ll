; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/extr_devfreq_cooling.c_of_devfreq_cooling_register_power.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/extr_devfreq_cooling.c_of_devfreq_cooling_register_power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.thermal_cooling_device = type { i32 }
%struct.device_node = type { i32 }
%struct.devfreq = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.devfreq_cooling_power = type { i32 }
%struct.devfreq_cooling_device = type { i32, %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device*, %struct.thermal_cooling_device*, %struct.devfreq_cooling_power*, %struct.devfreq* }

@THERMAL_NAME_LENGTH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@devfreq_cooling_get_requested_power = common dso_local global i32 0, align 4
@devfreq_cooling_ops = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@devfreq_cooling_state2power = common dso_local global i32 0, align 4
@devfreq_cooling_power2state = common dso_local global i32 0, align 4
@devfreq_ida = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"thermal-devfreq-%d\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Failed to register devfreq cooling device (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.thermal_cooling_device* @of_devfreq_cooling_register_power(%struct.device_node* %0, %struct.devfreq* %1, %struct.devfreq_cooling_power* %2) #0 {
  %4 = alloca %struct.thermal_cooling_device*, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca %struct.devfreq*, align 8
  %7 = alloca %struct.devfreq_cooling_power*, align 8
  %8 = alloca %struct.thermal_cooling_device*, align 8
  %9 = alloca %struct.devfreq_cooling_device*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store %struct.devfreq* %1, %struct.devfreq** %6, align 8
  store %struct.devfreq_cooling_power* %2, %struct.devfreq_cooling_power** %7, align 8
  %14 = load i32, i32* @THERMAL_NAME_LENGTH, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %10, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %11, align 8
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.devfreq_cooling_device* @kzalloc(i32 48, i32 %18)
  store %struct.devfreq_cooling_device* %19, %struct.devfreq_cooling_device** %9, align 8
  %20 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %9, align 8
  %21 = icmp ne %struct.devfreq_cooling_device* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.thermal_cooling_device* @ERR_PTR(i32 %24)
  store %struct.thermal_cooling_device* %25, %struct.thermal_cooling_device** %4, align 8
  store i32 1, i32* %13, align 4
  br label %99

26:                                               ; preds = %3
  %27 = load %struct.devfreq*, %struct.devfreq** %6, align 8
  %28 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %9, align 8
  %29 = getelementptr inbounds %struct.devfreq_cooling_device, %struct.devfreq_cooling_device* %28, i32 0, i32 5
  store %struct.devfreq* %27, %struct.devfreq** %29, align 8
  %30 = load %struct.devfreq_cooling_power*, %struct.devfreq_cooling_power** %7, align 8
  %31 = icmp ne %struct.devfreq_cooling_power* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %26
  %33 = load %struct.devfreq_cooling_power*, %struct.devfreq_cooling_power** %7, align 8
  %34 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %9, align 8
  %35 = getelementptr inbounds %struct.devfreq_cooling_device, %struct.devfreq_cooling_device* %34, i32 0, i32 4
  store %struct.devfreq_cooling_power* %33, %struct.devfreq_cooling_power** %35, align 8
  %36 = load i32, i32* @devfreq_cooling_get_requested_power, align 4
  store i32 %36, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @devfreq_cooling_ops, i32 0, i32 2), align 4
  %37 = load i32, i32* @devfreq_cooling_state2power, align 4
  store i32 %37, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @devfreq_cooling_ops, i32 0, i32 1), align 4
  %38 = load i32, i32* @devfreq_cooling_power2state, align 4
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @devfreq_cooling_ops, i32 0, i32 0), align 4
  br label %39

39:                                               ; preds = %32, %26
  %40 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %9, align 8
  %41 = call i32 @devfreq_cooling_gen_tables(%struct.devfreq_cooling_device* %40)
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %12, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %94

45:                                               ; preds = %39
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = call i32 @ida_simple_get(i32* @devfreq_ida, i32 0, i32 0, i32 %46)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  br label %85

51:                                               ; preds = %45
  %52 = load i32, i32* %12, align 4
  %53 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %9, align 8
  %54 = getelementptr inbounds %struct.devfreq_cooling_device, %struct.devfreq_cooling_device* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = trunc i64 %15 to i32
  %56 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %9, align 8
  %57 = getelementptr inbounds %struct.devfreq_cooling_device, %struct.devfreq_cooling_device* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @snprintf(i8* %17, i32 %55, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %58)
  %60 = load %struct.device_node*, %struct.device_node** %5, align 8
  %61 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %9, align 8
  %62 = call %struct.thermal_cooling_device* @thermal_of_cooling_device_register(%struct.device_node* %60, i8* %17, %struct.devfreq_cooling_device* %61, %struct.TYPE_5__* @devfreq_cooling_ops)
  store %struct.thermal_cooling_device* %62, %struct.thermal_cooling_device** %8, align 8
  %63 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %8, align 8
  %64 = call i64 @IS_ERR(%struct.thermal_cooling_device* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %51
  %67 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %8, align 8
  %68 = call i32 @PTR_ERR(%struct.thermal_cooling_device* %67)
  store i32 %68, i32* %12, align 4
  %69 = load %struct.devfreq*, %struct.devfreq** %6, align 8
  %70 = getelementptr inbounds %struct.devfreq, %struct.devfreq* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call i32 @dev_err(i32 %72, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  br label %80

75:                                               ; preds = %51
  %76 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %8, align 8
  %77 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %9, align 8
  %78 = getelementptr inbounds %struct.devfreq_cooling_device, %struct.devfreq_cooling_device* %77, i32 0, i32 3
  store %struct.thermal_cooling_device* %76, %struct.thermal_cooling_device** %78, align 8
  %79 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %8, align 8
  store %struct.thermal_cooling_device* %79, %struct.thermal_cooling_device** %4, align 8
  store i32 1, i32* %13, align 4
  br label %99

80:                                               ; preds = %66
  %81 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %9, align 8
  %82 = getelementptr inbounds %struct.devfreq_cooling_device, %struct.devfreq_cooling_device* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @ida_simple_remove(i32* @devfreq_ida, i32 %83)
  br label %85

85:                                               ; preds = %80, %50
  %86 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %9, align 8
  %87 = getelementptr inbounds %struct.devfreq_cooling_device, %struct.devfreq_cooling_device* %86, i32 0, i32 2
  %88 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %87, align 8
  %89 = call i32 @kfree(%struct.devfreq_cooling_device* %88)
  %90 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %9, align 8
  %91 = getelementptr inbounds %struct.devfreq_cooling_device, %struct.devfreq_cooling_device* %90, i32 0, i32 1
  %92 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %91, align 8
  %93 = call i32 @kfree(%struct.devfreq_cooling_device* %92)
  br label %94

94:                                               ; preds = %85, %44
  %95 = load %struct.devfreq_cooling_device*, %struct.devfreq_cooling_device** %9, align 8
  %96 = call i32 @kfree(%struct.devfreq_cooling_device* %95)
  %97 = load i32, i32* %12, align 4
  %98 = call %struct.thermal_cooling_device* @ERR_PTR(i32 %97)
  store %struct.thermal_cooling_device* %98, %struct.thermal_cooling_device** %4, align 8
  store i32 1, i32* %13, align 4
  br label %99

99:                                               ; preds = %94, %75, %22
  %100 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %100)
  %101 = load %struct.thermal_cooling_device*, %struct.thermal_cooling_device** %4, align 8
  ret %struct.thermal_cooling_device* %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.devfreq_cooling_device* @kzalloc(i32, i32) #2

declare dso_local %struct.thermal_cooling_device* @ERR_PTR(i32) #2

declare dso_local i32 @devfreq_cooling_gen_tables(%struct.devfreq_cooling_device*) #2

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local %struct.thermal_cooling_device* @thermal_of_cooling_device_register(%struct.device_node*, i8*, %struct.devfreq_cooling_device*, %struct.TYPE_5__*) #2

declare dso_local i64 @IS_ERR(%struct.thermal_cooling_device*) #2

declare dso_local i32 @PTR_ERR(%struct.thermal_cooling_device*) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

declare dso_local i32 @ida_simple_remove(i32*, i32) #2

declare dso_local i32 @kfree(%struct.devfreq_cooling_device*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
