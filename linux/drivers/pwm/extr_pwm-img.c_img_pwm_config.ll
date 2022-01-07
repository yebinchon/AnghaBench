; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-img.c_img_pwm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-img.c_img_pwm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.img_pwm_chip = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"configured period not in range\0A\00", align 1
@ERANGE = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@PWM_CTRL_CFG_NO_SUB_DIV = common dso_local global i32 0, align 4
@PWM_CTRL_CFG_SUB_DIV0 = common dso_local global i32 0, align 4
@PWM_CTRL_CFG_SUB_DIV1 = common dso_local global i32 0, align 4
@PWM_CTRL_CFG_SUB_DIV0_DIV1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [50 x i8] c"failed to configure timebase steps/divider value\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PWM_CTRL_CFG = common dso_local global i32 0, align 4
@PWM_CTRL_CFG_DIV_MASK = common dso_local global i32 0, align 4
@PWM_CH_CFG_DUTY_SHIFT = common dso_local global i32 0, align 4
@PWM_CH_CFG_TMBASE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32, i32)* @img_pwm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @img_pwm_config(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwm_chip*, align 8
  %7 = alloca %struct.pwm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca %struct.img_pwm_chip*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %6, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %20 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %21 = call %struct.img_pwm_chip* @to_img_pwm_chip(%struct.pwm_chip* %20)
  store %struct.img_pwm_chip* %21, %struct.img_pwm_chip** %17, align 8
  %22 = load %struct.img_pwm_chip*, %struct.img_pwm_chip** %17, align 8
  %23 = getelementptr inbounds %struct.img_pwm_chip, %struct.img_pwm_chip* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %18, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load %struct.img_pwm_chip*, %struct.img_pwm_chip** %17, align 8
  %29 = getelementptr inbounds %struct.img_pwm_chip, %struct.img_pwm_chip* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %38, label %32

32:                                               ; preds = %4
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.img_pwm_chip*, %struct.img_pwm_chip** %17, align 8
  %35 = getelementptr inbounds %struct.img_pwm_chip, %struct.img_pwm_chip* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = icmp sgt i32 %33, %36
  br i1 %37, label %38, label %45

38:                                               ; preds = %32, %4
  %39 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %40 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ERANGE, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %180

45:                                               ; preds = %32
  %46 = load %struct.img_pwm_chip*, %struct.img_pwm_chip** %17, align 8
  %47 = getelementptr inbounds %struct.img_pwm_chip, %struct.img_pwm_chip* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @clk_get_rate(i32 %48)
  store i64 %49, i64* %16, align 8
  %50 = load i32, i32* @NSEC_PER_SEC, align 4
  %51 = load i32, i32* %9, align 4
  %52 = call i8* @DIV_ROUND_UP(i32 %50, i32 %51)
  %53 = ptrtoint i8* %52 to i64
  store i64 %53, i64* %15, align 8
  %54 = load i64, i64* %16, align 8
  %55 = trunc i64 %54 to i32
  %56 = load i64, i64* %15, align 8
  %57 = trunc i64 %56 to i32
  %58 = call i8* @DIV_ROUND_UP(i32 %55, i32 %57)
  %59 = ptrtoint i8* %58 to i64
  store i64 %59, i64* %14, align 8
  %60 = load i64, i64* %14, align 8
  %61 = load i32, i32* %18, align 4
  %62 = zext i32 %61 to i64
  %63 = icmp ule i64 %60, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %45
  %65 = load i32, i32* @PWM_CTRL_CFG_NO_SUB_DIV, align 4
  store i32 %65, i32* %11, align 4
  %66 = load i64, i64* %14, align 8
  %67 = trunc i64 %66 to i32
  %68 = call i8* @DIV_ROUND_UP(i32 %67, i32 1)
  %69 = ptrtoint i8* %68 to i32
  store i32 %69, i32* %13, align 4
  br label %116

70:                                               ; preds = %45
  %71 = load i64, i64* %14, align 8
  %72 = load i32, i32* %18, align 4
  %73 = mul i32 %72, 8
  %74 = zext i32 %73 to i64
  %75 = icmp ule i64 %71, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load i32, i32* @PWM_CTRL_CFG_SUB_DIV0, align 4
  store i32 %77, i32* %11, align 4
  %78 = load i64, i64* %14, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i8* @DIV_ROUND_UP(i32 %79, i32 8)
  %81 = ptrtoint i8* %80 to i32
  store i32 %81, i32* %13, align 4
  br label %115

82:                                               ; preds = %70
  %83 = load i64, i64* %14, align 8
  %84 = load i32, i32* %18, align 4
  %85 = mul i32 %84, 64
  %86 = zext i32 %85 to i64
  %87 = icmp ule i64 %83, %86
  br i1 %87, label %88, label %94

88:                                               ; preds = %82
  %89 = load i32, i32* @PWM_CTRL_CFG_SUB_DIV1, align 4
  store i32 %89, i32* %11, align 4
  %90 = load i64, i64* %14, align 8
  %91 = trunc i64 %90 to i32
  %92 = call i8* @DIV_ROUND_UP(i32 %91, i32 64)
  %93 = ptrtoint i8* %92 to i32
  store i32 %93, i32* %13, align 4
  br label %114

94:                                               ; preds = %82
  %95 = load i64, i64* %14, align 8
  %96 = load i32, i32* %18, align 4
  %97 = mul i32 %96, 512
  %98 = zext i32 %97 to i64
  %99 = icmp ule i64 %95, %98
  br i1 %99, label %100, label %106

100:                                              ; preds = %94
  %101 = load i32, i32* @PWM_CTRL_CFG_SUB_DIV0_DIV1, align 4
  store i32 %101, i32* %11, align 4
  %102 = load i64, i64* %14, align 8
  %103 = trunc i64 %102 to i32
  %104 = call i8* @DIV_ROUND_UP(i32 %103, i32 512)
  %105 = ptrtoint i8* %104 to i32
  store i32 %105, i32* %13, align 4
  br label %113

106:                                              ; preds = %94
  %107 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %108 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @dev_err(i32 %109, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0))
  %111 = load i32, i32* @EINVAL, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %5, align 4
  br label %180

