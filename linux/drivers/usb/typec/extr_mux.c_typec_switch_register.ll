; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_mux.c_typec_switch_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_mux.c_typec_switch_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typec_switch = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, i32*, i32*, i32, %struct.device* }
%struct.device = type { i32 }
%struct.typec_switch_desc = type { i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@typec_mux_class = common dso_local global i32 0, align 4
@typec_switch_dev_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s-switch\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"failed to register switch (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.typec_switch* @typec_switch_register(%struct.device* %0, %struct.typec_switch_desc* %1) #0 {
  %3 = alloca %struct.typec_switch*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.typec_switch_desc*, align 8
  %6 = alloca %struct.typec_switch*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.typec_switch_desc* %1, %struct.typec_switch_desc** %5, align 8
  %8 = load %struct.typec_switch_desc*, %struct.typec_switch_desc** %5, align 8
  %9 = icmp ne %struct.typec_switch_desc* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.typec_switch_desc*, %struct.typec_switch_desc** %5, align 8
  %12 = getelementptr inbounds %struct.typec_switch_desc, %struct.typec_switch_desc* %11, i32 0, i32 2
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %19, label %15

15:                                               ; preds = %10, %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.typec_switch* @ERR_PTR(i32 %17)
  store %struct.typec_switch* %18, %struct.typec_switch** %3, align 8
  br label %80

19:                                               ; preds = %10
  %20 = load i32, i32* @GFP_KERNEL, align 4
  %21 = call %struct.typec_switch* @kzalloc(i32 48, i32 %20)
  store %struct.typec_switch* %21, %struct.typec_switch** %6, align 8
  %22 = load %struct.typec_switch*, %struct.typec_switch** %6, align 8
  %23 = icmp ne %struct.typec_switch* %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  %27 = call %struct.typec_switch* @ERR_PTR(i32 %26)
  store %struct.typec_switch* %27, %struct.typec_switch** %3, align 8
  br label %80

28:                                               ; preds = %19
  %29 = load %struct.typec_switch_desc*, %struct.typec_switch_desc** %5, align 8
  %30 = getelementptr inbounds %struct.typec_switch_desc, %struct.typec_switch_desc* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.typec_switch*, %struct.typec_switch** %6, align 8
  %33 = getelementptr inbounds %struct.typec_switch, %struct.typec_switch* %32, i32 0, i32 1
  store i64 %31, i64* %33, align 8
  %34 = load %struct.typec_switch*, %struct.typec_switch** %6, align 8
  %35 = getelementptr inbounds %struct.typec_switch, %struct.typec_switch* %34, i32 0, i32 0
  %36 = call i32 @device_initialize(%struct.TYPE_5__* %35)
  %37 = load %struct.device*, %struct.device** %4, align 8
  %38 = load %struct.typec_switch*, %struct.typec_switch** %6, align 8
  %39 = getelementptr inbounds %struct.typec_switch, %struct.typec_switch* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 4
  store %struct.device* %37, %struct.device** %40, align 8
  %41 = load %struct.typec_switch_desc*, %struct.typec_switch_desc** %5, align 8
  %42 = getelementptr inbounds %struct.typec_switch_desc, %struct.typec_switch_desc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.typec_switch*, %struct.typec_switch** %6, align 8
  %45 = getelementptr inbounds %struct.typec_switch, %struct.typec_switch* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 3
  store i32 %43, i32* %46, align 8
  %47 = load %struct.typec_switch*, %struct.typec_switch** %6, align 8
  %48 = getelementptr inbounds %struct.typec_switch, %struct.typec_switch* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 2
  store i32* @typec_mux_class, i32** %49, align 8
  %50 = load %struct.typec_switch*, %struct.typec_switch** %6, align 8
  %51 = getelementptr inbounds %struct.typec_switch, %struct.typec_switch* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 1
  store i32* @typec_switch_dev_type, i32** %52, align 8
  %53 = load %struct.typec_switch_desc*, %struct.typec_switch_desc** %5, align 8
  %54 = getelementptr inbounds %struct.typec_switch_desc, %struct.typec_switch_desc* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load %struct.typec_switch*, %struct.typec_switch** %6, align 8
  %57 = getelementptr inbounds %struct.typec_switch, %struct.typec_switch* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  store i32 %55, i32* %58, align 8
  %59 = load %struct.typec_switch*, %struct.typec_switch** %6, align 8
  %60 = getelementptr inbounds %struct.typec_switch, %struct.typec_switch* %59, i32 0, i32 0
  %61 = load %struct.device*, %struct.device** %4, align 8
  %62 = call i32 @dev_name(%struct.device* %61)
  %63 = call i32 @dev_set_name(%struct.TYPE_5__* %60, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load %struct.typec_switch*, %struct.typec_switch** %6, align 8
  %65 = getelementptr inbounds %struct.typec_switch, %struct.typec_switch* %64, i32 0, i32 0
  %66 = call i32 @device_add(%struct.TYPE_5__* %65)
  store i32 %66, i32* %7, align 4
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %78

69:                                               ; preds = %28
  %70 = load %struct.device*, %struct.device** %4, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load %struct.typec_switch*, %struct.typec_switch** %6, align 8
  %74 = getelementptr inbounds %struct.typec_switch, %struct.typec_switch* %73, i32 0, i32 0
  %75 = call i32 @put_device(%struct.TYPE_5__* %74)
  %76 = load i32, i32* %7, align 4
  %77 = call %struct.typec_switch* @ERR_PTR(i32 %76)
  store %struct.typec_switch* %77, %struct.typec_switch** %3, align 8
  br label %80

78:                                               ; preds = %28
  %79 = load %struct.typec_switch*, %struct.typec_switch** %6, align 8
  store %struct.typec_switch* %79, %struct.typec_switch** %3, align 8
  br label %80

80:                                               ; preds = %78, %69, %24, %15
  %81 = load %struct.typec_switch*, %struct.typec_switch** %3, align 8
  ret %struct.typec_switch* %81
}

declare dso_local %struct.typec_switch* @ERR_PTR(i32) #1

declare dso_local %struct.typec_switch* @kzalloc(i32, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @device_add(%struct.TYPE_5__*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @put_device(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
