; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ngd-ctrl.c_qcom_slim_ngd_power_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ngd-ctrl.c_qcom_slim_ngd_power_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_slim_ngd_ctrl = type { i32, i32, i32, i32, i64, %struct.TYPE_2__, %struct.qcom_slim_ngd* }
%struct.TYPE_2__ = type { i32 }
%struct.qcom_slim_ngd = type { i64 }

@QCOM_SLIM_NGD_CTRL_DOWN = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@QCOM_SLIM_NGD_CTRL_ASLEEP = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"SLIM QMI power request failed:%d\0A\00", align 1
@NGD_STATUS = common dso_local global i64 0, align 8
@NGD_LADDR = common dso_local global i32 0, align 4
@QCOM_SLIM_NGD_CTRL_AWAKE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"Subsys restart: ADSP active framer\0A\00", align 1
@DEF_NGD_INT_MASK = common dso_local global i32 0, align 4
@NGD_INT_EN = common dso_local global i64 0, align 8
@NGD_RX_MSGQ_CFG = common dso_local global i64 0, align 8
@SLIM_RX_MSGQ_TIMEOUT_VAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [31 x i8] c"capability exchange timed-out\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qcom_slim_ngd_ctrl*)* @qcom_slim_ngd_power_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qcom_slim_ngd_power_up(%struct.qcom_slim_ngd_ctrl* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.qcom_slim_ngd_ctrl*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qcom_slim_ngd*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.qcom_slim_ngd_ctrl* %0, %struct.qcom_slim_ngd_ctrl** %3, align 8
  %10 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %3, align 8
  %11 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %4, align 4
  %13 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %3, align 8
  %14 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %13, i32 0, i32 6
  %15 = load %struct.qcom_slim_ngd*, %struct.qcom_slim_ngd** %14, align 8
  store %struct.qcom_slim_ngd* %15, %struct.qcom_slim_ngd** %5, align 8
  store i32 0, i32* %9, align 4
  %16 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %3, align 8
  %17 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* @QCOM_SLIM_NGD_CTRL_DOWN, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %34

22:                                               ; preds = %1
  %23 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %3, align 8
  %24 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %23, i32 0, i32 5
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* @HZ, align 4
  %27 = call i32 @wait_for_completion_timeout(i32* %25, i32 %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %22
  %31 = load i32, i32* @EREMOTEIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %134

33:                                               ; preds = %22
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %3, align 8
  %36 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* @QCOM_SLIM_NGD_CTRL_ASLEEP, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %3, align 8
  %43 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sext i32 %44 to i64
  %46 = load i64, i64* @QCOM_SLIM_NGD_CTRL_DOWN, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %61

48:                                               ; preds = %41, %34
  %49 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %3, align 8
  %50 = call i32 @qcom_slim_qmi_power_request(%struct.qcom_slim_ngd_ctrl* %49, i32 1)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %3, align 8
  %55 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %9, align 4
  %58 = call i32 (i32, i8*, ...) @dev_err(i32 %56, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %2, align 4
  br label %134

60:                                               ; preds = %48
  br label %61

61:                                               ; preds = %60, %41
  %62 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %3, align 8
  %63 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %62, i32 0, i32 4
  %64 = load i64, i64* %63, align 8
  %65 = call i8* @readl_relaxed(i64 %64)
  %66 = ptrtoint i8* %65 to i32
  %67 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %3, align 8
  %68 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 4
  %69 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %3, align 8
  %70 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = ashr i32 %71, 16
  store i32 %72, i32* %70, align 4
  %73 = load %struct.qcom_slim_ngd*, %struct.qcom_slim_ngd** %5, align 8
  %74 = getelementptr inbounds %struct.qcom_slim_ngd, %struct.qcom_slim_ngd* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* @NGD_STATUS, align 8
  %77 = add nsw i64 %75, %76
  %78 = call i8* @readl_relaxed(i64 %77)
  %79 = ptrtoint i8* %78 to i32
  store i32 %79, i32* %6, align 4
  %80 = load i32, i32* %6, align 4
  %81 = load i32, i32* @NGD_LADDR, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %61
  %85 = load i32, i32* %4, align 4
  %86 = load i32, i32* @QCOM_SLIM_NGD_CTRL_AWAKE, align 4
  %87 = icmp eq i32 %85, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %84
  %89 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %3, align 8
  %90 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = call i32 @dev_info(i32 %91, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %134

93:                                               ; preds = %84
  store i32 0, i32* %2, align 4
  br label %134

94:                                               ; preds = %61
  %95 = load i32, i32* @DEF_NGD_INT_MASK, align 4
  %96 = load %struct.qcom_slim_ngd*, %struct.qcom_slim_ngd** %5, align 8
  %97 = getelementptr inbounds %struct.qcom_slim_ngd, %struct.qcom_slim_ngd* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @NGD_INT_EN, align 8
  %100 = add nsw i64 %98, %99
  %101 = call i32 @writel_relaxed(i32 %95, i64 %100)
  %102 = load %struct.qcom_slim_ngd*, %struct.qcom_slim_ngd** %5, align 8
  %103 = getelementptr inbounds %struct.qcom_slim_ngd, %struct.qcom_slim_ngd* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @NGD_RX_MSGQ_CFG, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i8* @readl_relaxed(i64 %106)
  %108 = ptrtoint i8* %107 to i32
  store i32 %108, i32* %7, align 4
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* @SLIM_RX_MSGQ_TIMEOUT_VAL, align 4
  %111 = or i32 %109, %110
  %112 = load %struct.qcom_slim_ngd*, %struct.qcom_slim_ngd** %5, align 8
  %113 = getelementptr inbounds %struct.qcom_slim_ngd, %struct.qcom_slim_ngd* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @NGD_RX_MSGQ_CFG, align 8
  %116 = add nsw i64 %114, %115
  %117 = call i32 @writel_relaxed(i32 %111, i64 %116)
  %118 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %3, align 8
  %119 = call i32 @qcom_slim_ngd_setup(%struct.qcom_slim_ngd_ctrl* %118)
  %120 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %3, align 8
  %121 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %120, i32 0, i32 3
  %122 = load i32, i32* @HZ, align 4
  %123 = call i32 @wait_for_completion_timeout(i32* %121, i32 %122)
  store i32 %123, i32* %8, align 4
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %133, label %126

126:                                              ; preds = %94
  %127 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %3, align 8
  %128 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 (i32, i8*, ...) @dev_err(i32 %129, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %131 = load i32, i32* @ETIMEDOUT, align 4
  %132 = sub nsw i32 0, %131
  store i32 %132, i32* %2, align 4
  br label %134

133:                                              ; preds = %94
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %133, %126, %93, %88, %53, %30
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @wait_for_completion_timeout(i32*, i32) #1

declare dso_local i32 @qcom_slim_qmi_power_request(%struct.qcom_slim_ngd_ctrl*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i8* @readl_relaxed(i64) #1

declare dso_local i32 @dev_info(i32, i8*) #1

declare dso_local i32 @writel_relaxed(i32, i64) #1

declare dso_local i32 @qcom_slim_ngd_setup(%struct.qcom_slim_ngd_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
