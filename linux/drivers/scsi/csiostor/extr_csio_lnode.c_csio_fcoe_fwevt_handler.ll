; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_fcoe_fwevt_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_lnode.c_csio_fcoe_fwevt_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i64, i64, i32, i32 }
%struct.csio_lnode = type { i64, i64, i32, i32 }
%struct.csio_rnode = type { i32 }
%struct.fw_fcoe_link_cmd = type { i32, i32, i32, i32 }
%struct.fw_wr_hdr = type { i32 }
%struct.fw_rdev_wr = type { i64, i64, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@CPL_FW6_MSG = common dso_local global i64 0, align 8
@FW_FCOE_LINK_CMD = common dso_local global i64 0, align 8
@FCOE_LINKUP = common dso_local global i32 0, align 4
@FCOE_LINKDOWN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Unexpected FCOE LINK status:0x%x\0A\00", align 1
@n_cpl_unexp = common dso_local global i32 0, align 4
@CPL_FW6_PLD = common dso_local global i64 0, align 8
@FW_RDEV_WR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"FW_RDEV_WR: flowid:x%x ev_cause:x%x vnpi:0x%x\0A\00", align 1
@PROT_FCOE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [56 x i8] c"FW_RDEV_WR: invalid proto:x%x received with flowid:x%x\0A\00", align 1
@n_evt_drop = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"FW_DEV_WR: invalid vnpi:x%x received with flowid:x%x\0A\00", align 1
@.str.4 = private unnamed_addr constant [40 x i8] c"Failed to confirm rnode for flowid:x%x\0A\00", align 1
@n_evt_fw = common dso_local global i32* null, align 8
@.str.5 = private unnamed_addr constant [53 x i8] c"Posting event to lnode event:%d cause:%d flowid:x%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"unexpected WR op(0x%x) recv\0A\00", align 1
@FW_FCOE_ELS_CT_WR = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [30 x i8] c"unexpected CPL op(0x%x) recv\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @csio_fcoe_fwevt_handler(%struct.csio_hw* %0, i64 %1, i32* %2) #0 {
  %4 = alloca %struct.csio_hw*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.csio_lnode*, align 8
  %8 = alloca %struct.csio_rnode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.fw_fcoe_link_cmd*, align 8
  %12 = alloca %struct.fw_wr_hdr*, align 8
  %13 = alloca %struct.fw_rdev_wr*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  store %struct.csio_hw* %0, %struct.csio_hw** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32* %2, i32** %6, align 8
  %19 = load i32*, i32** %6, align 8
  %20 = bitcast i32* %19 to i64*
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %5, align 8
  %23 = load i64, i64* @CPL_FW6_MSG, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %97

25:                                               ; preds = %3
  %26 = load i64, i64* %10, align 8
  %27 = load i64, i64* @FW_FCOE_LINK_CMD, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %97

29:                                               ; preds = %25
  %30 = load i32*, i32** %6, align 8
  %31 = bitcast i32* %30 to %struct.fw_fcoe_link_cmd*
  store %struct.fw_fcoe_link_cmd* %31, %struct.fw_fcoe_link_cmd** %11, align 8
  %32 = load %struct.fw_fcoe_link_cmd*, %struct.fw_fcoe_link_cmd** %11, align 8
  %33 = getelementptr inbounds %struct.fw_fcoe_link_cmd, %struct.fw_fcoe_link_cmd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %14, align 4
  %35 = load %struct.fw_fcoe_link_cmd*, %struct.fw_fcoe_link_cmd** %11, align 8
  %36 = getelementptr inbounds %struct.fw_fcoe_link_cmd, %struct.fw_fcoe_link_cmd* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ntohl(i32 %37)
  %39 = call i64 @FW_FCOE_LINK_CMD_PORTID_GET(i32 %38)
  store i64 %39, i64* %9, align 8
  %40 = load %struct.fw_fcoe_link_cmd*, %struct.fw_fcoe_link_cmd** %11, align 8
  %41 = getelementptr inbounds %struct.fw_fcoe_link_cmd, %struct.fw_fcoe_link_cmd* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @ntohl(i32 %42)
  %44 = call i64 @FW_FCOE_LINK_CMD_FCFI_GET(i32 %43)
  store i64 %44, i64* %15, align 8
  %45 = load %struct.fw_fcoe_link_cmd*, %struct.fw_fcoe_link_cmd** %11, align 8
  %46 = getelementptr inbounds %struct.fw_fcoe_link_cmd, %struct.fw_fcoe_link_cmd* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @ntohl(i32 %47)
  %49 = call i64 @FW_FCOE_LINK_CMD_VNPI_GET(i32 %48)
  store i64 %49, i64* %17, align 8
  %50 = load i32, i32* %14, align 4
  %51 = load i32, i32* @FCOE_LINKUP, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %29
  %54 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %55 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %54, i32 0, i32 2
  %56 = call i32 @spin_lock_irq(i32* %55)
  %57 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %58 = bitcast %struct.csio_hw* %57 to %struct.csio_lnode*
  %59 = load i64, i64* %9, align 8
  %60 = load i64, i64* %15, align 8
  %61 = load i64, i64* %17, align 8
  %62 = call i32 @csio_handle_link_up(%struct.csio_lnode* %58, i64 %59, i64 %60, i64 %61)
  %63 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %64 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %63, i32 0, i32 2
  %65 = call i32 @spin_unlock_irq(i32* %64)
  br label %96

66:                                               ; preds = %29
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* @FCOE_LINKDOWN, align 4
  %69 = icmp eq i32 %67, %68
  br i1 %69, label %70, label %83

70:                                               ; preds = %66
  %71 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %72 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %71, i32 0, i32 2
  %73 = call i32 @spin_lock_irq(i32* %72)
  %74 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %75 = bitcast %struct.csio_hw* %74 to %struct.csio_lnode*
  %76 = load i64, i64* %9, align 8
  %77 = load i64, i64* %15, align 8
  %78 = load i64, i64* %17, align 8
  %79 = call i32 @csio_handle_link_down(%struct.csio_lnode* %75, i64 %76, i64 %77, i64 %78)
  %80 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %81 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %80, i32 0, i32 2
  %82 = call i32 @spin_unlock_irq(i32* %81)
  br label %95

83:                                               ; preds = %66
  %84 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %85 = bitcast %struct.csio_hw* %84 to %struct.csio_lnode*
  %86 = load %struct.fw_fcoe_link_cmd*, %struct.fw_fcoe_link_cmd** %11, align 8
  %87 = getelementptr inbounds %struct.fw_fcoe_link_cmd, %struct.fw_fcoe_link_cmd* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = sext i32 %88 to i64
  %90 = call i32 @csio_warn(%struct.csio_lnode* %85, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %89)
  %91 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %92 = bitcast %struct.csio_hw* %91 to %struct.csio_lnode*
  %93 = load i32, i32* @n_cpl_unexp, align 4
  %94 = call i32 @CSIO_INC_STATS(%struct.csio_lnode* %92, i32 %93)
  br label %95

95:                                               ; preds = %83, %70
  br label %96

96:                                               ; preds = %95, %53
  br label %294

97:                                               ; preds = %25, %3
  %98 = load i64, i64* %5, align 8
  %99 = load i64, i64* @CPL_FW6_PLD, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %250

101:                                              ; preds = %97
  %102 = load i32*, i32** %6, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 4
  %104 = bitcast i32* %103 to %struct.fw_wr_hdr*
  store %struct.fw_wr_hdr* %104, %struct.fw_wr_hdr** %12, align 8
  %105 = load %struct.fw_wr_hdr*, %struct.fw_wr_hdr** %12, align 8
  %106 = getelementptr inbounds %struct.fw_wr_hdr, %struct.fw_wr_hdr* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @be32_to_cpu(i32 %107)
  %109 = call i64 @FW_WR_OP_G(i32 %108)
  %110 = load i64, i64* @FW_RDEV_WR, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %236

112:                                              ; preds = %101
  %113 = load i32*, i32** %6, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 4
  %115 = bitcast i32* %114 to %struct.fw_rdev_wr*
  store %struct.fw_rdev_wr* %115, %struct.fw_rdev_wr** %13, align 8
  %116 = load %struct.fw_rdev_wr*, %struct.fw_rdev_wr** %13, align 8
  %117 = getelementptr inbounds %struct.fw_rdev_wr, %struct.fw_rdev_wr* %116, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @ntohl(i32 %118)
  %120 = call i64 @FW_RDEV_WR_FLOWID_GET(i32 %119)
  store i64 %120, i64* %16, align 8
  %121 = load %struct.fw_rdev_wr*, %struct.fw_rdev_wr** %13, align 8
  %122 = getelementptr inbounds %struct.fw_rdev_wr, %struct.fw_rdev_wr* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @ntohl(i32 %123)
  %125 = call i64 @FW_RDEV_WR_ASSOC_FLOWID_GET(i32 %124)
  store i64 %125, i64* %17, align 8
  %126 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %127 = bitcast %struct.csio_hw* %126 to %struct.csio_lnode*
  %128 = load i64, i64* %16, align 8
  %129 = load %struct.fw_rdev_wr*, %struct.fw_rdev_wr** %13, align 8
  %130 = getelementptr inbounds %struct.fw_rdev_wr, %struct.fw_rdev_wr* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* %17, align 8
  %133 = call i32 @csio_dbg(%struct.csio_lnode* %127, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i64 %128, i64 %131, i64 %132)
  %134 = load %struct.fw_rdev_wr*, %struct.fw_rdev_wr** %13, align 8
  %135 = getelementptr inbounds %struct.fw_rdev_wr, %struct.fw_rdev_wr* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @PROT_FCOE, align 8
  %138 = icmp ne i64 %136, %137
  br i1 %138, label %139, label %151

139:                                              ; preds = %112
  %140 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %141 = bitcast %struct.csio_hw* %140 to %struct.csio_lnode*
  %142 = load %struct.fw_rdev_wr*, %struct.fw_rdev_wr** %13, align 8
  %143 = getelementptr inbounds %struct.fw_rdev_wr, %struct.fw_rdev_wr* %142, i32 0, i32 1
  %144 = load i64, i64* %143, align 8
  %145 = load i64, i64* %16, align 8
  %146 = call i32 @csio_err(%struct.csio_lnode* %141, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i64 %144, i64 %145)
  %147 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %148 = bitcast %struct.csio_hw* %147 to %struct.csio_lnode*
  %149 = load i32, i32* @n_evt_drop, align 4
  %150 = call i32 @CSIO_INC_STATS(%struct.csio_lnode* %148, i32 %149)
  br label %294

151:                                              ; preds = %112
  %152 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %153 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %152, i32 0, i32 2
  %154 = call i32 @spin_lock_irq(i32* %153)
  %155 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %156 = bitcast %struct.csio_hw* %155 to %struct.csio_lnode*
  %157 = load i64, i64* %17, align 8
  %158 = call %struct.csio_lnode* @csio_ln_lookup_by_vnpi(%struct.csio_lnode* %156, i64 %157)
  store %struct.csio_lnode* %158, %struct.csio_lnode** %7, align 8
  %159 = load %struct.csio_lnode*, %struct.csio_lnode** %7, align 8
  %160 = icmp ne %struct.csio_lnode* %159, null
  br i1 %160, label %171, label %161

161:                                              ; preds = %151
  %162 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %163 = bitcast %struct.csio_hw* %162 to %struct.csio_lnode*
  %164 = load i64, i64* %17, align 8
  %165 = load i64, i64* %16, align 8
  %166 = call i32 @csio_err(%struct.csio_lnode* %163, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0), i64 %164, i64 %165)
  %167 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %168 = bitcast %struct.csio_hw* %167 to %struct.csio_lnode*
  %169 = load i32, i32* @n_evt_drop, align 4
  %170 = call i32 @CSIO_INC_STATS(%struct.csio_lnode* %168, i32 %169)
  br label %232

