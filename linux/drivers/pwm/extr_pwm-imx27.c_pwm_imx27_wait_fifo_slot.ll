; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-imx27.c_pwm_imx27_wait_fifo_slot.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-imx27.c_pwm_imx27_wait_fifo_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { %struct.device* }
%struct.device = type { i32 }
%struct.pwm_device = type { i32 }
%struct.pwm_imx27_chip = type { i64 }

@MX3_PWMSR = common dso_local global i64 0, align 8
@MX3_PWMSR_FIFOAV = common dso_local global i32 0, align 4
@MX3_PWMSR_FIFOAV_4WORDS = common dso_local global i32 0, align 4
@NSEC_PER_MSEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"there is no free FIFO slot\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_chip*, %struct.pwm_device*)* @pwm_imx27_wait_fifo_slot to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pwm_imx27_wait_fifo_slot(%struct.pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca %struct.pwm_chip*, align 8
  %4 = alloca %struct.pwm_device*, align 8
  %5 = alloca %struct.pwm_imx27_chip*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %3, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %4, align 8
  %10 = load %struct.pwm_chip*, %struct.pwm_chip** %3, align 8
  %11 = call %struct.pwm_imx27_chip* @to_pwm_imx27_chip(%struct.pwm_chip* %10)
  store %struct.pwm_imx27_chip* %11, %struct.pwm_imx27_chip** %5, align 8
  %12 = load %struct.pwm_chip*, %struct.pwm_chip** %3, align 8
  %13 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %12, i32 0, i32 0
  %14 = load %struct.device*, %struct.device** %13, align 8
  store %struct.device* %14, %struct.device** %6, align 8
  %15 = load %struct.pwm_imx27_chip*, %struct.pwm_imx27_chip** %5, align 8
  %16 = getelementptr inbounds %struct.pwm_imx27_chip, %struct.pwm_imx27_chip* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @MX3_PWMSR, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* @MX3_PWMSR_FIFOAV, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i32 @FIELD_GET(i32 %21, i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @MX3_PWMSR_FIFOAV_4WORDS, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %49

27:                                               ; preds = %2
  %28 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %29 = call i32 @pwm_get_period(%struct.pwm_device* %28)
  %30 = load i32, i32* @NSEC_PER_MSEC, align 4
  %31 = call i32 @DIV_ROUND_UP(i32 %29, i32 %30)
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @msleep(i32 %32)
  %34 = load %struct.pwm_imx27_chip*, %struct.pwm_imx27_chip** %5, align 8
  %35 = getelementptr inbounds %struct.pwm_imx27_chip, %struct.pwm_imx27_chip* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MX3_PWMSR, align 8
  %38 = add nsw i64 %36, %37
  %39 = call i32 @readl(i64 %38)
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @MX3_PWMSR_FIFOAV, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @FIELD_GET(i32 %41, i32 %42)
  %44 = icmp eq i32 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %27
  %46 = load %struct.device*, %struct.device** %6, align 8
  %47 = call i32 @dev_warn(%struct.device* %46, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %48

48:                                               ; preds = %45, %27
  br label %49

49:                                               ; preds = %48, %2
  ret void
}

declare dso_local %struct.pwm_imx27_chip* @to_pwm_imx27_chip(%struct.pwm_chip*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @pwm_get_period(%struct.pwm_device*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
