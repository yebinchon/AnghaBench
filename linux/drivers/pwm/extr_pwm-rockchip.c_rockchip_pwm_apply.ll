; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-rockchip.c_rockchip_pwm_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-rockchip.c_rockchip_pwm_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.pwm_state = type { i32, i64 }
%struct.rockchip_pwm_chip = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_state*)* @rockchip_pwm_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rockchip_pwm_apply(%struct.pwm_chip* %0, %struct.pwm_device* %1, %struct.pwm_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pwm_chip*, align 8
  %6 = alloca %struct.pwm_device*, align 8
  %7 = alloca %struct.pwm_state*, align 8
  %8 = alloca %struct.rockchip_pwm_chip*, align 8
  %9 = alloca %struct.pwm_state, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %5, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %6, align 8
  store %struct.pwm_state* %2, %struct.pwm_state** %7, align 8
  %12 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %13 = call %struct.rockchip_pwm_chip* @to_rockchip_pwm_chip(%struct.pwm_chip* %12)
  store %struct.rockchip_pwm_chip* %13, %struct.rockchip_pwm_chip** %8, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %8, align 8
  %15 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @clk_enable(i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %3
  %21 = load i32, i32* %11, align 4
  store i32 %21, i32* %4, align 4
  br label %79

22:                                               ; preds = %3
  %23 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %24 = call i32 @pwm_get_state(%struct.pwm_device* %23, %struct.pwm_state* %9)
  %25 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %9, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %10, align 4
  %27 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %28 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %9, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %29, %31
  br i1 %32, label %33, label %51

33:                                               ; preds = %22
  %34 = load i32, i32* %10, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %51

36:                                               ; preds = %33
  %37 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %8, align 8
  %38 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %36
  %44 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %45 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %46 = call i32 @rockchip_pwm_enable(%struct.pwm_chip* %44, %struct.pwm_device* %45, i32 0)
  store i32 %46, i32* %11, align 4
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %73

50:                                               ; preds = %43
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %50, %36, %33, %22
  %52 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %53 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %54 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %55 = call i32 @rockchip_pwm_config(%struct.pwm_chip* %52, %struct.pwm_device* %53, %struct.pwm_state* %54)
  %56 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %57 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %58, %59
  br i1 %60, label %61, label %72

61:                                               ; preds = %51
  %62 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %63 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %64 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %65 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @rockchip_pwm_enable(%struct.pwm_chip* %62, %struct.pwm_device* %63, i32 %66)
  store i32 %67, i32* %11, align 4
  %68 = load i32, i32* %11, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %61
  br label %73

71:                                               ; preds = %61
  br label %72

72:                                               ; preds = %71, %51
  br label %73

73:                                               ; preds = %72, %70, %49
  %74 = load %struct.rockchip_pwm_chip*, %struct.rockchip_pwm_chip** %8, align 8
  %75 = getelementptr inbounds %struct.rockchip_pwm_chip, %struct.rockchip_pwm_chip* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @clk_disable(i32 %76)
  %78 = load i32, i32* %11, align 4
  store i32 %78, i32* %4, align 4
  br label %79

79:                                               ; preds = %73, %20
  %80 = load i32, i32* %4, align 4
  ret i32 %80
}

declare dso_local %struct.rockchip_pwm_chip* @to_rockchip_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @pwm_get_state(%struct.pwm_device*, %struct.pwm_state*) #1

declare dso_local i32 @rockchip_pwm_enable(%struct.pwm_chip*, %struct.pwm_device*, i32) #1

declare dso_local i32 @rockchip_pwm_config(%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_state*) #1

declare dso_local i32 @clk_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