171:                                              ; preds = %151
  %172 = load %struct.csio_lnode*, %struct.csio_lnode** %7, align 8
  %173 = load i64, i64* %16, align 8
  %174 = load %struct.fw_rdev_wr*, %struct.fw_rdev_wr** %13, align 8
  %175 = getelementptr inbounds %struct.fw_rdev_wr, %struct.fw_rdev_wr* %174, i32 0, i32 2
  %176 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %175, i32 0, i32 0
  %177 = call %struct.csio_rnode* @csio_confirm_rnode(%struct.csio_lnode* %172, i64 %173, i32* %176)
  store %struct.csio_rnode* %177, %struct.csio_rnode** %8, align 8
  %178 = load %struct.csio_rnode*, %struct.csio_rnode** %8, align 8
  %179 = icmp ne %struct.csio_rnode* %178, null
  br i1 %179, label %189, label %180

180:                                              ; preds = %171
  %181 = load %struct.csio_lnode*, %struct.csio_lnode** %7, align 8
  %182 = load i64, i64* %16, align 8
  %183 = trunc i64 %182 to i32
  %184 = call i32 (%struct.csio_lnode*, i8*, i32, ...) @csio_ln_dbg(%struct.csio_lnode* %181, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.4, i64 0, i64 0), i32 %183)
  %185 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %186 = bitcast %struct.csio_hw* %185 to %struct.csio_lnode*
  %187 = load i32, i32* @n_evt_drop, align 4
  %188 = call i32 @CSIO_INC_STATS(%struct.csio_lnode* %186, i32 %187)
  br label %232

