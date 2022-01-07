; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sprd.c_sprd_pwm_clk_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sprd.c_sprd_pwm_clk_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sprd_pwm_chip = type { i32, i32, %struct.sprd_pwm_chn* }
%struct.sprd_pwm_chn = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.clk*, i32 }
%struct.clk = type { i32 }

@SPRD_PWM_CHN_NUM = common dso_local global i32 0, align 4
@SPRD_PWM_CHN_CLKS_NUM = common dso_local global i32 0, align 4
@sprd_pwm_clks = common dso_local global i32* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@EPROBE_DEFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"failed to get channel clocks\0A\00", align 1
@SPRD_PWM_CHN_OUTPUT_CLK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"no available PWM channels\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sprd_pwm_chip*)* @sprd_pwm_clk_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sprd_pwm_clk_init(%struct.sprd_pwm_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sprd_pwm_chip*, align 8
  %4 = alloca %struct.clk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sprd_pwm_chn*, align 8
  %8 = alloca i32, align 4
  store %struct.sprd_pwm_chip* %0, %struct.sprd_pwm_chip** %3, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %85, %1
  %10 = load i32, i32* %6, align 4
  %11 = load i32, i32* @SPRD_PWM_CHN_NUM, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %88

13:                                               ; preds = %9
  %14 = load %struct.sprd_pwm_chip*, %struct.sprd_pwm_chip** %3, align 8
  %15 = getelementptr inbounds %struct.sprd_pwm_chip, %struct.sprd_pwm_chip* %14, i32 0, i32 2
  %16 = load %struct.sprd_pwm_chn*, %struct.sprd_pwm_chn** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.sprd_pwm_chn, %struct.sprd_pwm_chn* %16, i64 %18
  store %struct.sprd_pwm_chn* %19, %struct.sprd_pwm_chn** %7, align 8
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %41, %13
  %21 = load i32, i32* %8, align 4
  %22 = load i32, i32* @SPRD_PWM_CHN_CLKS_NUM, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %44

24:                                               ; preds = %20
  %25 = load i32*, i32** @sprd_pwm_clks, align 8
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @SPRD_PWM_CHN_CLKS_NUM, align 4
  %28 = mul nsw i32 %26, %27
  %29 = load i32, i32* %8, align 4
  %30 = add nsw i32 %28, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %25, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sprd_pwm_chn*, %struct.sprd_pwm_chn** %7, align 8
  %35 = getelementptr inbounds %struct.sprd_pwm_chn, %struct.sprd_pwm_chn* %34, i32 0, i32 1
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  store i32 %33, i32* %40, align 8
  br label %41

41:                                               ; preds = %24
  %42 = load i32, i32* %8, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %8, align 4
  br label %20

44:                                               ; preds = %20
  %45 = load %struct.sprd_pwm_chip*, %struct.sprd_pwm_chip** %3, align 8
  %46 = getelementptr inbounds %struct.sprd_pwm_chip, %struct.sprd_pwm_chip* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @SPRD_PWM_CHN_CLKS_NUM, align 4
  %49 = load %struct.sprd_pwm_chn*, %struct.sprd_pwm_chn** %7, align 8
  %50 = getelementptr inbounds %struct.sprd_pwm_chn, %struct.sprd_pwm_chn* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = call i32 @devm_clk_bulk_get(i32 %47, i32 %48, %struct.TYPE_2__* %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %73

55:                                               ; preds = %44
  %56 = load i32, i32* %5, align 4
  %57 = load i32, i32* @ENOENT, align 4
  %58 = sub nsw i32 0, %57
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %55
  br label %88

61:                                               ; preds = %55
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* @EPROBE_DEFER, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %71

66:                                               ; preds = %61
  %67 = load %struct.sprd_pwm_chip*, %struct.sprd_pwm_chip** %3, align 8
  %68 = getelementptr inbounds %struct.sprd_pwm_chip, %struct.sprd_pwm_chip* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @dev_err(i32 %69, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %71

71:                                               ; preds = %66, %61
  %72 = load i32, i32* %5, align 4
  store i32 %72, i32* %2, align 4
  br label %102

73:                                               ; preds = %44
  %74 = load %struct.sprd_pwm_chn*, %struct.sprd_pwm_chn** %7, align 8
  %75 = getelementptr inbounds %struct.sprd_pwm_chn, %struct.sprd_pwm_chn* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i64, i64* @SPRD_PWM_CHN_OUTPUT_CLK, align 8
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load %struct.clk*, %struct.clk** %79, align 8
  store %struct.clk* %80, %struct.clk** %4, align 8
  %81 = load %struct.clk*, %struct.clk** %4, align 8
  %82 = call i32 @clk_get_rate(%struct.clk* %81)
  %83 = load %struct.sprd_pwm_chn*, %struct.sprd_pwm_chn** %7, align 8
  %84 = getelementptr inbounds %struct.sprd_pwm_chn, %struct.sprd_pwm_chn* %83, i32 0, i32 0
  store i32 %82, i32* %84, align 8
  br label %85

85:                                               ; preds = %73
  %86 = load i32, i32* %6, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %6, align 4
  br label %9

88:                                               ; preds = %60, %9
  %89 = load i32, i32* %6, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %98, label %91

91:                                               ; preds = %88
  %92 = load %struct.sprd_pwm_chip*, %struct.sprd_pwm_chip** %3, align 8
  %93 = getelementptr inbounds %struct.sprd_pwm_chip, %struct.sprd_pwm_chip* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @dev_err(i32 %94, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %96 = load i32, i32* @ENODEV, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %2, align 4
  br label %102

98:                                               ; preds = %88
  %99 = load i32, i32* %6, align 4
  %100 = load %struct.sprd_pwm_chip*, %struct.sprd_pwm_chip** %3, align 8
  %101 = getelementptr inbounds %struct.sprd_pwm_chip, %struct.sprd_pwm_chip* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %98, %91, %71
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @devm_clk_bulk_get(i32, i32, %struct.TYPE_2__*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @clk_get_rate(%struct.clk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
