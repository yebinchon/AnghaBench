; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_sysfs.c_pwmchip_sysfs_export.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_sysfs.c_pwmchip_sysfs_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32, i32 }
%struct.device = type { i32 }

@pwm_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"pwmchip%d\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"device_create failed for pwm_chip sysfs export\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pwmchip_sysfs_export(%struct.pwm_chip* %0) #0 {
  %2 = alloca %struct.pwm_chip*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.pwm_chip* %0, %struct.pwm_chip** %2, align 8
  %4 = load %struct.pwm_chip*, %struct.pwm_chip** %2, align 8
  %5 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @MKDEV(i32 0, i32 0)
  %8 = load %struct.pwm_chip*, %struct.pwm_chip** %2, align 8
  %9 = load %struct.pwm_chip*, %struct.pwm_chip** %2, align 8
  %10 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.device* @device_create(i32* @pwm_class, i32 %6, i32 %7, %struct.pwm_chip* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %11)
  store %struct.device* %12, %struct.device** %3, align 8
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call i64 @IS_ERR(%struct.device* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %21

16:                                               ; preds = %1
  %17 = load %struct.pwm_chip*, %struct.pwm_chip** %2, align 8
  %18 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_warn(i32 %19, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  br label %21

21:                                               ; preds = %16, %1
  ret void
}

declare dso_local %struct.device* @device_create(i32*, i32, i32, %struct.pwm_chip*, i8*, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
