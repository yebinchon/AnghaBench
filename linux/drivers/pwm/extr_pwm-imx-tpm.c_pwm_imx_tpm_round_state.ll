; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-imx-tpm.c_pwm_imx_tpm_round_state.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-imx-tpm.c_pwm_imx_tpm_round_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.imx_tpm_pwm_param = type { i32, i32, i8* }
%struct.pwm_state = type { i32, i32, i64, i32 }
%struct.imx_tpm_pwm_chip = type { i32 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@PWM_IMX_TPM_MOD_MOD = common dso_local global i32 0, align 4
@PWM_IMX_TPM_MOD_WIDTH = common dso_local global i32 0, align 4
@PWM_IMX_TPM_SC_PS = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.imx_tpm_pwm_param*, %struct.pwm_state*, %struct.pwm_state*)* @pwm_imx_tpm_round_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_imx_tpm_round_state(%struct.pwm_chip* %0, %struct.imx_tpm_pwm_param* %1, %struct.pwm_state* %2, %struct.pwm_state* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwm_chip*, align 8
  %7 = alloca %struct.imx_tpm_pwm_param*, align 8
  %8 = alloca %struct.pwm_state*, align 8
  %9 = alloca %struct.pwm_state*, align 8
  %10 = alloca %struct.imx_tpm_pwm_chip*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %6, align 8
  store %struct.imx_tpm_pwm_param* %1, %struct.imx_tpm_pwm_param** %7, align 8
  store %struct.pwm_state* %2, %struct.pwm_state** %8, align 8
  store %struct.pwm_state* %3, %struct.pwm_state** %9, align 8
  %16 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %17 = call %struct.imx_tpm_pwm_chip* @to_imx_tpm_pwm_chip(%struct.pwm_chip* %16)
  store %struct.imx_tpm_pwm_chip* %17, %struct.imx_tpm_pwm_chip** %10, align 8
  %18 = load %struct.imx_tpm_pwm_chip*, %struct.imx_tpm_pwm_chip** %10, align 8
  %19 = getelementptr inbounds %struct.imx_tpm_pwm_chip, %struct.imx_tpm_pwm_chip* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @clk_get_rate(i32 %20)
  store i32 %21, i32* %11, align 4
  %22 = load %struct.pwm_state*, %struct.pwm_state** %9, align 8
  %23 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %11, align 4
  %26 = mul nsw i32 %24, %25
  store i32 %26, i32* %15, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* @NSEC_PER_SEC, align 4
  %29 = call i8* @DIV_ROUND_CLOSEST_ULL(i32 %27, i32 %28)
  %30 = ptrtoint i8* %29 to i32
  store i32 %30, i32* %14, align 4
  %31 = load i32, i32* %14, align 4
  %32 = load i32, i32* @PWM_IMX_TPM_MOD_MOD, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %4
  store i32 0, i32* %12, align 4
  br label %41

35:                                               ; preds = %4
  %36 = load i32, i32* %14, align 4
  %37 = call i32 @ilog2(i32 %36)
  %38 = add nsw i32 %37, 1
  %39 = load i32, i32* @PWM_IMX_TPM_MOD_WIDTH, align 4
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %35, %34
  %42 = load i32, i32* @PWM_IMX_TPM_SC_PS, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @FIELD_FIT(i32 %42, i32 %43)
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %41
  %47 = load i32, i32* @ERANGE, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %5, align 4
  br label %113

49:                                               ; preds = %41
  %50 = load i32, i32* %12, align 4
  %51 = load %struct.imx_tpm_pwm_param*, %struct.imx_tpm_pwm_param** %7, align 8
  %52 = getelementptr inbounds %struct.imx_tpm_pwm_param, %struct.imx_tpm_pwm_param* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %12, align 4
  %55 = shl i32 1, %54
  %56 = ashr i32 %55, 1
  %57 = add nsw i32 %53, %56
  %58 = load i32, i32* %12, align 4
  %59 = ashr i32 %57, %58
  store i32 %59, i32* %13, align 4
  %60 = load i32, i32* %13, align 4
  %61 = load %struct.imx_tpm_pwm_param*, %struct.imx_tpm_pwm_param** %7, align 8
  %62 = getelementptr inbounds %struct.imx_tpm_pwm_param, %struct.imx_tpm_pwm_param* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 4
  %63 = load i32, i32* %13, align 4
  %64 = load i32, i32* %12, align 4
  %65 = shl i32 %63, %64
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* @NSEC_PER_SEC, align 4
  %67 = load i32, i32* %15, align 4
  %68 = mul nsw i32 %67, %66
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = load i32, i32* %11, align 4
  %71 = call i8* @DIV_ROUND_CLOSEST_ULL(i32 %69, i32 %70)
  %72 = ptrtoint i8* %71 to i32
  %73 = load %struct.pwm_state*, %struct.pwm_state** %8, align 8
  %74 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %73, i32 0, i32 0
  store i32 %72, i32* %74, align 8
  %75 = load %struct.pwm_state*, %struct.pwm_state** %9, align 8
  %76 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %82, label %79

79:                                               ; preds = %49
  %80 = load %struct.pwm_state*, %struct.pwm_state** %8, align 8
  %81 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %80, i32 0, i32 1
  store i32 0, i32* %81, align 4
  br label %88

82:                                               ; preds = %49
  %83 = load %struct.pwm_state*, %struct.pwm_state** %9, align 8
  %84 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.pwm_state*, %struct.pwm_state** %8, align 8
  %87 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %88

88:                                               ; preds = %82, %79
  %89 = load %struct.imx_tpm_pwm_param*, %struct.imx_tpm_pwm_param** %7, align 8
  %90 = getelementptr inbounds %struct.imx_tpm_pwm_param, %struct.imx_tpm_pwm_param* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.pwm_state*, %struct.pwm_state** %8, align 8
  %93 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 %91, %94
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %15, align 4
  %97 = load %struct.pwm_state*, %struct.pwm_state** %8, align 8
  %98 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i8* @DIV_ROUND_CLOSEST_ULL(i32 %96, i32 %99)
  %101 = load %struct.imx_tpm_pwm_param*, %struct.imx_tpm_pwm_param** %7, align 8
  %102 = getelementptr inbounds %struct.imx_tpm_pwm_param, %struct.imx_tpm_pwm_param* %101, i32 0, i32 2
  store i8* %100, i8** %102, align 8
  %103 = load %struct.pwm_state*, %struct.pwm_state** %9, align 8
  %104 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.pwm_state*, %struct.pwm_state** %8, align 8
  %107 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 8
  %108 = load %struct.pwm_state*, %struct.pwm_state** %9, align 8
  %109 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.pwm_state*, %struct.pwm_state** %8, align 8
  %112 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %111, i32 0, i32 2
  store i64 %110, i64* %112, align 8
  store i32 0, i32* %5, align 4
  br label %113

113:                                              ; preds = %88, %46
  %114 = load i32, i32* %5, align 4
  ret i32 %114
}

declare dso_local %struct.imx_tpm_pwm_chip* @to_imx_tpm_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i8* @DIV_ROUND_CLOSEST_ULL(i32, i32) #1

declare dso_local i32 @ilog2(i32) #1

declare dso_local i32 @FIELD_FIT(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
