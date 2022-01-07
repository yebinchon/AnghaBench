; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_fip.c_qedf_fip_recv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedf/extr_qedf_fip.c_qedf_fip_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedf_ctx = type { %struct.TYPE_6__, %struct.TYPE_5__*, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32, i64 }
%struct.ethhdr = type { i32, i32 }
%struct.fip_header = type { i64, i32, i32 }
%struct.fip_desc = type { i64, i32 }
%struct.fip_mac_desc = type { i32 }
%struct.fip_wwn_desc = type { i32 }
%struct.fip_vn_desc = type { i32, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@QEDF_LOG_LL2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [79 x i8] c"FIP frame received: skb=%p fiph=%p source=%pM destn=%pM op=%x sub=%x vlan=%04x\00", align 1
@qedf_dump_frames = common dso_local global i64 0, align 8
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"fip \00", align 1
@DUMP_PREFIX_OFFSET = common dso_local global i32 0, align 4
@fcoe_all_enode = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [111 x i8] c"Dropping FIP type 0x%x pkt due to destination MAC mismatch dest_mac=%pM ctlr.dest_addr=%pM data_src_addr=%pM.\0A\00", align 1
@FIP_OP_VLAN = common dso_local global i32 0, align 4
@FIP_SC_VL_NOTE = common dso_local global i64 0, align 8
@FIP_OP_CTRL = common dso_local global i32 0, align 4
@FIP_SC_CLR_VLINK = common dso_local global i64 0, align 8
@QEDF_LOG_DISC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Clear virtual link received.\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"Dropping CVL since FCF has not been selected yet.\00", align 1
@FIP_BPW = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [20 x i8] c"Switch fd_mac=%pM.\0A\00", align 1
@.str.6 = private unnamed_addr constant [48 x i8] c"Switch fd_wwn=%016llx fcf_switch_name=%016llx.\0A\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"CVL vx_port fd_fc_id=0x%x fd_mac=%pM fd_wwpn=%016llx.\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"fcf_valid=%d fabric_id_valid=%d fc_wwpn_valid=%d.\0A\00", align 1
@ETH_HLEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qedf_fip_recv(%struct.qedf_ctx* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.qedf_ctx*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ethhdr*, align 8
  %6 = alloca %struct.fip_header*, align 8
  %7 = alloca %struct.fip_desc*, align 8
  %8 = alloca %struct.fip_mac_desc*, align 8
  %9 = alloca %struct.fip_wwn_desc*, align 8
  %10 = alloca %struct.fip_vn_desc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.qedf_ctx* %0, %struct.qedf_ctx** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  store i32 0, i32* %15, align 4
  store i32 1, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %19, align 4
  %20 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %21 = call i64 @skb_mac_header(%struct.sk_buff* %20)
  %22 = inttoptr i64 %21 to %struct.ethhdr*
  store %struct.ethhdr* %22, %struct.ethhdr** %5, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %24 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = load i32, i32* @ETH_ALEN, align 4
  %28 = mul nsw i32 2, %27
  %29 = sext i32 %28 to i64
  %30 = getelementptr i8, i8* %26, i64 %29
  %31 = getelementptr i8, i8* %30, i64 2
  %32 = bitcast i8* %31 to %struct.fip_header*
  store %struct.fip_header* %32, %struct.fip_header** %6, align 8
  %33 = load %struct.fip_header*, %struct.fip_header** %6, align 8
  %34 = getelementptr inbounds %struct.fip_header, %struct.fip_header* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @ntohs(i32 %35)
  %37 = trunc i64 %36 to i32
  store i32 %37, i32* %13, align 4
  %38 = load %struct.fip_header*, %struct.fip_header** %6, align 8
  %39 = getelementptr inbounds %struct.fip_header, %struct.fip_header* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  store i64 %40, i64* %14, align 8
  %41 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %42 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %41, i32 0, i32 2
  %43 = load i32, i32* @QEDF_LOG_LL2, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %45 = load %struct.fip_header*, %struct.fip_header** %6, align 8
  %46 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %47 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %50 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %13, align 4
  %53 = load i64, i64* %14, align 8
  %54 = load i32, i32* %19, align 4
  %55 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %42, i32 %43, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0), %struct.sk_buff* %44, %struct.fip_header* %45, i32 %48, i32 %51, i32 %52, i64 %53, i32 %54)
  %56 = load i64, i64* @qedf_dump_frames, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %68

58:                                               ; preds = %2
  %59 = load i32, i32* @KERN_WARNING, align 4
  %60 = load i32, i32* @DUMP_PREFIX_OFFSET, align 4
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %65 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @print_hex_dump(i32 %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %60, i32 16, i32 1, i64 %63, i32 %66, i32 0)
  br label %68

