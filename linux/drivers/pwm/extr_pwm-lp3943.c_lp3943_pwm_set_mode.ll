; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lp3943.c_lp3943_pwm_set_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-lp3943.c_lp3943_pwm_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lp3943_pwm = type { %struct.lp3943* }
%struct.lp3943 = type { %struct.lp3943_reg_cfg* }
%struct.lp3943_reg_cfg = type { i32, i32, i32 }
%struct.lp3943_pwm_map = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.lp3943_pwm*, %struct.lp3943_pwm_map*, i32)* @lp3943_pwm_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lp3943_pwm_set_mode(%struct.lp3943_pwm* %0, %struct.lp3943_pwm_map* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.lp3943_pwm*, align 8
  %6 = alloca %struct.lp3943_pwm_map*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.lp3943*, align 8
  %9 = alloca %struct.lp3943_reg_cfg*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.lp3943_pwm* %0, %struct.lp3943_pwm** %5, align 8
  store %struct.lp3943_pwm_map* %1, %struct.lp3943_pwm_map** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.lp3943_pwm*, %struct.lp3943_pwm** %5, align 8
  %14 = getelementptr inbounds %struct.lp3943_pwm, %struct.lp3943_pwm* %13, i32 0, i32 0
  %15 = load %struct.lp3943*, %struct.lp3943** %14, align 8
  store %struct.lp3943* %15, %struct.lp3943** %8, align 8
  %16 = load %struct.lp3943*, %struct.lp3943** %8, align 8
  %17 = getelementptr inbounds %struct.lp3943, %struct.lp3943* %16, i32 0, i32 0
  %18 = load %struct.lp3943_reg_cfg*, %struct.lp3943_reg_cfg** %17, align 8
  store %struct.lp3943_reg_cfg* %18, %struct.lp3943_reg_cfg** %9, align 8
  store i32 0, i32* %10, align 4
  br label %19

19:                                               ; preds = %60, %3
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.lp3943_pwm_map*, %struct.lp3943_pwm_map** %6, align 8
  %22 = getelementptr inbounds %struct.lp3943_pwm_map, %struct.lp3943_pwm_map* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %63

25:                                               ; preds = %19
  %26 = load %struct.lp3943_pwm_map*, %struct.lp3943_pwm_map** %6, align 8
  %27 = getelementptr inbounds %struct.lp3943_pwm_map, %struct.lp3943_pwm_map* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %11, align 4
  %33 = load %struct.lp3943*, %struct.lp3943** %8, align 8
  %34 = load %struct.lp3943_reg_cfg*, %struct.lp3943_reg_cfg** %9, align 8
  %35 = load i32, i32* %11, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.lp3943_reg_cfg, %struct.lp3943_reg_cfg* %34, i64 %36
  %38 = getelementptr inbounds %struct.lp3943_reg_cfg, %struct.lp3943_reg_cfg* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.lp3943_reg_cfg*, %struct.lp3943_reg_cfg** %9, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.lp3943_reg_cfg, %struct.lp3943_reg_cfg* %40, i64 %42
  %44 = getelementptr inbounds %struct.lp3943_reg_cfg, %struct.lp3943_reg_cfg* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.lp3943_reg_cfg*, %struct.lp3943_reg_cfg** %9, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.lp3943_reg_cfg, %struct.lp3943_reg_cfg* %47, i64 %49
  %51 = getelementptr inbounds %struct.lp3943_reg_cfg, %struct.lp3943_reg_cfg* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %46, %52
  %54 = call i32 @lp3943_update_bits(%struct.lp3943* %33, i32 %39, i32 %45, i32 %53)
  store i32 %54, i32* %12, align 4
  %55 = load i32, i32* %12, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %25
  %58 = load i32, i32* %12, align 4
  store i32 %58, i32* %4, align 4
  br label %64

59:                                               ; preds = %25
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %10, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %10, align 4
  br label %19

63:                                               ; preds = %19
  store i32 0, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %57
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i32 @lp3943_update_bits(%struct.lp3943*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
