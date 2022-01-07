; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_r8712_got_addbareq_event_callback.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_mlme.c_r8712_got_addbareq_event_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.sta_priv }
%struct.sta_priv = type { i32 }
%struct.ADDBA_Req_Report_parm = type { i64, i32 }
%struct.sta_info = type { %struct.recv_reorder_ctrl* }
%struct.recv_reorder_ctrl = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @r8712_got_addbareq_event_callback(%struct._adapter* %0, i32* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ADDBA_Req_Report_parm*, align 8
  %6 = alloca %struct.sta_info*, align 8
  %7 = alloca %struct.sta_priv*, align 8
  %8 = alloca %struct.recv_reorder_ctrl*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load i32*, i32** %4, align 8
  %10 = bitcast i32* %9 to %struct.ADDBA_Req_Report_parm*
  store %struct.ADDBA_Req_Report_parm* %10, %struct.ADDBA_Req_Report_parm** %5, align 8
  %11 = load %struct._adapter*, %struct._adapter** %3, align 8
  %12 = getelementptr inbounds %struct._adapter, %struct._adapter* %11, i32 0, i32 0
  store %struct.sta_priv* %12, %struct.sta_priv** %7, align 8
  store %struct.recv_reorder_ctrl* null, %struct.recv_reorder_ctrl** %8, align 8
  %13 = load %struct.sta_priv*, %struct.sta_priv** %7, align 8
  %14 = load %struct.ADDBA_Req_Report_parm*, %struct.ADDBA_Req_Report_parm** %5, align 8
  %15 = getelementptr inbounds %struct.ADDBA_Req_Report_parm, %struct.ADDBA_Req_Report_parm* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 8
  %17 = call %struct.sta_info* @r8712_get_stainfo(%struct.sta_priv* %13, i32 %16)
  store %struct.sta_info* %17, %struct.sta_info** %6, align 8
  %18 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %19 = icmp ne %struct.sta_info* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %2
  %21 = load %struct.sta_info*, %struct.sta_info** %6, align 8
  %22 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %21, i32 0, i32 0
  %23 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %22, align 8
  %24 = load %struct.ADDBA_Req_Report_parm*, %struct.ADDBA_Req_Report_parm** %5, align 8
  %25 = getelementptr inbounds %struct.ADDBA_Req_Report_parm, %struct.ADDBA_Req_Report_parm* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds %struct.recv_reorder_ctrl, %struct.recv_reorder_ctrl* %23, i64 %26
  store %struct.recv_reorder_ctrl* %27, %struct.recv_reorder_ctrl** %8, align 8
  %28 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %8, align 8
  %29 = getelementptr inbounds %struct.recv_reorder_ctrl, %struct.recv_reorder_ctrl* %28, i32 0, i32 0
  store i32 65535, i32* %29, align 4
  br label %30

30:                                               ; preds = %20, %2
  ret void
}

declare dso_local %struct.sta_info* @r8712_get_stainfo(%struct.sta_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