189:                                              ; preds = %171
  %190 = load %struct.csio_lnode*, %struct.csio_lnode** %7, align 8
  %191 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = load %struct.csio_lnode*, %struct.csio_lnode** %7, align 8
  %194 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %193, i32 0, i32 0
  store i64 %192, i64* %194, align 8
  %195 = load %struct.fw_rdev_wr*, %struct.fw_rdev_wr** %13, align 8
  %196 = getelementptr inbounds %struct.fw_rdev_wr, %struct.fw_rdev_wr* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = load %struct.csio_lnode*, %struct.csio_lnode** %7, align 8
  %199 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %198, i32 0, i32 1
  store i64 %197, i64* %199, align 8
  %200 = load %struct.csio_lnode*, %struct.csio_lnode** %7, align 8
  %201 = load i32*, i32** @n_evt_fw, align 8
  %202 = load %struct.fw_rdev_wr*, %struct.fw_rdev_wr** %13, align 8
  %203 = getelementptr inbounds %struct.fw_rdev_wr, %struct.fw_rdev_wr* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds i32, i32* %201, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @CSIO_INC_STATS(%struct.csio_lnode* %200, i32 %206)
  %208 = load %struct.fw_rdev_wr*, %struct.fw_rdev_wr** %13, align 8
  %209 = getelementptr inbounds %struct.fw_rdev_wr, %struct.fw_rdev_wr* %208, i32 0, i32 0
  %210 = load i64, i64* %209, align 8
  %211 = call i32 @CSIO_FWE_TO_LNE(i64 %210)
  store i32 %211, i32* %18, align 4
  %212 = load i32, i32* %18, align 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %226