68:                                               ; preds = %58, %2
  %69 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %70 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %73 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %72, i32 0, i32 5
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @ether_addr_equal(i32 %71, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %110, label %77

77:                                               ; preds = %68
  %78 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %79 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load i32, i32* @fcoe_all_enode, align 4
  %82 = call i64 @ether_addr_equal(i32 %80, i32 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %110, label %84

84:                                               ; preds = %77
  %85 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %86 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %89 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @ether_addr_equal(i32 %87, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %110, label %93

93:                                               ; preds = %84
  %94 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %95 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %94, i32 0, i32 2
  %96 = load i32, i32* @QEDF_LOG_LL2, align 4
  %97 = load i32, i32* %13, align 4
  %98 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %99 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %102 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %105 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %95, i32 %96, i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.2, i64 0, i64 0), i32 %97, i32 %100, i32 %103, i32 %106)
  %108 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %109 = call i32 @kfree_skb(%struct.sk_buff* %108)
  br label %309

110:                                              ; preds = %84, %77, %68
  %111 = load i32, i32* %13, align 4
  %112 = load i32, i32* @FIP_OP_VLAN, align 4
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %110
  %115 = load i64, i64* %14, align 8
  %116 = load i64, i64* @FIP_SC_VL_NOTE, align 8
  %117 = icmp eq i64 %115, %116
  br i1 %117, label %118, label %124

118:                                              ; preds = %114
  %119 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %120 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %121 = call i32 @qedf_fcoe_process_vlan_resp(%struct.qedf_ctx* %119, %struct.sk_buff* %120)
  %122 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %123 = call i32 @kfree_skb(%struct.sk_buff* %122)
  br label %309

124:                                              ; preds = %114, %110
  %125 = load i32, i32* %13, align 4
  %126 = load i32, i32* @FIP_OP_CTRL, align 4
  %127 = icmp eq i32 %125, %126
  br i1 %127, label %128, label %300

128:                                              ; preds = %124
  %129 = load i64, i64* %14, align 8
  %130 = load i64, i64* @FIP_SC_CLR_VLINK, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %300

132:                                              ; preds = %128
  %133 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %134 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %133, i32 0, i32 2
  %135 = load i32, i32* @QEDF_LOG_DISC, align 4
  %136 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %134, i32 %135, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %137 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %138 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = icmp eq %struct.TYPE_4__* %140, null
  br i1 %141, label %142, label %149

142:                                              ; preds = %132
  %143 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %144 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %143, i32 0, i32 2
  %145 = load i32, i32* @QEDF_LOG_DISC, align 4
  %146 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %144, i32 %145, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0))
  %147 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %148 = call i32 @kfree_skb(%struct.sk_buff* %147)
  br label %309

149:                                              ; preds = %132
  %150 = load %struct.fip_header*, %struct.fip_header** %6, align 8
  %151 = getelementptr inbounds %struct.fip_header, %struct.fip_header* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = call i64 @ntohs(i32 %152)
  %154 = load i64, i64* @FIP_BPW, align 8
  %155 = mul i64 %153, %154
  store i64 %155, i64* %11, align 8
  %156 = load %struct.fip_header*, %struct.fip_header** %6, align 8
  %157 = getelementptr inbounds %struct.fip_header, %struct.fip_header* %156, i64 1
  %158 = bitcast %struct.fip_header* %157 to %struct.fip_desc*
  store %struct.fip_desc* %158, %struct.fip_desc** %7, align 8
  br label %159

159:                                              ; preds = %267, %149
  %160 = load i64, i64* %11, align 8
  %161 = icmp uge i64 %160, 16
  br i1 %161, label %162, label %276

162:                                              ; preds = %159
  %163 = load %struct.fip_desc*, %struct.fip_desc** %7, align 8
  %164 = getelementptr inbounds %struct.fip_desc, %struct.fip_desc* %163, i32 0, i32 0
  %165 = load i64, i64* %164, align 8
  %166 = load i64, i64* @FIP_BPW, align 8
  %167 = mul i64 %165, %166
  store i64 %167, i64* %12, align 8
  %168 = load %struct.fip_desc*, %struct.fip_desc** %7, align 8
  %169 = getelementptr inbounds %struct.fip_desc, %struct.fip_desc* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 8
  switch i32 %170, label %266 [
    i32 130, label %171
    i32 129, label %194
    i32 128, label %221
  ]

