; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_start_fcp_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_fc.c_nvme_fc_start_fcp_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_fc_ctrl = type { %struct.TYPE_16__*, %struct.TYPE_15__* }
%struct.TYPE_16__ = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { i64 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32 (i32*, %struct.TYPE_17__*, i32, %struct.TYPE_18__*)* }
%struct.TYPE_18__ = type { i32, i32, i32, i32, i64, i64, i32 }
%struct.nvme_fc_queue = type { i32, i32, i32, i32 }
%struct.nvme_fc_fcp_op = type { i32, i32, i32, %struct.TYPE_18__, %struct.nvme_fc_cmd_iu }
%struct.nvme_fc_cmd_iu = type { i8*, i32, i8*, i32, %struct.nvme_command }
%struct.nvme_command = type { %struct.TYPE_13__, %struct.TYPE_10__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i64, i32 }
%struct.TYPE_10__ = type { i32, i32 }

@FC_OBJSTATE_ONLINE = common dso_local global i64 0, align 8
@BLK_STS_RESOURCE = common dso_local global i32 0, align 4
@BLK_STS_IOERR = common dso_local global i32 0, align 4
@FCNVME_CMD_FLAGS_WRITE = common dso_local global i32 0, align 4
@FCNVME_CMD_FLAGS_READ = common dso_local global i32 0, align 4
@NVME_SC_SUCCESS = common dso_local global i32 0, align 4
@NVME_CMD_SGL_METABUF = common dso_local global i32 0, align 4
@NVME_TRANSPORT_SGL_DATA_DESC = common dso_local global i32 0, align 4
@NVME_SGL_FMT_TRANSPORT_A = common dso_local global i32 0, align 4
@FCOP_FLAGS_AEN = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@FCPOP_STATE_ACTIVE = common dso_local global i32 0, align 4
@FCPOP_STATE_COMPLETE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@BLK_STS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_fc_ctrl*, %struct.nvme_fc_queue*, %struct.nvme_fc_fcp_op*, i32, i32)* @nvme_fc_start_fcp_op to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_fc_start_fcp_op(%struct.nvme_fc_ctrl* %0, %struct.nvme_fc_queue* %1, %struct.nvme_fc_fcp_op* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.nvme_fc_ctrl*, align 8
  %8 = alloca %struct.nvme_fc_queue*, align 8
  %9 = alloca %struct.nvme_fc_fcp_op*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.nvme_fc_cmd_iu*, align 8
  %13 = alloca %struct.nvme_command*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nvme_fc_ctrl* %0, %struct.nvme_fc_ctrl** %7, align 8
  store %struct.nvme_fc_queue* %1, %struct.nvme_fc_queue** %8, align 8
  store %struct.nvme_fc_fcp_op* %2, %struct.nvme_fc_fcp_op** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %9, align 8
  %17 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %16, i32 0, i32 4
  store %struct.nvme_fc_cmd_iu* %17, %struct.nvme_fc_cmd_iu** %12, align 8
  %18 = load %struct.nvme_fc_cmd_iu*, %struct.nvme_fc_cmd_iu** %12, align 8
  %19 = getelementptr inbounds %struct.nvme_fc_cmd_iu, %struct.nvme_fc_cmd_iu* %18, i32 0, i32 4
  store %struct.nvme_command* %19, %struct.nvme_command** %13, align 8
  %20 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %7, align 8
  %21 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %20, i32 0, i32 0
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @FC_OBJSTATE_ONLINE, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %5
  %29 = load i32, i32* @BLK_STS_RESOURCE, align 4
  store i32 %29, i32* %6, align 4
  br label %254

30:                                               ; preds = %5
  %31 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %7, align 8
  %32 = call i32 @nvme_fc_ctrl_get(%struct.nvme_fc_ctrl* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %35, i32* %6, align 4
  br label %254

36:                                               ; preds = %30
  %37 = load %struct.nvme_fc_queue*, %struct.nvme_fc_queue** %8, align 8
  %38 = getelementptr inbounds %struct.nvme_fc_queue, %struct.nvme_fc_queue* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @cpu_to_be64(i32 %39)
  %41 = load %struct.nvme_fc_cmd_iu*, %struct.nvme_fc_cmd_iu** %12, align 8
  %42 = getelementptr inbounds %struct.nvme_fc_cmd_iu, %struct.nvme_fc_cmd_iu* %41, i32 0, i32 3
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i8* @cpu_to_be32(i32 %43)
  %45 = load %struct.nvme_fc_cmd_iu*, %struct.nvme_fc_cmd_iu** %12, align 8
  %46 = getelementptr inbounds %struct.nvme_fc_cmd_iu, %struct.nvme_fc_cmd_iu* %45, i32 0, i32 2
  store i8* %44, i8** %46, align 8
  %47 = load i32, i32* %11, align 4
  switch i32 %47, label %59 [
    i32 128, label %48
    i32 129, label %52
    i32 130, label %56
  ]

48:                                               ; preds = %36
  %49 = load i32, i32* @FCNVME_CMD_FLAGS_WRITE, align 4
  %50 = load %struct.nvme_fc_cmd_iu*, %struct.nvme_fc_cmd_iu** %12, align 8
  %51 = getelementptr inbounds %struct.nvme_fc_cmd_iu, %struct.nvme_fc_cmd_iu* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 8
  br label %59

52:                                               ; preds = %36
  %53 = load i32, i32* @FCNVME_CMD_FLAGS_READ, align 4
  %54 = load %struct.nvme_fc_cmd_iu*, %struct.nvme_fc_cmd_iu** %12, align 8
  %55 = getelementptr inbounds %struct.nvme_fc_cmd_iu, %struct.nvme_fc_cmd_iu* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  br label %59

56:                                               ; preds = %36
  %57 = load %struct.nvme_fc_cmd_iu*, %struct.nvme_fc_cmd_iu** %12, align 8
  %58 = getelementptr inbounds %struct.nvme_fc_cmd_iu, %struct.nvme_fc_cmd_iu* %57, i32 0, i32 1
  store i32 0, i32* %58, align 8
  br label %59

59:                                               ; preds = %36, %56, %52, %48
  %60 = load i32, i32* %10, align 4
  %61 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %9, align 8
  %62 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %62, i32 0, i32 6
  store i32 %60, i32* %63, align 8
  %64 = load i32, i32* %11, align 4
  %65 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %9, align 8
  %66 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 8
  %68 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %9, align 8
  %69 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 5
  store i64 0, i64* %70, align 8
  %71 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %9, align 8
  %72 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %71, i32 0, i32 3
  %73 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %72, i32 0, i32 4
  store i64 0, i64* %73, align 8
  %74 = load i32, i32* @NVME_SC_SUCCESS, align 4
  %75 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %9, align 8
  %76 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 3
  store i32 %74, i32* %77, align 4
  %78 = load %struct.nvme_fc_queue*, %struct.nvme_fc_queue** %8, align 8
  %79 = getelementptr inbounds %struct.nvme_fc_queue, %struct.nvme_fc_queue* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @cpu_to_le16(i32 %80)
  %82 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %9, align 8
  %83 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 2
  store i32 %81, i32* %84, align 8
  %85 = load %struct.nvme_command*, %struct.nvme_command** %13, align 8
  %86 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @WARN_ON_ONCE(i32 %88)
  %90 = load i32, i32* @NVME_CMD_SGL_METABUF, align 4
  %91 = load %struct.nvme_command*, %struct.nvme_command** %13, align 8
  %92 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %90
  store i32 %95, i32* %93, align 8
  %96 = load i32, i32* @NVME_TRANSPORT_SGL_DATA_DESC, align 4
  %97 = shl i32 %96, 4
  %98 = load i32, i32* @NVME_SGL_FMT_TRANSPORT_A, align 4
  %99 = or i32 %97, %98
  %100 = load %struct.nvme_command*, %struct.nvme_command** %13, align 8
  %101 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %103, i32 0, i32 0
  store i32 %99, i32* %104, align 8
  %105 = load i32, i32* %10, align 4
  %106 = call i32 @cpu_to_le32(i32 %105)
  %107 = load %struct.nvme_command*, %struct.nvme_command** %13, align 8
  %108 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 2
  store i32 %106, i32* %111, align 8
  %112 = load %struct.nvme_command*, %struct.nvme_command** %13, align 8
  %113 = getelementptr inbounds %struct.nvme_command, %struct.nvme_command* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %115, i32 0, i32 1
  store i64 0, i64* %116, align 8
  %117 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %9, align 8
  %118 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @FCOP_FLAGS_AEN, align 4
  %121 = and i32 %119, %120
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %153, label %123

123:                                              ; preds = %59
  %124 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %7, align 8
  %125 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %9, align 8
  %126 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %9, align 8
  %129 = call i32 @nvme_fc_map_data(%struct.nvme_fc_ctrl* %124, i32 %127, %struct.nvme_fc_fcp_op* %128)
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %14, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %152

132:                                              ; preds = %123
  %133 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %9, align 8
  %134 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @nvme_cleanup_cmd(i32 %135)
  %137 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %7, align 8
  %138 = call i32 @nvme_fc_ctrl_put(%struct.nvme_fc_ctrl* %137)
  %139 = load i32, i32* %14, align 4
  %140 = load i32, i32* @ENOMEM, align 4
  %141 = sub nsw i32 0, %140
  %142 = icmp eq i32 %139, %141
  br i1 %142, label %148, label %143

143:                                              ; preds = %132
  %144 = load i32, i32* %14, align 4
  %145 = load i32, i32* @EAGAIN, align 4
  %146 = sub nsw i32 0, %145
  %147 = icmp eq i32 %144, %146
  br i1 %147, label %148, label %150

148:                                              ; preds = %143, %132
  %149 = load i32, i32* @BLK_STS_RESOURCE, align 4
  store i32 %149, i32* %6, align 4
  br label %254

150:                                              ; preds = %143
  %151 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %151, i32* %6, align 4
  br label %254

152:                                              ; preds = %123
  br label %153

153:                                              ; preds = %152, %59
  %154 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %7, align 8
  %155 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %154, i32 0, i32 1
  %156 = load %struct.TYPE_15__*, %struct.TYPE_15__** %155, align 8
  %157 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %9, align 8
  %160 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %159, i32 0, i32 3
  %161 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @DMA_TO_DEVICE, align 4
  %164 = call i32 @fc_dma_sync_single_for_device(i32 %158, i32 %162, i32 64, i32 %163)
  %165 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %9, align 8
  %166 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %165, i32 0, i32 2
  %167 = load i32, i32* @FCPOP_STATE_ACTIVE, align 4
  %168 = call i32 @atomic_set(i32* %166, i32 %167)
  %169 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %9, align 8
  %170 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* @FCOP_FLAGS_AEN, align 4
  %173 = and i32 %171, %172
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %180, label %175

175:                                              ; preds = %153
  %176 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %9, align 8
  %177 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %176, i32 0, i32 1
  %178 = load i32, i32* %177, align 4
  %179 = call i32 @blk_mq_start_request(i32 %178)
  br label %180

180:                                              ; preds = %175, %153
  %181 = load %struct.nvme_fc_queue*, %struct.nvme_fc_queue** %8, align 8
  %182 = getelementptr inbounds %struct.nvme_fc_queue, %struct.nvme_fc_queue* %181, i32 0, i32 1
  %183 = call i32 @atomic_inc_return(i32* %182)
  %184 = call i8* @cpu_to_be32(i32 %183)
  %185 = load %struct.nvme_fc_cmd_iu*, %struct.nvme_fc_cmd_iu** %12, align 8
  %186 = getelementptr inbounds %struct.nvme_fc_cmd_iu, %struct.nvme_fc_cmd_iu* %185, i32 0, i32 0
  store i8* %184, i8** %186, align 8
  %187 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %7, align 8
  %188 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %187, i32 0, i32 1
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %189, i32 0, i32 1
  %191 = load %struct.TYPE_14__*, %struct.TYPE_14__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %191, i32 0, i32 0
  %193 = load i32 (i32*, %struct.TYPE_17__*, i32, %struct.TYPE_18__*)*, i32 (i32*, %struct.TYPE_17__*, i32, %struct.TYPE_18__*)** %192, align 8
  %194 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %7, align 8
  %195 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %194, i32 0, i32 1
  %196 = load %struct.TYPE_15__*, %struct.TYPE_15__** %195, align 8
  %197 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %196, i32 0, i32 0
  %198 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %7, align 8
  %199 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %198, i32 0, i32 0
  %200 = load %struct.TYPE_16__*, %struct.TYPE_16__** %199, align 8
  %201 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %200, i32 0, i32 0
  %202 = load %struct.nvme_fc_queue*, %struct.nvme_fc_queue** %8, align 8
  %203 = getelementptr inbounds %struct.nvme_fc_queue, %struct.nvme_fc_queue* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %9, align 8
  %206 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %205, i32 0, i32 3
  %207 = call i32 %193(i32* %197, %struct.TYPE_17__* %201, i32 %204, %struct.TYPE_18__* %206)
  store i32 %207, i32* %14, align 4
  %208 = load i32, i32* %14, align 4
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %252

210:                                              ; preds = %180
  %211 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %9, align 8
  %212 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %211, i32 0, i32 2
  %213 = load i32, i32* @FCPOP_STATE_COMPLETE, align 4
  %214 = call i32 @atomic_xchg(i32* %212, i32 %213)
  store i32 %214, i32* %15, align 4
  %215 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %7, align 8
  %216 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %9, align 8
  %217 = load i32, i32* %15, align 4
  %218 = call i32 @__nvme_fc_fcpop_chk_teardowns(%struct.nvme_fc_ctrl* %215, %struct.nvme_fc_fcp_op* %216, i32 %217)
  %219 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %9, align 8
  %220 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = load i32, i32* @FCOP_FLAGS_AEN, align 4
  %223 = and i32 %221, %222
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %232, label %225

225:                                              ; preds = %210
  %226 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %7, align 8
  %227 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %9, align 8
  %228 = getelementptr inbounds %struct.nvme_fc_fcp_op, %struct.nvme_fc_fcp_op* %227, i32 0, i32 1
  %229 = load i32, i32* %228, align 4
  %230 = load %struct.nvme_fc_fcp_op*, %struct.nvme_fc_fcp_op** %9, align 8
  %231 = call i32 @nvme_fc_unmap_data(%struct.nvme_fc_ctrl* %226, i32 %229, %struct.nvme_fc_fcp_op* %230)
  br label %232

232:                                              ; preds = %225, %210
  %233 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %7, align 8
  %234 = call i32 @nvme_fc_ctrl_put(%struct.nvme_fc_ctrl* %233)
  %235 = load %struct.nvme_fc_ctrl*, %struct.nvme_fc_ctrl** %7, align 8
  %236 = getelementptr inbounds %struct.nvme_fc_ctrl, %struct.nvme_fc_ctrl* %235, i32 0, i32 0
  %237 = load %struct.TYPE_16__*, %struct.TYPE_16__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %238, i32 0, i32 0
  %240 = load i64, i64* %239, align 8
  %241 = load i64, i64* @FC_OBJSTATE_ONLINE, align 8
  %242 = icmp eq i64 %240, %241
  br i1 %242, label %243, label %250

243:                                              ; preds = %232
  %244 = load i32, i32* %14, align 4
  %245 = load i32, i32* @EBUSY, align 4
  %246 = sub nsw i32 0, %245
  %247 = icmp ne i32 %244, %246
  br i1 %247, label %248, label %250

248:                                              ; preds = %243
  %249 = load i32, i32* @BLK_STS_IOERR, align 4
  store i32 %249, i32* %6, align 4
  br label %254

250:                                              ; preds = %243, %232
  %251 = load i32, i32* @BLK_STS_RESOURCE, align 4
  store i32 %251, i32* %6, align 4
  br label %254

252:                                              ; preds = %180
  %253 = load i32, i32* @BLK_STS_OK, align 4
  store i32 %253, i32* %6, align 4
  br label %254

254:                                              ; preds = %252, %250, %248, %150, %148, %34, %28
  %255 = load i32, i32* %6, align 4
  ret i32 %255
}

declare dso_local i32 @nvme_fc_ctrl_get(%struct.nvme_fc_ctrl*) #1

declare dso_local i32 @cpu_to_be64(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @nvme_fc_map_data(%struct.nvme_fc_ctrl*, i32, %struct.nvme_fc_fcp_op*) #1

declare dso_local i32 @nvme_cleanup_cmd(i32) #1

declare dso_local i32 @nvme_fc_ctrl_put(%struct.nvme_fc_ctrl*) #1

declare dso_local i32 @fc_dma_sync_single_for_device(i32, i32, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @blk_mq_start_request(i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local i32 @atomic_xchg(i32*, i32) #1

declare dso_local i32 @__nvme_fc_fcpop_chk_teardowns(%struct.nvme_fc_ctrl*, %struct.nvme_fc_fcp_op*, i32) #1

declare dso_local i32 @nvme_fc_unmap_data(%struct.nvme_fc_ctrl*, i32, %struct.nvme_fc_fcp_op*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
