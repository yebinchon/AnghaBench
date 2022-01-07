; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-imx-tpm.c_pwm_imx_tpm_get_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-imx-tpm.c_pwm_imx_tpm_get_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.pwm_state = type { i32, i32, i32, i32 }
%struct.imx_tpm_pwm_chip = type { i64, i32, i32 }

@PWM_IMX_TPM_SC = common dso_local global i64 0, align 8
@PWM_IMX_TPM_SC_PS = common dso_local global i32 0, align 4
@NSEC_PER_SEC = common dso_local global i32 0, align 4
@PWM_IMX_TPM_CnSC_ELS = common dso_local global i32 0, align 4
@PWM_IMX_TPM_CnSC_ELS_INVERSED = common dso_local global i32 0, align 4
@PWM_POLARITY_INVERSED = common dso_local global i32 0, align 4
@PWM_POLARITY_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_state*)* @pwm_imx_tpm_get_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pwm_imx_tpm_get_state(%struct.pwm_chip* %0, %struct.pwm_device* %1, %struct.pwm_state* %2) #0 {
  %4 = alloca %struct.pwm_chip*, align 8
  %5 = alloca %struct.pwm_device*, align 8
  %6 = alloca %struct.pwm_state*, align 8
  %7 = alloca %struct.imx_tpm_pwm_chip*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %4, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %5, align 8
  store %struct.pwm_state* %2, %struct.pwm_state** %6, align 8
  %12 = load %struct.pwm_chip*, %struct.pwm_chip** %4, align 8
  %13 = call %struct.imx_tpm_pwm_chip* @to_imx_tpm_pwm_chip(%struct.pwm_chip* %12)
  store %struct.imx_tpm_pwm_chip* %13, %struct.imx_tpm_pwm_chip** %7, align 8
  %14 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %7, align 8
  %15 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %18 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %7, align 8
  %20 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @clk_get_rate(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %7, align 8
  %24 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PWM_IMX_TPM_SC, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @readl(i64 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* @PWM_IMX_TPM_SC_PS, align 4
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @FIELD_GET(i32 %29, i32 %30)
  store i32 %31, i32* %10, align 4
  %32 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %7, align 8
  %33 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %36 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @PWM_IMX_TPM_CnV(i32 %37)
  %39 = add nsw i64 %34, %38
  %40 = call i32 @readl(i64 %39)
  store i32 %40, i32* %11, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %10, align 4
  %43 = shl i32 %41, %42
  %44 = load i32, i32* @NSEC_PER_SEC, align 4
  %45 = mul nsw i32 %43, %44
  store i32 %45, i32* %11, align 4
  %46 = load i32, i32* %11, align 4
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @DIV_ROUND_CLOSEST_ULL(i32 %46, i32 %47)
  %49 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %50 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %49, i32 0, i32 2
  store i32 %48, i32* %50, align 4
  %51 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %7, align 8
  %52 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.pwm_device*, %struct.pwm_device** %5, align 8
  %55 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @PWM_IMX_TPM_CnSC(i32 %56)
  %58 = add nsw i64 %53, %57
  %59 = call i32 @readl(i64 %58)
  store i32 %59, i32* %9, align 4
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @PWM_IMX_TPM_CnSC_ELS, align 4
  %62 = and i32 %60, %61
  %63 = load i32, i32* @PWM_IMX_TPM_CnSC_ELS_INVERSED, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %3
  %66 = load i32, i32* @PWM_POLARITY_INVERSED, align 4
  %67 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %68 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  br label %73

69:                                               ; preds = %3
  %70 = load i32, i32* @PWM_POLARITY_NORMAL, align 4
  %71 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %72 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %69, %65
  %74 = load i32, i32* @PWM_IMX_TPM_CnSC_ELS, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @FIELD_GET(i32 %74, i32 %75)
  %77 = icmp ne i32 %76, 0
  %78 = zext i1 %77 to i64
  %79 = select i1 %77, i32 1, i32 0
  %80 = load %struct.pwm_state*, %struct.pwm_state** %6, align 8
  %81 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  ret void
}

declare dso_local %struct.imx_tpm_pwm_chip* @to_imx_tpm_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @FIELD_GET(i32, i32) #1

declare dso_local i64 @PWM_IMX_TPM_CnV(i32) #1

declare dso_local i32 @DIV_ROUND_CLOSEST_ULL(i32, i32) #1

declare dso_local i64 @PWM_IMX_TPM_CnSC(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
