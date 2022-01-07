; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_recv.c_portctrl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_recv.c_portctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.sta_priv }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sta_priv = type { i32 }
%union.recv_frame = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.recv_frame_hdr }
%struct.recv_frame_hdr = type { %struct.rx_pkt_attrib }
%struct.rx_pkt_attrib = type { i32, i32, i64, i32, i32* }
%struct.sta_info = type { i64 }

@_module_rtl871x_recv_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"########portctrl:adapter->securitypriv.dot11AuthAlgrthm =%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"########portctrl:psta->ieee8021x_blocked == 1\0A\00", align 1
@LLC_HEADER_SIZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"########portctrl:psta->ieee8021x_blocked == 0\0A\00", align 1
@.str.3 = private unnamed_addr constant [46 x i8] c"portctrl:precv_frame->hdr.attrib.privacy =%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [33 x i8] c"portctrl:prxstat->decrypted =%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %union.recv_frame* @portctrl(%struct.adapter* %0, %union.recv_frame* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %union.recv_frame*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.recv_frame_hdr*, align 8
  %9 = alloca %struct.sta_info*, align 8
  %10 = alloca %struct.sta_priv*, align 8
  %11 = alloca %union.recv_frame*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.rx_pkt_attrib*, align 8
  %15 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %union.recv_frame* %1, %union.recv_frame** %4, align 8
  store i32* null, i32** %5, align 8
  store i32 0, i32* %12, align 4
  store i32 34958, i32* %13, align 4
  %16 = load %struct.adapter*, %struct.adapter** %3, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 2
  store %struct.sta_priv* %17, %struct.sta_priv** %10, align 8
  %18 = load %struct.adapter*, %struct.adapter** %3, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %7, align 4
  %22 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %23 = call i32* @get_recvframe_data(%union.recv_frame* %22)
  store i32* %23, i32** %6, align 8
  %24 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %25 = bitcast %union.recv_frame* %24 to %struct.TYPE_6__*
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  store %struct.recv_frame_hdr* %26, %struct.recv_frame_hdr** %8, align 8
  %27 = load %struct.recv_frame_hdr*, %struct.recv_frame_hdr** %8, align 8
  %28 = getelementptr inbounds %struct.recv_frame_hdr, %struct.recv_frame_hdr* %27, i32 0, i32 0
  store %struct.rx_pkt_attrib* %28, %struct.rx_pkt_attrib** %14, align 8
  %29 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %14, align 8
  %30 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %29, i32 0, i32 4
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %5, align 8
  store %union.recv_frame* null, %union.recv_frame** %11, align 8
  %32 = load %struct.sta_priv*, %struct.sta_priv** %10, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = call %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv* %32, i32* %33)
  store %struct.sta_info* %34, %struct.sta_info** %9, align 8
  %35 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %36 = load i32, i32* @_drv_info_, align 4
  %37 = load %struct.adapter*, %struct.adapter** %3, align 8
  %38 = getelementptr inbounds %struct.adapter, %struct.adapter* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to i8*
  %43 = call i32 @RT_TRACE(i32 %35, i32 %36, i8* %42)
  %44 = load i32, i32* %7, align 4
  %45 = icmp eq i32 %44, 2
  br i1 %45, label %46, label %121

46:                                               ; preds = %2
  %47 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %48 = icmp ne %struct.sta_info* %47, null
  br i1 %48, label %49, label %91

49:                                               ; preds = %46
  %50 = load %struct.sta_info*, %struct.sta_info** %9, align 8
  %51 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %91

54:                                               ; preds = %49
  %55 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %56 = load i32, i32* @_drv_info_, align 4
  %57 = call i32 @RT_TRACE(i32 %55, i32 %56, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  store %union.recv_frame* %58, %union.recv_frame** %11, align 8
  %59 = load i32*, i32** %6, align 8
  %60 = load %struct.recv_frame_hdr*, %struct.recv_frame_hdr** %8, align 8
  %61 = getelementptr inbounds %struct.recv_frame_hdr, %struct.recv_frame_hdr* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %59, i64 %64
  %66 = load %struct.recv_frame_hdr*, %struct.recv_frame_hdr** %8, align 8
  %67 = getelementptr inbounds %struct.recv_frame_hdr, %struct.recv_frame_hdr* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %65, i64 %70
  %72 = load i32, i32* @LLC_HEADER_SIZE, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  store i32* %74, i32** %6, align 8
  %75 = load i32*, i32** %6, align 8
  %76 = call i32 @memcpy(i32* %15, i32* %75, i32 2)
  %77 = load i32, i32* %15, align 4
  %78 = call i32 @ntohs(i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = load i32, i32* %13, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %54
  %83 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  store %union.recv_frame* %83, %union.recv_frame** %11, align 8
  br label %90

84:                                               ; preds = %54
  %85 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %86 = load %struct.adapter*, %struct.adapter** %3, align 8
  %87 = getelementptr inbounds %struct.adapter, %struct.adapter* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = call i32 @rtw_free_recvframe(%union.recv_frame* %85, i32* %88)
  store %union.recv_frame* null, %union.recv_frame** %11, align 8
  br label %90

90:                                               ; preds = %84, %82
  br label %120

91:                                               ; preds = %49, %46
  %92 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %93 = load i32, i32* @_drv_info_, align 4
  %94 = call i32 @RT_TRACE(i32 %92, i32 %93, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %95 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %96 = load i32, i32* @_drv_info_, align 4
  %97 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  %98 = bitcast %union.recv_frame* %97 to %struct.TYPE_6__*
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.recv_frame_hdr, %struct.recv_frame_hdr* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = sext i32 %102 to i64
  %104 = inttoptr i64 %103 to i8*
  %105 = call i32 @RT_TRACE(i32 %95, i32 %96, i8* %104)
  %106 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %14, align 8
  %107 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %91
  %111 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %112 = load i32, i32* @_drv_info_, align 4
  %113 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %14, align 8
  %114 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %113, i32 0, i32 2
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to i8*
  %117 = call i32 @RT_TRACE(i32 %111, i32 %112, i8* %116)
  br label %118

118:                                              ; preds = %110, %91
  %119 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  store %union.recv_frame* %119, %union.recv_frame** %11, align 8
  br label %120

120:                                              ; preds = %118, %90
  br label %123

121:                                              ; preds = %2
  %122 = load %union.recv_frame*, %union.recv_frame** %4, align 8
  store %union.recv_frame* %122, %union.recv_frame** %11, align 8
  br label %123

123:                                              ; preds = %121, %120
  %124 = load %union.recv_frame*, %union.recv_frame** %11, align 8
  ret %union.recv_frame* %124
}

declare dso_local i32* @get_recvframe_data(%union.recv_frame*) #1

declare dso_local %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv*, i32*) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local i32 @rtw_free_recvframe(%union.recv_frame*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
