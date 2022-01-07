; ModuleID = '/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-tiecap.c_ecap_pwm_config.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pwm/extr_pwm-tiecap.c_ecap_pwm_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwm_chip = type { i32 }
%struct.pwm_device = type { i32 }
%struct.ecap_pwm_chip = type { i64, %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@NSEC_PER_SEC = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@ECCTL2 = common dso_local global i64 0, align 8
@ECCTL2_APWM_MODE = common dso_local global i32 0, align 4
@ECCTL2_SYNC_SEL_DISA = common dso_local global i32 0, align 4
@CAP2 = common dso_local global i64 0, align 8
@CAP1 = common dso_local global i64 0, align 8
@CAP4 = common dso_local global i64 0, align 8
@CAP3 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pwm_chip*, %struct.pwm_device*, i32, i32)* @ecap_pwm_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecap_pwm_config(%struct.pwm_chip* %0, %struct.pwm_device* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pwm_chip*, align 8
  %7 = alloca %struct.pwm_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ecap_pwm_chip*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.pwm_chip* %0, %struct.pwm_chip** %6, align 8
  store %struct.pwm_device* %1, %struct.pwm_device** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.pwm_chip*, %struct.pwm_chip** %6, align 8
  %16 = call %struct.ecap_pwm_chip* @to_ecap_pwm_chip(%struct.pwm_chip* %15)
  store %struct.ecap_pwm_chip* %16, %struct.ecap_pwm_chip** %10, align 8
  %17 = load i32, i32* %9, align 4
  %18 = load i32, i32* @NSEC_PER_SEC, align 4
  %19 = icmp sgt i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %4
  %21 = load i32, i32* @ERANGE, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %137

23:                                               ; preds = %4
  %24 = load %struct.ecap_pwm_chip*, %struct.ecap_pwm_chip** %10, align 8
  %25 = getelementptr inbounds %struct.ecap_pwm_chip, %struct.ecap_pwm_chip* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %13, align 8
  %27 = load i64, i64* %13, align 8
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = mul i64 %27, %29
  store i64 %30, i64* %13, align 8
  %31 = load i64, i64* %13, align 8
  %32 = load i32, i32* @NSEC_PER_SEC, align 4
  %33 = call i32 @do_div(i64 %31, i32 %32)
  %34 = load i64, i64* %13, align 8
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %11, align 4
  %37 = icmp slt i32 %36, 1
  br i1 %37, label %38, label %39

38:                                               ; preds = %23
  store i32 1, i32* %11, align 4
  store i32 1, i32* %12, align 4
  br label %52

39:                                               ; preds = %23
  %40 = load %struct.ecap_pwm_chip*, %struct.ecap_pwm_chip** %10, align 8
  %41 = getelementptr inbounds %struct.ecap_pwm_chip, %struct.ecap_pwm_chip* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  store i64 %42, i64* %13, align 8
  %43 = load i64, i64* %13, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 %43, %45
  store i64 %46, i64* %13, align 8
  %47 = load i64, i64* %13, align 8
  %48 = load i32, i32* @NSEC_PER_SEC, align 4
  %49 = call i32 @do_div(i64 %47, i32 %48)
  %50 = load i64, i64* %13, align 8
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %12, align 4
  br label %52

52:                                               ; preds = %39, %38
  %53 = load %struct.ecap_pwm_chip*, %struct.ecap_pwm_chip** %10, align 8
  %54 = getelementptr inbounds %struct.ecap_pwm_chip, %struct.ecap_pwm_chip* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @pm_runtime_get_sync(i32 %56)
  %58 = load %struct.ecap_pwm_chip*, %struct.ecap_pwm_chip** %10, align 8
  %59 = getelementptr inbounds %struct.ecap_pwm_chip, %struct.ecap_pwm_chip* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @ECCTL2, align 8
  %62 = add nsw i64 %60, %61
  %63 = call i32 @readw(i64 %62)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* @ECCTL2_APWM_MODE, align 4
  %65 = load i32, i32* @ECCTL2_SYNC_SEL_DISA, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* %14, align 4
  %68 = or i32 %67, %66
  store i32 %68, i32* %14, align 4
  %69 = load i32, i32* %14, align 4
  %70 = load %struct.ecap_pwm_chip*, %struct.ecap_pwm_chip** %10, align 8
  %71 = getelementptr inbounds %struct.ecap_pwm_chip, %struct.ecap_pwm_chip* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @ECCTL2, align 8
  %74 = add nsw i64 %72, %73
  %75 = call i32 @writew(i32 %69, i64 %74)
  %76 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %77 = call i32 @pwm_is_enabled(%struct.pwm_device* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %94, label %79

79:                                               ; preds = %52
  %80 = load i32, i32* %12, align 4
  %81 = load %struct.ecap_pwm_chip*, %struct.ecap_pwm_chip** %10, align 8
  %82 = getelementptr inbounds %struct.ecap_pwm_chip, %struct.ecap_pwm_chip* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @CAP2, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @writel(i32 %80, i64 %85)
  %87 = load i32, i32* %11, align 4
  %88 = load %struct.ecap_pwm_chip*, %struct.ecap_pwm_chip** %10, align 8
  %89 = getelementptr inbounds %struct.ecap_pwm_chip, %struct.ecap_pwm_chip* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @CAP1, align 8
  %92 = add nsw i64 %90, %91
  %93 = call i32 @writel(i32 %87, i64 %92)
  br label %109

94:                                               ; preds = %52
  %95 = load i32, i32* %12, align 4
  %96 = load %struct.ecap_pwm_chip*, %struct.ecap_pwm_chip** %10, align 8
  %97 = getelementptr inbounds %struct.ecap_pwm_chip, %struct.ecap_pwm_chip* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @CAP4, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @writel(i32 %95, i64 %100)
  %102 = load i32, i32* %11, align 4
  %103 = load %struct.ecap_pwm_chip*, %struct.ecap_pwm_chip** %10, align 8
  %104 = getelementptr inbounds %struct.ecap_pwm_chip, %struct.ecap_pwm_chip* %103, i32 0, i32 2
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @CAP3, align 8
  %107 = add nsw i64 %105, %106
  %108 = call i32 @writel(i32 %102, i64 %107)
  br label %109

109:                                              ; preds = %94, %79
  %110 = load %struct.pwm_device*, %struct.pwm_device** %7, align 8
  %111 = call i32 @pwm_is_enabled(%struct.pwm_device* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %131, label %113

113:                                              ; preds = %109
  %114 = load %struct.ecap_pwm_chip*, %struct.ecap_pwm_chip** %10, align 8
  %115 = getelementptr inbounds %struct.ecap_pwm_chip, %struct.ecap_pwm_chip* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @ECCTL2, align 8
  %118 = add nsw i64 %116, %117
  %119 = call i32 @readw(i64 %118)
  store i32 %119, i32* %14, align 4
  %120 = load i32, i32* @ECCTL2_APWM_MODE, align 4
  %121 = xor i32 %120, -1
  %122 = load i32, i32* %14, align 4
  %123 = and i32 %122, %121
  store i32 %123, i32* %14, align 4
  %124 = load i32, i32* %14, align 4
  %125 = load %struct.ecap_pwm_chip*, %struct.ecap_pwm_chip** %10, align 8
  %126 = getelementptr inbounds %struct.ecap_pwm_chip, %struct.ecap_pwm_chip* %125, i32 0, i32 2
  %127 = load i64, i64* %126, align 8
  %128 = load i64, i64* @ECCTL2, align 8
  %129 = add nsw i64 %127, %128
  %130 = call i32 @writew(i32 %124, i64 %129)
  br label %131

131:                                              ; preds = %113, %109
  %132 = load %struct.ecap_pwm_chip*, %struct.ecap_pwm_chip** %10, align 8
  %133 = getelementptr inbounds %struct.ecap_pwm_chip, %struct.ecap_pwm_chip* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @pm_runtime_put_sync(i32 %135)
  store i32 0, i32* %5, align 4
  br label %137

137:                                              ; preds = %131, %20
  %138 = load i32, i32* %5, align 4
  ret i32 %138
}

declare dso_local %struct.ecap_pwm_chip* @to_ecap_pwm_chip(%struct.pwm_chip*) #1

declare dso_local i32 @do_div(i64, i32) #1

declare dso_local i32 @pm_runtime_get_sync(i32) #1

declare dso_local i32 @readw(i64) #1

declare dso_local i32 @writew(i32, i64) #1

declare dso_local i32 @pwm_is_enabled(%struct.pwm_device*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @pm_runtime_put_sync(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
