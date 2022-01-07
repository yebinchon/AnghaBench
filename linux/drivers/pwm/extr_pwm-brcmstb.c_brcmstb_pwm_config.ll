; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-brcmstb.c_brcmstb_pwm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-brcmstb.c_brcmstb_pwm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.brcmstb_pwm = type { i32, i32 }

@CONST_VAR_F_MAX = common dso_local global i64 0, align 8
@PWM_ON_PERIOD_MAX = common dso_local global i32 0, align 4
@CWORD_BIT_SIZE = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@PWM_PERIOD_MIN = common dso_local global i64 0, align 8
@PWM_ON_MIN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CONST_VAR_F_MIN = common dso_local global i64 0, align 8
@PWM_CTRL2 = common dso_local global i32 0, align 4
@CTRL2_OUT_SELECT = common dso_local global i32 0, align 4
@CTRL_CHAN_OFFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32, i32)* @brcmstb_pwm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @brcmstb_pwm_config(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwm_chip*, align 8
  %7 = alloca %struct.pwm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.brcmstb_pwm*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %6, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %18 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %19 = call %struct.brcmstb_pwm* @to_brcmstb_pwm(%struct.pwm_chip* %18)
  store %struct.brcmstb_pwm* %19, %struct.brcmstb_pwm** %10, align 8
  %20 = load i64, i64* @CONST_VAR_F_MAX, align 8
  store i64 %20, i64* %13, align 8
  %21 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %22 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %14, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %33

27:                                               ; preds = %4
  %28 = load i32, i32* @PWM_ON_PERIOD_MAX, align 4
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %12, align 8
  %30 = load i32, i32* @PWM_ON_PERIOD_MAX, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  store i64 %32, i64* %11, align 8
  br label %99

33:                                               ; preds = %4
  br label %34

34:                                               ; preds = %33, %97
  %35 = load %struct.brcmstb_pwm*, %struct.brcmstb_pwm** %10, align 8
  %36 = getelementptr inbounds %struct.brcmstb_pwm, %struct.brcmstb_pwm* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @clk_get_rate(i32 %37)
  %39 = trunc i64 %38 to i32
  %40 = load i64, i64* %13, align 8
  %41 = trunc i64 %40 to i32
  %42 = mul nsw i32 %39, %41
  store i32 %42, i32* %16, align 4
  %43 = load i32, i32* %16, align 4
  %44 = load i32, i32* @CWORD_BIT_SIZE, align 4
  %45 = shl i32 1, %44
  %46 = call i32 @do_div(i32 %43, i32 %45)
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %16, align 4
  %49 = mul nsw i32 %47, %48
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %17, align 4
  %51 = load i32, i32* @NSEC_PER_SEC, align 4
  %52 = call i32 @do_div(i32 %50, i32 %51)
  %53 = load i32, i32* %17, align 4
  %54 = sext i32 %53 to i64
  store i64 %54, i64* %11, align 8
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  %57 = load i32, i32* %16, align 4
  %58 = mul nsw i32 %56, %57
  store i32 %58, i32* %17, align 4
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* @NSEC_PER_SEC, align 4
  %61 = call i32 @do_div(i32 %59, i32 %60)
  %62 = load i32, i32* %17, align 4
  %63 = sext i32 %62 to i64
  store i64 %63, i64* %12, align 8
  %64 = load i64, i64* %11, align 8
  %65 = load i64, i64* @PWM_PERIOD_MIN, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %74, label %67

67:                                               ; preds = %34
  %68 = load i64, i64* %12, align 8
  %69 = load i64, i64* @PWM_ON_MIN, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %67
  %72 = load i32, i32* %8, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %71, %34
  %75 = load i32, i32* @EINVAL, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %5, align 4
  br label %143

77:                                               ; preds = %71, %67
  %78 = load i64, i64* %11, align 8
  %79 = load i32, i32* @PWM_ON_PERIOD_MAX, align 4
  %80 = sext i32 %79 to i64
  %81 = icmp ule i64 %78, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load i64, i64* %12, align 8
  %84 = load i32, i32* @PWM_ON_PERIOD_MAX, align 4
  %85 = sext i32 %84 to i64
  %86 = icmp ule i64 %83, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %98

88:                                               ; preds = %82, %77
  %89 = load i64, i64* %13, align 8
  %90 = lshr i64 %89, 1
  store i64 %90, i64* %13, align 8
  %91 = load i64, i64* %13, align 8
  %92 = load i64, i64* @CONST_VAR_F_MIN, align 8
  %93 = icmp ult i64 %91, %92
  br i1 %93, label %94, label %97

94:                                               ; preds = %88
  %95 = load i32, i32* @EINVAL, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %5, align 4
  br label %143

97:                                               ; preds = %88
  br label %34

98:                                               ; preds = %87
  br label %99

99:                                               ; preds = %98, %27
  %100 = load %struct.brcmstb_pwm*, %struct.brcmstb_pwm** %10, align 8
  %101 = getelementptr inbounds %struct.brcmstb_pwm, %struct.brcmstb_pwm* %100, i32 0, i32 0
  %102 = call i32 @spin_lock(i32* %101)
  %103 = load %struct.brcmstb_pwm*, %struct.brcmstb_pwm** %10, align 8
  %104 = load i64, i64* %13, align 8
  %105 = lshr i64 %104, 8
  %106 = load i32, i32* %14, align 4
  %107 = call i32 @PWM_CWORD_MSB(i32 %106)
  %108 = call i32 @brcmstb_pwm_writel(%struct.brcmstb_pwm* %103, i64 %105, i32 %107)
  %109 = load %struct.brcmstb_pwm*, %struct.brcmstb_pwm** %10, align 8
  %110 = load i64, i64* %13, align 8
  %111 = and i64 %110, 255
  %112 = load i32, i32* %14, align 4
  %113 = call i32 @PWM_CWORD_LSB(i32 %112)
  %114 = call i32 @brcmstb_pwm_writel(%struct.brcmstb_pwm* %109, i64 %111, i32 %113)
  %115 = load %struct.brcmstb_pwm*, %struct.brcmstb_pwm** %10, align 8
  %116 = load i32, i32* @PWM_CTRL2, align 4
  %117 = call i32 @brcmstb_pwm_readl(%struct.brcmstb_pwm* %115, i32 %116)
  store i32 %117, i32* %15, align 4
  %118 = load i32, i32* @CTRL2_OUT_SELECT, align 4
  %119 = load i32, i32* %14, align 4
  %120 = load i32, i32* @CTRL_CHAN_OFFS, align 4
  %121 = mul i32 %119, %120
  %122 = shl i32 %118, %121
  %123 = load i32, i32* %15, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %15, align 4
  %125 = load %struct.brcmstb_pwm*, %struct.brcmstb_pwm** %10, align 8
  %126 = load i32, i32* %15, align 4
  %127 = zext i32 %126 to i64
  %128 = load i32, i32* @PWM_CTRL2, align 4
  %129 = call i32 @brcmstb_pwm_writel(%struct.brcmstb_pwm* %125, i64 %127, i32 %128)
  %130 = load %struct.brcmstb_pwm*, %struct.brcmstb_pwm** %10, align 8
  %131 = load i64, i64* %11, align 8
  %132 = load i32, i32* %14, align 4
  %133 = call i32 @PWM_PERIOD(i32 %132)
  %134 = call i32 @brcmstb_pwm_writel(%struct.brcmstb_pwm* %130, i64 %131, i32 %133)
  %135 = load %struct.brcmstb_pwm*, %struct.brcmstb_pwm** %10, align 8
  %136 = load i64, i64* %12, align 8
  %137 = load i32, i32* %14, align 4
  %138 = call i32 @PWM_ON(i32 %137)
  %139 = call i32 @brcmstb_pwm_writel(%struct.brcmstb_pwm* %135, i64 %136, i32 %138)
  %140 = load %struct.brcmstb_pwm*, %struct.brcmstb_pwm** %10, align 8
  %141 = getelementptr inbounds %struct.brcmstb_pwm, %struct.brcmstb_pwm* %140, i32 0, i32 0
  %142 = call i32 @spin_unlock(i32* %141)
  store i32 0, i32* %5, align 4
  br label %143

143:                                              ; preds = %99, %94, %74
  %144 = load i32, i32* %5, align 4
  ret i32 %144
}

declare dso_local %struct.brcmstb_pwm* @to_brcmstb_pwm(%struct.pwm_chip*) #1

declare dso_local i64 @clk_get_rate(i32) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @brcmstb_pwm_writel(%struct.brcmstb_pwm*, i64, i32) #1

declare dso_local i32 @PWM_CWORD_MSB(i32) #1

declare dso_local i32 @PWM_CWORD_LSB(i32) #1

declare dso_local i32 @brcmstb_pwm_readl(%struct.brcmstb_pwm*, i32) #1

declare dso_local i32 @PWM_PERIOD(i32) #1

declare dso_local i32 @PWM_ON(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
