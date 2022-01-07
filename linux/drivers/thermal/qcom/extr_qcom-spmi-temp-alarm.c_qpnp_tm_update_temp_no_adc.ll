; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_qcom-spmi-temp-alarm.c_qpnp_tm_update_temp_no_adc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_qcom-spmi-temp-alarm.c_qpnp_tm_update_temp_no_adc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qpnp_tm_chip = type { i64, i32, i32, i32, i32 }

@QPNP_TM_SUBTYPE_GEN1 = common dso_local global i64 0, align 8
@alarm_state_map = common dso_local global i32* null, align 8
@TEMP_STAGE_STEP = common dso_local global i32 0, align 4
@TEMP_THRESH_STEP = common dso_local global i32 0, align 4
@TEMP_STAGE_HYSTERESIS = common dso_local global i32 0, align 4
@TEMP_THRESH_MIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qpnp_tm_chip*)* @qpnp_tm_update_temp_no_adc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qpnp_tm_update_temp_no_adc(%struct.qpnp_tm_chip* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qpnp_tm_chip*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.qpnp_tm_chip* %0, %struct.qpnp_tm_chip** %3, align 8
  %8 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %3, align 8
  %9 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %8, i32 0, i32 4
  %10 = call i32 @mutex_is_locked(i32* %9)
  %11 = icmp ne i32 %10, 0
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %3, align 8
  %16 = call i32 @qpnp_tm_get_temp_stage(%struct.qpnp_tm_chip* %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %7, align 4
  store i32 %20, i32* %2, align 4
  br label %92

21:                                               ; preds = %1
  %22 = load i32, i32* %7, align 4
  store i32 %22, i32* %4, align 4
  %23 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %3, align 8
  %24 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @QPNP_TM_SUBTYPE_GEN1, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  store i32 %29, i32* %5, align 4
  %30 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %3, align 8
  %31 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  store i32 %32, i32* %6, align 4
  br label %46

33:                                               ; preds = %21
  %34 = load i32*, i32** @alarm_state_map, align 8
  %35 = load i32, i32* %4, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %5, align 4
  %39 = load i32*, i32** @alarm_state_map, align 8
  %40 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %3, align 8
  %41 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %33, %28
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = icmp ugt i32 %47, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %46
  %51 = load i32, i32* %5, align 4
  %52 = sub i32 %51, 1
  %53 = load i32, i32* @TEMP_STAGE_STEP, align 4
  %54 = mul i32 %52, %53
  %55 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %3, align 8
  %56 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = load i32, i32* @TEMP_THRESH_STEP, align 4
  %59 = mul i32 %57, %58
  %60 = add i32 %54, %59
  %61 = load i32, i32* @TEMP_STAGE_HYSTERESIS, align 4
  %62 = add i32 %60, %61
  %63 = load i32, i32* @TEMP_THRESH_MIN, align 4
  %64 = add i32 %62, %63
  %65 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %3, align 8
  %66 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %65, i32 0, i32 2
  store i32 %64, i32* %66, align 4
  br label %88

67:                                               ; preds = %46
  %68 = load i32, i32* %5, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp ult i32 %68, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %67
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @TEMP_STAGE_STEP, align 4
  %74 = mul i32 %72, %73
  %75 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %3, align 8
  %76 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @TEMP_THRESH_STEP, align 4
  %79 = mul i32 %77, %78
  %80 = add i32 %74, %79
  %81 = load i32, i32* @TEMP_STAGE_HYSTERESIS, align 4
  %82 = sub i32 %80, %81
  %83 = load i32, i32* @TEMP_THRESH_MIN, align 4
  %84 = add i32 %82, %83
  %85 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %3, align 8
  %86 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %85, i32 0, i32 2
  store i32 %84, i32* %86, align 4
  br label %87

87:                                               ; preds = %71, %67
  br label %88

88:                                               ; preds = %87, %50
  %89 = load i32, i32* %4, align 4
  %90 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %3, align 8
  %91 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %90, i32 0, i32 1
  store i32 %89, i32* %91, align 8
  store i32 0, i32* %2, align 4
  br label %92

92:                                               ; preds = %88, %19
  %93 = load i32, i32* %2, align 4
  ret i32 %93
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @qpnp_tm_get_temp_stage(%struct.qpnp_tm_chip*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
