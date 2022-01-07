; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla24xx_start_scsi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla24xx_start_scsi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, %struct.scsi_qla_host*, %struct.TYPE_13__* }
%struct.scsi_qla_host = type { i64, i32, %struct.req_que*, %struct.qla_hw_data* }
%struct.req_que = type { i64, i64*, i64, i64, i64, i32, i64, i64, i32, %struct.TYPE_15__**, i32 }
%struct.qla_hw_data = type { i32, %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_13__ = type { i64, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.cmd_type_7 = type { i64, i32, i64*, i32, i32, i32, i32*, i8*, i8*, i32 }
%struct.scsi_cmnd = type { i8*, i32, i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32 }

@MK_SYNC_ALL = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i64 0, align 8
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@REQUEST_ENTRY_SIZE = common dso_local global i64 0, align 8
@TSK_SIMPLE = common dso_local global i32 0, align 4
@SRB_DMA_VALID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla24xx_start_scsi(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.cmd_type_7*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.req_que*, align 8
  %13 = alloca %struct.scsi_cmnd*, align 8
  %14 = alloca %struct.scsi_qla_host*, align 8
  %15 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.req_que* null, %struct.req_que** %12, align 8
  %16 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %17 = call %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_15__* %16)
  store %struct.scsi_cmnd* %17, %struct.scsi_cmnd** %13, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 2
  %20 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %19, align 8
  store %struct.scsi_qla_host* %20, %struct.scsi_qla_host** %14, align 8
  %21 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %14, align 8
  %22 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %21, i32 0, i32 3
  %23 = load %struct.qla_hw_data*, %struct.qla_hw_data** %22, align 8
  store %struct.qla_hw_data* %23, %struct.qla_hw_data** %15, align 8
  %24 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %14, align 8
  %25 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %24, i32 0, i32 2
  %26 = load %struct.req_que*, %struct.req_que** %25, align 8
  store %struct.req_que* %26, %struct.req_que** %12, align 8
  store i64 0, i64* %11, align 8
  %27 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %14, align 8
  %28 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %1
  %32 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %14, align 8
  %33 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  %34 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @MK_SYNC_ALL, align 4
  %37 = call i64 @qla2x00_marker(%struct.scsi_qla_host* %32, i32 %35, i32 0, i32 0, i32 %36)
  %38 = load i64, i64* @QLA_SUCCESS, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %31
  %41 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %41, i32* %2, align 4
  br label %333

42:                                               ; preds = %31
  %43 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %14, align 8
  %44 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %43, i32 0, i32 0
  store i64 0, i64* %44, align 8
  br label %45

45:                                               ; preds = %42, %1
  %46 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  %47 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %46, i32 0, i32 0
  %48 = load i64, i64* %5, align 8
  %49 = call i32 @spin_lock_irqsave(i32* %47, i64 %48)
  %50 = load %struct.req_que*, %struct.req_que** %12, align 8
  %51 = call i64 @qla2xxx_get_next_handle(%struct.req_que* %50)
  store i64 %51, i64* %7, align 8
  %52 = load i64, i64* %7, align 8
  %53 = icmp eq i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %45
  br label %321

55:                                               ; preds = %45
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %57 = call i64 @scsi_sg_count(%struct.scsi_cmnd* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %80

59:                                               ; preds = %55
  %60 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  %61 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %60, i32 0, i32 1
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %65 = call i32 @scsi_sglist(%struct.scsi_cmnd* %64)
  %66 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %67 = call i64 @scsi_sg_count(%struct.scsi_cmnd* %66)
  %68 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %69 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @dma_map_sg(i32* %63, i32 %65, i64 %67, i32 %70)
  store i32 %71, i32* %4, align 4
  %72 = load i32, i32* %4, align 4
  %73 = icmp ne i32 %72, 0
  %74 = xor i1 %73, true
  %75 = zext i1 %74 to i32
  %76 = call i64 @unlikely(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %59
  br label %321

79:                                               ; preds = %59
  br label %81

80:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %80, %79
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  store i64 %83, i64* %11, align 8
  %84 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %14, align 8
  %85 = load i64, i64* %11, align 8
  %86 = call i64 @qla24xx_calc_iocbs(%struct.scsi_qla_host* %84, i64 %85)
  store i64 %86, i64* %10, align 8
  %87 = load %struct.req_que*, %struct.req_que** %12, align 8
  %88 = getelementptr inbounds %struct.req_que, %struct.req_que* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %10, align 8
  %91 = add nsw i64 %90, 2
  %92 = icmp slt i64 %89, %91
  br i1 %92, label %93, label %143

93:                                               ; preds = %81
  %94 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  %95 = call i64 @IS_SHADOW_REG_CAPABLE(%struct.qla_hw_data* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = load %struct.req_que*, %struct.req_que** %12, align 8
  %99 = getelementptr inbounds %struct.req_que, %struct.req_que* %98, i32 0, i32 1
  %100 = load i64*, i64** %99, align 8
  %101 = load i64, i64* %100, align 8
  br label %107

102:                                              ; preds = %93
  %103 = load %struct.req_que*, %struct.req_que** %12, align 8
  %104 = getelementptr inbounds %struct.req_que, %struct.req_que* %103, i32 0, i32 10
  %105 = load i32, i32* %104, align 8
  %106 = call i64 @RD_REG_DWORD_RELAXED(i32 %105)
  br label %107

107:                                              ; preds = %102, %97
  %108 = phi i64 [ %101, %97 ], [ %106, %102 ]
  store i64 %108, i64* %9, align 8
  %109 = load %struct.req_que*, %struct.req_que** %12, align 8
  %110 = getelementptr inbounds %struct.req_que, %struct.req_que* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %9, align 8
  %113 = icmp slt i64 %111, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %107
  %115 = load i64, i64* %9, align 8
  %116 = load %struct.req_que*, %struct.req_que** %12, align 8
  %117 = getelementptr inbounds %struct.req_que, %struct.req_que* %116, i32 0, i32 2
  %118 = load i64, i64* %117, align 8
  %119 = sub nsw i64 %115, %118
  %120 = load %struct.req_que*, %struct.req_que** %12, align 8
  %121 = getelementptr inbounds %struct.req_que, %struct.req_que* %120, i32 0, i32 0
  store i64 %119, i64* %121, align 8
  br label %134

122:                                              ; preds = %107
  %123 = load %struct.req_que*, %struct.req_que** %12, align 8
  %124 = getelementptr inbounds %struct.req_que, %struct.req_que* %123, i32 0, i32 3
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.req_que*, %struct.req_que** %12, align 8
  %127 = getelementptr inbounds %struct.req_que, %struct.req_que* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load i64, i64* %9, align 8
  %130 = sub nsw i64 %128, %129
  %131 = sub nsw i64 %125, %130
  %132 = load %struct.req_que*, %struct.req_que** %12, align 8
  %133 = getelementptr inbounds %struct.req_que, %struct.req_que* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  br label %134

134:                                              ; preds = %122, %114
  %135 = load %struct.req_que*, %struct.req_que** %12, align 8
  %136 = getelementptr inbounds %struct.req_que, %struct.req_que* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = load i64, i64* %10, align 8
  %139 = add nsw i64 %138, 2
  %140 = icmp slt i64 %137, %139
  br i1 %140, label %141, label %142

141:                                              ; preds = %134
  br label %321

142:                                              ; preds = %134
  br label %143

143:                                              ; preds = %142, %81
  %144 = load i64, i64* %7, align 8
  %145 = load %struct.req_que*, %struct.req_que** %12, align 8
  %146 = getelementptr inbounds %struct.req_que, %struct.req_que* %145, i32 0, i32 4
  store i64 %144, i64* %146, align 8
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %148 = load %struct.req_que*, %struct.req_que** %12, align 8
  %149 = getelementptr inbounds %struct.req_que, %struct.req_que* %148, i32 0, i32 9
  %150 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %149, align 8
  %151 = load i64, i64* %7, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %150, i64 %151
  store %struct.TYPE_15__* %147, %struct.TYPE_15__** %152, align 8
  %153 = load i64, i64* %7, align 8
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  store i64 %153, i64* %155, align 8
  %156 = load i64, i64* %7, align 8
  %157 = inttoptr i64 %156 to i8*
  %158 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %159 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %158, i32 0, i32 0
  store i8* %157, i8** %159, align 8
  %160 = load i64, i64* %10, align 8
  %161 = load %struct.req_que*, %struct.req_que** %12, align 8
  %162 = getelementptr inbounds %struct.req_que, %struct.req_que* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = sub nsw i64 %163, %160
  store i64 %164, i64* %162, align 8
  %165 = load %struct.req_que*, %struct.req_que** %12, align 8
  %166 = getelementptr inbounds %struct.req_que, %struct.req_que* %165, i32 0, i32 6
  %167 = load i64, i64* %166, align 8
  %168 = inttoptr i64 %167 to %struct.cmd_type_7*
  store %struct.cmd_type_7* %168, %struct.cmd_type_7** %8, align 8
  %169 = load %struct.req_que*, %struct.req_que** %12, align 8
  %170 = getelementptr inbounds %struct.req_que, %struct.req_que* %169, i32 0, i32 8
  %171 = load i32, i32* %170, align 8
  %172 = load i64, i64* %7, align 8
  %173 = call i32 @MAKE_HANDLE(i32 %171, i64 %172)
  %174 = load %struct.cmd_type_7*, %struct.cmd_type_7** %8, align 8
  %175 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %174, i32 0, i32 9
  store i32 %173, i32* %175, align 8
  %176 = load %struct.cmd_type_7*, %struct.cmd_type_7** %8, align 8
  %177 = bitcast %struct.cmd_type_7* %176 to i64*
  %178 = getelementptr inbounds i64, i64* %177, i64 2
  store i64* %178, i64** %6, align 8
  %179 = load i64*, i64** %6, align 8
  %180 = load i64, i64* @REQUEST_ENTRY_SIZE, align 8
  %181 = sub nsw i64 %180, 8
  %182 = call i32 @memset(i64* %179, i32 0, i64 %181)
  %183 = load i64, i64* %11, align 8
  %184 = call i8* @cpu_to_le16(i64 %183)
  %185 = load %struct.cmd_type_7*, %struct.cmd_type_7** %8, align 8
  %186 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %185, i32 0, i32 8
  store i8* %184, i8** %186, align 8
  %187 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %188 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %187, i32 0, i32 3
  %189 = load %struct.TYPE_13__*, %struct.TYPE_13__** %188, align 8
  %190 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %189, i32 0, i32 0
  %191 = load i64, i64* %190, align 8
  %192 = call i8* @cpu_to_le16(i64 %191)
  %193 = load %struct.cmd_type_7*, %struct.cmd_type_7** %8, align 8
  %194 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %193, i32 0, i32 7
  store i8* %192, i8** %194, align 8
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 3
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %198, i32 0, i32 0
  %200 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  %202 = load %struct.cmd_type_7*, %struct.cmd_type_7** %8, align 8
  %203 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %202, i32 0, i32 6
  %204 = load i32*, i32** %203, align 8
  %205 = getelementptr inbounds i32, i32* %204, i64 0
  store i32 %201, i32* %205, align 4
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 3
  %208 = load %struct.TYPE_13__*, %struct.TYPE_13__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %208, i32 0, i32 1
  %210 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %209, i32 0, i32 0
  %211 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %210, i32 0, i32 1
  %212 = load i32, i32* %211, align 4
  %213 = load %struct.cmd_type_7*, %struct.cmd_type_7** %8, align 8
  %214 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %213, i32 0, i32 6
  %215 = load i32*, i32** %214, align 8
  %216 = getelementptr inbounds i32, i32* %215, i64 1
  store i32 %212, i32* %216, align 4
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 3
  %219 = load %struct.TYPE_13__*, %struct.TYPE_13__** %218, align 8
  %220 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %219, i32 0, i32 1
  %221 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %220, i32 0, i32 0
  %222 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = load %struct.cmd_type_7*, %struct.cmd_type_7** %8, align 8
  %225 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %224, i32 0, i32 6
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 2
  store i32 %223, i32* %227, align 4
  %228 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 2
  %230 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %229, align 8
  %231 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 8
  %233 = load %struct.cmd_type_7*, %struct.cmd_type_7** %8, align 8
  %234 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %233, i32 0, i32 5
  store i32 %232, i32* %234, align 8
  %235 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %236 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %235, i32 0, i32 3
  %237 = load %struct.TYPE_14__*, %struct.TYPE_14__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 4
  %240 = load %struct.cmd_type_7*, %struct.cmd_type_7** %8, align 8
  %241 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %240, i32 0, i32 4
  %242 = call i32 @int_to_scsilun(i32 %239, i32* %241)
  %243 = load %struct.cmd_type_7*, %struct.cmd_type_7** %8, align 8
  %244 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %243, i32 0, i32 4
  %245 = bitcast i32* %244 to i64*
  %246 = call i32 @host_to_fcp_swap(i64* %245, i32 4)
  %247 = load i32, i32* @TSK_SIMPLE, align 4
  %248 = load %struct.cmd_type_7*, %struct.cmd_type_7** %8, align 8
  %249 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %248, i32 0, i32 3
  store i32 %247, i32* %249, align 8
  %250 = load %struct.cmd_type_7*, %struct.cmd_type_7** %8, align 8
  %251 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %250, i32 0, i32 2
  %252 = load i64*, i64** %251, align 8
  %253 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %254 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %253, i32 0, i32 2
  %255 = load i32, i32* %254, align 4
  %256 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %257 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 8
  %259 = call i32 @memcpy(i64* %252, i32 %255, i32 %258)
  %260 = load %struct.cmd_type_7*, %struct.cmd_type_7** %8, align 8
  %261 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %260, i32 0, i32 2
  %262 = load i64*, i64** %261, align 8
  %263 = call i32 @host_to_fcp_swap(i64* %262, i32 8)
  %264 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %265 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %264)
  %266 = call i32 @cpu_to_le32(i64 %265)
  %267 = load %struct.cmd_type_7*, %struct.cmd_type_7** %8, align 8
  %268 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %267, i32 0, i32 1
  store i32 %266, i32* %268, align 8
  %269 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %270 = load %struct.cmd_type_7*, %struct.cmd_type_7** %8, align 8
  %271 = load i64, i64* %11, align 8
  %272 = load %struct.req_que*, %struct.req_que** %12, align 8
  %273 = call i32 @qla24xx_build_scsi_iocbs(%struct.TYPE_15__* %269, %struct.cmd_type_7* %270, i64 %271, %struct.req_que* %272)
  %274 = load i64, i64* %10, align 8
  %275 = load %struct.cmd_type_7*, %struct.cmd_type_7** %8, align 8
  %276 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %275, i32 0, i32 0
  store i64 %274, i64* %276, align 8
  %277 = call i32 (...) @wmb()
  %278 = load %struct.req_que*, %struct.req_que** %12, align 8
  %279 = getelementptr inbounds %struct.req_que, %struct.req_que* %278, i32 0, i32 2
  %280 = load i64, i64* %279, align 8
  %281 = add nsw i64 %280, 1
  store i64 %281, i64* %279, align 8
  %282 = load %struct.req_que*, %struct.req_que** %12, align 8
  %283 = getelementptr inbounds %struct.req_que, %struct.req_que* %282, i32 0, i32 2
  %284 = load i64, i64* %283, align 8
  %285 = load %struct.req_que*, %struct.req_que** %12, align 8
  %286 = getelementptr inbounds %struct.req_que, %struct.req_que* %285, i32 0, i32 3
  %287 = load i64, i64* %286, align 8
  %288 = icmp eq i64 %284, %287
  br i1 %288, label %289, label %297

289:                                              ; preds = %143
  %290 = load %struct.req_que*, %struct.req_que** %12, align 8
  %291 = getelementptr inbounds %struct.req_que, %struct.req_que* %290, i32 0, i32 2
  store i64 0, i64* %291, align 8
  %292 = load %struct.req_que*, %struct.req_que** %12, align 8
  %293 = getelementptr inbounds %struct.req_que, %struct.req_que* %292, i32 0, i32 7
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.req_que*, %struct.req_que** %12, align 8
  %296 = getelementptr inbounds %struct.req_que, %struct.req_que* %295, i32 0, i32 6
  store i64 %294, i64* %296, align 8
  br label %302

297:                                              ; preds = %143
  %298 = load %struct.req_que*, %struct.req_que** %12, align 8
  %299 = getelementptr inbounds %struct.req_que, %struct.req_que* %298, i32 0, i32 6
  %300 = load i64, i64* %299, align 8
  %301 = add nsw i64 %300, 1
  store i64 %301, i64* %299, align 8
  br label %302

302:                                              ; preds = %297, %289
  %303 = load i32, i32* @SRB_DMA_VALID, align 4
  %304 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 1
  %306 = load i32, i32* %305, align 8
  %307 = or i32 %306, %303
  store i32 %307, i32* %305, align 8
  %308 = load %struct.req_que*, %struct.req_que** %12, align 8
  %309 = getelementptr inbounds %struct.req_que, %struct.req_que* %308, i32 0, i32 5
  %310 = load i32, i32* %309, align 8
  %311 = load %struct.req_que*, %struct.req_que** %12, align 8
  %312 = getelementptr inbounds %struct.req_que, %struct.req_que* %311, i32 0, i32 2
  %313 = load i64, i64* %312, align 8
  %314 = call i32 @WRT_REG_DWORD(i32 %310, i64 %313)
  %315 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  %316 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %315, i32 0, i32 0
  %317 = load i64, i64* %5, align 8
  %318 = call i32 @spin_unlock_irqrestore(i32* %316, i64 %317)
  %319 = load i64, i64* @QLA_SUCCESS, align 8
  %320 = trunc i64 %319 to i32
  store i32 %320, i32* %2, align 4
  br label %333

321:                                              ; preds = %141, %78, %54
  %322 = load i64, i64* %11, align 8
  %323 = icmp ne i64 %322, 0
  br i1 %323, label %324, label %327

324:                                              ; preds = %321
  %325 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %326 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %325)
  br label %327

327:                                              ; preds = %324, %321
  %328 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  %329 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %328, i32 0, i32 0
  %330 = load i64, i64* %5, align 8
  %331 = call i32 @spin_unlock_irqrestore(i32* %329, i64 %330)
  %332 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %332, i32* %2, align 4
  br label %333

333:                                              ; preds = %327, %302, %40
  %334 = load i32, i32* %2, align 4
  ret i32 %334
}

declare dso_local %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_15__*) #1

declare dso_local i64 @qla2x00_marker(%struct.scsi_qla_host*, i32, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @qla2xxx_get_next_handle(%struct.req_que*) #1

declare dso_local i64 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @dma_map_sg(i32*, i32, i64, i32) #1

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @qla24xx_calc_iocbs(%struct.scsi_qla_host*, i64) #1

declare dso_local i64 @IS_SHADOW_REG_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i64 @RD_REG_DWORD_RELAXED(i32) #1

declare dso_local i32 @MAKE_HANDLE(i32, i64) #1

declare dso_local i32 @memset(i64*, i32, i64) #1

declare dso_local i8* @cpu_to_le16(i64) #1

declare dso_local i32 @int_to_scsilun(i32, i32*) #1

declare dso_local i32 @host_to_fcp_swap(i64*, i32) #1

declare dso_local i32 @memcpy(i64*, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i64) #1

declare dso_local i64 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @qla24xx_build_scsi_iocbs(%struct.TYPE_15__*, %struct.cmd_type_7*, i64, %struct.req_que*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @WRT_REG_DWORD(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
