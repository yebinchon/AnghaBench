; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla2xxx_start_scsi_mq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla2xxx_start_scsi_mq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i64, i32, %struct.TYPE_13__*, %struct.qla_qpair* }
%struct.TYPE_13__ = type { i64, %struct.scsi_qla_host*, %struct.TYPE_12__ }
%struct.scsi_qla_host = type { i64, i32, %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.qla_qpair = type { i32, %struct.req_que* }
%struct.req_que = type { i64, i64*, i64, i64, i64, i32, i64, i64, i32, %struct.TYPE_15__**, i32 }
%struct.cmd_type_7 = type { i64, i32, i64*, i32, i32, i32, i32*, i8*, i8*, i32 }
%struct.scsi_cmnd = type { i8*, i32, i32, %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i32 }

@MK_SYNC_ALL = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i64 0, align 8
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@REQUEST_ENTRY_SIZE = common dso_local global i64 0, align 8
@TSK_SIMPLE = common dso_local global i32 0, align 4
@SRB_DMA_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @qla2xxx_start_scsi_mq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla2xxx_start_scsi_mq(%struct.TYPE_15__* %0) #0 {
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
  %16 = alloca %struct.qla_qpair*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store %struct.req_que* null, %struct.req_que** %12, align 8
  %17 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %18 = call %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_15__* %17)
  store %struct.scsi_cmnd* %18, %struct.scsi_cmnd** %13, align 8
  %19 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %19, i32 0, i32 2
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %21, i32 0, i32 1
  %23 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %22, align 8
  store %struct.scsi_qla_host* %23, %struct.scsi_qla_host** %14, align 8
  %24 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %14, align 8
  %25 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %24, i32 0, i32 2
  %26 = load %struct.qla_hw_data*, %struct.qla_hw_data** %25, align 8
  store %struct.qla_hw_data* %26, %struct.qla_hw_data** %15, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 3
  %29 = load %struct.qla_qpair*, %struct.qla_qpair** %28, align 8
  store %struct.qla_qpair* %29, %struct.qla_qpair** %16, align 8
  %30 = load %struct.qla_qpair*, %struct.qla_qpair** %16, align 8
  %31 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %30, i32 0, i32 0
  %32 = load i64, i64* %5, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.qla_qpair*, %struct.qla_qpair** %16, align 8
  %35 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %34, i32 0, i32 1
  %36 = load %struct.req_que*, %struct.req_que** %35, align 8
  store %struct.req_que* %36, %struct.req_que** %12, align 8
  store i64 0, i64* %11, align 8
  %37 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %14, align 8
  %38 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %57

41:                                               ; preds = %1
  %42 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %14, align 8
  %43 = load %struct.qla_qpair*, %struct.qla_qpair** %16, align 8
  %44 = load i32, i32* @MK_SYNC_ALL, align 4
  %45 = call i64 @__qla2x00_marker(%struct.scsi_qla_host* %42, %struct.qla_qpair* %43, i32 0, i32 0, i32 %44)
  %46 = load i64, i64* @QLA_SUCCESS, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %54

48:                                               ; preds = %41
  %49 = load %struct.qla_qpair*, %struct.qla_qpair** %16, align 8
  %50 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %49, i32 0, i32 0
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %53, i32* %2, align 4
  br label %343

54:                                               ; preds = %41
  %55 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %14, align 8
  %56 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %55, i32 0, i32 0
  store i64 0, i64* %56, align 8
  br label %57

57:                                               ; preds = %54, %1
  %58 = load %struct.req_que*, %struct.req_que** %12, align 8
  %59 = call i64 @qla2xxx_get_next_handle(%struct.req_que* %58)
  store i64 %59, i64* %7, align 8
  %60 = load i64, i64* %7, align 8
  %61 = icmp eq i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %331