214:                                              ; preds = %189
  %215 = load %struct.csio_lnode*, %struct.csio_lnode** %7, align 8
  %216 = load i32, i32* %18, align 4
  %217 = load %struct.fw_rdev_wr*, %struct.fw_rdev_wr** %13, align 8
  %218 = getelementptr inbounds %struct.fw_rdev_wr, %struct.fw_rdev_wr* %217, i32 0, i32 0
  %219 = load i64, i64* %218, align 8
  %220 = load i64, i64* %16, align 8
  %221 = call i32 (%struct.csio_lnode*, i8*, i32, ...) @csio_ln_dbg(%struct.csio_lnode* %215, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.5, i64 0, i64 0), i32 %216, i64 %219, i64 %220)
  %222 = load %struct.csio_lnode*, %struct.csio_lnode** %7, align 8
  %223 = getelementptr inbounds %struct.csio_lnode, %struct.csio_lnode* %222, i32 0, i32 3
  %224 = load i32, i32* %18, align 4
  %225 = call i32 @csio_post_event(i32* %223, i32 %224)
  br label %226

226:                                              ; preds = %214, %189
  %227 = load %struct.csio_rnode*, %struct.csio_rnode** %8, align 8
  %228 = load %struct.fw_rdev_wr*, %struct.fw_rdev_wr** %13, align 8
  %229 = getelementptr inbounds %struct.fw_rdev_wr, %struct.fw_rdev_wr* %228, i32 0, i32 0
  %230 = load i64, i64* %229, align 8
  %231 = call i32 @csio_rnode_fwevt_handler(%struct.csio_rnode* %227, i64 %230)
  br label %232

