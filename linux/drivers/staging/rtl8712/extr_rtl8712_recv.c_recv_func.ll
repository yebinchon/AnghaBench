; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_recv.c_recv_func.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl8712_recv.c_recv_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.TYPE_8__, %struct.mlme_priv, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.mlme_priv = type { i32 }
%struct.TYPE_5__ = type { %struct.__queue }
%struct.__queue = type { i32 }
%struct.rx_pkt_attrib = type { i32 }
%union.recv_frame = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.rx_pkt_attrib }

@_SUCCESS = common dso_local global i32 0, align 4
@WIFI_MP_STATE = common dso_local global i32 0, align 4
@WIFI_MP_LPBK_STATE = common dso_local global i32 0, align 4
@_FAIL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @recv_func(%struct._adapter* %0, i8* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.rx_pkt_attrib*, align 8
  %6 = alloca %union.recv_frame*, align 8
  %7 = alloca %union.recv_frame*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.__queue*, align 8
  %10 = alloca %struct.mlme_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load i32, i32* @_SUCCESS, align 4
  store i32 %11, i32* %8, align 4
  %12 = load %struct._adapter*, %struct._adapter** %3, align 8
  %13 = getelementptr inbounds %struct._adapter, %struct._adapter* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store %struct.__queue* %14, %struct.__queue** %9, align 8
  %15 = load %struct._adapter*, %struct._adapter** %3, align 8
  %16 = getelementptr inbounds %struct._adapter, %struct._adapter* %15, i32 0, i32 1
  store %struct.mlme_priv* %16, %struct.mlme_priv** %10, align 8
  %17 = load i8*, i8** %4, align 8
  %18 = bitcast i8* %17 to %union.recv_frame*
  store %union.recv_frame* %18, %union.recv_frame** %6, align 8
  %19 = load %union.recv_frame*, %union.recv_frame** %6, align 8
  store %union.recv_frame* %19, %union.recv_frame** %7, align 8
  %20 = load %union.recv_frame*, %union.recv_frame** %6, align 8
  %21 = bitcast %union.recv_frame* %20 to %struct.TYPE_7__*
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  store %struct.rx_pkt_attrib* %23, %struct.rx_pkt_attrib** %5, align 8
  %24 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %25 = load i32, i32* @WIFI_MP_STATE, align 4
  %26 = call i64 @check_fwstate(%struct.mlme_priv* %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %55

28:                                               ; preds = %2
  %29 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %5, align 8
  %30 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %31, 1
  br i1 %32, label %33, label %39

33:                                               ; preds = %28
  %34 = load %struct._adapter*, %struct._adapter** %3, align 8
  %35 = getelementptr inbounds %struct._adapter, %struct._adapter* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  br label %45

39:                                               ; preds = %28
  %40 = load %struct._adapter*, %struct._adapter** %3, align 8
  %41 = getelementptr inbounds %struct._adapter, %struct._adapter* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %42, align 4
  br label %45

45:                                               ; preds = %39, %33
  %46 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %47 = load i32, i32* @WIFI_MP_LPBK_STATE, align 4
  %48 = call i64 @check_fwstate(%struct.mlme_priv* %46, i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %54, label %50

50:                                               ; preds = %45
  %51 = load %union.recv_frame*, %union.recv_frame** %7, align 8
  %52 = load %struct.__queue*, %struct.__queue** %9, align 8
  %53 = call i32 @r8712_free_recvframe(%union.recv_frame* %51, %struct.__queue* %52)
  br label %104

54:                                               ; preds = %45
  br label %55

55:                                               ; preds = %54, %2
  %56 = load %struct._adapter*, %struct._adapter** %3, align 8
  %57 = load %union.recv_frame*, %union.recv_frame** %6, align 8
  %58 = call i32 @r8712_validate_recv_frame(%struct._adapter* %56, %union.recv_frame* %57)
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = load i32, i32* @_SUCCESS, align 4
  %61 = icmp ne i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %55
  %63 = load %union.recv_frame*, %union.recv_frame** %7, align 8
  %64 = load %struct.__queue*, %struct.__queue** %9, align 8
  %65 = call i32 @r8712_free_recvframe(%union.recv_frame* %63, %struct.__queue* %64)
  br label %104

66:                                               ; preds = %55
  %67 = load %struct._adapter*, %struct._adapter** %3, align 8
  %68 = load %union.recv_frame*, %union.recv_frame** %6, align 8
  %69 = call i32 @process_phy_info(%struct._adapter* %67, %union.recv_frame* %68)
  %70 = load %struct._adapter*, %struct._adapter** %3, align 8
  %71 = load %union.recv_frame*, %union.recv_frame** %6, align 8
  %72 = call %union.recv_frame* @r8712_decryptor(%struct._adapter* %70, %union.recv_frame* %71)
  store %union.recv_frame* %72, %union.recv_frame** %6, align 8
  %73 = load %union.recv_frame*, %union.recv_frame** %6, align 8
  %74 = icmp ne %union.recv_frame* %73, null
  br i1 %74, label %77, label %75

75:                                               ; preds = %66
  %76 = load i32, i32* @_FAIL, align 4
  store i32 %76, i32* %8, align 4
  br label %104

77:                                               ; preds = %66
  %78 = load %struct._adapter*, %struct._adapter** %3, align 8
  %79 = load %union.recv_frame*, %union.recv_frame** %6, align 8
  %80 = call %union.recv_frame* @r8712_recvframe_chk_defrag(%struct._adapter* %78, %union.recv_frame* %79)
  store %union.recv_frame* %80, %union.recv_frame** %6, align 8
  %81 = load %union.recv_frame*, %union.recv_frame** %6, align 8
  %82 = icmp ne %union.recv_frame* %81, null
  br i1 %82, label %84, label %83

83:                                               ; preds = %77
  br label %104

84:                                               ; preds = %77
  %85 = load %struct._adapter*, %struct._adapter** %3, align 8
  %86 = load %union.recv_frame*, %union.recv_frame** %6, align 8
  %87 = call %union.recv_frame* @r8712_portctrl(%struct._adapter* %85, %union.recv_frame* %86)
  store %union.recv_frame* %87, %union.recv_frame** %6, align 8
  %88 = load %union.recv_frame*, %union.recv_frame** %6, align 8
  %89 = icmp ne %union.recv_frame* %88, null
  br i1 %89, label %92, label %90

90:                                               ; preds = %84
  %91 = load i32, i32* @_FAIL, align 4
  store i32 %91, i32* %8, align 4
  br label %104

92:                                               ; preds = %84
  %93 = load %struct._adapter*, %struct._adapter** %3, align 8
  %94 = load %union.recv_frame*, %union.recv_frame** %6, align 8
  %95 = call i32 @r8712_process_recv_indicatepkts(%struct._adapter* %93, %union.recv_frame* %94)
  store i32 %95, i32* %8, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @_SUCCESS, align 4
  %98 = icmp ne i32 %96, %97
  br i1 %98, label %99, label %103

99:                                               ; preds = %92
  %100 = load %union.recv_frame*, %union.recv_frame** %7, align 8
  %101 = load %struct.__queue*, %struct.__queue** %9, align 8
  %102 = call i32 @r8712_free_recvframe(%union.recv_frame* %100, %struct.__queue* %101)
  br label %104

103:                                              ; preds = %92
  br label %104

104:                                              ; preds = %103, %99, %90, %83, %75, %62, %50
  %105 = load i32, i32* %8, align 4
  ret i32 %105
}

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @r8712_free_recvframe(%union.recv_frame*, %struct.__queue*) #1

declare dso_local i32 @r8712_validate_recv_frame(%struct._adapter*, %union.recv_frame*) #1

declare dso_local i32 @process_phy_info(%struct._adapter*, %union.recv_frame*) #1

declare dso_local %union.recv_frame* @r8712_decryptor(%struct._adapter*, %union.recv_frame*) #1

declare dso_local %union.recv_frame* @r8712_recvframe_chk_defrag(%struct._adapter*, %union.recv_frame*) #1

declare dso_local %union.recv_frame* @r8712_portctrl(%struct._adapter*, %union.recv_frame*) #1

declare dso_local i32 @r8712_process_recv_indicatepkts(%struct._adapter*, %union.recv_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
