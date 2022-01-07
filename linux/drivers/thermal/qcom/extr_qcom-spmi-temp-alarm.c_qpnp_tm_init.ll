; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_qcom-spmi-temp-alarm.c_qpnp_tm_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_qcom-spmi-temp-alarm.c_qpnp_tm_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qpnp_tm_chip = type { i32, i32, i64, i32, i32, i64 }

@QPNP_TM_REG_SHUTDOWN_CTRL1 = common dso_local global i32 0, align 4
@SHUTDOWN_CTRL1_THRESHOLD_MASK = common dso_local global i32 0, align 4
@DEFAULT_TEMP = common dso_local global i64 0, align 8
@QPNP_TM_SUBTYPE_GEN1 = common dso_local global i64 0, align 8
@alarm_state_map = common dso_local global i32* null, align 8
@TEMP_THRESH_STEP = common dso_local global i32 0, align 4
@TEMP_STAGE_STEP = common dso_local global i32 0, align 4
@TEMP_THRESH_MIN = common dso_local global i64 0, align 8
@ALARM_CTRL_FORCE_ENABLE = common dso_local global i32 0, align 4
@QPNP_TM_REG_ALARM_CTRL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qpnp_tm_chip*)* @qpnp_tm_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qpnp_tm_init(%struct.qpnp_tm_chip* %0) #0 {
  %2 = alloca %struct.qpnp_tm_chip*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.qpnp_tm_chip* %0, %struct.qpnp_tm_chip** %2, align 8
  store i32 0, i32* %5, align 4
  %7 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %2, align 8
  %8 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %7, i32 0, i32 4
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %2, align 8
  %11 = load i32, i32* @QPNP_TM_REG_SHUTDOWN_CTRL1, align 4
  %12 = call i32 @qpnp_tm_read(%struct.qpnp_tm_chip* %10, i32 %11, i32* %5)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %88

16:                                               ; preds = %1
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @SHUTDOWN_CTRL1_THRESHOLD_MASK, align 4
  %19 = and i32 %17, %18
  %20 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %2, align 8
  %21 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load i64, i64* @DEFAULT_TEMP, align 8
  %23 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %2, align 8
  %24 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %23, i32 0, i32 5
  store i64 %22, i64* %24, align 8
  %25 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %2, align 8
  %26 = call i32 @qpnp_tm_get_temp_stage(%struct.qpnp_tm_chip* %25)
  store i32 %26, i32* %4, align 4
  %27 = load i32, i32* %4, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %16
  br label %88

30:                                               ; preds = %16
  %31 = load i32, i32* %4, align 4
  %32 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %2, align 8
  %33 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %2, align 8
  %35 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @QPNP_TM_SUBTYPE_GEN1, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %30
  %40 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %2, align 8
  %41 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  br label %51

43:                                               ; preds = %30
  %44 = load i32*, i32** @alarm_state_map, align 8
  %45 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %2, align 8
  %46 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  %50 = load i32, i32* %49, align 4
  br label %51

51:                                               ; preds = %43, %39
  %52 = phi i32 [ %42, %39 ], [ %50, %43 ]
  store i32 %52, i32* %3, align 4
  %53 = load i32, i32* %3, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %71

55:                                               ; preds = %51
  %56 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %2, align 8
  %57 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @TEMP_THRESH_STEP, align 4
  %60 = mul i32 %58, %59
  %61 = load i32, i32* %3, align 4
  %62 = sub i32 %61, 1
  %63 = load i32, i32* @TEMP_STAGE_STEP, align 4
  %64 = mul i32 %62, %63
  %65 = add i32 %60, %64
  %66 = zext i32 %65 to i64
  %67 = load i64, i64* @TEMP_THRESH_MIN, align 8
  %68 = add nsw i64 %66, %67
  %69 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %2, align 8
  %70 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %69, i32 0, i32 5
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %55, %51
  %72 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %2, align 8
  %73 = call i32 @qpnp_tm_get_critical_trip_temp(%struct.qpnp_tm_chip* %72)
  store i32 %73, i32* %6, align 4
  %74 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %2, align 8
  %75 = load i32, i32* %6, align 4
  %76 = call i32 @qpnp_tm_update_critical_trip_temp(%struct.qpnp_tm_chip* %74, i32 %75)
  store i32 %76, i32* %4, align 4
  %77 = load i32, i32* %4, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %88

80:                                               ; preds = %71
  %81 = load i32, i32* @ALARM_CTRL_FORCE_ENABLE, align 4
  store i32 %81, i32* %5, align 4
  %82 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %2, align 8
  %83 = load i32, i32* @QPNP_TM_REG_ALARM_CTRL, align 4
  %84 = load i32, i32* %5, align 4
  %85 = call i32 @qpnp_tm_write(%struct.qpnp_tm_chip* %82, i32 %83, i32 %84)
  store i32 %85, i32* %4, align 4
  %86 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %2, align 8
  %87 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %86, i32 0, i32 3
  store i32 1, i32* %87, align 8
  br label %88

88:                                               ; preds = %80, %79, %29, %15
  %89 = load %struct.qpnp_tm_chip*, %struct.qpnp_tm_chip** %2, align 8
  %90 = getelementptr inbounds %struct.qpnp_tm_chip, %struct.qpnp_tm_chip* %89, i32 0, i32 4
  %91 = call i32 @mutex_unlock(i32* %90)
  %92 = load i32, i32* %4, align 4
  ret i32 %92
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @qpnp_tm_read(%struct.qpnp_tm_chip*, i32, i32*) #1

declare dso_local i32 @qpnp_tm_get_temp_stage(%struct.qpnp_tm_chip*) #1

declare dso_local i32 @qpnp_tm_get_critical_trip_temp(%struct.qpnp_tm_chip*) #1

declare dso_local i32 @qpnp_tm_update_critical_trip_temp(%struct.qpnp_tm_chip*, i32) #1

declare dso_local i32 @qpnp_tm_write(%struct.qpnp_tm_chip*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
