; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723bs_recv.c_update_recvframe_phyinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723bs_recv.c_update_recvframe_phyinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.recv_frame = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.sta_info*, %struct.rx_pkt_attrib, %struct.adapter* }
%struct.sta_info = type { i32, i32 }
%struct.rx_pkt_attrib = type { i32, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.adapter = type { i32, %struct.sta_priv, i32 }
%struct.sta_priv = type { i32 }
%struct.phy_stat = type { i32 }
%struct.hal_com_data = type { i32 }
%struct.odm_phy_info = type { i32 }
%struct.odm_packet_info = type { i32, i32, i32, i32, i32 }

@WIFI_BEACON = common dso_local global i64 0, align 8
@WIFI_AP_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_STATE = common dso_local global i32 0, align 4
@WIFI_ADHOC_MASTER_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%union.recv_frame*, %struct.phy_stat*)* @update_recvframe_phyinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_recvframe_phyinfo(%union.recv_frame* %0, %struct.phy_stat* %1) #0 {
  %3 = alloca %union.recv_frame*, align 8
  %4 = alloca %struct.phy_stat*, align 8
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.rx_pkt_attrib*, align 8
  %7 = alloca %struct.hal_com_data*, align 8
  %8 = alloca %struct.odm_phy_info*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.odm_packet_info, align 4
  %16 = alloca %struct.sta_priv*, align 8
  %17 = alloca %struct.sta_info*, align 8
  %18 = alloca i32, align 4
  store %union.recv_frame* %0, %union.recv_frame** %3, align 8
  store %struct.phy_stat* %1, %struct.phy_stat** %4, align 8
  %19 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  %20 = bitcast %union.recv_frame* %19 to %struct.TYPE_6__*
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 2
  %23 = load %struct.adapter*, %struct.adapter** %22, align 8
  store %struct.adapter* %23, %struct.adapter** %5, align 8
  %24 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  %25 = bitcast %union.recv_frame* %24 to %struct.TYPE_6__*
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 1
  store %struct.rx_pkt_attrib* %27, %struct.rx_pkt_attrib** %6, align 8
  %28 = load %struct.adapter*, %struct.adapter** %5, align 8
  %29 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %28)
  store %struct.hal_com_data* %29, %struct.hal_com_data** %7, align 8
  %30 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %6, align 8
  %31 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %30, i32 0, i32 1
  %32 = bitcast %struct.TYPE_4__* %31 to %struct.odm_phy_info*
  store %struct.odm_phy_info* %32, %struct.odm_phy_info** %8, align 8
  store i32* null, i32** %14, align 8
  %33 = bitcast %struct.odm_packet_info* %15 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %33, i8 0, i64 20, i1 false)
  %34 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  %35 = call i32* @get_recvframe_data(%union.recv_frame* %34)
  store i32* %35, i32** %9, align 8
  %36 = load %struct.adapter*, %struct.adapter** %5, align 8
  %37 = getelementptr inbounds %struct.adapter, %struct.adapter* %36, i32 0, i32 0
  %38 = call i32* @get_bssid(i32* %37)
  store i32* %38, i32** %10, align 8
  %39 = load i32*, i32** %9, align 8
  %40 = call i32* @get_hdr_bssid(i32* %39)
  store i32* %40, i32** %11, align 8
  %41 = load i32*, i32** %9, align 8
  %42 = call i32 @IsFrameTypeCtrl(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %59, label %44

44:                                               ; preds = %2
  %45 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %6, align 8
  %46 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %6, align 8
  %51 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load i32*, i32** %11, align 8
  %56 = load i32*, i32** %10, align 8
  %57 = call i64 @ether_addr_equal(i32* %55, i32* %56)
  %58 = icmp ne i64 %57, 0
  br label %59

59:                                               ; preds = %54, %49, %44, %2
  %60 = phi i1 [ false, %49 ], [ false, %44 ], [ false, %2 ], [ %58, %54 ]
  %61 = zext i1 %60 to i32
  %62 = getelementptr inbounds %struct.odm_packet_info, %struct.odm_packet_info* %15, i32 0, i32 2
  store i32 %61, i32* %62, align 4
  %63 = load i32*, i32** %9, align 8
  %64 = call i32* @get_ra(i32* %63)
  store i32* %64, i32** %12, align 8
  %65 = load %struct.adapter*, %struct.adapter** %5, align 8
  %66 = getelementptr inbounds %struct.adapter, %struct.adapter* %65, i32 0, i32 2
  %67 = call i32* @myid(i32* %66)
  store i32* %67, i32** %13, align 8
  %68 = getelementptr inbounds %struct.odm_packet_info, %struct.odm_packet_info* %15, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %59
  %72 = load i32*, i32** %12, align 8
  %73 = load i32*, i32** %13, align 8
  %74 = call i64 @ether_addr_equal(i32* %72, i32* %73)
  %75 = icmp ne i64 %74, 0
  br label %76

76:                                               ; preds = %71, %59
  %77 = phi i1 [ false, %59 ], [ %75, %71 ]
  %78 = zext i1 %77 to i32
  %79 = getelementptr inbounds %struct.odm_packet_info, %struct.odm_packet_info* %15, i32 0, i32 3
  store i32 %78, i32* %79, align 4
  %80 = getelementptr inbounds %struct.odm_packet_info, %struct.odm_packet_info* %15, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %76
  %84 = load i32*, i32** %9, align 8
  %85 = call i64 @GetFrameSubType(i32* %84)
  %86 = load i64, i64* @WIFI_BEACON, align 8
  %87 = icmp eq i64 %85, %86
  br label %88

88:                                               ; preds = %83, %76
  %89 = phi i1 [ false, %76 ], [ %87, %83 ]
  %90 = zext i1 %89 to i32
  %91 = getelementptr inbounds %struct.odm_packet_info, %struct.odm_packet_info* %15, i32 0, i32 4
  store i32 %90, i32* %91, align 4
  %92 = load i32*, i32** %9, align 8
  %93 = call i32* @get_ta(i32* %92)
  store i32* %93, i32** %14, align 8
  %94 = getelementptr inbounds %struct.odm_packet_info, %struct.odm_packet_info* %15, i32 0, i32 1
  store i32 255, i32* %94, align 4
  %95 = load %struct.adapter*, %struct.adapter** %5, align 8
  %96 = getelementptr inbounds %struct.adapter, %struct.adapter* %95, i32 0, i32 1
  store %struct.sta_priv* %96, %struct.sta_priv** %16, align 8
  %97 = load %struct.sta_priv*, %struct.sta_priv** %16, align 8
  %98 = load i32*, i32** %14, align 8
  %99 = call %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv* %97, i32* %98)
  store %struct.sta_info* %99, %struct.sta_info** %17, align 8
  %100 = load %struct.sta_info*, %struct.sta_info** %17, align 8
  %101 = icmp ne %struct.sta_info* %100, null
  br i1 %101, label %102, label %107

