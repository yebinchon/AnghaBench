; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_adapter_initialize.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_ql_adapter_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i32, i32, %struct.TYPE_7__*, %struct.TYPE_8__*, %struct.TYPE_6__*, i32*, i32, %struct.TYPE_5__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { {}* }
%struct.TYPE_5__ = type { i32 }

@SYS_EFE = common dso_local global i32 0, align 4
@SYS_FAE = common dso_local global i32 0, align 4
@SYS = common dso_local global i32 0, align 4
@NIC_RCV_CFG_DFQ = common dso_local global i32 0, align 4
@NIC_RCV_CFG_DFQ_MASK = common dso_local global i32 0, align 4
@NETIF_F_HW_VLAN_CTAG_RX = common dso_local global i32 0, align 4
@NIC_RCV_CFG_RV = common dso_local global i32 0, align 4
@NIC_RCV_CFG = common dso_local global i32 0, align 4
@INTR_MASK = common dso_local global i32 0, align 4
@INTR_MASK_PI = common dso_local global i32 0, align 4
@FSC_FE = common dso_local global i32 0, align 4
@FSC_EPC_INBOUND = common dso_local global i32 0, align 4
@FSC_EPC_OUTBOUND = common dso_local global i32 0, align 4
@FSC_EC = common dso_local global i32 0, align 4
@FSC_VM_PAGE_4K = common dso_local global i32 0, align 4
@SPLT_SETTING = common dso_local global i32 0, align 4
@FSC_VM_PAGESIZE_MASK = common dso_local global i32 0, align 4
@FSC_DBL_MASK = common dso_local global i32 0, align 4
@FSC_DBRST_MASK = common dso_local global i32 0, align 4
@FSC = common dso_local global i32 0, align 4
@SPLT_HDR = common dso_local global i32 0, align 4
@SPLT_LEN = common dso_local global i32 0, align 4
@RST_FO = common dso_local global i32 0, align 4
@RST_FO_RR_MASK = common dso_local global i32 0, align 4
@RST_FO_RR_RCV_FUNC_CQ = common dso_local global i32 0, align 4
@MGMT_RCV_CFG = common dso_local global i32 0, align 4
@MGMT_RCV_CFG_RM = common dso_local global i32 0, align 4
@WAKE_MAGIC = common dso_local global i32 0, align 4
@ifup = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to start rx ring[%d].\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Failed to start RSS.\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Failed to start tx ring[%d].\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Failed to start port.\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"Failed to init CAM/Routing tables.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*)* @ql_adapter_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_adapter_initialize(%struct.ql_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* @SYS_EFE, align 4
  %9 = load i32, i32* @SYS_FAE, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = shl i32 %11, 16
  store i32 %12, i32* %5, align 4
  %13 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %14 = load i32, i32* @SYS, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* %4, align 4
  %17 = or i32 %15, %16
  %18 = call i32 @ql_write32(%struct.ql_adapter* %13, i32 %14, i32 %17)
  %19 = load i32, i32* @NIC_RCV_CFG_DFQ, align 4
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @NIC_RCV_CFG_DFQ_MASK, align 4
  store i32 %20, i32* %5, align 4
  %21 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %22 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %21, i32 0, i32 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @NETIF_F_HW_VLAN_CTAG_RX, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %37