63:                                               ; preds = %57
  %64 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %65 = call i64 @scsi_sg_count(%struct.scsi_cmnd* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %88

67:                                               ; preds = %63
  %68 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  %69 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %68, i32 0, i32 0
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %73 = call i32 @scsi_sglist(%struct.scsi_cmnd* %72)
  %74 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %75 = call i64 @scsi_sg_count(%struct.scsi_cmnd* %74)
  %76 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %77 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @dma_map_sg(i32* %71, i32 %73, i64 %75, i32 %78)
  store i32 %79, i32* %4, align 4
  %80 = load i32, i32* %4, align 4
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  %83 = zext i1 %82 to i32
  %84 = call i64 @unlikely(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %67
  br label %331

87:                                               ; preds = %67
  br label %89

88:                                               ; preds = %63
  store i32 0, i32* %4, align 4
  br label %89

89:                                               ; preds = %88, %87
  %90 = load i32, i32* %4, align 4
  %91 = sext i32 %90 to i64
  store i64 %91, i64* %11, align 8
  %92 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %14, align 8
  %93 = load i64, i64* %11, align 8
  %94 = call i64 @qla24xx_calc_iocbs(%struct.scsi_qla_host* %92, i64 %93)
  store i64 %94, i64* %10, align 8
  %95 = load %struct.req_que*, %struct.req_que** %12, align 8
  %96 = getelementptr inbounds %struct.req_que, %struct.req_que* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* %10, align 8
  %99 = add nsw i64 %98, 2
  %100 = icmp slt i64 %97, %99
  br i1 %100, label %101, label %151

101:                                              ; preds = %89
  %102 = load %struct.qla_hw_data*, %struct.qla_hw_data** %15, align 8
  %103 = call i64 @IS_SHADOW_REG_CAPABLE(%struct.qla_hw_data* %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %101
  %106 = load %struct.req_que*, %struct.req_que** %12, align 8
  %107 = getelementptr inbounds %struct.req_que, %struct.req_que* %106, i32 0, i32 1
  %108 = load i64*, i64** %107, align 8
  %109 = load i64, i64* %108, align 8
  br label %115

110:                                              ; preds = %101
  %111 = load %struct.req_que*, %struct.req_que** %12, align 8
  %112 = getelementptr inbounds %struct.req_que, %struct.req_que* %111, i32 0, i32 10
  %113 = load i32, i32* %112, align 8
  %114 = call i64 @RD_REG_DWORD_RELAXED(i32 %113)
  br label %115

115:                                              ; preds = %110, %105
  %116 = phi i64 [ %109, %105 ], [ %114, %110 ]
  store i64 %116, i64* %9, align 8
  %117 = load %struct.req_que*, %struct.req_que** %12, align 8
  %118 = getelementptr inbounds %struct.req_que, %struct.req_que* %117, i32 0, i32 2
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* %9, align 8
  %121 = icmp slt i64 %119, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %115
  %123 = load i64, i64* %9, align 8
  %124 = load %struct.req_que*, %struct.req_que** %12, align 8
  %125 = getelementptr inbounds %struct.req_que, %struct.req_que* %124, i32 0, i32 2
  %126 = load i64, i64* %125, align 8
  %127 = sub nsw i64 %123, %126
  %128 = load %struct.req_que*, %struct.req_que** %12, align 8
  %129 = getelementptr inbounds %struct.req_que, %struct.req_que* %128, i32 0, i32 0
  store i64 %127, i64* %129, align 8
  br label %142

130:                                              ; preds = %115
  %131 = load %struct.req_que*, %struct.req_que** %12, align 8
  %132 = getelementptr inbounds %struct.req_que, %struct.req_que* %131, i32 0, i32 3
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.req_que*, %struct.req_que** %12, align 8
  %135 = getelementptr inbounds %struct.req_que, %struct.req_que* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* %9, align 8
  %138 = sub nsw i64 %136, %137
  %139 = sub nsw i64 %133, %138
  %140 = load %struct.req_que*, %struct.req_que** %12, align 8
  %141 = getelementptr inbounds %struct.req_que, %struct.req_que* %140, i32 0, i32 0
  store i64 %139, i64* %141, align 8
  br label %142

142:                                              ; preds = %130, %122
  %143 = load %struct.req_que*, %struct.req_que** %12, align 8
  %144 = getelementptr inbounds %struct.req_que, %struct.req_que* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* %10, align 8
  %147 = add nsw i64 %146, 2
  %148 = icmp slt i64 %145, %147
  br i1 %148, label %149, label %150

149:                                              ; preds = %142
  br label %331

150:                                              ; preds = %142
  br label %151

151:                                              ; preds = %150, %89
  %152 = load i64, i64* %7, align 8
  %153 = load %struct.req_que*, %struct.req_que** %12, align 8
  %154 = getelementptr inbounds %struct.req_que, %struct.req_que* %153, i32 0, i32 4
  store i64 %152, i64* %154, align 8
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %156 = load %struct.req_que*, %struct.req_que** %12, align 8
  %157 = getelementptr inbounds %struct.req_que, %struct.req_que* %156, i32 0, i32 9
  %158 = load %struct.TYPE_15__**, %struct.TYPE_15__*** %157, align 8
  %159 = load i64, i64* %7, align 8
  %160 = getelementptr inbounds %struct.TYPE_15__*, %struct.TYPE_15__** %158, i64 %159
  store %struct.TYPE_15__* %155, %struct.TYPE_15__** %160, align 8
  %161 = load i64, i64* %7, align 8
  %162 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %163 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %162, i32 0, i32 0
  store i64 %161, i64* %163, align 8
  %164 = load i64, i64* %7, align 8
  %165 = inttoptr i64 %164 to i8*
  %166 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %167 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %166, i32 0, i32 0
  store i8* %165, i8** %167, align 8
  %168 = load i64, i64* %10, align 8
  %169 = load %struct.req_que*, %struct.req_que** %12, align 8
  %170 = getelementptr inbounds %struct.req_que, %struct.req_que* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = sub nsw i64 %171, %168
  store i64 %172, i64* %170, align 8
  %173 = load %struct.req_que*, %struct.req_que** %12, align 8
  %174 = getelementptr inbounds %struct.req_que, %struct.req_que* %173, i32 0, i32 6
  %175 = load i64, i64* %174, align 8
  %176 = inttoptr i64 %175 to %struct.cmd_type_7*
  store %struct.cmd_type_7* %176, %struct.cmd_type_7** %8, align 8
  %177 = load %struct.req_que*, %struct.req_que** %12, align 8
  %178 = getelementptr inbounds %struct.req_que, %struct.req_que* %177, i32 0, i32 8
  %179 = load i32, i32* %178, align 8
  %180 = load i64, i64* %7, align 8
  %181 = call i32 @MAKE_HANDLE(i32 %179, i64 %180)
  %182 = load %struct.cmd_type_7*, %struct.cmd_type_7** %8, align 8
  %183 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %182, i32 0, i32 9
  store i32 %181, i32* %183, align 8
  %184 = load %struct.cmd_type_7*, %struct.cmd_type_7** %8, align 8
  %185 = bitcast %struct.cmd_type_7* %184 to i64*
  %186 = getelementptr inbounds i64, i64* %185, i64 2
  store i64* %186, i64** %6, align 8
  %187 = load i64*, i64** %6, align 8
  %188 = load i64, i64* @REQUEST_ENTRY_SIZE, align 8
  %189 = sub nsw i64 %188, 8
  %190 = call i32 @memset(i64* %187, i32 0, i64 %189)
  %191 = load i64, i64* %11, align 8
  %192 = call i8* @cpu_to_le16(i64 %191)
  %193 = load %struct.cmd_type_7*, %struct.cmd_type_7** %8, align 8
  %194 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %193, i32 0, i32 8
  store i8* %192, i8** %194, align 8
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_13__*, %struct.TYPE_13__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = call i8* @cpu_to_le16(i64 %199)
  %201 = load %struct.cmd_type_7*, %struct.cmd_type_7** %8, align 8
  %202 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %201, i32 0, i32 7
  store i8* %200, i8** %202, align 8
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 2
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 2
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = load %struct.cmd_type_7*, %struct.cmd_type_7** %8, align 8
  %211 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %210, i32 0, i32 6
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 0
  store i32 %209, i32* %213, align 4
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 2
  %216 = load %struct.TYPE_13__*, %struct.TYPE_13__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %216, i32 0, i32 2
  %218 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %218, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.cmd_type_7*, %struct.cmd_type_7** %8, align 8
  %222 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %221, i32 0, i32 6
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 1
  store i32 %220, i32* %224, align 4
  %225 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 2
  %227 = load %struct.TYPE_13__*, %struct.TYPE_13__** %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %227, i32 0, i32 2
  %229 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.cmd_type_7*, %struct.cmd_type_7** %8, align 8
  %233 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %232, i32 0, i32 6
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 2
  store i32 %231, i32* %235, align 4
  %236 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %237 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %236, i32 0, i32 2
  %238 = load %struct.TYPE_13__*, %struct.TYPE_13__** %237, align 8
  %239 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %238, i32 0, i32 1
  %240 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %239, align 8
  %241 = getelementptr inbounds %struct.scsi_qla_host, %struct.scsi_qla_host* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.cmd_type_7*, %struct.cmd_type_7** %8, align 8
  %244 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %243, i32 0, i32 5
  store i32 %242, i32* %244, align 8
  %245 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %246 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %245, i32 0, i32 3
  %247 = load %struct.TYPE_14__*, %struct.TYPE_14__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %247, i32 0, i32 0
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.cmd_type_7*, %struct.cmd_type_7** %8, align 8
  %251 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %250, i32 0, i32 4
  %252 = call i32 @int_to_scsilun(i32 %249, i32* %251)
  %253 = load %struct.cmd_type_7*, %struct.cmd_type_7** %8, align 8
  %254 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %253, i32 0, i32 4
  %255 = bitcast i32* %254 to i64*
  %256 = call i32 @host_to_fcp_swap(i64* %255, i32 4)
  %257 = load i32, i32* @TSK_SIMPLE, align 4
  %258 = load %struct.cmd_type_7*, %struct.cmd_type_7** %8, align 8
  %259 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %258, i32 0, i32 3
  store i32 %257, i32* %259, align 8
  %260 = load %struct.cmd_type_7*, %struct.cmd_type_7** %8, align 8
  %261 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %260, i32 0, i32 2
  %262 = load i64*, i64** %261, align 8
  %263 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %264 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %263, i32 0, i32 2
  %265 = load i32, i32* %264, align 4
  %266 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %267 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 8
  %269 = call i32 @memcpy(i64* %262, i32 %265, i32 %268)
  %270 = load %struct.cmd_type_7*, %struct.cmd_type_7** %8, align 8
  %271 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %270, i32 0, i32 2
  %272 = load i64*, i64** %271, align 8
  %273 = call i32 @host_to_fcp_swap(i64* %272, i32 8)
  %274 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %275 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %274)
  %276 = call i32 @cpu_to_le32(i64 %275)
  %277 = load %struct.cmd_type_7*, %struct.cmd_type_7** %8, align 8
  %278 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %277, i32 0, i32 1
  store i32 %276, i32* %278, align 8
  %279 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %280 = load %struct.cmd_type_7*, %struct.cmd_type_7** %8, align 8
  %281 = load i64, i64* %11, align 8
  %282 = load %struct.req_que*, %struct.req_que** %12, align 8
  %283 = call i32 @qla24xx_build_scsi_iocbs(%struct.TYPE_15__* %279, %struct.cmd_type_7* %280, i64 %281, %struct.req_que* %282)
  %284 = load i64, i64* %10, align 8
  %285 = load %struct.cmd_type_7*, %struct.cmd_type_7** %8, align 8
  %286 = getelementptr inbounds %struct.cmd_type_7, %struct.cmd_type_7* %285, i32 0, i32 0
  store i64 %284, i64* %286, align 8
  %287 = call i32 (...) @wmb()
  %288 = load %struct.req_que*, %struct.req_que** %12, align 8
  %289 = getelementptr inbounds %struct.req_que, %struct.req_que* %288, i32 0, i32 2
  %290 = load i64, i64* %289, align 8
  %291 = add nsw i64 %290, 1
  store i64 %291, i64* %289, align 8
  %292 = load %struct.req_que*, %struct.req_que** %12, align 8
  %293 = getelementptr inbounds %struct.req_que, %struct.req_que* %292, i32 0, i32 2
  %294 = load i64, i64* %293, align 8
  %295 = load %struct.req_que*, %struct.req_que** %12, align 8
  %296 = getelementptr inbounds %struct.req_que, %struct.req_que* %295, i32 0, i32 3
  %297 = load i64, i64* %296, align 8
  %298 = icmp eq i64 %294, %297
  br i1 %298, label %299, label %307

299:                                              ; preds = %151
  %300 = load %struct.req_que*, %struct.req_que** %12, align 8
  %301 = getelementptr inbounds %struct.req_que, %struct.req_que* %300, i32 0, i32 2
  store i64 0, i64* %301, align 8
  %302 = load %struct.req_que*, %struct.req_que** %12, align 8
  %303 = getelementptr inbounds %struct.req_que, %struct.req_que* %302, i32 0, i32 7
  %304 = load i64, i64* %303, align 8
  %305 = load %struct.req_que*, %struct.req_que** %12, align 8
  %306 = getelementptr inbounds %struct.req_que, %struct.req_que* %305, i32 0, i32 6
  store i64 %304, i64* %306, align 8
  br label %312

307:                                              ; preds = %151
  %308 = load %struct.req_que*, %struct.req_que** %12, align 8
  %309 = getelementptr inbounds %struct.req_que, %struct.req_que* %308, i32 0, i32 6
  %310 = load i64, i64* %309, align 8
  %311 = add nsw i64 %310, 1
  store i64 %311, i64* %309, align 8
  br label %312

312:                                              ; preds = %307, %299
  %313 = load i32, i32* @SRB_DMA_VALID, align 4
  %314 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %315 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 8
  %317 = or i32 %316, %313
  store i32 %317, i32* %315, align 8
  %318 = load %struct.req_que*, %struct.req_que** %12, align 8
  %319 = getelementptr inbounds %struct.req_que, %struct.req_que* %318, i32 0, i32 5
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.req_que*, %struct.req_que** %12, align 8
  %322 = getelementptr inbounds %struct.req_que, %struct.req_que* %321, i32 0, i32 2
  %323 = load i64, i64* %322, align 8
  %324 = call i32 @WRT_REG_DWORD(i32 %320, i64 %323)
  %325 = load %struct.qla_qpair*, %struct.qla_qpair** %16, align 8
  %326 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %325, i32 0, i32 0
  %327 = load i64, i64* %5, align 8
  %328 = call i32 @spin_unlock_irqrestore(i32* %326, i64 %327)
  %329 = load i64, i64* @QLA_SUCCESS, align 8
  %330 = trunc i64 %329 to i32
  store i32 %330, i32* %2, align 4
  br label %343

331:                                              ; preds = %149, %86, %62
  %332 = load i64, i64* %11, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %337

334:                                              ; preds = %331
  %335 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %13, align 8
  %336 = call i32 @scsi_dma_unmap(%struct.scsi_cmnd* %335)
  br label %337

337:                                              ; preds = %334, %331
  %338 = load %struct.qla_qpair*, %struct.qla_qpair** %16, align 8
  %339 = getelementptr inbounds %struct.qla_qpair, %struct.qla_qpair* %338, i32 0, i32 0
  %340 = load i64, i64* %5, align 8
  %341 = call i32 @spin_unlock_irqrestore(i32* %339, i64 %340)
  %342 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %342, i32* %2, align 4
  br label %343

343:                                              ; preds = %337, %312, %48
  %344 = load i32, i32* %2, align 4
  ret i32 %344
}

declare dso_local %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_15__*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @__qla2x00_marker(%struct.scsi_qla_host*, %struct.qla_qpair*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

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

declare dso_local i32 @scsi_dma_unmap(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