102:                                              ; preds = %88
  %103 = load %struct.sta_info*, %struct.sta_info** %17, align 8
  %104 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.odm_packet_info, %struct.odm_packet_info* %15, i32 0, i32 1
  store i32 %105, i32* %106, align 4
  br label %107

107:                                              ; preds = %102, %88
  %108 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %6, align 8
  %109 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = getelementptr inbounds %struct.odm_packet_info, %struct.odm_packet_info* %15, i32 0, i32 0
  store i32 %110, i32* %111, align 4
  %112 = load %struct.hal_com_data*, %struct.hal_com_data** %7, align 8
  %113 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %112, i32 0, i32 0
  %114 = load %struct.odm_phy_info*, %struct.odm_phy_info** %8, align 8
  %115 = load %struct.phy_stat*, %struct.phy_stat** %4, align 8
  %116 = bitcast %struct.phy_stat* %115 to i32*
  %117 = call i32 @ODM_PhyStatusQuery(i32* %113, %struct.odm_phy_info* %114, i32* %116, %struct.odm_packet_info* %15)
  %118 = load %struct.sta_info*, %struct.sta_info** %17, align 8
  %119 = icmp ne %struct.sta_info* %118, null
  br i1 %119, label %120, label %127

120:                                              ; preds = %107
  %121 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %6, align 8
  %122 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = load %struct.sta_info*, %struct.sta_info** %17, align 8
  %126 = getelementptr inbounds %struct.sta_info, %struct.sta_info* %125, i32 0, i32 1
  store i32 %124, i32* %126, align 4
  br label %127

127:                                              ; preds = %120, %107
  %128 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  %129 = bitcast %union.recv_frame* %128 to %struct.TYPE_6__*
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 0
  store %struct.sta_info* null, %struct.sta_info** %131, align 8
  %132 = getelementptr inbounds %struct.odm_packet_info, %struct.odm_packet_info* %15, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %154

