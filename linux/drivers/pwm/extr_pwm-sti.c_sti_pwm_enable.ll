; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sti.c_sti_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sti.c_sti_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.sti_pwm_chip = type { i32, i32, i32, i32, i32, %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"failed to enable PWM device %u: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*)* @sti_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_pwm_enable(%struct.pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca %struct.pwm_chip*, align 8
  %4 = alloca %struct.pwm_device*, align 8
  %5 = alloca %struct.sti_pwm_chip*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %3, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %4, align 8
  %8 = load %struct.pwm_chip*, %struct.pwm_chip** %3, align 8
  %9 = call %struct.sti_pwm_chip* @to_sti_pwmchip(%struct.pwm_chip* %8)
  store %struct.sti_pwm_chip* %9, %struct.sti_pwm_chip** %5, align 8
  %10 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %5, align 8
  %11 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %10, i32 0, i32 5
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %5, align 8
  %14 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %13, i32 0, i32 0
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %5, align 8
  %17 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %51, label %20

20:                                               ; preds = %2
  %21 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %5, align 8
  %22 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @clk_enable(i32 %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %20
  br label %56

28:                                               ; preds = %20
  %29 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %5, align 8
  %30 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %29, i32 0, i32 3
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @clk_enable(i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %56

36:                                               ; preds = %28
  %37 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %5, align 8
  %38 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @regmap_field_write(i32 %39, i32 1)
  store i32 %40, i32* %7, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = load %struct.pwm_device*, %struct.pwm_device** %4, align 8
  %46 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @dev_err(%struct.device* %44, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48)
  br label %56

50:                                               ; preds = %36
  br label %51

51:                                               ; preds = %50, %2
  %52 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %5, align 8
  %53 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %51, %43, %35, %27
  %57 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %5, align 8
  %58 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %57, i32 0, i32 0
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local %struct.sti_pwm_chip* @to_sti_pwmchip(%struct.pwm_chip*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @regmap_field_write(i32, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
