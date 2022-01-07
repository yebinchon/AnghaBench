; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sti.c_sti_pwm_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sti.c_sti_pwm_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.sti_pwm_chip = type { %struct.TYPE_4__, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @sti_pwm_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sti_pwm_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.sti_pwm_chip*, align 8
  %4 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.sti_pwm_chip* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.sti_pwm_chip* %6, %struct.sti_pwm_chip** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %24, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %3, align 8
  %10 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %9, i32 0, i32 3
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ult i32 %8, %13
  br i1 %14, label %15, label %27

15:                                               ; preds = %7
  %16 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %3, align 8
  %17 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = call i32 @pwm_disable(i32* %22)
  br label %24

24:                                               ; preds = %15
  %25 = load i32, i32* %4, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %7

27:                                               ; preds = %7
  %28 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %3, align 8
  %29 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @clk_unprepare(i32 %30)
  %32 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %3, align 8
  %33 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @clk_unprepare(i32 %34)
  %36 = load %struct.sti_pwm_chip*, %struct.sti_pwm_chip** %3, align 8
  %37 = getelementptr inbounds %struct.sti_pwm_chip, %struct.sti_pwm_chip* %36, i32 0, i32 0
  %38 = call i32 @pwmchip_remove(%struct.TYPE_4__* %37)
  ret i32 %38
}

declare dso_local %struct.sti_pwm_chip* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @pwm_disable(i32*) #1

declare dso_local i32 @clk_unprepare(i32) #1

declare dso_local i32 @pwmchip_remove(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
