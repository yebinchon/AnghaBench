; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_queue_cmd_ring.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_user.c_queue_cmd_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcmu_cmd = type { i32, i32, i32, i32, i64, %struct.se_cmd*, %struct.tcmu_dev* }
%struct.se_cmd = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.tcmu_dev = type { i32, i64, i32, i32, i32, i32, %struct.tcmu_mailbox*, i32, i32 }
%struct.tcmu_mailbox = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32, %struct.iovec* }
%struct.iovec = type { i32 }
%struct.TYPE_3__ = type { i32, i64, i64, i64 }
%struct.tcmu_cmd_entry = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }

@TCM_NO_SENSE = common dso_local global i32 0, align 4
@TCMU_DEV_BIT_BLOCKED = common dso_local global i32 0, align 4
@TCM_LUN_BUSY = common dso_local global i32 0, align 4
@TCMU_DEV_BIT_BROKEN = common dso_local global i32 0, align 4
@TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [72 x i8] c"TCMU: Request of size %zu/%zu is too big for %u/%zu cmd ring/data area\0A\00", align 1
@TCM_INVALID_CDB_FIELD = common dso_local global i32 0, align 4
@CMDR_OFF = common dso_local global i32 0, align 4
@TCMU_OP_PAD = common dso_local global i32 0, align 4
@TCMU_OP_CMD = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i64 0, align 8
@SCF_BIDI = common dso_local global i32 0, align 4
@TCM_OUT_OF_RESOURCES = common dso_local global i32 0, align 4
@TCMU_CMD_BIT_INFLIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcmu_cmd*, i32*)* @queue_cmd_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_cmd_ring(%struct.tcmu_cmd* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tcmu_cmd*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.tcmu_dev*, align 8
  %7 = alloca %struct.se_cmd*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tcmu_mailbox*, align 8
  %11 = alloca %struct.tcmu_cmd_entry*, align 8
  %12 = alloca %struct.iovec*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.tcmu_cmd* %0, %struct.tcmu_cmd** %4, align 8
  store i32* %1, i32** %5, align 8
  %20 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %4, align 8
  %21 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %20, i32 0, i32 6
  %22 = load %struct.tcmu_dev*, %struct.tcmu_dev** %21, align 8
  store %struct.tcmu_dev* %22, %struct.tcmu_dev** %6, align 8
  %23 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %4, align 8
  %24 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %23, i32 0, i32 5
  %25 = load %struct.se_cmd*, %struct.se_cmd** %24, align 8
  store %struct.se_cmd* %25, %struct.se_cmd** %7, align 8
  %26 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %4, align 8
  %27 = call i64 @tcmu_cmd_get_data_length(%struct.tcmu_cmd* %26)
  store i64 %27, i64* %18, align 8
  %28 = load i32, i32* @TCM_NO_SENSE, align 4
  %29 = load i32*, i32** %5, align 8
  store i32 %28, i32* %29, align 4
  %30 = load i32, i32* @TCMU_DEV_BIT_BLOCKED, align 4
  %31 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %32 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %31, i32 0, i32 8
  %33 = call i64 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load i32, i32* @TCM_LUN_BUSY, align 4
  %37 = load i32*, i32** %5, align 8
  store i32 %36, i32* %37, align 4
  store i32 -1, i32* %3, align 4
  br label %354

38:                                               ; preds = %2
  %39 = load i32, i32* @TCMU_DEV_BIT_BROKEN, align 4
  %40 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %41 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %40, i32 0, i32 8
  %42 = call i64 @test_bit(i32 %39, i32* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %38
  %45 = load i32, i32* @TCM_LOGICAL_UNIT_COMMUNICATION_FAILURE, align 4
  %46 = load i32*, i32** %5, align 8
  store i32 %45, i32* %46, align 4
  store i32 -1, i32* %3, align 4
  br label %354

47:                                               ; preds = %38
  %48 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %4, align 8
  %49 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i64 @tcmu_cmd_get_base_cmd_size(i32 %50)
  store i64 %51, i64* %8, align 8
  %52 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %4, align 8
  %53 = load i64, i64* %8, align 8
  %54 = call i64 @tcmu_cmd_get_cmd_size(%struct.tcmu_cmd* %52, i64 %53)
  store i64 %54, i64* %9, align 8
  %55 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %56 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %55, i32 0, i32 7
  %57 = call i32 @list_empty(i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %47
  br label %346

60:                                               ; preds = %47
  %61 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %62 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %61, i32 0, i32 6
  %63 = load %struct.tcmu_mailbox*, %struct.tcmu_mailbox** %62, align 8
  store %struct.tcmu_mailbox* %63, %struct.tcmu_mailbox** %10, align 8
  %64 = load %struct.tcmu_mailbox*, %struct.tcmu_mailbox** %10, align 8
  %65 = getelementptr inbounds %struct.tcmu_mailbox, %struct.tcmu_mailbox* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %68 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = srem i32 %66, %69
  store i32 %70, i32* %15, align 4
  %71 = load i64, i64* %9, align 8
  %72 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %73 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sdiv i32 %74, 2
  %76 = sext i32 %75 to i64
  %77 = icmp ugt i64 %71, %76
  br i1 %77, label %84, label %78

78:                                               ; preds = %60
  %79 = load i64, i64* %18, align 8
  %80 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %81 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp ugt i64 %79, %82
  br i1 %83, label %84, label %96

84:                                               ; preds = %78, %60
  %85 = load i64, i64* %9, align 8
  %86 = load i64, i64* %18, align 8
  %87 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %88 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %91 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @pr_warn(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str, i64 0, i64 0), i64 %85, i64 %86, i32 %89, i64 %92)
  %94 = load i32, i32* @TCM_INVALID_CDB_FIELD, align 4
  %95 = load i32*, i32** %5, align 8
  store i32 %94, i32* %95, align 4
  store i32 -1, i32* %3, align 4
  br label %354

96:                                               ; preds = %78
  %97 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %98 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %4, align 8
  %99 = load i64, i64* %9, align 8
  %100 = load i64, i64* %18, align 8
  %101 = call i32 @is_ring_space_avail(%struct.tcmu_dev* %97, %struct.tcmu_cmd* %98, i64 %99, i64 %100)
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %111, label %103

103:                                              ; preds = %96
  %104 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %4, align 8
  %105 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %4, align 8
  %106 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @tcmu_cmd_free_data(%struct.tcmu_cmd* %104, i32 %107)
  %109 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %4, align 8
  %110 = call i32 @tcmu_cmd_reset_dbi_cur(%struct.tcmu_cmd* %109)
  br label %346

111:                                              ; preds = %96
  %112 = load i32, i32* %15, align 4
  %113 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %114 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @head_to_end(i32 %112, i32 %115)
  %117 = load i64, i64* %9, align 8
  %118 = icmp ult i64 %116, %117
  br i1 %118, label %119, label %177

119:                                              ; preds = %111
  %120 = load i32, i32* %15, align 4
  %121 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %122 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = call i64 @head_to_end(i32 %120, i32 %123)
  store i64 %124, i64* %19, align 8
  %125 = load %struct.tcmu_mailbox*, %struct.tcmu_mailbox** %10, align 8
  %126 = bitcast %struct.tcmu_mailbox* %125 to i8*
  %127 = load i32, i32* @CMDR_OFF, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr i8, i8* %126, i64 %128
  %130 = load i32, i32* %15, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr i8, i8* %129, i64 %131
  %133 = bitcast i8* %132 to %struct.tcmu_cmd_entry*
  store %struct.tcmu_cmd_entry* %133, %struct.tcmu_cmd_entry** %11, align 8
  %134 = load %struct.tcmu_cmd_entry*, %struct.tcmu_cmd_entry** %11, align 8
  %135 = getelementptr inbounds %struct.tcmu_cmd_entry, %struct.tcmu_cmd_entry* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 0
  %137 = load i32, i32* @TCMU_OP_PAD, align 4
  %138 = call i32 @tcmu_hdr_set_op(i32* %136, i32 %137)
  %139 = load %struct.tcmu_cmd_entry*, %struct.tcmu_cmd_entry** %11, align 8
  %140 = getelementptr inbounds %struct.tcmu_cmd_entry, %struct.tcmu_cmd_entry* %139, i32 0, i32 2
  %141 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %140, i32 0, i32 0
  %142 = load i64, i64* %19, align 8
  %143 = call i32 @tcmu_hdr_set_len(i32* %141, i64 %142)
  %144 = load %struct.tcmu_cmd_entry*, %struct.tcmu_cmd_entry** %11, align 8
  %145 = getelementptr inbounds %struct.tcmu_cmd_entry, %struct.tcmu_cmd_entry* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 1
  store i64 0, i64* %146, align 8
  %147 = load %struct.tcmu_cmd_entry*, %struct.tcmu_cmd_entry** %11, align 8
  %148 = getelementptr inbounds %struct.tcmu_cmd_entry, %struct.tcmu_cmd_entry* %147, i32 0, i32 2
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %148, i32 0, i32 3
  store i64 0, i64* %149, align 8
  %150 = load %struct.tcmu_cmd_entry*, %struct.tcmu_cmd_entry** %11, align 8
  %151 = getelementptr inbounds %struct.tcmu_cmd_entry, %struct.tcmu_cmd_entry* %150, i32 0, i32 2
  %152 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %151, i32 0, i32 2
  store i64 0, i64* %152, align 8
  %153 = load %struct.tcmu_cmd_entry*, %struct.tcmu_cmd_entry** %11, align 8
  %154 = bitcast %struct.tcmu_cmd_entry* %153 to %struct.tcmu_mailbox*
  %155 = call i32 @tcmu_flush_dcache_range(%struct.tcmu_mailbox* %154, i32 64)
  %156 = load %struct.tcmu_mailbox*, %struct.tcmu_mailbox** %10, align 8
  %157 = getelementptr inbounds %struct.tcmu_mailbox, %struct.tcmu_mailbox* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load i64, i64* %19, align 8
  %160 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %161 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @UPDATE_HEAD(i32 %158, i64 %159, i32 %162)
  %164 = load %struct.tcmu_mailbox*, %struct.tcmu_mailbox** %10, align 8
  %165 = call i32 @tcmu_flush_dcache_range(%struct.tcmu_mailbox* %164, i32 64)
  %166 = load %struct.tcmu_mailbox*, %struct.tcmu_mailbox** %10, align 8
  %167 = getelementptr inbounds %struct.tcmu_mailbox, %struct.tcmu_mailbox* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %170 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = srem i32 %168, %171
  store i32 %172, i32* %15, align 4
  %173 = load i32, i32* %15, align 4
  %174 = icmp ne i32 %173, 0
  %175 = zext i1 %174 to i32
  %176 = call i32 @WARN_ON(i32 %175)
  br label %177

177:                                              ; preds = %119, %111
  %178 = load %struct.tcmu_mailbox*, %struct.tcmu_mailbox** %10, align 8
  %179 = bitcast %struct.tcmu_mailbox* %178 to i8*
  %180 = load i32, i32* @CMDR_OFF, align 4
  %181 = sext i32 %180 to i64
  %182 = getelementptr i8, i8* %179, i64 %181
  %183 = load i32, i32* %15, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr i8, i8* %182, i64 %184
  %186 = bitcast i8* %185 to %struct.tcmu_cmd_entry*
  store %struct.tcmu_cmd_entry* %186, %struct.tcmu_cmd_entry** %11, align 8
  %187 = load %struct.tcmu_cmd_entry*, %struct.tcmu_cmd_entry** %11, align 8
  %188 = bitcast %struct.tcmu_cmd_entry* %187 to %struct.tcmu_mailbox*
  %189 = load i64, i64* %9, align 8
  %190 = call i32 @memset(%struct.tcmu_mailbox* %188, i32 0, i64 %189)
  %191 = load %struct.tcmu_cmd_entry*, %struct.tcmu_cmd_entry** %11, align 8
  %192 = getelementptr inbounds %struct.tcmu_cmd_entry, %struct.tcmu_cmd_entry* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %192, i32 0, i32 0
  %194 = load i32, i32* @TCMU_OP_CMD, align 4
  %195 = call i32 @tcmu_hdr_set_op(i32* %193, i32 %194)
  %196 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %4, align 8
  %197 = call i32 @tcmu_cmd_reset_dbi_cur(%struct.tcmu_cmd* %196)
  %198 = load %struct.tcmu_cmd_entry*, %struct.tcmu_cmd_entry** %11, align 8
  %199 = getelementptr inbounds %struct.tcmu_cmd_entry, %struct.tcmu_cmd_entry* %198, i32 0, i32 1
  %200 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %199, i32 0, i32 3
  %201 = load %struct.iovec*, %struct.iovec** %200, align 8
  %202 = getelementptr inbounds %struct.iovec, %struct.iovec* %201, i64 0
  store %struct.iovec* %202, %struct.iovec** %12, align 8
  store i32 0, i32* %13, align 4
  %203 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %204 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %203, i32 0, i32 0
  %205 = load i64, i64* %204, align 8
  %206 = load i64, i64* @DMA_TO_DEVICE, align 8
  %207 = icmp eq i64 %205, %206
  br i1 %207, label %215, label %208

208:                                              ; preds = %177
  %209 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %210 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %209, i32 0, i32 1
  %211 = load i32, i32* %210, align 8
  %212 = load i32, i32* @SCF_BIDI, align 4
  %213 = and i32 %211, %212
  %214 = icmp ne i32 %213, 0
  br label %215

215:                                              ; preds = %208, %177
  %216 = phi i1 [ true, %177 ], [ %214, %208 ]
  %217 = zext i1 %216 to i32
  store i32 %217, i32* %17, align 4
  %218 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %219 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %4, align 8
  %220 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %221 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %220, i32 0, i32 6
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %224 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %223, i32 0, i32 5
  %225 = load i32, i32* %224, align 8
  %226 = load i32, i32* %17, align 4
  %227 = call i32 @scatter_data_area(%struct.tcmu_dev* %218, %struct.tcmu_cmd* %219, i32 %222, i32 %225, %struct.iovec** %12, i32* %13, i32 %226)
  %228 = load i32, i32* %13, align 4
  %229 = load %struct.tcmu_cmd_entry*, %struct.tcmu_cmd_entry** %11, align 8
  %230 = getelementptr inbounds %struct.tcmu_cmd_entry, %struct.tcmu_cmd_entry* %229, i32 0, i32 1
  %231 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %230, i32 0, i32 0
  store i32 %228, i32* %231, align 8
  store i32 0, i32* %13, align 4
  %232 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %233 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %232, i32 0, i32 1
  %234 = load i32, i32* %233, align 8
  %235 = load i32, i32* @SCF_BIDI, align 4
  %236 = and i32 %234, %235
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %238, label %250

238:                                              ; preds = %215
  %239 = load %struct.iovec*, %struct.iovec** %12, align 8
  %240 = getelementptr inbounds %struct.iovec, %struct.iovec* %239, i32 1
  store %struct.iovec* %240, %struct.iovec** %12, align 8
  %241 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %242 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %4, align 8
  %243 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %244 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %243, i32 0, i32 4
  %245 = load i32, i32* %244, align 4
  %246 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %247 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %246, i32 0, i32 3
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @scatter_data_area(%struct.tcmu_dev* %241, %struct.tcmu_cmd* %242, i32 %245, i32 %248, %struct.iovec** %12, i32* %13, i32 0)
  br label %250

250:                                              ; preds = %238, %215
  %251 = load i32, i32* %13, align 4
  %252 = load %struct.tcmu_cmd_entry*, %struct.tcmu_cmd_entry** %11, align 8
  %253 = getelementptr inbounds %struct.tcmu_cmd_entry, %struct.tcmu_cmd_entry* %252, i32 0, i32 1
  %254 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %253, i32 0, i32 1
  store i32 %251, i32* %254, align 4
  %255 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %4, align 8
  %256 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %257 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %256, i32 0, i32 5
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %260 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %259, i32 0, i32 4
  %261 = call i32 @tcmu_setup_cmd_timer(%struct.tcmu_cmd* %255, i32 %258, i32* %260)
  store i32 %261, i32* %14, align 4
  %262 = load i32, i32* %14, align 4
  %263 = icmp ne i32 %262, 0
  br i1 %263, label %264, label %272

264:                                              ; preds = %250
  %265 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %4, align 8
  %266 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %4, align 8
  %267 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %266, i32 0, i32 0
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @tcmu_cmd_free_data(%struct.tcmu_cmd* %265, i32 %268)
  %270 = load i32, i32* @TCM_OUT_OF_RESOURCES, align 4
  %271 = load i32*, i32** %5, align 8
  store i32 %270, i32* %271, align 4
  store i32 -1, i32* %3, align 4
  br label %354

272:                                              ; preds = %250
  %273 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %4, align 8
  %274 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %273, i32 0, i32 4
  %275 = load i64, i64* %274, align 8
  %276 = load %struct.tcmu_cmd_entry*, %struct.tcmu_cmd_entry** %11, align 8
  %277 = getelementptr inbounds %struct.tcmu_cmd_entry, %struct.tcmu_cmd_entry* %276, i32 0, i32 2
  %278 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %277, i32 0, i32 1
  store i64 %275, i64* %278, align 8
  %279 = load %struct.tcmu_cmd_entry*, %struct.tcmu_cmd_entry** %11, align 8
  %280 = getelementptr inbounds %struct.tcmu_cmd_entry, %struct.tcmu_cmd_entry* %279, i32 0, i32 1
  %281 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 8
  %283 = load %struct.tcmu_cmd_entry*, %struct.tcmu_cmd_entry** %11, align 8
  %284 = getelementptr inbounds %struct.tcmu_cmd_entry, %struct.tcmu_cmd_entry* %283, i32 0, i32 1
  %285 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %284, i32 0, i32 1
  %286 = load i32, i32* %285, align 4
  %287 = add nsw i32 %282, %286
  %288 = call i64 @tcmu_cmd_get_base_cmd_size(i32 %287)
  store i64 %288, i64* %8, align 8
  %289 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %4, align 8
  %290 = load i64, i64* %8, align 8
  %291 = call i64 @tcmu_cmd_get_cmd_size(%struct.tcmu_cmd* %289, i64 %290)
  store i64 %291, i64* %9, align 8
  %292 = load %struct.tcmu_cmd_entry*, %struct.tcmu_cmd_entry** %11, align 8
  %293 = getelementptr inbounds %struct.tcmu_cmd_entry, %struct.tcmu_cmd_entry* %292, i32 0, i32 2
  %294 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %293, i32 0, i32 0
  %295 = load i64, i64* %9, align 8
  %296 = call i32 @tcmu_hdr_set_len(i32* %294, i64 %295)
  %297 = load i32, i32* @CMDR_OFF, align 4
  %298 = load i32, i32* %15, align 4
  %299 = add nsw i32 %297, %298
  %300 = sext i32 %299 to i64
  %301 = load i64, i64* %8, align 8
  %302 = add i64 %300, %301
  %303 = trunc i64 %302 to i32
  store i32 %303, i32* %16, align 4
  %304 = load %struct.tcmu_mailbox*, %struct.tcmu_mailbox** %10, align 8
  %305 = bitcast %struct.tcmu_mailbox* %304 to i8*
  %306 = load i32, i32* %16, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr i8, i8* %305, i64 %307
  %309 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %310 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %309, i32 0, i32 2
  %311 = load i32, i32* %310, align 4
  %312 = load %struct.se_cmd*, %struct.se_cmd** %7, align 8
  %313 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %312, i32 0, i32 2
  %314 = load i32, i32* %313, align 4
  %315 = call i32 @scsi_command_size(i32 %314)
  %316 = call i32 @memcpy(i8* %308, i32 %311, i32 %315)
  %317 = load i32, i32* %16, align 4
  %318 = load %struct.tcmu_cmd_entry*, %struct.tcmu_cmd_entry** %11, align 8
  %319 = getelementptr inbounds %struct.tcmu_cmd_entry, %struct.tcmu_cmd_entry* %318, i32 0, i32 1
  %320 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %319, i32 0, i32 2
  store i32 %317, i32* %320, align 8
  %321 = load %struct.tcmu_cmd_entry*, %struct.tcmu_cmd_entry** %11, align 8
  %322 = bitcast %struct.tcmu_cmd_entry* %321 to %struct.tcmu_mailbox*
  %323 = call i32 @tcmu_flush_dcache_range(%struct.tcmu_mailbox* %322, i32 64)
  %324 = load %struct.tcmu_mailbox*, %struct.tcmu_mailbox** %10, align 8
  %325 = getelementptr inbounds %struct.tcmu_mailbox, %struct.tcmu_mailbox* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = load i64, i64* %9, align 8
  %328 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %329 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %328, i32 0, i32 0
  %330 = load i32, i32* %329, align 8
  %331 = call i32 @UPDATE_HEAD(i32 %326, i64 %327, i32 %330)
  %332 = load %struct.tcmu_mailbox*, %struct.tcmu_mailbox** %10, align 8
  %333 = call i32 @tcmu_flush_dcache_range(%struct.tcmu_mailbox* %332, i32 64)
  %334 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %4, align 8
  %335 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %334, i32 0, i32 3
  %336 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %337 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %336, i32 0, i32 3
  %338 = call i32 @list_add_tail(i32* %335, i32* %337)
  %339 = load i32, i32* @TCMU_CMD_BIT_INFLIGHT, align 4
  %340 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %4, align 8
  %341 = getelementptr inbounds %struct.tcmu_cmd, %struct.tcmu_cmd* %340, i32 0, i32 2
  %342 = call i32 @set_bit(i32 %339, i32* %341)
  %343 = load %struct.tcmu_dev*, %struct.tcmu_dev** %6, align 8
  %344 = getelementptr inbounds %struct.tcmu_dev, %struct.tcmu_dev* %343, i32 0, i32 2
  %345 = call i32 @uio_event_notify(i32* %344)
  store i32 0, i32* %3, align 4
  br label %354

346:                                              ; preds = %103, %59
  %347 = load %struct.tcmu_cmd*, %struct.tcmu_cmd** %4, align 8
  %348 = call i64 @add_to_qfull_queue(%struct.tcmu_cmd* %347)
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %353

350:                                              ; preds = %346
  %351 = load i32, i32* @TCM_OUT_OF_RESOURCES, align 4
  %352 = load i32*, i32** %5, align 8
  store i32 %351, i32* %352, align 4
  store i32 -1, i32* %3, align 4
  br label %354

353:                                              ; preds = %346
  store i32 1, i32* %3, align 4
  br label %354

354:                                              ; preds = %353, %350, %272, %264, %84, %44, %35
  %355 = load i32, i32* %3, align 4
  ret i32 %355
}

declare dso_local i64 @tcmu_cmd_get_data_length(%struct.tcmu_cmd*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @tcmu_cmd_get_base_cmd_size(i32) #1

declare dso_local i64 @tcmu_cmd_get_cmd_size(%struct.tcmu_cmd*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @pr_warn(i8*, i64, i64, i32, i64) #1

declare dso_local i32 @is_ring_space_avail(%struct.tcmu_dev*, %struct.tcmu_cmd*, i64, i64) #1

declare dso_local i32 @tcmu_cmd_free_data(%struct.tcmu_cmd*, i32) #1

declare dso_local i32 @tcmu_cmd_reset_dbi_cur(%struct.tcmu_cmd*) #1

declare dso_local i64 @head_to_end(i32, i32) #1

declare dso_local i32 @tcmu_hdr_set_op(i32*, i32) #1

declare dso_local i32 @tcmu_hdr_set_len(i32*, i64) #1

declare dso_local i32 @tcmu_flush_dcache_range(%struct.tcmu_mailbox*, i32) #1

declare dso_local i32 @UPDATE_HEAD(i32, i64, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @memset(%struct.tcmu_mailbox*, i32, i64) #1

declare dso_local i32 @scatter_data_area(%struct.tcmu_dev*, %struct.tcmu_cmd*, i32, i32, %struct.iovec**, i32*, i32) #1

declare dso_local i32 @tcmu_setup_cmd_timer(%struct.tcmu_cmd*, i32, i32*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @scsi_command_size(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @uio_event_notify(i32*) #1

declare dso_local i64 @add_to_qfull_queue(%struct.tcmu_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
