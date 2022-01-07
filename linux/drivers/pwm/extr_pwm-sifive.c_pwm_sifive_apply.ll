; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sifive.c_pwm_sifive_apply.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-sifive.c_pwm_sifive_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32, %struct.pwm_state }
%struct.pwm_state = type { i64, i32, i32, i64 }
%struct.pwm_sifive_ddata = type { i64, i32, i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PWM_POLARITY_INVERSED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"Enable clk failed\0A\00", align 1
@PWM_SIFIVE_CMPWIDTH = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@PWM_SIFIVE_PWMCMP0 = common dso_local global i64 0, align 8
@PWM_SIFIVE_SIZE_PWMCMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, %struct.pwm_state*)* @pwm_sifive_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_sifive_apply(%struct.pwm_chip* %0, %struct.pwm_device* %1, %struct.pwm_state* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pwm_chip*, align 8
  %6 = alloca %struct.pwm_device*, align 8
  %7 = alloca %struct.pwm_state*, align 8
  %8 = alloca %struct.pwm_sifive_ddata*, align 8
  %9 = alloca %struct.pwm_state, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %5, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %6, align 8
  store %struct.pwm_state* %2, %struct.pwm_state** %7, align 8
  %15 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %16 = call %struct.pwm_sifive_ddata* @pwm_sifive_chip_to_ddata(%struct.pwm_chip* %15)
  store %struct.pwm_sifive_ddata* %16, %struct.pwm_sifive_ddata** %8, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %18 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @PWM_POLARITY_INVERSED, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %136

25:                                               ; preds = %3
  %26 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %8, align 8
  %27 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @clk_enable(i32 %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %25
  %33 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %8, align 8
  %34 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %33, i32 0, i32 5
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* %13, align 4
  store i32 %38, i32* %4, align 4
  br label %136

39:                                               ; preds = %25
  %40 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %8, align 8
  %41 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %40, i32 0, i32 2
  %42 = call i32 @mutex_lock(i32* %41)
  %43 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %44 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %43, i32 0, i32 1
  %45 = bitcast %struct.pwm_state* %9 to i8*
  %46 = bitcast %struct.pwm_state* %44 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 24, i1 false)
  %47 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %9, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  store i32 %48, i32* %12, align 4
  %49 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %50 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %10, align 4
  %52 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %53 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %57, label %56

56:                                               ; preds = %39
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %56, %39
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @PWM_SIFIVE_CMPWIDTH, align 4
  %60 = shl i32 1, %59
  %61 = mul i32 %58, %60
  %62 = zext i32 %61 to i64
  store i64 %62, i64* %11, align 8
  %63 = load i64, i64* %11, align 8
  %64 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %65 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %64, i32 0, i32 3
  %66 = load i64, i64* %65, align 8
  %67 = call i32 @DIV_ROUND_CLOSEST_ULL(i64 %63, i64 %66)
  store i32 %67, i32* %14, align 4
  %68 = load i32, i32* %14, align 4
  %69 = load i32, i32* @PWM_SIFIVE_CMPWIDTH, align 4
  %70 = shl i32 1, %69
  %71 = sub i32 %70, 1
  %72 = call i32 @min(i32 %68, i32 %71)
  store i32 %72, i32* %14, align 4
  %73 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %74 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %73, i32 0, i32 3
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %8, align 8
  %77 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %75, %78
  br i1 %79, label %80, label %100

80:                                               ; preds = %57
  %81 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %8, align 8
  %82 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 1
  br i1 %84, label %85, label %88

85:                                               ; preds = %80
  %86 = load i32, i32* @EBUSY, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %13, align 4
  br label %127

88:                                               ; preds = %80
  %89 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %90 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %89, i32 0, i32 3
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %8, align 8
  %93 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  %94 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %8, align 8
  %95 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %8, align 8
  %96 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %95, i32 0, i32 3
  %97 = load i32, i32* %96, align 8
  %98 = call i32 @clk_get_rate(i32 %97)
  %99 = call i32 @pwm_sifive_update_clock(%struct.pwm_sifive_ddata* %94, i32 %98)
  br label %100

100:                                              ; preds = %88, %57
  %101 = load i32, i32* %14, align 4
  %102 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %8, align 8
  %103 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @PWM_SIFIVE_PWMCMP0, align 8
  %106 = add nsw i64 %104, %105
  %107 = load %struct.pwm_device*, %struct.pwm_device** %6, align 8
  %108 = getelementptr inbounds %struct.pwm_device, %struct.pwm_device* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* @PWM_SIFIVE_SIZE_PWMCMP, align 4
  %111 = mul nsw i32 %109, %110
  %112 = sext i32 %111 to i64
  %113 = add nsw i64 %106, %112
  %114 = call i32 @writel(i32 %101, i64 %113)
  %115 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %116 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %12, align 4
  %119 = icmp ne i32 %117, %118
  br i1 %119, label %120, label %126

120:                                              ; preds = %100
  %121 = load %struct.pwm_chip*, %struct.pwm_chip** %5, align 8
  %122 = load %struct.pwm_state*, %struct.pwm_state** %7, align 8
  %123 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 8
  %125 = call i32 @pwm_sifive_enable(%struct.pwm_chip* %121, i32 %124)
  br label %126

126:                                              ; preds = %120, %100
  br label %127

127:                                              ; preds = %126, %85
  %128 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %8, align 8
  %129 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 8
  %131 = call i32 @clk_disable(i32 %130)
  %132 = load %struct.pwm_sifive_ddata*, %struct.pwm_sifive_ddata** %8, align 8
  %133 = getelementptr inbounds %struct.pwm_sifive_ddata, %struct.pwm_sifive_ddata* %132, i32 0, i32 2
  %134 = call i32 @mutex_unlock(i32* %133)
  %135 = load i32, i32* %13, align 4
  store i32 %135, i32* %4, align 4
  br label %136

136:                                              ; preds = %127, %32, %22
  %137 = load i32, i32* %4, align 4
  ret i32 %137
}

declare dso_local %struct.pwm_sifive_ddata* @pwm_sifive_chip_to_ddata(%struct.pwm_chip*) #1

declare dso_local i32 @clk_enable(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @DIV_ROUND_CLOSEST_ULL(i64, i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @pwm_sifive_update_clock(%struct.pwm_sifive_ddata*, i32) #1

declare dso_local i32 @clk_get_rate(i32) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @pwm_sifive_enable(%struct.pwm_chip*, i32) #1

declare dso_local i32 @clk_disable(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
