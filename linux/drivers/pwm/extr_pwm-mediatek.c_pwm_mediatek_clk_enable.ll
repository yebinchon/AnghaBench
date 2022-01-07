; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-mediatek.c_pwm_mediatek_clk_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-mediatek.c_pwm_mediatek_clk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i64 }
%struct.pwm_mediatek_chip = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*)* @pwm_mediatek_clk_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_mediatek_clk_enable(%struct.pwm_chip* %0, %struct.pwm_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca %struct.pwm_mediatek_chip*, align 8
  %7 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  %8 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %9 = call %struct.pwm_mediatek_chip* @to_pwm_mediatek_chip(%struct.pwm_chip* %8)
  store %struct.pwm_mediatek_chip* %9, %struct.pwm_mediatek_chip** %6, align 8
  %10 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %6, align 8
  %11 = getelementptr inbounds %struct.pwm_mediatek_chip, %struct.pwm_mediatek_chip* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @clk_prepare_enable(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %51

18:                                               ; preds = %2
  %19 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %6, align 8
  %20 = getelementptr inbounds %struct.pwm_mediatek_chip, %struct.pwm_mediatek_chip* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @clk_prepare_enable(i32 %21)
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %18
  br label %45

26:                                               ; preds = %18
  %27 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %6, align 8
  %28 = getelementptr inbounds %struct.pwm_mediatek_chip, %struct.pwm_mediatek_chip* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %31 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @clk_prepare_enable(i32 %34)
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %26
  br label %40

39:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %51

40:                                               ; preds = %38
  %41 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %6, align 8
  %42 = getelementptr inbounds %struct.pwm_mediatek_chip, %struct.pwm_mediatek_chip* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @clk_disable_unprepare(i32 %43)
  br label %45

45:                                               ; preds = %40, %25
  %46 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %6, align 8
  %47 = getelementptr inbounds %struct.pwm_mediatek_chip, %struct.pwm_mediatek_chip* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @clk_disable_unprepare(i32 %48)
  %50 = load i32, i32* %7, align 4
  store i32 %50, i32* %3, align 4
  br label %51

51:                                               ; preds = %45, %39, %16
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.pwm_mediatek_chip* @to_pwm_mediatek_chip(%struct.pwm_chip*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