171:                                              ; preds = %162
  %172 = load %struct.fip_desc*, %struct.fip_desc** %7, align 8
  %173 = bitcast %struct.fip_desc* %172 to %struct.fip_mac_desc*
  store %struct.fip_mac_desc* %173, %struct.fip_mac_desc** %8, align 8
  %174 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %175 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %174, i32 0, i32 2
  %176 = load i32, i32* @QEDF_LOG_DISC, align 4
  %177 = load %struct.fip_mac_desc*, %struct.fip_mac_desc** %8, align 8
  %178 = getelementptr inbounds %struct.fip_mac_desc, %struct.fip_mac_desc* %177, i32 0, i32 0
  %179 = load i32, i32* %178, align 4
  %180 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %175, i32 %176, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %179)
  %181 = load %struct.fip_mac_desc*, %struct.fip_mac_desc** %8, align 8
  %182 = getelementptr inbounds %struct.fip_mac_desc, %struct.fip_mac_desc* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %185 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 0
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i64 @ether_addr_equal(i32 %183, i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %171
  store i32 1, i32* %15, align 4
  br label %193

193:                                              ; preds = %192, %171
  br label %267

194:                                              ; preds = %162
  %195 = load %struct.fip_desc*, %struct.fip_desc** %7, align 8
  %196 = bitcast %struct.fip_desc* %195 to %struct.fip_wwn_desc*
  store %struct.fip_wwn_desc* %196, %struct.fip_wwn_desc** %9, align 8
  %197 = load %struct.fip_wwn_desc*, %struct.fip_wwn_desc** %9, align 8
  %198 = getelementptr inbounds %struct.fip_wwn_desc, %struct.fip_wwn_desc* %197, i32 0, i32 0
  %199 = call i32 @get_unaligned_be64(i32* %198)
  store i32 %199, i32* %18, align 4
  %200 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %201 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %200, i32 0, i32 2
  %202 = load i32, i32* @QEDF_LOG_DISC, align 4
  %203 = load i32, i32* %18, align 4
  %204 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %205 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %205, i32 0, i32 0
  %207 = load %struct.TYPE_4__*, %struct.TYPE_4__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %207, i32 0, i32 0
  %209 = load i32, i32* %208, align 4
  %210 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %201, i32 %202, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.6, i64 0, i64 0), i32 %203, i32 %209)
  %211 = load i32, i32* %18, align 4
  %212 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %213 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = load %struct.TYPE_4__*, %struct.TYPE_4__** %214, align 8
  %216 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 4
  %218 = icmp eq i32 %211, %217
  br i1 %218, label %219, label %220

219:                                              ; preds = %194
  store i32 1, i32* %17, align 4
  br label %220

220:                                              ; preds = %219, %194
  br label %267

221:                                              ; preds = %162
  store i32 0, i32* %16, align 4
  %222 = load %struct.fip_desc*, %struct.fip_desc** %7, align 8
  %223 = bitcast %struct.fip_desc* %222 to %struct.fip_vn_desc*
  store %struct.fip_vn_desc* %223, %struct.fip_vn_desc** %10, align 8
  %224 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %225 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %224, i32 0, i32 2
  %226 = load %struct.fip_vn_desc*, %struct.fip_vn_desc** %10, align 8
  %227 = getelementptr inbounds %struct.fip_vn_desc, %struct.fip_vn_desc* %226, i32 0, i32 1
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @ntoh24(i32 %228)
  %230 = load %struct.fip_vn_desc*, %struct.fip_vn_desc** %10, align 8
  %231 = getelementptr inbounds %struct.fip_vn_desc, %struct.fip_vn_desc* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = load %struct.fip_vn_desc*, %struct.fip_vn_desc** %10, align 8
  %234 = getelementptr inbounds %struct.fip_vn_desc, %struct.fip_vn_desc* %233, i32 0, i32 2
  %235 = call i32 @get_unaligned_be64(i32* %234)
  %236 = call i32 @QEDF_ERR(i32* %225, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i64 0, i64 0), i32 %229, i32 %232, i32 %235)
  %237 = load %struct.fip_vn_desc*, %struct.fip_vn_desc** %10, align 8
  %238 = getelementptr inbounds %struct.fip_vn_desc, %struct.fip_vn_desc* %237, i32 0, i32 2
  %239 = call i32 @get_unaligned_be64(i32* %238)
  %240 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %241 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %240, i32 0, i32 4
  %242 = load i32, i32* %241, align 8
  %243 = icmp eq i32 %239, %242
  br i1 %243, label %264, label %244