232:                                              ; preds = %226, %180, %161
  %233 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %234 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %233, i32 0, i32 2
  %235 = call i32 @spin_unlock_irq(i32* %234)
  br label %294

236:                                              ; preds = %101
  %237 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %238 = bitcast %struct.csio_hw* %237 to %struct.csio_lnode*
  %239 = load %struct.fw_wr_hdr*, %struct.fw_wr_hdr** %12, align 8
  %240 = getelementptr inbounds %struct.fw_wr_hdr, %struct.fw_wr_hdr* %239, i32 0, i32 0
  %241 = load i32, i32* %240, align 4
  %242 = call i32 @be32_to_cpu(i32 %241)
  %243 = call i64 @FW_WR_OP_G(i32 %242)
  %244 = call i32 @csio_warn(%struct.csio_lnode* %238, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i64 %243)
  %245 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %246 = bitcast %struct.csio_hw* %245 to %struct.csio_lnode*
  %247 = load i32, i32* @n_cpl_unexp, align 4
  %248 = call i32 @CSIO_INC_STATS(%struct.csio_lnode* %246, i32 %247)
  br label %249

249:                                              ; preds = %236
  br label %293

250:                                              ; preds = %97
  %251 = load i64, i64* %5, align 8
  %252 = load i64, i64* @CPL_FW6_MSG, align 8
  %253 = icmp eq i64 %251, %252
  br i1 %253, label %254, label %283

254:                                              ; preds = %250
  %255 = load i32*, i32** %6, align 8
  %256 = bitcast i32* %255 to %struct.fw_wr_hdr*
  store %struct.fw_wr_hdr* %256, %struct.fw_wr_hdr** %12, align 8
  %257 = load %struct.fw_wr_hdr*, %struct.fw_wr_hdr** %12, align 8
  %258 = getelementptr inbounds %struct.fw_wr_hdr, %struct.fw_wr_hdr* %257, i32 0, i32 0
  %259 = load i32, i32* %258, align 4
  %260 = call i32 @be32_to_cpu(i32 %259)
  %261 = call i64 @FW_WR_OP_G(i32 %260)
  %262 = load i64, i64* @FW_FCOE_ELS_CT_WR, align 8
  %263 = icmp eq i64 %261, %262
  br i1 %263, label %264, label %269

