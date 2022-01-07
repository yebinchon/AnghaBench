; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-stmpe.c_stmpe_24xx_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-stmpe.c_stmpe_24xx_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.stmpe_pwm = type { i32 }

@STMPE24XX_PWMCS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"error reading PWM#%u control\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"error writing PWM#%u control\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*)* @stmpe_24xx_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmpe_24xx_pwm_enable(%struct.pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca %struct.stmpe_pwm*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  %9 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %10 = call %struct.stmpe_pwm* @to_stmpe_pwm(%struct.pwm_chip* %9)
  store %struct.stmpe_pwm* %10, %struct.stmpe_pwm** %6, align 8
  %11 = load %struct.stmpe_pwm*, %struct.stmpe_pwm** %6, align 8
  %12 = getelementptr inbounds %struct.stmpe_pwm, %struct.stmpe_pwm* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @STMPE24XX_PWMCS, align 4
  %15 = call i32 @stmpe_reg_read(i32 %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %27

18:                                               ; preds = %2
  %19 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %20 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %23 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @dev_err(i32 %21, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %8, align 4
  store i32 %26, i32* %3, align 4
  br label %52

27:                                               ; preds = %2
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %30 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @BIT(i32 %31)
  %33 = or i32 %28, %32
  store i32 %33, i32* %7, align 4
  %34 = load %struct.stmpe_pwm*, %struct.stmpe_pwm** %6, align 8
  %35 = getelementptr inbounds %struct.stmpe_pwm, %struct.stmpe_pwm* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @STMPE24XX_PWMCS, align 4
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @stmpe_reg_write(i32 %36, i32 %37, i32 %38)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %27
  %43 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %44 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %47 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_err(i32 %45, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %48)
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %3, align 4
  br label %52

51:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %42, %18
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.stmpe_pwm* @to_stmpe_pwm(%struct.pwm_chip*) #1

declare dso_local i32 @stmpe_reg_read(i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @stmpe_reg_write(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
