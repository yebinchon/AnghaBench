; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_rxdesc.c_update_recvframe_phyinfo_88e.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_rtl8188e_rxdesc.c_update_recvframe_phyinfo_88e.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.recv_frame = type { %struct.sta_info*, %struct.TYPE_7__*, %struct.rx_pkt_attrib, %struct.adapter* }
%struct.sta_info = type { i32 }
%struct.TYPE_7__ = type { i32* }
%struct.rx_pkt_attrib = type { i32, i32, i32, i32 }
%struct.adapter = type { %struct.TYPE_11__, %struct.TYPE_10__*, %struct.sta_priv, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_10__ = type { i32 }
%struct.sta_priv = type { i32 }
%struct.phy_stat = type { i32 }
%struct.odm_phy_status_info = type { i32 }
%struct.odm_per_pkt_info = type { i32, i32, i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@WIFI_BEACON = common dso_local global i64 0, align 8
@WIFI_STATION_STATE = common dso_local global i32 0, align 4
@WIFI_AP_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @update_recvframe_phyinfo_88e(%struct.recv_frame* %0, %struct.phy_stat* %1) #0 {
  %3 = alloca %struct.recv_frame*, align 8
  %4 = alloca %struct.phy_stat*, align 8
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.rx_pkt_attrib*, align 8
  %7 = alloca %struct.odm_phy_status_info*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.odm_per_pkt_info, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.sta_priv*, align 8
  %12 = alloca %struct.sta_info*, align 8
  store %struct.recv_frame* %0, %struct.recv_frame** %3, align 8
  store %struct.phy_stat* %1, %struct.phy_stat** %4, align 8
  %13 = load %struct.recv_frame*, %struct.recv_frame** %3, align 8
  %14 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %13, i32 0, i32 3
  %15 = load %struct.adapter*, %struct.adapter** %14, align 8
  store %struct.adapter* %15, %struct.adapter** %5, align 8
  %16 = load %struct.recv_frame*, %struct.recv_frame** %3, align 8
  %17 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %16, i32 0, i32 2
  store %struct.rx_pkt_attrib* %17, %struct.rx_pkt_attrib** %6, align 8
  %18 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %6, align 8
  %19 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %18, i32 0, i32 3
  %20 = bitcast i32* %19 to %struct.odm_phy_status_info*
  store %struct.odm_phy_status_info* %20, %struct.odm_phy_status_info** %7, align 8
  store i32* null, i32** %10, align 8
  %21 = getelementptr inbounds %struct.odm_per_pkt_info, %struct.odm_per_pkt_info* %9, i32 0, i32 0
  store i32 0, i32* %21, align 4
  %22 = getelementptr inbounds %struct.odm_per_pkt_info, %struct.odm_per_pkt_info* %9, i32 0, i32 1
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.odm_per_pkt_info, %struct.odm_per_pkt_info* %9, i32 0, i32 2
  store i32 0, i32* %23, align 4
  %24 = load %struct.recv_frame*, %struct.recv_frame** %3, align 8
  %25 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %24, i32 0, i32 1
  %26 = load %struct.TYPE_7__*, %struct.TYPE_7__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  store i32* %28, i32** %8, align 8
  %29 = load i32*, i32** %8, align 8
  %30 = call i32 @IsFrameTypeCtrl(i32* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %52, label %32

32:                                               ; preds = %2
  %33 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %6, align 8
  %34 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %52, label %37

37:                                               ; preds = %32
  %38 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %6, align 8
  %39 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %52, label %42

42:                                               ; preds = %37
  %43 = load i32*, i32** %8, align 8
  %44 = call i32 @get_hdr_bssid(i32* %43)
  %45 = load %struct.adapter*, %struct.adapter** %5, align 8
  %46 = getelementptr inbounds %struct.adapter, %struct.adapter* %45, i32 0, i32 0
  %47 = call i32 @get_bssid(%struct.TYPE_11__* %46)
  %48 = load i32, i32* @ETH_ALEN, align 4
  %49 = call i32 @memcmp(i32 %44, i32 %47, i32 %48)
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %42, %37, %32, %2
  %53 = phi i1 [ false, %37 ], [ false, %32 ], [ false, %2 ], [ %51, %42 ]
  %54 = zext i1 %53 to i32
  %55 = getelementptr inbounds %struct.odm_per_pkt_info, %struct.odm_per_pkt_info* %9, i32 0, i32 0
  store i32 %54, i32* %55, align 4
  %56 = getelementptr inbounds %struct.odm_per_pkt_info, %struct.odm_per_pkt_info* %9, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %69

59:                                               ; preds = %52
  %60 = load i32*, i32** %8, align 8
  %61 = call i32 @get_da(i32* %60)
  %62 = load %struct.adapter*, %struct.adapter** %5, align 8
  %63 = getelementptr inbounds %struct.adapter, %struct.adapter* %62, i32 0, i32 3
  %64 = call i32 @myid(i32* %63)
  %65 = load i32, i32* @ETH_ALEN, align 4
  %66 = call i32 @memcmp(i32 %61, i32 %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  %68 = xor i1 %67, true
  br label %69

69:                                               ; preds = %59, %52
  %70 = phi i1 [ false, %52 ], [ %68, %59 ]
  %71 = zext i1 %70 to i32
  %72 = getelementptr inbounds %struct.odm_per_pkt_info, %struct.odm_per_pkt_info* %9, i32 0, i32 1
  store i32 %71, i32* %72, align 4
  %73 = getelementptr inbounds %struct.odm_per_pkt_info, %struct.odm_per_pkt_info* %9, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load i32*, i32** %8, align 8
  %78 = call i64 @GetFrameSubType(i32* %77)
  %79 = load i64, i64* @WIFI_BEACON, align 8
  %80 = icmp eq i64 %78, %79
  br label %81

81:                                               ; preds = %76, %69
  %82 = phi i1 [ false, %69 ], [ %80, %76 ]
  %83 = zext i1 %82 to i32
  %84 = getelementptr inbounds %struct.odm_per_pkt_info, %struct.odm_per_pkt_info* %9, i32 0, i32 2
  store i32 %83, i32* %84, align 4
  %85 = getelementptr inbounds %struct.odm_per_pkt_info, %struct.odm_per_pkt_info* %9, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %102

88:                                               ; preds = %81
  %89 = load %struct.adapter*, %struct.adapter** %5, align 8
  %90 = getelementptr inbounds %struct.adapter, %struct.adapter* %89, i32 0, i32 0
  %91 = load i32, i32* @WIFI_STATION_STATE, align 4
  %92 = call i64 @check_fwstate(%struct.TYPE_11__* %90, i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %101

94:                                               ; preds = %88
  %95 = load %struct.adapter*, %struct.adapter** %5, align 8
  %96 = getelementptr inbounds %struct.adapter, %struct.adapter* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  store i32* %100, i32** %10, align 8
  br label %101

101:                                              ; preds = %94, %88
  br label %105

102:                                              ; preds = %81
  %103 = load i32*, i32** %8, align 8
  %104 = call i32* @get_sa(i32* %103)
  store i32* %104, i32** %10, align 8
  br label %105

105:                                              ; preds = %102, %101
  %106 = load %struct.adapter*, %struct.adapter** %5, align 8
  %107 = getelementptr inbounds %struct.adapter, %struct.adapter* %106, i32 0, i32 2
  store %struct.sta_priv* %107, %struct.sta_priv** %11, align 8
  %108 = getelementptr inbounds %struct.odm_per_pkt_info, %struct.odm_per_pkt_info* %9, i32 0, i32 3
  store i32 255, i32* %108, align 4
  %109 = load %struct.sta_priv*, %struct.sta_priv** %11, align 8
  %110 = load i32*, i32** %10, align 8
  %111 = call %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv* %109, i32* %110)
  store %struct.sta_info* %111, %struct.sta_info** %12, align 8
  %112 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %113 = icmp ne %struct.sta_info* %112, null
  br i1 %113, label %114, label %119

114:                                              ; preds = %105
  %115 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %116 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.odm_per_pkt_info, %struct.odm_per_pkt_info* %9, i32 0, i32 3
  store i32 %117, i32* %118, align 4
  br label %119

119:                                              ; preds = %114, %105
  %120 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %6, align 8
  %121 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = getelementptr inbounds %struct.odm_per_pkt_info, %struct.odm_per_pkt_info* %9, i32 0, i32 4
  store i32 %122, i32* %123, align 4
  %124 = load %struct.adapter*, %struct.adapter** %5, align 8
  %125 = getelementptr inbounds %struct.adapter, %struct.adapter* %124, i32 0, i32 1
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load %struct.odm_phy_status_info*, %struct.odm_phy_status_info** %7, align 8
  %129 = load %struct.phy_stat*, %struct.phy_stat** %4, align 8
  %130 = bitcast %struct.phy_stat* %129 to i32*
  %131 = call i32 @ODM_PhyStatusQuery(i32* %127, %struct.odm_phy_status_info* %128, i32* %130, %struct.odm_per_pkt_info* %9)
  %132 = load %struct.recv_frame*, %struct.recv_frame** %3, align 8
  %133 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %132, i32 0, i32 0
  store %struct.sta_info* null, %struct.sta_info** %133, align 8
  %134 = getelementptr inbounds %struct.odm_per_pkt_info, %struct.odm_per_pkt_info* %9, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %154

137:                                              ; preds = %119
  %138 = load %struct.adapter*, %struct.adapter** %5, align 8
  %139 = getelementptr inbounds %struct.adapter, %struct.adapter* %138, i32 0, i32 0
  %140 = load i32, i32* @WIFI_AP_STATE, align 4
  %141 = call i64 @check_fwstate(%struct.TYPE_11__* %139, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %154

143:                                              ; preds = %137
  %144 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %145 = icmp ne %struct.sta_info* %144, null
  br i1 %145, label %146, label %153

146:                                              ; preds = %143
  %147 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %148 = load %struct.recv_frame*, %struct.recv_frame** %3, align 8
  %149 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %148, i32 0, i32 0
  store %struct.sta_info* %147, %struct.sta_info** %149, align 8
  %150 = load %struct.adapter*, %struct.adapter** %5, align 8
  %151 = load %struct.recv_frame*, %struct.recv_frame** %3, align 8
  %152 = call i32 @rtl8188e_process_phy_info(%struct.adapter* %150, %struct.recv_frame* %151)
  br label %153

153:                                              ; preds = %146, %143
  br label %183

154:                                              ; preds = %137, %119
  %155 = getelementptr inbounds %struct.odm_per_pkt_info, %struct.odm_per_pkt_info* %9, i32 0, i32 1
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.odm_per_pkt_info, %struct.odm_per_pkt_info* %9, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %182

162:                                              ; preds = %158, %154
  %163 = load %struct.adapter*, %struct.adapter** %5, align 8
  %164 = getelementptr inbounds %struct.adapter, %struct.adapter* %163, i32 0, i32 0
  %165 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %166 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %167 = or i32 %165, %166
  %168 = call i64 @check_fwstate(%struct.TYPE_11__* %164, i32 %167)
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %162
  %171 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %172 = icmp ne %struct.sta_info* %171, null
  br i1 %172, label %173, label %177

173:                                              ; preds = %170
  %174 = load %struct.sta_info*, %struct.sta_info** %12, align 8
  %175 = load %struct.recv_frame*, %struct.recv_frame** %3, align 8
  %176 = getelementptr inbounds %struct.recv_frame, %struct.recv_frame* %175, i32 0, i32 0
  store %struct.sta_info* %174, %struct.sta_info** %176, align 8
  br label %177

177:                                              ; preds = %173, %170
  br label %178

178:                                              ; preds = %177, %162
  %179 = load %struct.adapter*, %struct.adapter** %5, align 8
  %180 = load %struct.recv_frame*, %struct.recv_frame** %3, align 8
  %181 = call i32 @rtl8188e_process_phy_info(%struct.adapter* %179, %struct.recv_frame* %180)
  br label %182

182:                                              ; preds = %178, %158
  br label %183

183:                                              ; preds = %182, %153
  ret void
}

declare dso_local i32 @IsFrameTypeCtrl(i32*) #1

declare dso_local i32 @memcmp(i32, i32, i32) #1

declare dso_local i32 @get_hdr_bssid(i32*) #1

declare dso_local i32 @get_bssid(%struct.TYPE_11__*) #1

declare dso_local i32 @get_da(i32*) #1

declare dso_local i32 @myid(i32*) #1

declare dso_local i64 @GetFrameSubType(i32*) #1

declare dso_local i64 @check_fwstate(%struct.TYPE_11__*, i32) #1

declare dso_local i32* @get_sa(i32*) #1

declare dso_local %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv*, i32*) #1

declare dso_local i32 @ODM_PhyStatusQuery(i32*, %struct.odm_phy_status_info*, i32*, %struct.odm_per_pkt_info*) #1

declare dso_local i32 @rtl8188e_process_phy_info(%struct.adapter*, %struct.recv_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