113:                                              ; preds = %100
  br label %114

114:                                              ; preds = %113, %88
  br label %115

115:                                              ; preds = %114, %76
  br label %116

116:                                              ; preds = %115, %64
  %117 = load i32, i32* %13, align 4
  %118 = load i32, i32* %8, align 4
  %119 = mul nsw i32 %117, %118
  %120 = load i32, i32* %9, align 4
  %121 = call i8* @DIV_ROUND_UP(i32 %119, i32 %120)
  %122 = ptrtoint i8* %121 to i32
  store i32 %122, i32* %12, align 4
  %123 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %124 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @pm_runtime_get_sync(i32 %125)
  store i32 %126, i32* %19, align 4
  %127 = load i32, i32* %19, align 4
  %128 = icmp slt i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %116
  %130 = load i32, i32* %19, align 4
  store i32 %130, i32* %5, align 4
  br label %180

131:                                              ; preds = %116
  %132 = load %struct.img_pwm_chip*, %struct.img_pwm_chip** %17, align 8
  %133 = load i32, i32* @PWM_CTRL_CFG, align 4
  %134 = call i32 @img_pwm_readl(%struct.img_pwm_chip* %132, i32 %133)
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* @PWM_CTRL_CFG_DIV_MASK, align 4
  %136 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %137 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @PWM_CTRL_CFG_DIV_SHIFT(i32 %138)
  %140 = shl i32 %135, %139
  %141 = xor i32 %140, -1
  %142 = load i32, i32* %10, align 4
  %143 = and i32 %142, %141
  store i32 %143, i32* %10, align 4
  %144 = load i32, i32* %11, align 4
  %145 = load i32, i32* @PWM_CTRL_CFG_DIV_MASK, align 4
  %146 = and i32 %144, %145
  %147 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %148 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @PWM_CTRL_CFG_DIV_SHIFT(i32 %149)
  %151 = shl i32 %146, %150
  %152 = load i32, i32* %10, align 4
  %153 = or i32 %152, %151
  store i32 %153, i32* %10, align 4
  %154 = load %struct.img_pwm_chip*, %struct.img_pwm_chip** %17, align 8
  %155 = load i32, i32* @PWM_CTRL_CFG, align 4
  %156 = load i32, i32* %10, align 4
  %157 = call i32 @img_pwm_writel(%struct.img_pwm_chip* %154, i32 %155, i32 %156)
  %158 = load i32, i32* %12, align 4
  %159 = load i32, i32* @PWM_CH_CFG_DUTY_SHIFT, align 4
  %160 = shl i32 %158, %159
  %161 = load i32, i32* %13, align 4
  %162 = load i32, i32* @PWM_CH_CFG_TMBASE_SHIFT, align 4
  %163 = shl i32 %161, %162
  %164 = or i32 %160, %163
  store i32 %164, i32* %10, align 4
  %165 = load %struct.img_pwm_chip*, %struct.img_pwm_chip** %17, align 8
  %166 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %167 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @PWM_CH_CFG(i32 %168)
  %170 = load i32, i32* %10, align 4
  %171 = call i32 @img_pwm_writel(%struct.img_pwm_chip* %165, i32 %169, i32 %170)
  %172 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %173 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i32 @pm_runtime_mark_last_busy(i32 %174)
  %176 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %177 = getelementptr inbounds %struct.pwm_chip, %struct.pwm_chip* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @pm_runtime_put_autosuspend(i32 %178)
  store i32 0, i32* %5, align 4
  br label %180

180:                                              ; preds = %131, %129, %106, %38
  %181 = load i32, i32* %5, align 4
  ret i32 %181
}

declare dso_local %struct.img_pwm_chip* @to_img_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i8* @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @img_pwm_readl(%struct.img_pwm_chip*, i32) #1

declare dso_local i32 @PWM_CTRL_CFG_DIV_SHIFT(i32) #1

declare dso_local i32 @img_pwm_writel(%struct.img_pwm_chip*, i32, i32) #1

declare dso_local i32 @PWM_CH_CFG(i32) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

declare dso_local i32 @pm_runtime_put_autosuspend(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