135:                                              ; preds = %127
  %136 = load %struct.adapter*, %struct.adapter** %5, align 8
  %137 = getelementptr inbounds %struct.adapter, %struct.adapter* %136, i32 0, i32 0
  %138 = load i32, i32* @WIFI_AP_STATE, align 4
  %139 = call i32 @check_fwstate(i32* %137, i32 %138)
  %140 = icmp eq i32 %139, 1
  br i1 %140, label %141, label %154

141:                                              ; preds = %135
  %142 = load %struct.sta_info*, %struct.sta_info** %17, align 8
  %143 = icmp ne %struct.sta_info* %142, null
  br i1 %143, label %144, label %153

144:                                              ; preds = %141
  %145 = load %struct.sta_info*, %struct.sta_info** %17, align 8
  %146 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  %147 = bitcast %union.recv_frame* %146 to %struct.TYPE_6__*
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 0
  store %struct.sta_info* %145, %struct.sta_info** %149, align 8
  %150 = load %struct.adapter*, %struct.adapter** %5, align 8
  %151 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  %152 = call i32 @rtl8723b_process_phy_info(%struct.adapter* %150, %union.recv_frame* %151)
  br label %153

153:                                              ; preds = %144, %141
  br label %186

154:                                              ; preds = %135, %127
  %155 = getelementptr inbounds %struct.odm_packet_info, %struct.odm_packet_info* %15, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %162, label %158

158:                                              ; preds = %154
  %159 = getelementptr inbounds %struct.odm_packet_info, %struct.odm_packet_info* %15, i32 0, i32 4
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %185

162:                                              ; preds = %158, %154
  %163 = load i32, i32* @WIFI_ADHOC_STATE, align 4
  %164 = load i32, i32* @WIFI_ADHOC_MASTER_STATE, align 4
  %165 = or i32 %163, %164
  store i32 %165, i32* %18, align 4
  %166 = load %struct.adapter*, %struct.adapter** %5, align 8
  %167 = getelementptr inbounds %struct.adapter, %struct.adapter* %166, i32 0, i32 0
  %168 = load i32, i32* %18, align 4
  %169 = call i32 @check_fwstate(i32* %167, i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %171, label %181

171:                                              ; preds = %162
  %172 = load %struct.sta_info*, %struct.sta_info** %17, align 8
  %173 = icmp ne %struct.sta_info* %172, null
  br i1 %173, label %174, label %180

174:                                              ; preds = %171
  %175 = load %struct.sta_info*, %struct.sta_info** %17, align 8
  %176 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  %177 = bitcast %union.recv_frame* %176 to %struct.TYPE_6__*
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %178, i32 0, i32 0
  store %struct.sta_info* %175, %struct.sta_info** %179, align 8
  br label %180

180:                                              ; preds = %174, %171
  br label %181

181:                                              ; preds = %180, %162
  %182 = load %struct.adapter*, %struct.adapter** %5, align 8
  %183 = load %union.recv_frame*, %union.recv_frame** %3, align 8
  %184 = call i32 @rtl8723b_process_phy_info(%struct.adapter* %182, %union.recv_frame* %183)
  br label %185

185:                                              ; preds = %181, %158
  br label %186

186:                                              ; preds = %185, %153
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32* @get_recvframe_data(%union.recv_frame*) #1

declare dso_local i32* @get_bssid(i32*) #1

declare dso_local i32* @get_hdr_bssid(i32*) #1

declare dso_local i32 @IsFrameTypeCtrl(i32*) #1

declare dso_local i64 @ether_addr_equal(i32*, i32*) #1

declare dso_local i32* @get_ra(i32*) #1

declare dso_local i32* @myid(i32*) #1

declare dso_local i64 @GetFrameSubType(i32*) #1

declare dso_local i32* @get_ta(i32*) #1

declare dso_local %struct.sta_info* @rtw_get_stainfo(%struct.sta_priv*, i32*) #1

declare dso_local i32 @ODM_PhyStatusQuery(i32*, %struct.odm_phy_info*, i32*, %struct.odm_packet_info*) #1

declare dso_local i32 @check_fwstate(i32*, i32) #1

declare dso_local i32 @rtl8723b_process_phy_info(%struct.adapter*, %union.recv_frame*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
