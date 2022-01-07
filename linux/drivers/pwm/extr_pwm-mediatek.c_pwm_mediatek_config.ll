; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-mediatek.c_pwm_mediatek_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-mediatek.c_pwm_mediatek_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i64 }
%struct.pwm_mediatek_chip = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i64 }

@PWMDWIDTH = common dso_local global i32 0, align 4
@PWMTHRES = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i64 0, align 8
@PWM_CLK_DIV_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"period %d not supported\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PWM45DWIDTH_FIXUP = common dso_local global i32 0, align 4
@PWM45THRES_FIXUP = common dso_local global i32 0, align 4
@PWMCON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32, i32)* @pwm_mediatek_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_mediatek_config(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwm_chip*, align 8
  %7 = alloca %struct.pwm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.pwm_mediatek_chip*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %6, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %19 = call %struct.pwm_mediatek_chip* @to_pwm_mediatek_chip(%struct.pwm_chip* %18)
  store %struct.pwm_mediatek_chip* %19, %struct.pwm_mediatek_chip** %10, align 8
  store i32 0, i32* %11, align 4
  %20 = load i32, i32* @PWMDWIDTH, align 4
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* @PWMTHRES, align 4
  store i32 %21, i32* %15, align 4
  %22 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %23 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %24 = call i32 @pwm_mediatek_clk_enable(%struct.pwm_chip* %22, %struct.pwm_device* %23)
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %17, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %17, align 4
  store i32 %28, i32* %5, align 4
  br label %124

29:                                               ; preds = %4
  %30 = load i64, i64* @NSEC_PER_SEC, align 8
  %31 = trunc i64 %30 to i32
  %32 = mul nsw i32 %31, 1000
  store i32 %32, i32* %16, align 4
  %33 = load i32, i32* %16, align 4
  %34 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %10, align 8
  %35 = getelementptr inbounds %struct.pwm_mediatek_chip, %struct.pwm_mediatek_chip* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  %37 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %38 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = getelementptr inbounds i32, i32* %36, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @clk_get_rate(i32 %41)
  %43 = call i32 @do_div(i32 %33, i32 %42)
  %44 = load i32, i32* %9, align 4
  %45 = mul nsw i32 %44, 1000
  %46 = load i32, i32* %16, align 4
  %47 = call i32 @DIV_ROUND_CLOSEST_ULL(i32 %45, i32 %46)
  store i32 %47, i32* %12, align 4
  br label %48

48:                                               ; preds = %51, %29
  %49 = load i32, i32* %12, align 4
  %50 = icmp sgt i32 %49, 8191
  br i1 %50, label %51, label %60

51:                                               ; preds = %48
  %52 = load i32, i32* %16, align 4
  %53 = mul nsw i32 %52, 2
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %11, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %11, align 4
  %56 = load i32, i32* %9, align 4
  %57 = mul nsw i32 %56, 1000
  %58 = load i32, i32* %16, align 4
  %59 = call i32 @DIV_ROUND_CLOSEST_ULL(i32 %57, i32 %58)
  store i32 %59, i32* %12, align 4
  br label %48

60:                                               ; preds = %48
  %61 = load i32, i32* %11, align 4
  %62 = load i32, i32* @PWM_CLK_DIV_MAX, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %66 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %67 = call i32 @pwm_mediatek_clk_disable(%struct.pwm_chip* %65, %struct.pwm_device* %66)
  %68 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %69 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %9, align 4
  %72 = call i32 @dev_err(i32 %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %71)
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %124

75:                                               ; preds = %60
  %76 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %10, align 8
  %77 = getelementptr inbounds %struct.pwm_mediatek_chip, %struct.pwm_mediatek_chip* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %75
  %83 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %84 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ugt i64 %85, 2
  br i1 %86, label %87, label %90

87:                                               ; preds = %82
  %88 = load i32, i32* @PWM45DWIDTH_FIXUP, align 4
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* @PWM45THRES_FIXUP, align 4
  store i32 %89, i32* %15, align 4
  br label %90

90:                                               ; preds = %87, %82, %75
  %91 = load i32, i32* %8, align 4
  %92 = mul nsw i32 %91, 1000
  %93 = load i32, i32* %16, align 4
  %94 = call i32 @DIV_ROUND_CLOSEST_ULL(i32 %92, i32 %93)
  store i32 %94, i32* %13, align 4
  %95 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %10, align 8
  %96 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %97 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = load i32, i32* @PWMCON, align 4
  %101 = call i32 @BIT(i32 15)
  %102 = load i32, i32* %11, align 4
  %103 = or i32 %101, %102
  %104 = call i32 @pwm_mediatek_writel(%struct.pwm_mediatek_chip* %95, i32 %99, i32 %100, i32 %103)
  %105 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %10, align 8
  %106 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %107 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = trunc i64 %108 to i32
  %110 = load i32, i32* %14, align 4
  %111 = load i32, i32* %12, align 4
  %112 = call i32 @pwm_mediatek_writel(%struct.pwm_mediatek_chip* %105, i32 %109, i32 %110, i32 %111)
  %113 = load %struct.pwm_mediatek_chip*, %struct.pwm_mediatek_chip** %10, align 8
  %114 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %115 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* %13, align 4
  %120 = call i32 @pwm_mediatek_writel(%struct.pwm_mediatek_chip* %113, i32 %117, i32 %118, i32 %119)
  %121 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %122 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %123 = call i32 @pwm_mediatek_clk_disable(%struct.pwm_chip* %121, %struct.pwm_device* %122)
  store i32 0, i32* %5, align 4
  br label %124

124:                                              ; preds = %90, %64, %27
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local %struct.pwm_mediatek_chip* @to_pwm_mediatek_chip(%struct.pwm_chip*) #1

declare dso_local i32 @pwm_mediatek_clk_enable(%struct.pwm_chip*, %struct.pwm_device*) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST_ULL(i32, i32) #1

declare dso_local i32 @pwm_mediatek_clk_disable(%struct.pwm_chip*, %struct.pwm_device*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @pwm_mediatek_writel(%struct.pwm_mediatek_chip*, i32, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
