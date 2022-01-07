; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_OnProbeRsp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_OnProbeRsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv }
%struct.mlme_ext_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.recv_frame = type { i32 }

@SCAN_PROCESS = common dso_local global i64 0, align 8
@_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.adapter*, %struct.recv_frame*)* @OnProbeRsp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OnProbeRsp(%struct.adapter* %0, %struct.recv_frame* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca %struct.recv_frame*, align 8
  %6 = alloca %struct.mlme_ext_priv*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store %struct.recv_frame* %1, %struct.recv_frame** %5, align 8
  %7 = load %struct.adapter*, %struct.adapter** %4, align 8
  %8 = getelementptr inbounds %struct.adapter, %struct.adapter* %7, i32 0, i32 0
  store %struct.mlme_ext_priv* %8, %struct.mlme_ext_priv** %6, align 8
  %9 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %6, align 8
  %10 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @SCAN_PROCESS, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.adapter*, %struct.adapter** %4, align 8
  %17 = load %struct.recv_frame*, %struct.recv_frame** %5, align 8
  %18 = call i32 @report_survey_event(%struct.adapter* %16, %struct.recv_frame* %17)
  %19 = load i32, i32* @_SUCCESS, align 4
  store i32 %19, i32* %3, align 4
  br label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @_SUCCESS, align 4
  store i32 %21, i32* %3, align 4
  br label %22

22:                                               ; preds = %20, %15
  %23 = load i32, i32* %3, align 4
  ret i32 %23
}

declare dso_local i32 @report_survey_event(%struct.adapter*, %struct.recv_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
