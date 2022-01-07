; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-fsl-ftm.c_fsl_pwm_apply_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-fsl-ftm.c_fsl_pwm_apply_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_pwm_chip = type { i32, %struct.fsl_pwm_periodcfg, i32*, %struct.TYPE_2__ }
%struct.fsl_pwm_periodcfg = type { i64, i32, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.pwm_device = type { i32 }
%struct.pwm_state = type { i64, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"failed to calculate new period\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"Cannot change period for PWM %u, disable other PWMs first\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@FTM_SC = common dso_local global i32 0, align 4
@FTM_SC_CLK_MASK = common dso_local global i64 0, align 8
@FTM_SC_PS_MASK = common dso_local global i64 0, align 8
@FTM_MOD = common dso_local global i32 0, align 4
@FTM_CSC_MSB = common dso_local global i32 0, align 4
@FTM_CSC_ELSB = common dso_local global i32 0, align 4
@PWM_POLARITY_INVERSED = common dso_local global i64 0, align 8
@FTM_POL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_pwm_chip*, %struct.pwm_device*, %struct.pwm_state*)* @fsl_pwm_apply_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_pwm_apply_config(%struct.fsl_pwm_chip* %0, %struct.pwm_device* %1, %struct.pwm_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.fsl_pwm_chip*, align 8
  %6 = alloca %struct.pwm_device*, align 8
  %7 = alloca %struct.pwm_state*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.fsl_pwm_periodcfg, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.fsl_pwm_chip* %0, %struct.fsl_pwm_chip** %5, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %6, align 8
  store %struct.pwm_state* %2, %struct.pwm_state** %7, align 8
  store i32 0, i32* %11, align 4
  %15 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %5, align 8
  %16 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %17 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @fsl_pwm_calculate_period(%struct.fsl_pwm_chip* %15, i32 %18, %struct.fsl_pwm_periodcfg* %10)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %29, label %21

21:                                               ; preds = %3
  %22 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %5, align 8
  %23 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i32, i8*, ...) @dev_err(i32 %25, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %4, align 4
  br label %180

29:                                               ; preds = %3
  %30 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %5, align 8
  %31 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %32 = call i32 @fsl_pwm_is_any_pwm_enabled(%struct.fsl_pwm_chip* %30, %struct.pwm_device* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29
  store i32 1, i32* %11, align 4
  br label %96

35:                                               ; preds = %29
  %36 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %5, align 8
  %37 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %36, i32 0, i32 1
  %38 = call i32 @fsl_pwm_periodcfg_are_equal(%struct.fsl_pwm_periodcfg* %37, %struct.fsl_pwm_periodcfg* %10)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %95, label %40

40:                                               ; preds = %35
  %41 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %5, align 8
  %42 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %43 = call i64 @fsl_pwm_is_other_pwm_enabled(%struct.fsl_pwm_chip* %41, %struct.pwm_device* %42)
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %56

45:                                               ; preds = %40
  %46 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %5, align 8
  %47 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %51 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 (i32, i8*, ...) @dev_err(i32 %49, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @EBUSY, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %4, align 4
  br label %180

56:                                               ; preds = %40
  %57 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %5, align 8
  %58 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.fsl_pwm_periodcfg, %struct.fsl_pwm_periodcfg* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.fsl_pwm_periodcfg, %struct.fsl_pwm_periodcfg* %10, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %60, %62
  br i1 %63, label %64, label %94

64:                                               ; preds = %56
  %65 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %5, align 8
  %66 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %65, i32 0, i32 1
  %67 = getelementptr inbounds %struct.fsl_pwm_periodcfg, %struct.fsl_pwm_periodcfg* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %13, align 4
  %70 = getelementptr inbounds %struct.fsl_pwm_periodcfg, %struct.fsl_pwm_periodcfg* %10, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = trunc i64 %71 to i32
  store i32 %72, i32* %14, align 4
  %73 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %5, align 8
  %74 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = load i32, i32* %14, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %75, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @clk_prepare_enable(i32 %79)
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %12, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %64
  %84 = load i32, i32* %12, align 4
  store i32 %84, i32* %4, align 4
  br label %180

85:                                               ; preds = %64
  %86 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %5, align 8
  %87 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %13, align 4
  %90 = zext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @clk_disable_unprepare(i32 %92)
  br label %94

94:                                               ; preds = %85, %56
  store i32 1, i32* %11, align 4
  br label %95

95:                                               ; preds = %94, %35
  br label %96

96:                                               ; preds = %95, %34
  %97 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %5, align 8
  %98 = call i32 @ftm_clear_write_protection(%struct.fsl_pwm_chip* %97)
  %99 = load i32, i32* %11, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %131

101:                                              ; preds = %96
  %102 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %5, align 8
  %103 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* @FTM_SC, align 4
  %106 = load i64, i64* @FTM_SC_CLK_MASK, align 8
  %107 = getelementptr inbounds %struct.fsl_pwm_periodcfg, %struct.fsl_pwm_periodcfg* %10, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = trunc i64 %108 to i32
  %110 = call i64 @FTM_SC_CLK(i32 %109)
  %111 = call i32 @regmap_update_bits(i32 %104, i32 %105, i64 %106, i64 %110)
  %112 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %5, align 8
  %113 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* @FTM_SC, align 4
  %116 = load i64, i64* @FTM_SC_PS_MASK, align 8
  %117 = getelementptr inbounds %struct.fsl_pwm_periodcfg, %struct.fsl_pwm_periodcfg* %10, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = call i32 @regmap_update_bits(i32 %114, i32 %115, i64 %116, i64 %118)
  %120 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %5, align 8
  %121 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @FTM_MOD, align 4
  %124 = getelementptr inbounds %struct.fsl_pwm_periodcfg, %struct.fsl_pwm_periodcfg* %10, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @regmap_write(i32 %122, i32 %123, i32 %125)
  %127 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %5, align 8
  %128 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %127, i32 0, i32 1
  %129 = bitcast %struct.fsl_pwm_periodcfg* %128 to i8*
  %130 = bitcast %struct.fsl_pwm_periodcfg* %10 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %129, i8* align 8 %130, i64 24, i1 false)
  br label %131

131:                                              ; preds = %101, %96
  %132 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %5, align 8
  %133 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %134 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @fsl_pwm_calculate_duty(%struct.fsl_pwm_chip* %132, i32 %135)
  store i32 %136, i32* %8, align 4
  %137 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %5, align 8
  %138 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %141 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @FTM_CSC(i32 %142)
  %144 = load i32, i32* @FTM_CSC_MSB, align 4
  %145 = load i32, i32* @FTM_CSC_ELSB, align 4
  %146 = or i32 %144, %145
  %147 = call i32 @regmap_write(i32 %139, i32 %143, i32 %146)
  %148 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %5, align 8
  %149 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %152 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @FTM_CV(i32 %153)
  %155 = load i32, i32* %8, align 4
  %156 = call i32 @regmap_write(i32 %150, i32 %154, i32 %155)
  store i64 0, i64* %9, align 8
  %157 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %158 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* @PWM_POLARITY_INVERSED, align 8
  %161 = icmp eq i64 %159, %160
  br i1 %161, label %162, label %167

162:                                              ; preds = %131
  %163 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %164 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i64 @BIT(i32 %165)
  store i64 %166, i64* %9, align 8
  br label %167

167:                                              ; preds = %162, %131
  %168 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %5, align 8
  %169 = getelementptr inbounds %struct.fsl_pwm_chip, %struct.fsl_pwm_chip* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = load i32, i32* @FTM_POL, align 4
  %172 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %173 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = call i64 @BIT(i32 %174)
  %176 = load i64, i64* %9, align 8
  %177 = call i32 @regmap_update_bits(i32 %170, i32 %171, i64 %175, i64 %176)
  %178 = load %struct.fsl_pwm_chip*, %struct.fsl_pwm_chip** %5, align 8
  %179 = call i32 @ftm_set_write_protection(%struct.fsl_pwm_chip* %178)
  store i32 0, i32* %4, align 4
  br label %180

180:                                              ; preds = %167, %83, %45, %21
  %181 = load i32, i32* %4, align 4
  ret i32 %181
}

declare dso_local i32 @fsl_pwm_calculate_period(%struct.fsl_pwm_chip*, i32, %struct.fsl_pwm_periodcfg*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @fsl_pwm_is_any_pwm_enabled(%struct.fsl_pwm_chip*, %struct.pwm_device*) #1

declare dso_local i32 @fsl_pwm_periodcfg_are_equal(%struct.fsl_pwm_periodcfg*, %struct.fsl_pwm_periodcfg*) #1

declare dso_local i64 @fsl_pwm_is_other_pwm_enabled(%struct.fsl_pwm_chip*, %struct.pwm_device*) #1

declare dso_local i32 @clk_prepare_enable(i32) #1

declare dso_local i32 @clk_disable_unprepare(i32) #1

declare dso_local i32 @ftm_clear_write_protection(%struct.fsl_pwm_chip*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i64, i64) #1

declare dso_local i64 @FTM_SC_CLK(i32) #1

declare dso_local i32 @regmap_write(i32, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @fsl_pwm_calculate_duty(%struct.fsl_pwm_chip*, i32) #1

declare dso_local i32 @FTM_CSC(i32) #1

declare dso_local i32 @FTM_CV(i32) #1

declare dso_local i64 @BIT(i32) #1

declare dso_local i32 @ftm_set_write_protection(%struct.fsl_pwm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
