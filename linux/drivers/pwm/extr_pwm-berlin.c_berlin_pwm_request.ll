; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-berlin.c_berlin_pwm_request.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-berlin.c_berlin_pwm_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.berlin_pwm_channel = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*)* @berlin_pwm_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @berlin_pwm_request(%struct.pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca %struct.berlin_pwm_channel*, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.berlin_pwm_channel* @kzalloc(i32 4, i32 %7)
  store %struct.berlin_pwm_channel* %8, %struct.berlin_pwm_channel** %6, align 8
  %9 = load %struct.berlin_pwm_channel*, %struct.berlin_pwm_channel** %6, align 8
  %10 = icmp ne %struct.berlin_pwm_channel* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %18

14:                                               ; preds = %2
  %15 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %16 = load %struct.berlin_pwm_channel*, %struct.berlin_pwm_channel** %6, align 8
  %17 = call i32 @pwm_set_chip_data(%struct.pwm_device* %15, %struct.berlin_pwm_channel* %16)
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %14, %11
  %19 = load i32, i32* %3, align 4
  ret i32 %19
}

declare dso_local %struct.berlin_pwm_channel* @kzalloc(i32, i32) #1

declare dso_local i32 @pwm_set_chip_data(%struct.pwm_device*, %struct.berlin_pwm_channel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
