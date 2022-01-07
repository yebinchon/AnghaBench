; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-vt8500.c_vt8500_pwm_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-vt8500.c_vt8500_pwm_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.vt8500_chip = type { i32, i64 }

@CTRL_ENABLE = common dso_local global i32 0, align 4
@STATUS_CTRL_UPDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_chip*, %struct.pwm_device*)* @vt8500_pwm_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vt8500_pwm_disable(%struct.pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca %struct.pwm_chip*, align 8
  %4 = alloca %struct.pwm_device*, align 8
  %5 = alloca %struct.vt8500_chip*, align 8
  %6 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %3, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %4, align 8
  %7 = load %struct.pwm_chip*, %struct.pwm_chip** %3, align 8
  %8 = call %struct.vt8500_chip* @to_vt8500_chip(%struct.pwm_chip* %7)
  store %struct.vt8500_chip* %8, %struct.vt8500_chip** %5, align 8
  %9 = load %struct.vt8500_chip*, %struct.vt8500_chip** %5, align 8
  %10 = getelementptr inbounds %struct.vt8500_chip, %struct.vt8500_chip* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %13 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @REG_CTRL(i32 %14)
  %16 = add nsw i64 %11, %15
  %17 = call i32 @readl(i64 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* @CTRL_ENABLE, align 4
  %19 = xor i32 %18, -1
  %20 = load i32, i32* %6, align 4
  %21 = and i32 %20, %19
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.vt8500_chip*, %struct.vt8500_chip** %5, align 8
  %24 = getelementptr inbounds %struct.vt8500_chip, %struct.vt8500_chip* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %27 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @REG_CTRL(i32 %28)
  %30 = add nsw i64 %25, %29
  %31 = call i32 @writel(i32 %22, i64 %30)
  %32 = load %struct.vt8500_chip*, %struct.vt8500_chip** %5, align 8
  %33 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %34 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @STATUS_CTRL_UPDATE, align 4
  %37 = call i32 @pwm_busy_wait(%struct.vt8500_chip* %32, i32 %35, i32 %36)
  %38 = load %struct.vt8500_chip*, %struct.vt8500_chip** %5, align 8
  %39 = getelementptr inbounds %struct.vt8500_chip, %struct.vt8500_chip* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @clk_disable(i32 %40)
  ret void
}

declare dso_local %struct.vt8500_chip* @to_vt8500_chip(%struct.pwm_chip*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @REG_CTRL(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @pwm_busy_wait(%struct.vt8500_chip*, i32, i32) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
