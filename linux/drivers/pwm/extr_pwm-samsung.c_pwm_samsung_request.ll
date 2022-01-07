; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-samsung.c_pwm_samsung_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-samsung.c_pwm_samsung_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.samsung_pwm_chip = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.samsung_pwm_channel = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"tried to request PWM channel %d without output\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*)* @pwm_samsung_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_samsung_request(%struct.pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca %struct.samsung_pwm_chip*, align 8
  %7 = alloca %struct.samsung_pwm_channel*, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  %8 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %9 = call %struct.samsung_pwm_chip* @to_samsung_pwm_chip(%struct.pwm_chip* %8)
  store %struct.samsung_pwm_chip* %9, %struct.samsung_pwm_chip** %6, align 8
  %10 = load %struct.samsung_pwm_chip*, %struct.samsung_pwm_chip** %6, align 8
  %11 = getelementptr inbounds %struct.samsung_pwm_chip, %struct.samsung_pwm_chip* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %15 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @BIT(i32 %16)
  %18 = and i32 %13, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %30, label %20

20:                                               ; preds = %2
  %21 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %22 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %25 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dev_warn(i32 %23, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  br label %42

30:                                               ; preds = %2
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call %struct.samsung_pwm_channel* @kzalloc(i32 4, i32 %31)
  store %struct.samsung_pwm_channel* %32, %struct.samsung_pwm_channel** %7, align 8
  %33 = load %struct.samsung_pwm_channel*, %struct.samsung_pwm_channel** %7, align 8
  %34 = icmp ne %struct.samsung_pwm_channel* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %42

38:                                               ; preds = %30
  %39 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %40 = load %struct.samsung_pwm_channel*, %struct.samsung_pwm_channel** %7, align 8
  %41 = call i32 @pwm_set_chip_data(%struct.pwm_device* %39, %struct.samsung_pwm_channel* %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %35, %20
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.samsung_pwm_chip* @to_samsung_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local %struct.samsung_pwm_channel* @kzalloc(i32, i32) #1

declare dso_local i32 @pwm_set_chip_data(%struct.pwm_device*, %struct.samsung_pwm_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
