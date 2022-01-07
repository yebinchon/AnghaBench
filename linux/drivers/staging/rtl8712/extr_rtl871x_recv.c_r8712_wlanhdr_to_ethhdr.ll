; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_recv.c_r8712_wlanhdr_to_ethhdr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_recv.c_r8712_wlanhdr_to_ethhdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.recv_frame = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, %struct.rx_pkt_attrib, %struct._adapter* }
%struct.rx_pkt_attrib = type { i32, i32, i32*, i32*, i32, i64 }
%struct._adapter = type { %struct.mlme_priv }
%struct.mlme_priv = type { i32 }
%struct.ieee80211_snap_hdr = type opaque

@SNAP_SIZE = common dso_local global i32 0, align 4
@rfc1042_header = common dso_local global i64 0, align 8
@SNAP_ETH_TYPE_IPX = common dso_local global i64 0, align 8
@SNAP_ETH_TYPE_APPLETALK_AARP = common dso_local global i64 0, align 8
@bridge_tunnel_header = common dso_local global i64 0, align 8
@WIFI_MP_STATE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @r8712_wlanhdr_to_ethhdr(%union.recv_frame* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %union.recv_frame*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ieee80211_snap_hdr*, align 8
  %9 = alloca %struct._adapter*, align 8
  %10 = alloca %struct.mlme_priv*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.rx_pkt_attrib*, align 8
  %13 = alloca i32, align 4
  store %union.recv_frame* %0, %union.recv_frame** %3, align 8
  %14 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  %15 = bitcast %union.recv_frame* %14 to %struct.TYPE_4__*
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 2
  %18 = load %struct._adapter*, %struct._adapter** %17, align 8
  store %struct._adapter* %18, %struct._adapter** %9, align 8
  %19 = load %struct._adapter*, %struct._adapter** %9, align 8
  %20 = getelementptr inbounds %struct._adapter, %struct._adapter* %19, i32 0, i32 0
  store %struct.mlme_priv* %20, %struct.mlme_priv** %10, align 8
  %21 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  %22 = call i32* @get_recvframe_data(%union.recv_frame* %21)
  store i32* %22, i32** %11, align 8
  %23 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  %24 = bitcast %union.recv_frame* %23 to %struct.TYPE_4__*
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  store %struct.rx_pkt_attrib* %26, %struct.rx_pkt_attrib** %12, align 8
  %27 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %12, align 8
  %28 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %27, i32 0, i32 5
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %37

31:                                               ; preds = %1
  %32 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  %33 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %12, align 8
  %34 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @recvframe_pull_tail(%union.recv_frame* %32, i32 %35)
  br label %37

37:                                               ; preds = %31, %1
  %38 = load i32*, i32** %11, align 8
  %39 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %12, align 8
  %40 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %38, i64 %42
  %44 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %12, align 8
  %45 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %43, i64 %47
  %49 = bitcast i32* %48 to %struct.ieee80211_snap_hdr*
  store %struct.ieee80211_snap_hdr* %49, %struct.ieee80211_snap_hdr** %8, align 8
  %50 = load i32*, i32** %11, align 8
  %51 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %12, align 8
  %52 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %50, i64 %54
  %56 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %12, align 8
  %57 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %55, i64 %59
  %61 = load i32, i32* @SNAP_SIZE, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32* %63, i32** %7, align 8
  %64 = load %struct.ieee80211_snap_hdr*, %struct.ieee80211_snap_hdr** %8, align 8
  %65 = bitcast %struct.ieee80211_snap_hdr* %64 to i32*
  %66 = load i64, i64* @rfc1042_header, align 8
  %67 = inttoptr i64 %66 to i8*
  %68 = load i32, i32* @SNAP_SIZE, align 4
  %69 = call i64 @memcmp(i32* %65, i8* %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %37
  %72 = load i32*, i32** %7, align 8
  %73 = load i64, i64* @SNAP_ETH_TYPE_IPX, align 8
  %74 = inttoptr i64 %73 to i8*
  %75 = call i64 @memcmp(i32* %72, i8* %74, i32 2)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %71
  %78 = load i32*, i32** %7, align 8
  %79 = load i64, i64* @SNAP_ETH_TYPE_APPLETALK_AARP, align 8
  %80 = inttoptr i64 %79 to i8*
  %81 = call i64 @memcmp(i32* %78, i8* %80, i32 2)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %77, %71, %37
  %84 = load %struct.ieee80211_snap_hdr*, %struct.ieee80211_snap_hdr** %8, align 8
  %85 = bitcast %struct.ieee80211_snap_hdr* %84 to i32*
  %86 = load i64, i64* @bridge_tunnel_header, align 8
  %87 = inttoptr i64 %86 to i8*
  %88 = load i32, i32* @SNAP_SIZE, align 4
  %89 = call i64 @memcmp(i32* %85, i8* %87, i32 %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %83, %77
  store i32 1, i32* %6, align 4
  br label %93

92:                                               ; preds = %83
  store i32 0, i32* %6, align 4
  br label %93

93:                                               ; preds = %92, %91
  %94 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %12, align 8
  %95 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %12, align 8
  %98 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %96, %99
  %101 = load i32, i32* %6, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %93
  %104 = load i32, i32* @SNAP_SIZE, align 4
  br label %106

105:                                              ; preds = %93
  br label %106

106:                                              ; preds = %105, %103
  %107 = phi i32 [ %104, %103 ], [ 0, %105 ]
  %108 = add nsw i32 %100, %107
  store i32 %108, i32* %4, align 4
  %109 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  %110 = bitcast %union.recv_frame* %109 to %struct.TYPE_4__*
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load i32, i32* %4, align 4
  %115 = sext i32 %114 to i64
  %116 = sub nsw i64 %113, %115
  store i64 %116, i64* %5, align 8
  %117 = load %struct.mlme_priv*, %struct.mlme_priv** %10, align 8
  %118 = load i32, i32* @WIFI_MP_STATE, align 4
  %119 = call i64 @check_fwstate(%struct.mlme_priv* %117, i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %149

121:                                              ; preds = %106
  %122 = load i32, i32* %4, align 4
  %123 = load i32*, i32** %11, align 8
  %124 = sext i32 %122 to i64
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  store i32* %125, i32** %11, align 8
  %126 = load i32*, i32** %11, align 8
  store i32 135, i32* %126, align 4
  %127 = load i32*, i32** %11, align 8
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  store i32 18, i32* %128, align 4
  %129 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  %130 = load i32, i32* %4, align 4
  %131 = sext i32 %130 to i64
  %132 = sub i64 %131, 4
  %133 = add i64 %132, 2
  %134 = sub i64 %133, 24
  %135 = trunc i64 %134 to i32
  %136 = call i32* @recvframe_pull(%union.recv_frame* %129, i32 %135)
  store i32* %136, i32** %11, align 8
  %137 = load i32*, i32** %11, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %142, label %139

139:                                              ; preds = %121
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  store i32 %141, i32* %2, align 4
  br label %193

142:                                              ; preds = %121
  %143 = load i32*, i32** %11, align 8
  %144 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  %145 = call i32* @get_rxmem(%union.recv_frame* %144)
  %146 = call i32 @memcpy(i32* %143, i32* %145, i32 24)
  %147 = load i32*, i32** %11, align 8
  %148 = getelementptr inbounds i32, i32* %147, i64 24
  store i32* %148, i32** %11, align 8
  br label %168

149:                                              ; preds = %106
  %150 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  %151 = load i32, i32* %4, align 4
  %152 = sext i32 %151 to i64
  %153 = sub i64 %152, 4
  %154 = load i32, i32* %6, align 4
  %155 = icmp ne i32 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 2, i32 0
  %158 = sext i32 %157 to i64
  %159 = add i64 %153, %158
  %160 = trunc i64 %159 to i32
  %161 = call i32* @recvframe_pull(%union.recv_frame* %150, i32 %160)
  store i32* %161, i32** %11, align 8
  %162 = load i32*, i32** %11, align 8
  %163 = icmp ne i32* %162, null
  br i1 %163, label %167, label %164

164:                                              ; preds = %149
  %165 = load i32, i32* @ENOMEM, align 4
  %166 = sub nsw i32 0, %165
  store i32 %166, i32* %2, align 4
  br label %193

167:                                              ; preds = %149
  br label %168

168:                                              ; preds = %167, %142
  %169 = load i32*, i32** %11, align 8
  %170 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %12, align 8
  %171 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %170, i32 0, i32 3
  %172 = load i32*, i32** %171, align 8
  %173 = load i32, i32* @ETH_ALEN, align 4
  %174 = call i32 @memcpy(i32* %169, i32* %172, i32 %173)
  %175 = load i32*, i32** %11, align 8
  %176 = load i32, i32* @ETH_ALEN, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i32, i32* %175, i64 %177
  %179 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %12, align 8
  %180 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %179, i32 0, i32 2
  %181 = load i32*, i32** %180, align 8
  %182 = load i32, i32* @ETH_ALEN, align 4
  %183 = call i32 @memcpy(i32* %178, i32* %181, i32 %182)
  %184 = load i32, i32* %6, align 4
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %192, label %186

186:                                              ; preds = %168
  %187 = load i64, i64* %5, align 8
  %188 = call i32 @htons(i64 %187)
  store i32 %188, i32* %13, align 4
  %189 = load i32*, i32** %11, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 12
  %191 = call i32 @memcpy(i32* %190, i32* %13, i32 2)
  br label %192

192:                                              ; preds = %186, %168
  store i32 0, i32* %2, align 4
  br label %193

193:                                              ; preds = %192, %164, %139
  %194 = load i32, i32* %2, align 4
  ret i32 %194
}

declare dso_local i32* @get_recvframe_data(%union.recv_frame*) #1

declare dso_local i32 @recvframe_pull_tail(%union.recv_frame*, i32) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32* @recvframe_pull(%union.recv_frame*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32* @get_rxmem(%union.recv_frame*) #1

declare dso_local i32 @htons(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
