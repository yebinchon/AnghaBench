; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_xmit.c_r8712_xmit_classifier.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_xmit.c_r8712_xmit_classifier.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.mlme_priv, %struct.sta_priv }
%struct.mlme_priv = type { i32 }
%struct.sta_priv = type { i32 }
%struct.xmit_frame = type { i32, %struct.pkt_attrib }
%struct.pkt_attrib = type { i32, i32, %struct.sta_info* }
%struct.sta_info = type { i32 }
%struct.__queue = type { i32, i32 }
%struct.tx_servq = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@WIFI_MP_STATE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_xmit_classifier(%struct._adapter* %0, %struct.xmit_frame* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct._adapter*, align 8
  %5 = alloca %struct.xmit_frame*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.__queue*, align 8
  %8 = alloca %struct.sta_info*, align 8
  %9 = alloca %struct.tx_servq*, align 8
  %10 = alloca %struct.pkt_attrib*, align 8
  %11 = alloca %struct.sta_priv*, align 8
  %12 = alloca %struct.mlme_priv*, align 8
  %13 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %4, align 8
  store %struct.xmit_frame* %1, %struct.xmit_frame** %5, align 8
  %14 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %15 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %14, i32 0, i32 1
  store %struct.pkt_attrib* %15, %struct.pkt_attrib** %10, align 8
  %16 = load %struct._adapter*, %struct._adapter** %4, align 8
  %17 = getelementptr inbounds %struct._adapter, %struct._adapter* %16, i32 0, i32 1
  store %struct.sta_priv* %17, %struct.sta_priv** %11, align 8
  %18 = load %struct._adapter*, %struct._adapter** %4, align 8
  %19 = getelementptr inbounds %struct._adapter, %struct._adapter* %18, i32 0, i32 0
  store %struct.mlme_priv* %19, %struct.mlme_priv** %12, align 8
  %20 = load %struct.pkt_attrib*, %struct.pkt_attrib** %10, align 8
  %21 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @is_multicast_ether_addr(i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load %struct.pkt_attrib*, %struct.pkt_attrib** %10, align 8
  %25 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %24, i32 0, i32 2
  %26 = load %struct.sta_info*, %struct.sta_info** %25, align 8
  %27 = icmp ne %struct.sta_info* %26, null
  br i1 %27, label %28, label %32

28:                                               ; preds = %2
  %29 = load %struct.pkt_attrib*, %struct.pkt_attrib** %10, align 8
  %30 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %29, i32 0, i32 2
  %31 = load %struct.sta_info*, %struct.sta_info** %30, align 8
  store %struct.sta_info* %31, %struct.sta_info** %8, align 8
  br label %56

32:                                               ; preds = %2
  %33 = load i32, i32* %13, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = load %struct._adapter*, %struct._adapter** %4, align 8
  %37 = call %struct.sta_info* @r8712_get_bcmc_stainfo(%struct._adapter* %36)
  store %struct.sta_info* %37, %struct.sta_info** %8, align 8
  br label %55

38:                                               ; preds = %32
  %39 = load %struct.mlme_priv*, %struct.mlme_priv** %12, align 8
  %40 = load i32, i32* @WIFI_MP_STATE, align 4
  %41 = call i64 @check_fwstate(%struct.mlme_priv* %39, i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %48

43:                                               ; preds = %38
  %44 = load %struct.sta_priv*, %struct.sta_priv** %11, align 8
  %45 = load %struct.mlme_priv*, %struct.mlme_priv** %12, align 8
  %46 = call i32 @get_bssid(%struct.mlme_priv* %45)
  %47 = call %struct.sta_info* @r8712_get_stainfo(%struct.sta_priv* %44, i32 %46)
  store %struct.sta_info* %47, %struct.sta_info** %8, align 8
  br label %54

48:                                               ; preds = %38
  %49 = load %struct.sta_priv*, %struct.sta_priv** %11, align 8
  %50 = load %struct.pkt_attrib*, %struct.pkt_attrib** %10, align 8
  %51 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call %struct.sta_info* @r8712_get_stainfo(%struct.sta_priv* %49, i32 %52)
  store %struct.sta_info* %53, %struct.sta_info** %8, align 8
  br label %54

54:                                               ; preds = %48, %43
  br label %55

55:                                               ; preds = %54, %35
  br label %56

56:                                               ; preds = %55, %28
  %57 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %58 = icmp eq %struct.sta_info* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %56
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %98

62:                                               ; preds = %56
  %63 = load %struct._adapter*, %struct._adapter** %4, align 8
  %64 = load %struct.sta_info*, %struct.sta_info** %8, align 8
  %65 = load %struct.pkt_attrib*, %struct.pkt_attrib** %10, align 8
  %66 = getelementptr inbounds %struct.pkt_attrib, %struct.pkt_attrib* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call %struct.tx_servq* @get_sta_pending(%struct._adapter* %63, %struct.__queue** %7, %struct.sta_info* %64, i32 %67)
  store %struct.tx_servq* %68, %struct.tx_servq** %9, align 8
  %69 = load %struct.__queue*, %struct.__queue** %7, align 8
  %70 = getelementptr inbounds %struct.__queue, %struct.__queue* %69, i32 0, i32 0
  %71 = load i64, i64* %6, align 8
  %72 = call i32 @spin_lock_irqsave(i32* %70, i64 %71)
  %73 = load %struct.tx_servq*, %struct.tx_servq** %9, align 8
  %74 = getelementptr inbounds %struct.tx_servq, %struct.tx_servq* %73, i32 0, i32 2
  %75 = call i64 @list_empty(i32* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %62
  %78 = load %struct.tx_servq*, %struct.tx_servq** %9, align 8
  %79 = getelementptr inbounds %struct.tx_servq, %struct.tx_servq* %78, i32 0, i32 2
  %80 = load %struct.__queue*, %struct.__queue** %7, align 8
  %81 = getelementptr inbounds %struct.__queue, %struct.__queue* %80, i32 0, i32 1
  %82 = call i32 @list_add_tail(i32* %79, i32* %81)
  br label %83

83:                                               ; preds = %77, %62
  %84 = load %struct.xmit_frame*, %struct.xmit_frame** %5, align 8
  %85 = getelementptr inbounds %struct.xmit_frame, %struct.xmit_frame* %84, i32 0, i32 0
  %86 = load %struct.tx_servq*, %struct.tx_servq** %9, align 8
  %87 = getelementptr inbounds %struct.tx_servq, %struct.tx_servq* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = call i32 @list_add_tail(i32* %85, i32* %88)
  %90 = load %struct.tx_servq*, %struct.tx_servq** %9, align 8
  %91 = getelementptr inbounds %struct.tx_servq, %struct.tx_servq* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  %94 = load %struct.__queue*, %struct.__queue** %7, align 8
  %95 = getelementptr inbounds %struct.__queue, %struct.__queue* %94, i32 0, i32 0
  %96 = load i64, i64* %6, align 8
  %97 = call i32 @spin_unlock_irqrestore(i32* %95, i64 %96)
  store i32 0, i32* %3, align 4
  br label %98

98:                                               ; preds = %83, %59
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

declare dso_local i32 @is_multicast_ether_addr(i32) #1

declare dso_local %struct.sta_info* @r8712_get_bcmc_stainfo(%struct._adapter*) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local %struct.sta_info* @r8712_get_stainfo(%struct.sta_priv*, i32) #1

declare dso_local i32 @get_bssid(%struct.mlme_priv*) #1

declare dso_local %struct.tx_servq* @get_sta_pending(%struct._adapter*, %struct.__queue**, %struct.sta_info*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