29:                                               ; preds = %1
  %30 = load i32, i32* @NIC_RCV_CFG_RV, align 4
  %31 = load i32, i32* %4, align 4
  %32 = or i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* @NIC_RCV_CFG_RV, align 4
  %34 = shl i32 %33, 16
  %35 = load i32, i32* %5, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %29, %1
  %38 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %39 = load i32, i32* @NIC_RCV_CFG, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* %4, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @ql_write32(%struct.ql_adapter* %38, i32 %39, i32 %42)
  %44 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %45 = load i32, i32* @INTR_MASK, align 4
  %46 = load i32, i32* @INTR_MASK_PI, align 4
  %47 = shl i32 %46, 16
  %48 = load i32, i32* @INTR_MASK_PI, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @ql_write32(%struct.ql_adapter* %44, i32 %45, i32 %49)
  %51 = load i32, i32* @FSC_FE, align 4
  %52 = load i32, i32* @FSC_EPC_INBOUND, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @FSC_EPC_OUTBOUND, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @FSC_EC, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @FSC_VM_PAGE_4K, align 4
  %59 = or i32 %57, %58
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* @SPLT_SETTING, align 4
  %61 = load i32, i32* %4, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* @FSC_VM_PAGESIZE_MASK, align 4
  %64 = load i32, i32* @FSC_DBL_MASK, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* @FSC_DBRST_MASK, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* %4, align 4
  %69 = shl i32 %68, 16
  %70 = or i32 %67, %69
  store i32 %70, i32* %5, align 4
  %71 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %72 = load i32, i32* @FSC, align 4
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %4, align 4
  %75 = or i32 %73, %74
  %76 = call i32 @ql_write32(%struct.ql_adapter* %71, i32 %72, i32 %75)
  %77 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %78 = load i32, i32* @SPLT_HDR, align 4
  %79 = load i32, i32* @SPLT_LEN, align 4
  %80 = call i32 @ql_write32(%struct.ql_adapter* %77, i32 %78, i32 %79)
  %81 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %82 = load i32, i32* @RST_FO, align 4
  %83 = load i32, i32* @RST_FO_RR_MASK, align 4
  %84 = load i32, i32* @RST_FO_RR_RCV_FUNC_CQ, align 4
  %85 = or i32 %83, %84
  %86 = call i32 @ql_write32(%struct.ql_adapter* %81, i32 %82, i32 %85)
  %87 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %88 = load i32, i32* @MGMT_RCV_CFG, align 4
  %89 = call i32 @ql_read32(%struct.ql_adapter* %87, i32 %88)
  store i32 %89, i32* %4, align 4
  %90 = load i32, i32* @MGMT_RCV_CFG_RM, align 4
  %91 = xor i32 %90, -1
  %92 = load i32, i32* %4, align 4
  %93 = and i32 %92, %91
  store i32 %93, i32* %4, align 4
  store i32 -65536, i32* %5, align 4
  %94 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %95 = load i32, i32* @MGMT_RCV_CFG, align 4
  %96 = load i32, i32* %5, align 4
  %97 = call i32 @ql_write32(%struct.ql_adapter* %94, i32 %95, i32 %96)
  %98 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %99 = load i32, i32* @MGMT_RCV_CFG, align 4
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %4, align 4
  %102 = or i32 %100, %101
  %103 = call i32 @ql_write32(%struct.ql_adapter* %98, i32 %99, i32 %102)
  %104 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %105 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %104, i32 0, i32 8
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 104
  br i1 %109, label %117, label %110

110:                                              ; preds = %37
  %111 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %112 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %111, i32 0, i32 8
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 384
  br i1 %116, label %117, label %121

117:                                              ; preds = %110, %37
  %118 = load i32, i32* @WAKE_MAGIC, align 4
  %119 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %120 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %119, i32 0, i32 7
  store i32 %118, i32* %120, align 8
  br label %121

121:                                              ; preds = %117, %110
  store i32 0, i32* %6, align 4
  br label %122

122:                                              ; preds = %149, %121
  %123 = load i32, i32* %6, align 4
  %124 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %125 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp slt i32 %123, %126
  br i1 %127, label %128, label %152

128:                                              ; preds = %122
  %129 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %130 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %131 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %130, i32 0, i32 3
  %132 = load %struct.TYPE_7__*, %struct.TYPE_7__** %131, align 8
  %133 = load i32, i32* %6, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %132, i64 %134
  %136 = call i32 @ql_start_rx_ring(%struct.ql_adapter* %129, %struct.TYPE_7__* %135)
  store i32 %136, i32* %7, align 4
  %137 = load i32, i32* %7, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %148

139:                                              ; preds = %128
  %140 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %141 = load i32, i32* @ifup, align 4
  %142 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %143 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %142, i32 0, i32 4
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = load i32, i32* %6, align 4
  %146 = call i32 (%struct.ql_adapter*, i32, %struct.TYPE_8__*, i8*, ...) @netif_err(%struct.ql_adapter* %140, i32 %141, %struct.TYPE_8__* %144, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %145)
  %147 = load i32, i32* %7, align 4
  store i32 %147, i32* %2, align 4
  br label %254

148:                                              ; preds = %128
  br label %149

149:                                              ; preds = %148
  %150 = load i32, i32* %6, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %6, align 4
  br label %122

152:                                              ; preds = %122
  %153 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %154 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = icmp sgt i32 %155, 1
  br i1 %156, label %157, label %171

157:                                              ; preds = %152
  %158 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %159 = call i32 @ql_start_rss(%struct.ql_adapter* %158)
  store i32 %159, i32* %7, align 4
  %160 = load i32, i32* %7, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %170