264:                                              ; preds = %254
  %265 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %266 = bitcast %struct.csio_hw* %265 to %struct.csio_lnode*
  %267 = load %struct.fw_wr_hdr*, %struct.fw_wr_hdr** %12, align 8
  %268 = call i32 @csio_ln_mgmt_wr_handler(%struct.csio_lnode* %266, %struct.fw_wr_hdr* %267, i32 4)
  br label %282

269:                                              ; preds = %254
  %270 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %271 = bitcast %struct.csio_hw* %270 to %struct.csio_lnode*
  %272 = load %struct.fw_wr_hdr*, %struct.fw_wr_hdr** %12, align 8
  %273 = getelementptr inbounds %struct.fw_wr_hdr, %struct.fw_wr_hdr* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 4
  %275 = call i32 @be32_to_cpu(i32 %274)
  %276 = call i64 @FW_WR_OP_G(i32 %275)
  %277 = call i32 @csio_warn(%struct.csio_lnode* %271, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i64 %276)
  %278 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %279 = bitcast %struct.csio_hw* %278 to %struct.csio_lnode*
  %280 = load i32, i32* @n_cpl_unexp, align 4
  %281 = call i32 @CSIO_INC_STATS(%struct.csio_lnode* %279, i32 %280)
  br label %282

282:                                              ; preds = %269, %264
  br label %292

283:                                              ; preds = %250
  %284 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %285 = bitcast %struct.csio_hw* %284 to %struct.csio_lnode*
  %286 = load i64, i64* %10, align 8
  %287 = call i32 @csio_warn(%struct.csio_lnode* %285, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i64 %286)
  %288 = load %struct.csio_hw*, %struct.csio_hw** %4, align 8
  %289 = bitcast %struct.csio_hw* %288 to %struct.csio_lnode*
  %290 = load i32, i32* @n_cpl_unexp, align 4
  %291 = call i32 @CSIO_INC_STATS(%struct.csio_lnode* %289, i32 %290)
  br label %292

292:                                              ; preds = %283, %282
  br label %293

293:                                              ; preds = %292, %249
  br label %294

294:                                              ; preds = %139, %232, %293, %96
  ret void
}

declare dso_local i64 @FW_FCOE_LINK_CMD_PORTID_GET(i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i64 @FW_FCOE_LINK_CMD_FCFI_GET(i32) #1

declare dso_local i64 @FW_FCOE_LINK_CMD_VNPI_GET(i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @csio_handle_link_up(%struct.csio_lnode*, i64, i64, i64) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @csio_handle_link_down(%struct.csio_lnode*, i64, i64, i64) #1

declare dso_local i32 @csio_warn(%struct.csio_lnode*, i8*, i64) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_lnode*, i32) #1

declare dso_local i64 @FW_WR_OP_G(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i64 @FW_RDEV_WR_FLOWID_GET(i32) #1

declare dso_local i64 @FW_RDEV_WR_ASSOC_FLOWID_GET(i32) #1

declare dso_local i32 @csio_dbg(%struct.csio_lnode*, i8*, i64, i64, i64) #1

declare dso_local i32 @csio_err(%struct.csio_lnode*, i8*, i64, i64) #1

declare dso_local %struct.csio_lnode* @csio_ln_lookup_by_vnpi(%struct.csio_lnode*, i64) #1

declare dso_local %struct.csio_rnode* @csio_confirm_rnode(%struct.csio_lnode*, i64, i32*) #1

declare dso_local i32 @csio_ln_dbg(%struct.csio_lnode*, i8*, i32, ...) #1

declare dso_local i32 @CSIO_FWE_TO_LNE(i64) #1

declare dso_local i32 @csio_post_event(i32*, i32) #1

declare dso_local i32 @csio_rnode_fwevt_handler(%struct.csio_rnode*, i64) #1

declare dso_local i32 @csio_ln_mgmt_wr_handler(%struct.csio_lnode*, %struct.fw_wr_hdr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