244:                                              ; preds = %221
  %245 = load %struct.fip_vn_desc*, %struct.fip_vn_desc** %10, align 8
  %246 = getelementptr inbounds %struct.fip_vn_desc, %struct.fip_vn_desc* %245, i32 0, i32 1
  %247 = load i32, i32* %246, align 4
  %248 = call i32 @ntoh24(i32 %247)
  %249 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %250 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %249, i32 0, i32 1
  %251 = load %struct.TYPE_5__*, %struct.TYPE_5__** %250, align 8
  %252 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 4
  %254 = icmp eq i32 %248, %253
  br i1 %254, label %264, label %255

255:                                              ; preds = %244
  %256 = load %struct.fip_vn_desc*, %struct.fip_vn_desc** %10, align 8
  %257 = getelementptr inbounds %struct.fip_vn_desc, %struct.fip_vn_desc* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %260 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %259, i32 0, i32 3
  %261 = load i32, i32* %260, align 4
  %262 = call i64 @ether_addr_equal(i32 %258, i32 %261)
  %263 = icmp ne i64 %262, 0
  br i1 %263, label %264, label %265

264:                                              ; preds = %255, %244, %221
  store i32 1, i32* %16, align 4
  br label %265

265:                                              ; preds = %264, %255
  br label %267

266:                                              ; preds = %162
  br label %267

267:                                              ; preds = %266, %265, %220, %193
  %268 = load %struct.fip_desc*, %struct.fip_desc** %7, align 8
  %269 = bitcast %struct.fip_desc* %268 to i8*
  %270 = load i64, i64* %12, align 8
  %271 = getelementptr inbounds i8, i8* %269, i64 %270
  %272 = bitcast i8* %271 to %struct.fip_desc*
  store %struct.fip_desc* %272, %struct.fip_desc** %7, align 8
  %273 = load i64, i64* %12, align 8
  %274 = load i64, i64* %11, align 8
  %275 = sub i64 %274, %273
  store i64 %275, i64* %11, align 8
  br label %159

276:                                              ; preds = %159
  %277 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %278 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %277, i32 0, i32 2
  %279 = load i32, i32* @QEDF_LOG_DISC, align 4
  %280 = load i32, i32* %15, align 4
  %281 = load i32, i32* %16, align 4
  %282 = load i32, i32* %17, align 4
  %283 = call i32 (i32*, i32, i8*, ...) @QEDF_INFO(i32* %278, i32 %279, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i32 %280, i32 %281, i32 %282)
  %284 = load i32, i32* %15, align 4
  %285 = icmp ne i32 %284, 0
  br i1 %285, label %286, label %297

286:                                              ; preds = %276
  %287 = load i32, i32* %16, align 4
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %289, label %297

289:                                              ; preds = %286
  %290 = load i32, i32* %17, align 4
  %291 = icmp ne i32 %290, 0
  br i1 %291, label %292, label %297

292:                                              ; preds = %289
  %293 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %294 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %293, i32 0, i32 1
  %295 = load %struct.TYPE_5__*, %struct.TYPE_5__** %294, align 8
  %296 = call i32 @qedf_ctx_soft_reset(%struct.TYPE_5__* %295)
  br label %297

297:                                              ; preds = %292, %289, %286, %276
  %298 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %299 = call i32 @kfree_skb(%struct.sk_buff* %298)
  br label %308

300:                                              ; preds = %128, %124
  %301 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %302 = load i32, i32* @ETH_HLEN, align 4
  %303 = call i32 @__skb_pull(%struct.sk_buff* %301, i32 %302)
  %304 = load %struct.qedf_ctx*, %struct.qedf_ctx** %3, align 8
  %305 = getelementptr inbounds %struct.qedf_ctx, %struct.qedf_ctx* %304, i32 0, i32 0
  %306 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %307 = call i32 @fcoe_ctlr_recv(%struct.TYPE_6__* %305, %struct.sk_buff* %306)
  br label %308

308:                                              ; preds = %300, %297
  br label %309

309:                                              ; preds = %93, %142, %308, %118
  ret void
}

declare dso_local i64 @skb_mac_header(%struct.sk_buff*) #1

declare dso_local i64 @ntohs(i32) #1

declare dso_local i32 @QEDF_INFO(i32*, i32, i8*, ...) #1

declare dso_local i32 @print_hex_dump(i32, i8*, i32, i32, i32, i64, i32, i32) #1

declare dso_local i64 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @qedf_fcoe_process_vlan_resp(%struct.qedf_ctx*, %struct.sk_buff*) #1

declare dso_local i32 @get_unaligned_be64(i32*) #1

declare dso_local i32 @QEDF_ERR(i32*, i8*, i32, i32, i32) #1

declare dso_local i32 @ntoh24(i32) #1

declare dso_local i32 @qedf_ctx_soft_reset(%struct.TYPE_5__*) #1

declare dso_local i32 @__skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @fcoe_ctlr_recv(%struct.TYPE_6__*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
