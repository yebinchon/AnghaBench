; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_core.c_pwm_device_link_add.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_core.c_pwm_device_link_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_link = type { i32 }
%struct.device = type { i32 }
%struct.pwm_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [50 x i8] c"No consumer device specified to create a link to\0A\00", align 1
@DL_FLAG_AUTOREMOVE_CONSUMER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"failed to create device link to %s\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.device_link* (%struct.device*, %struct.pwm_device*)* @pwm_device_link_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.device_link* @pwm_device_link_add(%struct.device* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca %struct.device_link*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca %struct.device_link*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  %7 = load %struct.device*, %struct.device** %4, align 8
  %8 = icmp ne %struct.device* %7, null
  br i1 %8, label %16, label %9

9:                                                ; preds = %2
  %10 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %11 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_warn(i32 %14, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  store %struct.device_link* null, %struct.device_link** %3, align 8
  br label %41

16:                                               ; preds = %2
  %17 = load %struct.device*, %struct.device** %4, align 8
  %18 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %19 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DL_FLAG_AUTOREMOVE_CONSUMER, align 4
  %24 = call %struct.device_link* @device_link_add(%struct.device* %17, i32 %22, i32 %23)
  store %struct.device_link* %24, %struct.device_link** %6, align 8
  %25 = load %struct.device_link*, %struct.device_link** %6, align 8
  %26 = icmp ne %struct.device_link* %25, null
  br i1 %26, label %39, label %27

27:                                               ; preds = %16
  %28 = load %struct.device*, %struct.device** %4, align 8
  %29 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %30 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_name(i32 %33)
  %35 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.device_link* @ERR_PTR(i32 %37)
  store %struct.device_link* %38, %struct.device_link** %3, align 8
  br label %41

39:                                               ; preds = %16
  %40 = load %struct.device_link*, %struct.device_link** %6, align 8
  store %struct.device_link* %40, %struct.device_link** %3, align 8
  br label %41

41:                                               ; preds = %39, %27, %9
  %42 = load %struct.device_link*, %struct.device_link** %3, align 8
  ret %struct.device_link* %42
}

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local %struct.device_link* @device_link_add(%struct.device*, i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @dev_name(i32) #1

declare dso_local %struct.device_link* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
