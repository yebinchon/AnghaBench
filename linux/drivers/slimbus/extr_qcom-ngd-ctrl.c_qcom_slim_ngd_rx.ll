; ModuleID = '/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ngd-ctrl.c_qcom_slim_ngd_rx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/slimbus/extr_qcom-ngd-ctrl.c_qcom_slim_ngd_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qcom_slim_ngd_ctrl = type { i32, i32, i32, i32 }

@SLIM_USR_MC_MASTER_CAPABILITY = common dso_local global i64 0, align 8
@SLIM_MSG_MT_SRC_REFERRED_USER = common dso_local global i64 0, align 8
@SLIM_MSG_MC_REPLY_INFORMATION = common dso_local global i64 0, align 8
@SLIM_MSG_MC_REPLY_VALUE = common dso_local global i64 0, align 8
@SLIM_USR_MC_ADDR_REPLY = common dso_local global i64 0, align 8
@SLIM_USR_MC_GENERIC_ACK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qcom_slim_ngd_ctrl*, i64*)* @qcom_slim_ngd_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qcom_slim_ngd_rx(%struct.qcom_slim_ngd_ctrl* %0, i64* %1) #0 {
  %3 = alloca %struct.qcom_slim_ngd_ctrl*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.qcom_slim_ngd_ctrl* %0, %struct.qcom_slim_ngd_ctrl** %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load i64*, i64** %4, align 8
  %9 = getelementptr inbounds i64, i64* %8, i64 0
  %10 = load i64, i64* %9, align 8
  %11 = call i64 @SLIM_HEADER_GET_MT(i64 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64*, i64** %4, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = call i64 @SLIM_HEADER_GET_RL(i64 %14)
  store i64 %15, i64* %7, align 8
  %16 = load i64*, i64** %4, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 1
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @SLIM_HEADER_GET_MC(i64 %18)
  store i64 %19, i64* %5, align 8
  %20 = load i64, i64* %5, align 8
  %21 = load i64, i64* @SLIM_USR_MC_MASTER_CAPABILITY, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %2
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @SLIM_MSG_MT_SRC_REFERRED_USER, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %23
  %28 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %3, align 8
  %29 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %3, align 8
  %32 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %31, i32 0, i32 2
  %33 = call i32 @queue_work(i32 %30, i32* %32)
  br label %34

34:                                               ; preds = %27, %23, %2
  %35 = load i64, i64* %5, align 8
  %36 = load i64, i64* @SLIM_MSG_MC_REPLY_INFORMATION, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %58, label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %5, align 8
  %40 = load i64, i64* @SLIM_MSG_MC_REPLY_VALUE, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %58, label %42

42:                                               ; preds = %38
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @SLIM_USR_MC_ADDR_REPLY, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @SLIM_MSG_MT_SRC_REFERRED_USER, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %58, label %50

50:                                               ; preds = %46, %42
  %51 = load i64, i64* %5, align 8
  %52 = load i64, i64* @SLIM_USR_MC_GENERIC_ACK, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %73

54:                                               ; preds = %50
  %55 = load i64, i64* %6, align 8
  %56 = load i64, i64* @SLIM_MSG_MT_SRC_REFERRED_USER, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %73

58:                                               ; preds = %54, %46, %38, %34
  %59 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %3, align 8
  %60 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %59, i32 0, i32 1
  %61 = load i64*, i64** %4, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 4
  %63 = load i64*, i64** %4, align 8
  %64 = getelementptr inbounds i64, i64* %63, i64 3
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* %7, align 8
  %67 = sub nsw i64 %66, 4
  %68 = call i32 @slim_msg_response(i32* %60, i64* %62, i64 %65, i64 %67)
  %69 = load %struct.qcom_slim_ngd_ctrl*, %struct.qcom_slim_ngd_ctrl** %3, align 8
  %70 = getelementptr inbounds %struct.qcom_slim_ngd_ctrl, %struct.qcom_slim_ngd_ctrl* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @pm_runtime_mark_last_busy(i32 %71)
  br label %73

73:                                               ; preds = %58, %54, %50
  ret void
}

declare dso_local i64 @SLIM_HEADER_GET_MT(i64) #1

declare dso_local i64 @SLIM_HEADER_GET_RL(i64) #1

declare dso_local i64 @SLIM_HEADER_GET_MC(i64) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @slim_msg_response(i32*, i64*, i64, i64) #1

declare dso_local i32 @pm_runtime_mark_last_busy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
