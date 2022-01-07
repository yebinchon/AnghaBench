; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_recv.c_wlanhdr_to_ethhdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_recv.c_wlanhdr_to_ethhdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.recv_frame = type { %struct.TYPE_3__*, %struct.rx_pkt_attrib }
%struct.TYPE_3__ = type { i32*, i64 }
%struct.rx_pkt_attrib = type { i32, i32, i32*, i32*, i64, i64, i64 }
%struct.ieee80211_snap_hdr = type opaque

@SNAP_SIZE = common dso_local global i32 0, align 4
@rtw_rfc1042_header = common dso_local global i32 0, align 4
@SNAP_ETH_TYPE_IPX = common dso_local global i32 0, align 4
@SNAP_ETH_TYPE_APPLETALK_AARP = common dso_local global i32 0, align 4
@rtw_bridge_tunnel_header = common dso_local global i32 0, align 4
@_module_rtl871x_recv_c_ = common dso_local global i32 0, align 4
@_drv_info_ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"\0A===pattrib->hdrlen: %x,  pattrib->iv_len:%x===\0A\0A\00", align 1
@_FAIL = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.recv_frame*)* @wlanhdr_to_ethhdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wlanhdr_to_ethhdr(%struct.recv_frame* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.recv_frame*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ieee80211_snap_hdr*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.rx_pkt_attrib*, align 8
  store %struct.recv_frame* %0, %struct.recv_frame** %3, align 8
  %13 = load %struct.recv_frame*, %struct.recv_frame** %3, align 8
  %14 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %11, align 8
  %18 = load %struct.recv_frame*, %struct.recv_frame** %3, align 8
  %19 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %18, i32 0, i32 1
  store %struct.rx_pkt_attrib* %19, %struct.rx_pkt_attrib** %12, align 8
  %20 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %12, align 8
  %21 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %20, i32 0, i32 6
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %38

24:                                               ; preds = %1
  %25 = load %struct.recv_frame*, %struct.recv_frame** %3, align 8
  %26 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load %struct.recv_frame*, %struct.recv_frame** %3, align 8
  %29 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %28, i32 0, i32 0
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %12, align 8
  %34 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = sub nsw i64 %32, %35
  %37 = call i32 @skb_trim(%struct.TYPE_3__* %27, i64 %36)
  br label %38

38:                                               ; preds = %24, %1
  %39 = load i32*, i32** %11, align 8
  %40 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %12, align 8
  %41 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %39, i64 %43
  %45 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %12, align 8
  %46 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %44, i64 %48
  %50 = bitcast i32* %49 to %struct.ieee80211_snap_hdr*
  store %struct.ieee80211_snap_hdr* %50, %struct.ieee80211_snap_hdr** %10, align 8
  %51 = load i32*, i32** %11, align 8
  %52 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %12, align 8
  %53 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %51, i64 %55
  %57 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %12, align 8
  %58 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %56, i64 %60
  %62 = load i32, i32* @SNAP_SIZE, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  store i32* %64, i32** %9, align 8
  %65 = load %struct.ieee80211_snap_hdr*, %struct.ieee80211_snap_hdr** %10, align 8
  %66 = bitcast %struct.ieee80211_snap_hdr* %65 to i32*
  %67 = load i32, i32* @rtw_rfc1042_header, align 4
  %68 = load i32, i32* @SNAP_SIZE, align 4
  %69 = call i64 @memcmp(i32* %66, i32 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %81, label %71

71:                                               ; preds = %38
  %72 = load i32*, i32** %9, align 8
  %73 = load i32, i32* @SNAP_ETH_TYPE_IPX, align 4
  %74 = call i64 @memcmp(i32* %72, i32 %73, i32 2)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* @SNAP_ETH_TYPE_APPLETALK_AARP, align 4
  %79 = call i64 @memcmp(i32* %77, i32 %78, i32 2)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %76, %71, %38
  %82 = load %struct.ieee80211_snap_hdr*, %struct.ieee80211_snap_hdr** %10, align 8
  %83 = bitcast %struct.ieee80211_snap_hdr* %82 to i32*
  %84 = load i32, i32* @rtw_bridge_tunnel_header, align 4
  %85 = load i32, i32* @SNAP_SIZE, align 4
  %86 = call i64 @memcmp(i32* %83, i32 %84, i32 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %81, %76
  store i32 1, i32* %8, align 4
  br label %90

89:                                               ; preds = %81
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %89, %88
  %91 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %12, align 8
  %92 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %12, align 8
  %95 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %93, %96
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %90
  %101 = load i32, i32* @SNAP_SIZE, align 4
  br label %103

102:                                              ; preds = %90
  br label %103

103:                                              ; preds = %102, %100
  %104 = phi i32 [ %101, %100 ], [ 0, %102 ]
  %105 = add nsw i32 %97, %104
  store i32 %105, i32* %4, align 4
  %106 = load %struct.recv_frame*, %struct.recv_frame** %3, align 8
  %107 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %106, i32 0, i32 0
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = load i32, i32* %4, align 4
  %112 = sext i32 %111 to i64
  %113 = sub nsw i64 %110, %112
  store i64 %113, i64* %6, align 8
  %114 = load i32, i32* @_module_rtl871x_recv_c_, align 4
  %115 = load i32, i32* @_drv_info_, align 4
  %116 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %12, align 8
  %117 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %12, align 8
  %120 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = sext i32 %121 to i64
  %123 = inttoptr i64 %122 to i8*
  %124 = call i32 @RT_TRACE(i32 %114, i32 %115, i8* %123)
  %125 = load i32*, i32** %11, align 8
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds i32, i32* %125, i64 %127
  %129 = call i32 @memcpy(i32* %7, i32* %128, i32 2)
  %130 = load i32, i32* %7, align 4
  %131 = call i64 @ntohs(i32 %130)
  store i64 %131, i64* %5, align 8
  %132 = load i64, i64* %5, align 8
  %133 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %12, align 8
  %134 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %133, i32 0, i32 4
  store i64 %132, i64* %134, align 8
  %135 = load %struct.recv_frame*, %struct.recv_frame** %3, align 8
  %136 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %135, i32 0, i32 0
  %137 = load %struct.TYPE_3__*, %struct.TYPE_3__** %136, align 8
  %138 = load i32, i32* %4, align 4
  %139 = sext i32 %138 to i64
  %140 = sub i64 %139, 4
  %141 = load i32, i32* %8, align 4
  %142 = icmp ne i32 %141, 0
  %143 = zext i1 %142 to i64
  %144 = select i1 %142, i32 2, i32 0
  %145 = sext i32 %144 to i64
  %146 = add i64 %140, %145
  %147 = trunc i64 %146 to i32
  %148 = call i32* @skb_pull(%struct.TYPE_3__* %137, i32 %147)
  store i32* %148, i32** %11, align 8
  %149 = load i32*, i32** %11, align 8
  %150 = icmp ne i32* %149, null
  br i1 %150, label %153, label %151

151:                                              ; preds = %103
  %152 = load i32, i32* @_FAIL, align 4
  store i32 %152, i32* %2, align 4
  br label %179

153:                                              ; preds = %103
  %154 = load i32*, i32** %11, align 8
  %155 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %12, align 8
  %156 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %155, i32 0, i32 2
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* @ETH_ALEN, align 4
  %159 = call i32 @memcpy(i32* %154, i32* %157, i32 %158)
  %160 = load i32*, i32** %11, align 8
  %161 = load i32, i32* @ETH_ALEN, align 4
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds i32, i32* %160, i64 %162
  %164 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %12, align 8
  %165 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %164, i32 0, i32 3
  %166 = load i32*, i32** %165, align 8
  %167 = load i32, i32* @ETH_ALEN, align 4
  %168 = call i32 @memcpy(i32* %163, i32* %166, i32 %167)
  %169 = load i32, i32* %8, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %177, label %171

171:                                              ; preds = %153
  %172 = load i64, i64* %6, align 8
  %173 = call i32 @htons(i64 %172)
  store i32 %173, i32* %7, align 4
  %174 = load i32*, i32** %11, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 12
  %176 = call i32 @memcpy(i32* %175, i32* %7, i32 2)
  br label %177

177:                                              ; preds = %171, %153
  %178 = load i32, i32* @_SUCCESS, align 4
  store i32 %178, i32* %2, align 4
  br label %179

179:                                              ; preds = %177, %151
  %180 = load i32, i32* %2, align 4
  ret i32 %180
}

declare dso_local i32 @skb_trim(%struct.TYPE_3__*, i64) #1

declare dso_local i64 @memcmp(i32*, i32, i32) #1

declare dso_local i32 @RT_TRACE(i32, i32, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32* @skb_pull(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @htons(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