162:                                              ; preds = %157
  %163 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %164 = load i32, i32* @ifup, align 4
  %165 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %166 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %165, i32 0, i32 4
  %167 = load %struct.TYPE_8__*, %struct.TYPE_8__** %166, align 8
  %168 = call i32 (%struct.ql_adapter*, i32, %struct.TYPE_8__*, i8*, ...) @netif_err(%struct.ql_adapter* %163, i32 %164, %struct.TYPE_8__* %167, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %169 = load i32, i32* %7, align 4
  store i32 %169, i32* %2, align 4
  br label %254

170:                                              ; preds = %157
  br label %171

171:                                              ; preds = %170, %152
  store i32 0, i32* %6, align 4
  br label %172

172:                                              ; preds = %199, %171
  %173 = load i32, i32* %6, align 4
  %174 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %175 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %174, i32 0, i32 2
  %176 = load i32, i32* %175, align 8
  %177 = icmp slt i32 %173, %176
  br i1 %177, label %178, label %202

178:                                              ; preds = %172
  %179 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %180 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %181 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %180, i32 0, i32 6
  %182 = load i32*, i32** %181, align 8
  %183 = load i32, i32* %6, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds i32, i32* %182, i64 %184
  %186 = call i32 @ql_start_tx_ring(%struct.ql_adapter* %179, i32* %185)
  store i32 %186, i32* %7, align 4
  %187 = load i32, i32* %7, align 4
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %198

189:                                              ; preds = %178
  %190 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %191 = load i32, i32* @ifup, align 4
  %192 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %193 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %192, i32 0, i32 4
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %193, align 8
  %195 = load i32, i32* %6, align 4
  %196 = call i32 (%struct.ql_adapter*, i32, %struct.TYPE_8__*, i8*, ...) @netif_err(%struct.ql_adapter* %190, i32 %191, %struct.TYPE_8__* %194, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %195)
  %197 = load i32, i32* %7, align 4
  store i32 %197, i32* %2, align 4
  br label %254

198:                                              ; preds = %178
  br label %199

199:                                              ; preds = %198
  %200 = load i32, i32* %6, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %6, align 4
  br label %172

202:                                              ; preds = %172
  %203 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %204 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %203, i32 0, i32 5
  %205 = load %struct.TYPE_6__*, %struct.TYPE_6__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  %207 = bitcast {}** %206 to i32 (%struct.ql_adapter*)**
  %208 = load i32 (%struct.ql_adapter*)*, i32 (%struct.ql_adapter*)** %207, align 8
  %209 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %210 = call i32 %208(%struct.ql_adapter* %209)
  store i32 %210, i32* %7, align 4
  %211 = load i32, i32* %7, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %220

213:                                              ; preds = %202
  %214 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %215 = load i32, i32* @ifup, align 4
  %216 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %217 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %216, i32 0, i32 4
  %218 = load %struct.TYPE_8__*, %struct.TYPE_8__** %217, align 8
  %219 = call i32 (%struct.ql_adapter*, i32, %struct.TYPE_8__*, i8*, ...) @netif_err(%struct.ql_adapter* %214, i32 %215, %struct.TYPE_8__* %218, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  br label %220

220:                                              ; preds = %213, %202
  %221 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %222 = call i32 @ql_cam_route_initialize(%struct.ql_adapter* %221)
  store i32 %222, i32* %7, align 4
  %223 = load i32, i32* %7, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %233

225:                                              ; preds = %220
  %226 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %227 = load i32, i32* @ifup, align 4
  %228 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %229 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %228, i32 0, i32 4
  %230 = load %struct.TYPE_8__*, %struct.TYPE_8__** %229, align 8
  %231 = call i32 (%struct.ql_adapter*, i32, %struct.TYPE_8__*, i8*, ...) @netif_err(%struct.ql_adapter* %226, i32 %227, %struct.TYPE_8__* %230, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0))
  %232 = load i32, i32* %7, align 4
  store i32 %232, i32* %2, align 4
  br label %254

233:                                              ; preds = %220
  store i32 0, i32* %6, align 4
  br label %234

234:                                              ; preds = %249, %233
  %235 = load i32, i32* %6, align 4
  %236 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %237 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %236, i32 0, i32 1
  %238 = load i32, i32* %237, align 4
  %239 = icmp slt i32 %235, %238
  br i1 %239, label %240, label %252

240:                                              ; preds = %234
  %241 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %242 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %241, i32 0, i32 3
  %243 = load %struct.TYPE_7__*, %struct.TYPE_7__** %242, align 8
  %244 = load i32, i32* %6, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %243, i64 %245
  %247 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %246, i32 0, i32 0
  %248 = call i32 @napi_enable(i32* %247)
  br label %249

249:                                              ; preds = %240
  %250 = load i32, i32* %6, align 4
  %251 = add nsw i32 %250, 1
  store i32 %251, i32* %6, align 4
  br label %234

252:                                              ; preds = %234
  %253 = load i32, i32* %7, align 4
  store i32 %253, i32* %2, align 4
  br label %254

254:                                              ; preds = %252, %225, %189, %162, %139
  %255 = load i32, i32* %2, align 4
  ret i32 %255
}

declare dso_local i32 @ql_write32(%struct.ql_adapter*, i32, i32) #1

declare dso_local i32 @ql_read32(%struct.ql_adapter*, i32) #1

declare dso_local i32 @ql_start_rx_ring(%struct.ql_adapter*, %struct.TYPE_7__*) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, %struct.TYPE_8__*, i8*, ...) #1

declare dso_local i32 @ql_start_rss(%struct.ql_adapter*) #1

declare dso_local i32 @ql_start_tx_ring(%struct.ql_adapter*, i32*) #1

declare dso_local i32 @ql_cam_route_initialize(%struct.ql_adapter*) #1

declare dso_local i32 @napi_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
