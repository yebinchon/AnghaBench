; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-rockchip.c_rockchip_pwm_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-rockchip.c_rockchip_pwm_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.rockchip_pwm_chip = type { i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32)* @rockchip_pwm_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pwm_enable(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pwm_chip*, align 8
  %6 = alloca %struct.pwm_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rockchip_pwm_chip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %5, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %13 = call %struct.rockchip_pwm_chip* @to_rockchip_pwm_chip(%struct.pwm_chip* %12)
  store %struct.rockchip_pwm_chip* %13, %struct.rockchip_pwm_chip** %8, align 8
  %14 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %8, align 8
  %15 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %14, i32 0, i32 1
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %3
  %22 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %8, align 8
  %23 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @clk_enable(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %4, align 4
  br label %75

30:                                               ; preds = %21
  br label %31

31:                                               ; preds = %30, %3
  %32 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %8, align 8
  %33 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %8, align 8
  %36 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = add nsw i64 %34, %40
  %42 = call i32 @readl_relaxed(i64 %41)
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %31
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %11, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %11, align 4
  br label %54

49:                                               ; preds = %31
  %50 = load i32, i32* %9, align 4
  %51 = xor i32 %50, -1
  %52 = load i32, i32* %11, align 4
  %53 = and i32 %52, %51
  store i32 %53, i32* %11, align 4
  br label %54

54:                                               ; preds = %49, %45
  %55 = load i32, i32* %11, align 4
  %56 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %8, align 8
  %57 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %8, align 8
  %60 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = add nsw i64 %58, %64
  %66 = call i32 @writel_relaxed(i32 %55, i64 %65)
  %67 = load i32, i32* %7, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %74, label %69

69:                                               ; preds = %54
  %70 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %8, align 8
  %71 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @clk_disable(i32 %72)
  br label %74

74:                                               ; preds = %69, %54
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %74, %28
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local %struct.rockchip_pwm_chip* @to_rockchip_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @readl_relaxed(i64) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
