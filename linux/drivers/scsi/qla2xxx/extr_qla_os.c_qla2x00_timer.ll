; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i64, i32, i32, i32, i32, %struct.qla_hw_data*, i32, i32, i32, i32, i64, %struct.TYPE_17__ }
%struct.qla_hw_data = type { i32, i64, i64, i64, i32, i32, %struct.TYPE_16__, i32, i32, %struct.req_que**, i32 }
%struct.TYPE_16__ = type { i32, i64 }
%struct.req_que = type { i32, %struct.TYPE_18__** }
%struct.TYPE_18__ = type { i64, i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_17__ = type { i64 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@ql_dbg_timer = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"EEH = %d, restarting timer.\0A\00", align 1
@WATCH_INTERVAL = common dso_local global i32 0, align 4
@PCI_VENDOR_ID = common dso_local global i32 0, align 4
@ISP_QUIESCE_NEEDED = common dso_local global i32 0, align 4
@ABORT_ISP_ACTIVE = common dso_local global i32 0, align 4
@FCOE_CTX_RESET_NEEDED = common dso_local global i32 0, align 4
@ql_log_info = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"Loop down - aborting the queues before time expires.\0A\00", align 1
@LOOP_DEAD = common dso_local global i32 0, align 4
@TYPE_SRB = common dso_local global i64 0, align 8
@SRB_SCSI_CMD = common dso_local global i64 0, align 8
@FCF_FCP2_DEVICE = common dso_local global i32 0, align 4
@ISP_ABORT_NEEDED = common dso_local global i32 0, align 4
@DFLG_NO_CABLE = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [27 x i8] c"Loop down - aborting ISP.\0A\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"Loop down - seconds remaining %d.\0A\00", align 1
@BEACON_BLINK_NEEDED = common dso_local global i32 0, align 4
@IOCB_WORK_ACTIVE = common dso_local global i32 0, align 4
@QLA_ZIO_MODE_6 = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [48 x i8] c"nvme: Sched: Set ZIO exchange threshold to %d.\0A\00", align 1
@SET_NVME_ZIO_THRESHOLD_NEEDED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [42 x i8] c"Sched: Set ZIO exchange threshold to %d.\0A\00", align 1
@SET_ZIO_THRESHOLD_NEEDED = common dso_local global i32 0, align 4
@LOOP_RESYNC_NEEDED = common dso_local global i32 0, align 4
@FCPORT_UPDATE_NEEDED = common dso_local global i32 0, align 4
@RESET_MARKER_NEEDED = common dso_local global i32 0, align 4
@ISP_UNRECOVERABLE = common dso_local global i32 0, align 4
@VP_DPC_NEEDED = common dso_local global i32 0, align 4
@RELOGIN_NEEDED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [102 x i8] c"isp_abort_needed=%d loop_resync_needed=%d fcport_update_needed=%d start_dpc=%d reset_marker_needed=%d\00", align 1
@.str.7 = private unnamed_addr constant [106 x i8] c"beacon_blink_needed=%d isp_unrecoverable=%d fcoe_ctx_reset_needed=%d vp_dpc_needed=%d relogin_needed=%d.\0A\00", align 1
@vha = common dso_local global %struct.TYPE_19__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla2x00_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_18__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.qla_hw_data*, align 8
  %10 = alloca %struct.req_que*, align 8
  %11 = alloca %struct.TYPE_20__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %15 = ptrtoint %struct.TYPE_19__* %14 to i32
  %16 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %17 = load i32, i32* @timer, align 4
  %18 = call %struct.TYPE_19__* @from_timer(i32 %15, %struct.timer_list* %16, i32 %17)
  store %struct.TYPE_19__* %18, %struct.TYPE_19__** %3, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %19 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %19, i32 0, i32 5
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %20, align 8
  store %struct.qla_hw_data* %21, %struct.qla_hw_data** %9, align 8
  %22 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %23 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %22, i32 0, i32 6
  %24 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %1
  %28 = load i32, i32* @ql_dbg_timer, align 4
  %29 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %30 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %31 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %30, i32 0, i32 6
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = trunc i64 %33 to i32
  %35 = call i32 (i32, %struct.TYPE_19__*, i32, i8*, i32, ...) @ql_dbg(i32 %28, %struct.TYPE_19__* %29, i32 24576, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %34)
  %36 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %37 = load i32, i32* @WATCH_INTERVAL, align 4
  %38 = call i32 @qla2x00_restart_timer(%struct.TYPE_19__* %36, i32 %37)
  br label %524

39:                                               ; preds = %1
  %40 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %41 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %40, i32 0, i32 10
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @pci_channel_offline(i32 %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %54, label %45

45:                                               ; preds = %39
  %46 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %47 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %46, i32 0, i32 10
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @PCI_VENDOR_ID, align 4
  %50 = call i32 @pci_read_config_word(i32 %48, i32 %49, i32* %8)
  %51 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @qla2x00_check_reg16_for_disconnect(%struct.TYPE_19__* %51, i32 %52)
  br label %54

54:                                               ; preds = %45, %39
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %88, label %59

59:                                               ; preds = %54
  %60 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %61 = call i64 @IS_P3P_TYPE(%struct.qla_hw_data* %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %88

63:                                               ; preds = %59
  %64 = load i32, i32* @ISP_QUIESCE_NEEDED, align 4
  %65 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %65, i32 0, i32 2
  %67 = call i32 @test_bit(i32 %64, i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32, i32* %5, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %69, %63
  %73 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %74 = call i64 @IS_QLA82XX(%struct.qla_hw_data* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %79

76:                                               ; preds = %72
  %77 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %78 = call i32 @qla82xx_watchdog(%struct.TYPE_19__* %77)
  br label %87

79:                                               ; preds = %72
  %80 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %81 = call i64 @IS_QLA8044(%struct.qla_hw_data* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %79
  %84 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %85 = call i32 @qla8044_watchdog(%struct.TYPE_19__* %84)
  br label %86

86:                                               ; preds = %83, %79
  br label %87

87:                                               ; preds = %86, %76
  br label %88

88:                                               ; preds = %87, %59, %54
  %89 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %90 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %89, i32 0, i32 3
  %91 = load i32, i32* %90, align 8
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %100, label %93

93:                                               ; preds = %88
  %94 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %95 = call i64 @IS_QLAFX00(%struct.qla_hw_data* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %93
  %98 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %99 = call i32 @qlafx00_timer_routine(%struct.TYPE_19__* %98)
  br label %100

100:                                              ; preds = %97, %93, %88
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %101, i32 0, i32 8
  %103 = call i64 @atomic_read(i32* %102)
  %104 = icmp sgt i64 %103, 0
  br i1 %104, label %105, label %270

105:                                              ; preds = %100
  %106 = load i32, i32* @ABORT_ISP_ACTIVE, align 4
  %107 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %108 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %107, i32 0, i32 2
  %109 = call i32 @test_bit(i32 %106, i32* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %270, label %111

111:                                              ; preds = %105
  %112 = load i32, i32* @FCOE_CTX_RESET_NEEDED, align 4
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %113, i32 0, i32 2
  %115 = call i32 @test_bit(i32 %112, i32* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %270, label %117

117:                                              ; preds = %111
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %119 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %118, i32 0, i32 11
  %120 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %270

123:                                              ; preds = %117
  %124 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %124, i32 0, i32 8
  %126 = call i64 @atomic_read(i32* %125)
  %127 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %128 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %126, %129
  br i1 %130, label %131, label %231

131:                                              ; preds = %123
  %132 = load i32, i32* @ql_log_info, align 4
  %133 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %134 = call i32 (i32, %struct.TYPE_19__*, i32, i8*, ...) @ql_log(i32 %132, %struct.TYPE_19__* %133, i32 24584, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.1, i64 0, i64 0))
  %135 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %136 = call i32 @IS_QLA2100(%struct.qla_hw_data* %135)
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %148, label %138

138:                                              ; preds = %131
  %139 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %139, i32 0, i32 10
  %141 = load i64, i64* %140, align 8
  %142 = icmp ne i64 %141, 0
  br i1 %142, label %143, label %148

143:                                              ; preds = %138
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 9
  %146 = load i32, i32* @LOOP_DEAD, align 4
  %147 = call i32 @atomic_set(i32* %145, i32 %146)
  br label %148

148:                                              ; preds = %143, %138, %131
  %149 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %150 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %149, i32 0, i32 3
  %151 = load i32, i32* %150, align 8
  %152 = icmp ne i32 %151, 0
  br i1 %152, label %228, label %153

153:                                              ; preds = %148
  %154 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %155 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %154, i32 0, i32 8
  %156 = load i64, i64* %4, align 8
  %157 = call i32 @spin_lock_irqsave(i32* %155, i64 %156)
  %158 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %159 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %158, i32 0, i32 9
  %160 = load %struct.req_que**, %struct.req_que*** %159, align 8
  %161 = getelementptr inbounds %struct.req_que*, %struct.req_que** %160, i64 0
  %162 = load %struct.req_que*, %struct.req_que** %161, align 8
  store %struct.req_que* %162, %struct.req_que** %10, align 8
  store i32 1, i32* %6, align 4
  br label %163

163:                                              ; preds = %220, %153
  %164 = load i32, i32* %6, align 4
  %165 = load %struct.req_que*, %struct.req_que** %10, align 8
  %166 = getelementptr inbounds %struct.req_que, %struct.req_que* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = icmp slt i32 %164, %167
  br i1 %168, label %169, label %223

169:                                              ; preds = %163
  %170 = load %struct.req_que*, %struct.req_que** %10, align 8
  %171 = getelementptr inbounds %struct.req_que, %struct.req_que* %170, i32 0, i32 1
  %172 = load %struct.TYPE_18__**, %struct.TYPE_18__*** %171, align 8
  %173 = load i32, i32* %6, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.TYPE_18__*, %struct.TYPE_18__** %172, i64 %174
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %175, align 8
  store %struct.TYPE_18__* %176, %struct.TYPE_18__** %7, align 8
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %178 = icmp ne %struct.TYPE_18__* %177, null
  br i1 %178, label %180, label %179

179:                                              ; preds = %169
  br label %220

180:                                              ; preds = %169
  %181 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %182 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %181, i32 0, i32 0
  %183 = load i64, i64* %182, align 8
  %184 = load i64, i64* @TYPE_SRB, align 8
  %185 = icmp ne i64 %183, %184
  br i1 %185, label %186, label %187

186:                                              ; preds = %180
  br label %220

187:                                              ; preds = %180
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @SRB_SCSI_CMD, align 8
  %192 = icmp ne i64 %190, %191
  br i1 %192, label %193, label %194

193:                                              ; preds = %187
  br label %220

194:                                              ; preds = %187
  %195 = load %struct.TYPE_18__*, %struct.TYPE_18__** %7, align 8
  %196 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %195, i32 0, i32 2
  %197 = load %struct.TYPE_20__*, %struct.TYPE_20__** %196, align 8
  store %struct.TYPE_20__* %197, %struct.TYPE_20__** %11, align 8
  %198 = load %struct.TYPE_20__*, %struct.TYPE_20__** %11, align 8
  %199 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* @FCF_FCP2_DEVICE, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %205, label %204

204:                                              ; preds = %194
  br label %220

205:                                              ; preds = %194
  %206 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %207 = call i64 @IS_QLA82XX(%struct.qla_hw_data* %206)
  %208 = icmp ne i64 %207, 0
  br i1 %208, label %209, label %214

209:                                              ; preds = %205
  %210 = load i32, i32* @FCOE_CTX_RESET_NEEDED, align 4
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 2
  %213 = call i32 @set_bit(i32 %210, i32* %212)
  br label %219

214:                                              ; preds = %205
  %215 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %216 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 2
  %218 = call i32 @set_bit(i32 %215, i32* %217)
  br label %219

219:                                              ; preds = %214, %209
  br label %223

220:                                              ; preds = %204, %193, %186, %179
  %221 = load i32, i32* %6, align 4
  %222 = add nsw i32 %221, 1
  store i32 %222, i32* %6, align 4
  br label %163

223:                                              ; preds = %219, %163
  %224 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %225 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %224, i32 0, i32 8
  %226 = load i64, i64* %4, align 8
  %227 = call i32 @spin_unlock_irqrestore(i32* %225, i64 %226)
  br label %228

228:                                              ; preds = %223, %148
  %229 = load i32, i32* %5, align 4
  %230 = add nsw i32 %229, 1
  store i32 %230, i32* %5, align 4
  br label %231

231:                                              ; preds = %228, %123
  %232 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %233 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %232, i32 0, i32 8
  %234 = call i64 @atomic_dec_and_test(i32* %233)
  %235 = icmp ne i64 %234, 0
  br i1 %235, label %236, label %262

236:                                              ; preds = %231
  %237 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %238 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 8
  %240 = load i32, i32* @DFLG_NO_CABLE, align 4
  %241 = and i32 %239, %240
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %261, label %243

243:                                              ; preds = %236
  %244 = load i32, i32* @ql_log_warn, align 4
  %245 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %246 = call i32 (i32, %struct.TYPE_19__*, i32, i8*, ...) @ql_log(i32 %244, %struct.TYPE_19__* %245, i32 24585, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %247 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %248 = call i64 @IS_QLA82XX(%struct.qla_hw_data* %247)
  %249 = icmp ne i64 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %243
  %251 = load i32, i32* @FCOE_CTX_RESET_NEEDED, align 4
  %252 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %253 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %252, i32 0, i32 2
  %254 = call i32 @set_bit(i32 %251, i32* %253)
  br label %260

255:                                              ; preds = %243
  %256 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %257 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %258 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %257, i32 0, i32 2
  %259 = call i32 @set_bit(i32 %256, i32* %258)
  br label %260

260:                                              ; preds = %255, %250
  br label %261

261:                                              ; preds = %260, %236
  br label %262

262:                                              ; preds = %261, %231
  %263 = load i32, i32* @ql_dbg_timer, align 4
  %264 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %265 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %266 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %265, i32 0, i32 8
  %267 = call i64 @atomic_read(i32* %266)
  %268 = trunc i64 %267 to i32
  %269 = call i32 (i32, %struct.TYPE_19__*, i32, i8*, i32, ...) @ql_dbg(i32 %263, %struct.TYPE_19__* %264, i32 24586, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 %268)
  br label %270

270:                                              ; preds = %262, %117, %111, %105, %100
  %271 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %272 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %271, i32 0, i32 3
  %273 = load i32, i32* %272, align 8
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %292, label %275

275:                                              ; preds = %270
  %276 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %277 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = icmp eq i32 %278, 1
  br i1 %279, label %280, label %292

280:                                              ; preds = %275
  %281 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %282 = call i64 @IS_P3P_TYPE(%struct.qla_hw_data* %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %291, label %284

284:                                              ; preds = %280
  %285 = load i32, i32* @BEACON_BLINK_NEEDED, align 4
  %286 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %287 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %286, i32 0, i32 2
  %288 = call i32 @set_bit(i32 %285, i32* %287)
  %289 = load i32, i32* %5, align 4
  %290 = add nsw i32 %289, 1
  store i32 %290, i32* %5, align 4
  br label %291

291:                                              ; preds = %284, %280
  br label %292

292:                                              ; preds = %291, %275, %270
  %293 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %294 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %293, i32 0, i32 7
  %295 = call i32 @list_empty(i32* %294)
  %296 = icmp ne i32 %295, 0
  br i1 %296, label %325, label %297

297:                                              ; preds = %292
  store i32 0, i32* %13, align 4
  %298 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %299 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %298, i32 0, i32 6
  %300 = load i64, i64* %12, align 8
  %301 = call i32 @spin_lock_irqsave(i32* %299, i64 %300)
  %302 = load i32, i32* @IOCB_WORK_ACTIVE, align 4
  %303 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %304 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %303, i32 0, i32 2
  %305 = call i32 @test_and_set_bit(i32 %302, i32* %304)
  %306 = icmp ne i32 %305, 0
  br i1 %306, label %308, label %307

307:                                              ; preds = %297
  store i32 1, i32* %13, align 4
  br label %308

308:                                              ; preds = %307, %297
  %309 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %310 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %309, i32 0, i32 6
  %311 = load i64, i64* %12, align 8
  %312 = call i32 @spin_unlock_irqrestore(i32* %310, i64 %311)
  %313 = load i32, i32* %13, align 4
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %315, label %324

315:                                              ; preds = %308
  %316 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %317 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %316, i32 0, i32 5
  %318 = load %struct.qla_hw_data*, %struct.qla_hw_data** %317, align 8
  %319 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %318, i32 0, i32 7
  %320 = load i32, i32* %319, align 8
  %321 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %322 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %321, i32 0, i32 4
  %323 = call i32 @queue_work(i32 %320, i32* %322)
  br label %324

324:                                              ; preds = %315, %308
  br label %325

325:                                              ; preds = %324, %292
  %326 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %327 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %326, i32 0, i32 3
  %328 = load i32, i32* %327, align 8
  %329 = icmp ne i32 %328, 0
  br i1 %329, label %368, label %330

330:                                              ; preds = %325
  %331 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %332 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %331, i32 0, i32 5
  %333 = call i64 @atomic_read(i32* %332)
  %334 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %335 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %334, i32 0, i32 1
  %336 = load i64, i64* %335, align 8
  %337 = icmp ne i64 %333, %336
  br i1 %337, label %338, label %368

338:                                              ; preds = %330
  %339 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %340 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %339, i32 0, i32 2
  %341 = load i64, i64* %340, align 8
  %342 = load i64, i64* @QLA_ZIO_MODE_6, align 8
  %343 = icmp eq i64 %341, %342
  br i1 %343, label %344, label %368

344:                                              ; preds = %338
  %345 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %346 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %345, i32 0, i32 6
  %347 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %346, i32 0, i32 0
  %348 = load i32, i32* %347, align 8
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %368, label %350

350:                                              ; preds = %344
  %351 = load i32, i32* @ql_log_info, align 4
  %352 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %353 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %354 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %353, i32 0, i32 1
  %355 = load i64, i64* %354, align 8
  %356 = call i32 (i32, %struct.TYPE_19__*, i32, i8*, ...) @ql_log(i32 %351, %struct.TYPE_19__* %352, i32 12290, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.4, i64 0, i64 0), i64 %355)
  %357 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %358 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %357, i32 0, i32 5
  %359 = call i64 @atomic_read(i32* %358)
  %360 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %361 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %360, i32 0, i32 1
  store i64 %359, i64* %361, align 8
  %362 = load i32, i32* @SET_NVME_ZIO_THRESHOLD_NEEDED, align 4
  %363 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %364 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %363, i32 0, i32 2
  %365 = call i32 @set_bit(i32 %362, i32* %364)
  %366 = load i32, i32* %5, align 4
  %367 = add nsw i32 %366, 1
  store i32 %367, i32* %5, align 4
  br label %368

368:                                              ; preds = %350, %344, %338, %330, %325
  %369 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %370 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %369, i32 0, i32 3
  %371 = load i32, i32* %370, align 8
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %417, label %373

373:                                              ; preds = %368
  %374 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %375 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %374, i32 0, i32 4
  %376 = call i64 @atomic_read(i32* %375)
  %377 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %378 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %377, i32 0, i32 3
  %379 = load i64, i64* %378, align 8
  %380 = icmp ne i64 %376, %379
  br i1 %380, label %381, label %417

381:                                              ; preds = %373
  %382 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %383 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %382, i32 0, i32 2
  %384 = load i64, i64* %383, align 8
  %385 = load i64, i64* @QLA_ZIO_MODE_6, align 8
  %386 = icmp eq i64 %384, %385
  br i1 %386, label %387, label %417

387:                                              ; preds = %381
  %388 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %389 = call i64 @IS_QLA83XX(%struct.qla_hw_data* %388)
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %399, label %391

391:                                              ; preds = %387
  %392 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %393 = call i64 @IS_QLA27XX(%struct.qla_hw_data* %392)
  %394 = icmp ne i64 %393, 0
  br i1 %394, label %399, label %395

395:                                              ; preds = %391
  %396 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %397 = call i64 @IS_QLA28XX(%struct.qla_hw_data* %396)
  %398 = icmp ne i64 %397, 0
  br i1 %398, label %399, label %417

399:                                              ; preds = %395, %391, %387
  %400 = load i32, i32* @ql_log_info, align 4
  %401 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %402 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %403 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %402, i32 0, i32 3
  %404 = load i64, i64* %403, align 8
  %405 = call i32 (i32, %struct.TYPE_19__*, i32, i8*, ...) @ql_log(i32 %400, %struct.TYPE_19__* %401, i32 12290, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0), i64 %404)
  %406 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %407 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %406, i32 0, i32 4
  %408 = call i64 @atomic_read(i32* %407)
  %409 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  %410 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %409, i32 0, i32 3
  store i64 %408, i64* %410, align 8
  %411 = load i32, i32* @SET_ZIO_THRESHOLD_NEEDED, align 4
  %412 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %413 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %412, i32 0, i32 2
  %414 = call i32 @set_bit(i32 %411, i32* %413)
  %415 = load i32, i32* %5, align 4
  %416 = add nsw i32 %415, 1
  store i32 %416, i32* %5, align 4
  br label %417

417:                                              ; preds = %399, %395, %381, %373, %368
  %418 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %419 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %420 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %419, i32 0, i32 2
  %421 = call i32 @test_bit(i32 %418, i32* %420)
  %422 = icmp ne i32 %421, 0
  br i1 %422, label %474, label %423

423:                                              ; preds = %417
  %424 = load i32, i32* @LOOP_RESYNC_NEEDED, align 4
  %425 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %426 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %425, i32 0, i32 2
  %427 = call i32 @test_bit(i32 %424, i32* %426)
  %428 = icmp ne i32 %427, 0
  br i1 %428, label %474, label %429

429:                                              ; preds = %423
  %430 = load i32, i32* @FCPORT_UPDATE_NEEDED, align 4
  %431 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %432 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %431, i32 0, i32 2
  %433 = call i32 @test_bit(i32 %430, i32* %432)
  %434 = icmp ne i32 %433, 0
  br i1 %434, label %474, label %435

435:                                              ; preds = %429
  %436 = load i32, i32* %5, align 4
  %437 = icmp ne i32 %436, 0
  br i1 %437, label %474, label %438

438:                                              ; preds = %435
  %439 = load i32, i32* @RESET_MARKER_NEEDED, align 4
  %440 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %441 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %440, i32 0, i32 2
  %442 = call i32 @test_bit(i32 %439, i32* %441)
  %443 = icmp ne i32 %442, 0
  br i1 %443, label %474, label %444

444:                                              ; preds = %438
  %445 = load i32, i32* @BEACON_BLINK_NEEDED, align 4
  %446 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %447 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %446, i32 0, i32 2
  %448 = call i32 @test_bit(i32 %445, i32* %447)
  %449 = icmp ne i32 %448, 0
  br i1 %449, label %474, label %450

450:                                              ; preds = %444
  %451 = load i32, i32* @ISP_UNRECOVERABLE, align 4
  %452 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %453 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %452, i32 0, i32 2
  %454 = call i32 @test_bit(i32 %451, i32* %453)
  %455 = icmp ne i32 %454, 0
  br i1 %455, label %474, label %456

456:                                              ; preds = %450
  %457 = load i32, i32* @FCOE_CTX_RESET_NEEDED, align 4
  %458 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %459 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %458, i32 0, i32 2
  %460 = call i32 @test_bit(i32 %457, i32* %459)
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %474, label %462

462:                                              ; preds = %456
  %463 = load i32, i32* @VP_DPC_NEEDED, align 4
  %464 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %465 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %464, i32 0, i32 2
  %466 = call i32 @test_bit(i32 %463, i32* %465)
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %474, label %468

468:                                              ; preds = %462
  %469 = load i32, i32* @RELOGIN_NEEDED, align 4
  %470 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %471 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %470, i32 0, i32 2
  %472 = call i32 @test_bit(i32 %469, i32* %471)
  %473 = icmp ne i32 %472, 0
  br i1 %473, label %474, label %520

474:                                              ; preds = %468, %462, %456, %450, %444, %438, %435, %429, %423, %417
  %475 = load i32, i32* @ql_dbg_timer, align 4
  %476 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %477 = load i32, i32* @ISP_ABORT_NEEDED, align 4
  %478 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %479 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %478, i32 0, i32 2
  %480 = call i32 @test_bit(i32 %477, i32* %479)
  %481 = load i32, i32* @LOOP_RESYNC_NEEDED, align 4
  %482 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %483 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %482, i32 0, i32 2
  %484 = call i32 @test_bit(i32 %481, i32* %483)
  %485 = load i32, i32* @FCPORT_UPDATE_NEEDED, align 4
  %486 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %487 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %486, i32 0, i32 2
  %488 = call i32 @test_bit(i32 %485, i32* %487)
  %489 = load i32, i32* %5, align 4
  %490 = load i32, i32* @RESET_MARKER_NEEDED, align 4
  %491 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %492 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %491, i32 0, i32 2
  %493 = call i32 @test_bit(i32 %490, i32* %492)
  %494 = call i32 (i32, %struct.TYPE_19__*, i32, i8*, i32, ...) @ql_dbg(i32 %475, %struct.TYPE_19__* %476, i32 24587, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.6, i64 0, i64 0), i32 %480, i32 %484, i32 %488, i32 %489, i32 %493)
  %495 = load i32, i32* @ql_dbg_timer, align 4
  %496 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %497 = load i32, i32* @BEACON_BLINK_NEEDED, align 4
  %498 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %499 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %498, i32 0, i32 2
  %500 = call i32 @test_bit(i32 %497, i32* %499)
  %501 = load i32, i32* @ISP_UNRECOVERABLE, align 4
  %502 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %503 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %502, i32 0, i32 2
  %504 = call i32 @test_bit(i32 %501, i32* %503)
  %505 = load i32, i32* @FCOE_CTX_RESET_NEEDED, align 4
  %506 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %507 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %506, i32 0, i32 2
  %508 = call i32 @test_bit(i32 %505, i32* %507)
  %509 = load i32, i32* @VP_DPC_NEEDED, align 4
  %510 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %511 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %510, i32 0, i32 2
  %512 = call i32 @test_bit(i32 %509, i32* %511)
  %513 = load i32, i32* @RELOGIN_NEEDED, align 4
  %514 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %515 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %514, i32 0, i32 2
  %516 = call i32 @test_bit(i32 %513, i32* %515)
  %517 = call i32 (i32, %struct.TYPE_19__*, i32, i8*, i32, ...) @ql_dbg(i32 %495, %struct.TYPE_19__* %496, i32 24588, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.7, i64 0, i64 0), i32 %500, i32 %504, i32 %508, i32 %512, i32 %516)
  %518 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %519 = call i32 @qla2xxx_wake_dpc(%struct.TYPE_19__* %518)
  br label %520

520:                                              ; preds = %474, %468
  %521 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %522 = load i32, i32* @WATCH_INTERVAL, align 4
  %523 = call i32 @qla2x00_restart_timer(%struct.TYPE_19__* %521, i32 %522)
  br label %524

524:                                              ; preds = %520, %27
  ret void
}

declare dso_local %struct.TYPE_19__* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_19__*, i32, i8*, i32, ...) #1

declare dso_local i32 @qla2x00_restart_timer(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @pci_channel_offline(i32) #1

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @qla2x00_check_reg16_for_disconnect(%struct.TYPE_19__*, i32) #1

declare dso_local i64 @IS_P3P_TYPE(%struct.qla_hw_data*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i64 @IS_QLA82XX(%struct.qla_hw_data*) #1

declare dso_local i32 @qla82xx_watchdog(%struct.TYPE_19__*) #1

declare dso_local i64 @IS_QLA8044(%struct.qla_hw_data*) #1

declare dso_local i32 @qla8044_watchdog(%struct.TYPE_19__*) #1

declare dso_local i64 @IS_QLAFX00(%struct.qla_hw_data*) #1

declare dso_local i32 @qlafx00_timer_routine(%struct.TYPE_19__*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_19__*, i32, i8*, ...) #1

declare dso_local i32 @IS_QLA2100(%struct.qla_hw_data*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i64 @IS_QLA83XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA27XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA28XX(%struct.qla_hw_data*) #1

declare dso_local i32 @qla2xxx_wake_dpc(%struct.TYPE_19__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
