; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_process_addba_req.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_wlan_util.c_process_addba_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.mlme_ext_priv, %struct.sta_priv }
%struct.mlme_ext_priv = type { %struct.mlme_ext_info }
%struct.mlme_ext_info = type { i32 }
%struct.sta_priv = type { i32 }
%struct.sta_info = type { %struct.recv_reorder_ctrl* }
%struct.recv_reorder_ctrl = type { i32, i32 }
%struct.ADDBA_request = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @process_addba_req(%struct.adapter* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.sta_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.recv_reorder_ctrl*, align 8
  %11 = alloca %struct.sta_priv*, align 8
  %12 = alloca %struct.ADDBA_request*, align 8
  %13 = alloca %struct.mlme_ext_priv*, align 8
  %14 = alloca %struct.mlme_ext_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %15 = load %struct.adapter*, %struct.adapter** %4, align 8
  %16 = getelementptr inbounds %struct.adapter, %struct.adapter* %15, i32 0, i32 1
  store %struct.sta_priv* %16, %struct.sta_priv** %11, align 8
  %17 = load i32*, i32** %5, align 8
  %18 = bitcast i32* %17 to %struct.ADDBA_request*
  store %struct.ADDBA_request* %18, %struct.ADDBA_request** %12, align 8
  %19 = load %struct.adapter*, %struct.adapter** %4, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 0
  store %struct.mlme_ext_priv* %20, %struct.mlme_ext_priv** %13, align 8
  %21 = load %struct.mlme_ext_priv*, %struct.mlme_ext_priv** %13, align 8
  %22 = getelementptr inbounds %struct.mlme_ext_priv, %struct.mlme_ext_priv* %21, i32 0, i32 0
  store %struct.mlme_ext_info* %22, %struct.mlme_ext_info** %14, align 8
  %23 = load %struct.sta_priv*, %struct.sta_priv** %11, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = call %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv* %23, i32* %24)
  store %struct.sta_info* %25, %struct.sta_info** %7, align 8
  %26 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %27 = icmp ne %struct.sta_info* %26, null
  br i1 %27, label %28, label %49

28:                                               ; preds = %3
  %29 = load %struct.ADDBA_request*, %struct.ADDBA_request** %12, align 8
  %30 = getelementptr inbounds %struct.ADDBA_request, %struct.ADDBA_request* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le16_to_cpu(i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = ashr i32 %33, 2
  %35 = and i32 %34, 15
  store i32 %35, i32* %8, align 4
  %36 = load %struct.sta_info*, %struct.sta_info** %7, align 8
  %37 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %36, i32 0, i32 0
  %38 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.recv_reorder_ctrl, %struct.recv_reorder_ctrl* %38, i64 %40
  store %struct.recv_reorder_ctrl* %41, %struct.recv_reorder_ctrl** %10, align 8
  %42 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %10, align 8
  %43 = getelementptr inbounds %struct.recv_reorder_ctrl, %struct.recv_reorder_ctrl* %42, i32 0, i32 0
  store i32 65535, i32* %43, align 4
  %44 = load %struct.mlme_ext_info*, %struct.mlme_ext_info** %14, align 8
  %45 = getelementptr inbounds %struct.mlme_ext_info, %struct.mlme_ext_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.recv_reorder_ctrl*, %struct.recv_reorder_ctrl** %10, align 8
  %48 = getelementptr inbounds %struct.recv_reorder_ctrl, %struct.recv_reorder_ctrl* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  br label %49

49:                                               ; preds = %28, %3
  ret void
}

declare dso_local %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv*, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
