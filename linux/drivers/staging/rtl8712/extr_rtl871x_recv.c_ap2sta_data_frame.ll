; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_recv.c_ap2sta_data_frame.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_recv.c_ap2sta_data_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32, %struct.mlme_priv, %struct.sta_priv }
%struct.mlme_priv = type { i32 }
%struct.sta_priv = type { i32 }
%union.recv_frame = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rx_pkt_attrib, i32* }
%struct.rx_pkt_attrib = type { i32*, i32*, i32*, i32*, i32* }
%struct.sta_info = type { i32 }

@WIFI_STATION_STATE = common dso_local global i32 0, align 4
@_FW_LINKED = common dso_local global i32 0, align 4
@WIFI_DATA_NULL = common dso_local global i64 0, align 8
@_FAIL = common dso_local global i32 0, align 4
@WIFI_QOS_DATA_TYPE = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@WIFI_MP_STATE = common dso_local global i32 0, align 4
@_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._adapter*, %union.recv_frame*, %struct.sta_info**)* @ap2sta_data_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ap2sta_data_frame(%struct._adapter* %0, %union.recv_frame* %1, %struct.sta_info** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct._adapter*, align 8
  %6 = alloca %union.recv_frame*, align 8
  %7 = alloca %struct.sta_info**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.rx_pkt_attrib*, align 8
  %10 = alloca %struct.sta_priv*, align 8
  %11 = alloca %struct.mlme_priv*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %5, align 8
  store %union.recv_frame* %1, %union.recv_frame** %6, align 8
  store %struct.sta_info** %2, %struct.sta_info*** %7, align 8
  %15 = load %union.recv_frame*, %union.recv_frame** %6, align 8
  %16 = bitcast %union.recv_frame* %15 to %struct.TYPE_4__*
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %8, align 8
  %20 = load %union.recv_frame*, %union.recv_frame** %6, align 8
  %21 = bitcast %union.recv_frame* %20 to %struct.TYPE_4__*
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 0
  store %struct.rx_pkt_attrib* %23, %struct.rx_pkt_attrib** %9, align 8
  %24 = load %struct._adapter*, %struct._adapter** %5, align 8
  %25 = getelementptr inbounds %struct._adapter, %struct._adapter* %24, i32 0, i32 2
  store %struct.sta_priv* %25, %struct.sta_priv** %10, align 8
  %26 = load %struct._adapter*, %struct._adapter** %5, align 8
  %27 = getelementptr inbounds %struct._adapter, %struct._adapter* %26, i32 0, i32 1
  store %struct.mlme_priv* %27, %struct.mlme_priv** %11, align 8
  %28 = load %struct.mlme_priv*, %struct.mlme_priv** %11, align 8
  %29 = call i32* @get_bssid(%struct.mlme_priv* %28)
  store i32* %29, i32** %12, align 8
  %30 = load %struct._adapter*, %struct._adapter** %5, align 8
  %31 = getelementptr inbounds %struct._adapter, %struct._adapter* %30, i32 0, i32 0
  %32 = call i32* @myid(i32* %31)
  store i32* %32, i32** %13, align 8
  %33 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %34 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %33, i32 0, i32 3
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @is_multicast_ether_addr(i32* %35)
  store i32 %36, i32* %14, align 4
  %37 = load %struct.mlme_priv*, %struct.mlme_priv** %11, align 8
  %38 = load i32, i32* @WIFI_STATION_STATE, align 4
  %39 = call i64 @check_fwstate(%struct.mlme_priv* %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %138

41:                                               ; preds = %3
  %42 = load %struct.mlme_priv*, %struct.mlme_priv** %11, align 8
  %43 = load i32, i32* @_FW_LINKED, align 4
  %44 = call i64 @check_fwstate(%struct.mlme_priv* %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %138

46:                                               ; preds = %41
  %47 = load i32*, i32** %8, align 8
  %48 = call i32 @GetFrameSubType(i32* %47)
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* @WIFI_DATA_NULL, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %46
  %53 = load i32, i32* @_FAIL, align 4
  store i32 %53, i32* %4, align 4
  br label %209

54:                                               ; preds = %46
  %55 = load i32*, i32** %8, align 8
  %56 = call i32 @GetFrameSubType(i32* %55)
  %57 = load i32, i32* @WIFI_QOS_DATA_TYPE, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @WIFI_QOS_DATA_TYPE, align 4
  %60 = icmp eq i32 %58, %59
  br i1 %60, label %61, label %74

61:                                               ; preds = %54
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 @GetFrameSubType(i32* %62)
  %64 = call i32 @BIT(i32 4)
  %65 = call i32 @BIT(i32 5)
  %66 = or i32 %64, %65
  %67 = call i32 @BIT(i32 6)
  %68 = or i32 %66, %67
  %69 = and i32 %63, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %61
  %72 = load i32, i32* @_FAIL, align 4
  store i32 %72, i32* %4, align 4
  br label %209

73:                                               ; preds = %61
  br label %74

74:                                               ; preds = %73, %54
  %75 = load i32*, i32** %13, align 8
  %76 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %77 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* @ETH_ALEN, align 4
  %80 = call i64 @memcmp(i32* %75, i32* %78, i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %74
  %83 = load i32, i32* @_FAIL, align 4
  store i32 %83, i32* %4, align 4
  br label %209

84:                                               ; preds = %74
  %85 = load i32*, i32** %13, align 8
  %86 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %87 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %86, i32 0, i32 3
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* @ETH_ALEN, align 4
  %90 = call i64 @memcmp(i32* %85, i32* %88, i32 %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %84
  %93 = load i32, i32* %14, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = load i32, i32* @_FAIL, align 4
  store i32 %96, i32* %4, align 4
  br label %209

97:                                               ; preds = %92, %84
  %98 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %99 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = call i64 @is_zero_ether_addr(i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %115, label %103

103:                                              ; preds = %97
  %104 = load i32*, i32** %12, align 8
  %105 = call i64 @is_zero_ether_addr(i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %115, label %107

107:                                              ; preds = %103
  %108 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %109 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %108, i32 0, i32 0
  %110 = load i32*, i32** %109, align 8
  %111 = load i32*, i32** %12, align 8
  %112 = load i32, i32* @ETH_ALEN, align 4
  %113 = call i64 @memcmp(i32* %110, i32* %111, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %107, %103, %97
  %116 = load i32, i32* @_FAIL, align 4
  store i32 %116, i32* %4, align 4
  br label %209

117:                                              ; preds = %107
  %118 = load i32, i32* %14, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load %struct._adapter*, %struct._adapter** %5, align 8
  %122 = call %struct.sta_info* @r8712_get_bcmc_stainfo(%struct._adapter* %121)
  %123 = load %struct.sta_info**, %struct.sta_info*** %7, align 8
  store %struct.sta_info* %122, %struct.sta_info** %123, align 8
  br label %131

124:                                              ; preds = %117
  %125 = load %struct.sta_priv*, %struct.sta_priv** %10, align 8
  %126 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %127 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %126, i32 0, i32 0
  %128 = load i32*, i32** %127, align 8
  %129 = call %struct.sta_info* @r8712_get_stainfo(%struct.sta_priv* %125, i32* %128)
  %130 = load %struct.sta_info**, %struct.sta_info*** %7, align 8
  store %struct.sta_info* %129, %struct.sta_info** %130, align 8
  br label %131

131:                                              ; preds = %124, %120
  %132 = load %struct.sta_info**, %struct.sta_info*** %7, align 8
  %133 = load %struct.sta_info*, %struct.sta_info** %132, align 8
  %134 = icmp eq %struct.sta_info* %133, null
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = load i32, i32* @_FAIL, align 4
  store i32 %136, i32* %4, align 4
  br label %209

137:                                              ; preds = %131
  br label %207

138:                                              ; preds = %41, %3
  %139 = load %struct.mlme_priv*, %struct.mlme_priv** %11, align 8
  %140 = load i32, i32* @WIFI_MP_STATE, align 4
  %141 = call i64 @check_fwstate(%struct.mlme_priv* %139, i32 %140)
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %204

143:                                              ; preds = %138
  %144 = load %struct.mlme_priv*, %struct.mlme_priv** %11, align 8
  %145 = load i32, i32* @_FW_LINKED, align 4
  %146 = call i64 @check_fwstate(%struct.mlme_priv* %144, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %204

148:                                              ; preds = %143
  %149 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %150 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %149, i32 0, i32 3
  %151 = load i32*, i32** %150, align 8
  %152 = load i32*, i32** %8, align 8
  %153 = call i32* @GetAddr1Ptr(i32* %152)
  %154 = load i32, i32* @ETH_ALEN, align 4
  %155 = call i32 @memcpy(i32* %151, i32* %153, i32 %154)
  %156 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %157 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %156, i32 0, i32 1
  %158 = load i32*, i32** %157, align 8
  %159 = load i32*, i32** %8, align 8
  %160 = call i32* @GetAddr2Ptr(i32* %159)
  %161 = load i32, i32* @ETH_ALEN, align 4
  %162 = call i32 @memcpy(i32* %158, i32* %160, i32 %161)
  %163 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %164 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %163, i32 0, i32 0
  %165 = load i32*, i32** %164, align 8
  %166 = load i32*, i32** %8, align 8
  %167 = call i32* @GetAddr3Ptr(i32* %166)
  %168 = load i32, i32* @ETH_ALEN, align 4
  %169 = call i32 @memcpy(i32* %165, i32* %167, i32 %168)
  %170 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %171 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %170, i32 0, i32 4
  %172 = load i32*, i32** %171, align 8
  %173 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %174 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %173, i32 0, i32 3
  %175 = load i32*, i32** %174, align 8
  %176 = load i32, i32* @ETH_ALEN, align 4
  %177 = call i32 @memcpy(i32* %172, i32* %175, i32 %176)
  %178 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %179 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %178, i32 0, i32 2
  %180 = load i32*, i32** %179, align 8
  %181 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %182 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %181, i32 0, i32 1
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* @ETH_ALEN, align 4
  %185 = call i32 @memcpy(i32* %180, i32* %183, i32 %184)
  %186 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %187 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %186, i32 0, i32 0
  %188 = load i32*, i32** %187, align 8
  %189 = load i32*, i32** %12, align 8
  %190 = load i32, i32* @ETH_ALEN, align 4
  %191 = call i32 @memcpy(i32* %188, i32* %189, i32 %190)
  %192 = load %struct.sta_priv*, %struct.sta_priv** %10, align 8
  %193 = load %struct.rx_pkt_attrib*, %struct.rx_pkt_attrib** %9, align 8
  %194 = getelementptr inbounds %struct.rx_pkt_attrib, %struct.rx_pkt_attrib* %193, i32 0, i32 0
  %195 = load i32*, i32** %194, align 8
  %196 = call %struct.sta_info* @r8712_get_stainfo(%struct.sta_priv* %192, i32* %195)
  %197 = load %struct.sta_info**, %struct.sta_info*** %7, align 8
  store %struct.sta_info* %196, %struct.sta_info** %197, align 8
  %198 = load %struct.sta_info**, %struct.sta_info*** %7, align 8
  %199 = load %struct.sta_info*, %struct.sta_info** %198, align 8
  %200 = icmp eq %struct.sta_info* %199, null
  br i1 %200, label %201, label %203

201:                                              ; preds = %148
  %202 = load i32, i32* @_FAIL, align 4
  store i32 %202, i32* %4, align 4
  br label %209

203:                                              ; preds = %148
  br label %206

204:                                              ; preds = %143, %138
  %205 = load i32, i32* @_FAIL, align 4
  store i32 %205, i32* %4, align 4
  br label %209

206:                                              ; preds = %203
  br label %207

207:                                              ; preds = %206, %137
  %208 = load i32, i32* @_SUCCESS, align 4
  store i32 %208, i32* %4, align 4
  br label %209

209:                                              ; preds = %207, %204, %201, %135, %115, %95, %82, %71, %52
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

declare dso_local i32* @get_bssid(%struct.mlme_priv*) #1

declare dso_local i32* @myid(i32*) #1

declare dso_local i32 @is_multicast_ether_addr(i32*) #1

declare dso_local i64 @check_fwstate(%struct.mlme_priv*, i32) #1

declare dso_local i32 @GetFrameSubType(i32*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i64 @memcmp(i32*, i32*, i32) #1

declare dso_local i64 @is_zero_ether_addr(i32*) #1

declare dso_local %struct.sta_info* @r8712_get_bcmc_stainfo(%struct._adapter*) #1

declare dso_local %struct.sta_info* @r8712_get_stainfo(%struct.sta_priv*, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32* @GetAddr1Ptr(i32*) #1

declare dso_local i32* @GetAddr2Ptr(i32*) #1

declare dso_local i32* @GetAddr3Ptr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
