; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-vt8500.c_vt8500_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-vt8500.c_vt8500_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.vt8500_chip = type { i64, i32 }

@.str = private unnamed_addr constant [24 x i8] c"failed to enable clock\0A\00", align 1
@CTRL_ENABLE = common dso_local global i32 0, align 4
@STATUS_CTRL_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*)* @vt8500_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vt8500_pwm_enable(%struct.pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca %struct.vt8500_chip*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  %9 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %10 = call %struct.vt8500_chip* @to_vt8500_chip(%struct.pwm_chip* %9)
  store %struct.vt8500_chip* %10, %struct.vt8500_chip** %6, align 8
  %11 = load %struct.vt8500_chip*, %struct.vt8500_chip** %6, align 8
  %12 = getelementptr inbounds %struct.vt8500_chip, %struct.vt8500_chip* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @clk_enable(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %19 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @dev_err(i32 %20, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %3, align 4
  br label %52

23:                                               ; preds = %2
  %24 = load %struct.vt8500_chip*, %struct.vt8500_chip** %6, align 8
  %25 = getelementptr inbounds %struct.vt8500_chip, %struct.vt8500_chip* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %28 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @REG_CTRL(i32 %29)
  %31 = add nsw i64 %26, %30
  %32 = call i32 @readl(i64 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @CTRL_ENABLE, align 4
  %34 = load i32, i32* %8, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load %struct.vt8500_chip*, %struct.vt8500_chip** %6, align 8
  %38 = getelementptr inbounds %struct.vt8500_chip, %struct.vt8500_chip* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %41 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @REG_CTRL(i32 %42)
  %44 = add nsw i64 %39, %43
  %45 = call i32 @writel(i32 %36, i64 %44)
  %46 = load %struct.vt8500_chip*, %struct.vt8500_chip** %6, align 8
  %47 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %48 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @STATUS_CTRL_UPDATE, align 4
  %51 = call i32 @pwm_busy_wait(%struct.vt8500_chip* %46, i32 %49, i32 %50)
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %23, %17
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.vt8500_chip* @to_vt8500_chip(%struct.pwm_chip*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @REG_CTRL(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @pwm_busy_wait(%struct.vt8500_chip*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
