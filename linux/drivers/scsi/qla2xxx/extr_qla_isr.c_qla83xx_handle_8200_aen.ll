; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_isr.c_qla83xx_handle_8200_aen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_isr.c_qla83xx_handle_8200_aen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i64 }

@ql_dbg_async = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [100 x i8] c"AEN Code: mb[0] = 0x%x AEN reason: mb[1] = 0x%x PH-status1: mb[2] = 0x%x PH-status1: mb[6] = 0x%x.\0A\00", align 1
@.str.1 = private unnamed_addr constant [106 x i8] c"PH-status2: mb[3] = 0x%x PH-status2: mb[7] = 0x%x Device-State: mb[4] = 0x%x Drv-Presence: mb[5] = 0x%x.\0A\00", align 1
@IDC_PEG_HALT_STATUS_CHANGE = common dso_local global i32 0, align 4
@IDC_NIC_FW_REPORTED_FAILURE = common dso_local global i32 0, align 4
@IDC_HEARTBEAT_FAILURE = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"83XX: F/W Error Reported: Check if reset required.\0A\00", align 1
@.str.3 = private unnamed_addr constant [85 x i8] c"PegHalt Status-1 Register: protocol_engine_id=0x%x fw_err_code=0x%x err_level=0x%x.\0A\00", align 1
@.str.4 = private unnamed_addr constant [36 x i8] c"PegHalt Status-2 Register: 0x%x%x.\0A\00", align 1
@ERR_LEVEL_NON_FATAL = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [46 x i8] c"Not a fatal error, f/w has recovered itself.\0A\00", align 1
@ERR_LEVEL_RECOVERABLE_FATAL = common dso_local global i32 0, align 4
@ql_log_fatal = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"Recoverable Fatal error: Chip reset required.\0A\00", align 1
@QLA83XX_NIC_CORE_RESET = common dso_local global i32 0, align 4
@ERR_LEVEL_UNRECOVERABLE_FATAL = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [63 x i8] c"Unrecoverable Fatal error: Set FAILED state, reboot required.\0A\00", align 1
@QLA83XX_NIC_CORE_UNRECOVERABLE = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [124 x i8] c"Peg-to-Fc Status Register:\0Apeg_fw_state=0x%x, nw_interface_link_up=0x%x, nw_interface_signal_detect=0x%x\0Asfp_statis=0x%x.\0A \00", align 1
@.str.9 = private unnamed_addr constant [93 x i8] c"htbt_counter=0x%x, htbt_monitor_enable=0x%x, sfp_additional_info=0x%x, sfp_multirate=0x%x.\0A \00", align 1
@.str.10 = private unnamed_addr constant [55 x i8] c"sfp_tx_fault=0x%x, link_state=0x%x, dcbx_status=0x%x.\0A\00", align 1
@.str.11 = private unnamed_addr constant [53 x i8] c"Heartbeat Failure encountered, chip reset required.\0A\00", align 1
@IDC_DEVICE_STATE_CHANGE = common dso_local global i32 0, align 4
@ql_log_info = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [34 x i8] c"IDC Device-State changed = 0x%x.\0A\00", align 1
@MBA_IDC_AEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*, i32*)* @qla83xx_handle_8200_aen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla83xx_handle_8200_aen(%struct.TYPE_8__* %0, i32* %1) #0 {
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %3, align 8
  store i32* %1, i32** %4, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load %struct.qla_hw_data*, %struct.qla_hw_data** %21, align 8
  store %struct.qla_hw_data* %22, %struct.qla_hw_data** %5, align 8
  %23 = load i32, i32* @ql_dbg_async, align 4
  %24 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load i32, i32* %29, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 6
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ql_dbg(i32 %23, %struct.TYPE_8__* %24, i32 20587, i8* getelementptr inbounds ([100 x i8], [100 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %30, i32 %33, i32 %36)
  %38 = load i32, i32* @ql_dbg_async, align 4
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %40 = load i32*, i32** %4, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 3
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %4, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 7
  %45 = load i32, i32* %44, align 4
  %46 = load i32*, i32** %4, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  %48 = load i32, i32* %47, align 4
  %49 = load i32*, i32** %4, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 5
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ql_dbg(i32 %38, %struct.TYPE_8__* %39, i32 20588, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.1, i64 0, i64 0), i32 %42, i32 %45, i32 %48, i32 %51)
  %53 = load i32*, i32** %4, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @IDC_PEG_HALT_STATUS_CHANGE, align 4
  %57 = load i32, i32* @IDC_NIC_FW_REPORTED_FAILURE, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @IDC_HEARTBEAT_FAILURE, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %55, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %243

63:                                               ; preds = %2
  %64 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %65 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load i32, i32* @ql_log_warn, align 4
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %69 = call i32 (i32, %struct.TYPE_8__*, i32, i8*, ...) @ql_log(i32 %67, %struct.TYPE_8__* %68, i32 20576, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32*, i32** %4, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @IDC_PEG_HALT_STATUS_CHANGE, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %144

76:                                               ; preds = %63
  %77 = load i32*, i32** %4, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 255
  store i32 %80, i32* %6, align 4
  %81 = load i32*, i32** %4, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 2
  %83 = load i32, i32* %82, align 4
  %84 = and i32 %83, 65280
  %85 = ashr i32 %84, 8
  %86 = load i32*, i32** %4, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 6
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 8191
  %90 = shl i32 %89, 8
  %91 = or i32 %85, %90
  store i32 %91, i32* %7, align 4
  %92 = load i32*, i32** %4, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 6
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %94, 57344
  %96 = ashr i32 %95, 13
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* @ql_log_warn, align 4
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* %8, align 4
  %102 = call i32 (i32, %struct.TYPE_8__*, i32, i8*, ...) @ql_log(i32 %97, %struct.TYPE_8__* %98, i32 20577, i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.3, i64 0, i64 0), i32 %99, i32 %100, i32 %101)
  %103 = load i32, i32* @ql_log_warn, align 4
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %105 = load i32*, i32** %4, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 7
  %107 = load i32, i32* %106, align 4
  %108 = load i32*, i32** %4, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 3
  %110 = load i32, i32* %109, align 4
  %111 = call i32 (i32, %struct.TYPE_8__*, i32, i8*, ...) @ql_log(i32 %103, %struct.TYPE_8__* %104, i32 20578, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i32 %107, i32 %110)
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* @ERR_LEVEL_NON_FATAL, align 4
  %114 = icmp eq i32 %112, %113
  br i1 %114, label %115, label %119

115:                                              ; preds = %76
  %116 = load i32, i32* @ql_log_warn, align 4
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %118 = call i32 (i32, %struct.TYPE_8__*, i32, i8*, ...) @ql_log(i32 %116, %struct.TYPE_8__* %117, i32 20579, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0))
  br label %143

119:                                              ; preds = %76
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* @ERR_LEVEL_RECOVERABLE_FATAL, align 4
  %122 = icmp eq i32 %120, %121
  br i1 %122, label %123, label %130

123:                                              ; preds = %119
  %124 = load i32, i32* @ql_log_fatal, align 4
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %126 = call i32 (i32, %struct.TYPE_8__*, i32, i8*, ...) @ql_log(i32 %124, %struct.TYPE_8__* %125, i32 20580, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.6, i64 0, i64 0))
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %128 = load i32, i32* @QLA83XX_NIC_CORE_RESET, align 4
  %129 = call i32 @qla83xx_schedule_work(%struct.TYPE_8__* %127, i32 %128)
  br label %142

130:                                              ; preds = %119
  %131 = load i32, i32* %8, align 4
  %132 = load i32, i32* @ERR_LEVEL_UNRECOVERABLE_FATAL, align 4
  %133 = icmp eq i32 %131, %132
  br i1 %133, label %134, label %141

134:                                              ; preds = %130
  %135 = load i32, i32* @ql_log_fatal, align 4
  %136 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %137 = call i32 (i32, %struct.TYPE_8__*, i32, i8*, ...) @ql_log(i32 %135, %struct.TYPE_8__* %136, i32 20581, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.7, i64 0, i64 0))
  %138 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %139 = load i32, i32* @QLA83XX_NIC_CORE_UNRECOVERABLE, align 4
  %140 = call i32 @qla83xx_schedule_work(%struct.TYPE_8__* %138, i32 %139)
  br label %141

141:                                              ; preds = %134, %130
  br label %142

142:                                              ; preds = %141, %123
  br label %143

143:                                              ; preds = %142, %115
  br label %144

144:                                              ; preds = %143, %63
  %145 = load i32*, i32** %4, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @IDC_NIC_FW_REPORTED_FAILURE, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %228

151:                                              ; preds = %144
  %152 = load i32*, i32** %4, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 2
  %154 = load i32, i32* %153, align 4
  %155 = and i32 %154, 255
  store i32 %155, i32* %9, align 4
  %156 = load i32*, i32** %4, align 8
  %157 = getelementptr inbounds i32, i32* %156, i64 2
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, 256
  %160 = ashr i32 %159, 8
  store i32 %160, i32* %10, align 4
  %161 = load i32*, i32** %4, align 8
  %162 = getelementptr inbounds i32, i32* %161, i64 2
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %163, 512
  %165 = ashr i32 %164, 9
  store i32 %165, i32* %11, align 4
  %166 = load i32*, i32** %4, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 2
  %168 = load i32, i32* %167, align 4
  %169 = and i32 %168, 3072
  %170 = ashr i32 %169, 10
  store i32 %170, i32* %12, align 4
  %171 = load i32*, i32** %4, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 2
  %173 = load i32, i32* %172, align 4
  %174 = and i32 %173, 28672
  %175 = ashr i32 %174, 12
  store i32 %175, i32* %13, align 4
  %176 = load i32*, i32** %4, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 2
  %178 = load i32, i32* %177, align 4
  %179 = and i32 %178, 32768
  %180 = ashr i32 %179, 15
  store i32 %180, i32* %14, align 4
  %181 = load i32*, i32** %4, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 6
  %183 = load i32, i32* %182, align 4
  %184 = and i32 %183, 3
  store i32 %184, i32* %15, align 4
  %185 = load i32*, i32** %4, align 8
  %186 = getelementptr inbounds i32, i32* %185, i64 6
  %187 = load i32, i32* %186, align 4
  %188 = and i32 %187, 4
  %189 = ashr i32 %188, 2
  store i32 %189, i32* %16, align 4
  %190 = load i32*, i32** %4, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 6
  %192 = load i32, i32* %191, align 4
  %193 = and i32 %192, 8
  %194 = ashr i32 %193, 3
  store i32 %194, i32* %17, align 4
  %195 = load i32*, i32** %4, align 8
  %196 = getelementptr inbounds i32, i32* %195, i64 6
  %197 = load i32, i32* %196, align 4
  %198 = and i32 %197, 112
  %199 = ashr i32 %198, 4
  store i32 %199, i32* %18, align 4
  %200 = load i32*, i32** %4, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 6
  %202 = load i32, i32* %201, align 4
  %203 = and i32 %202, 28672
  %204 = ashr i32 %203, 12
  store i32 %204, i32* %19, align 4
  %205 = load i32, i32* @ql_log_warn, align 4
  %206 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %207 = load i32, i32* %9, align 4
  %208 = load i32, i32* %10, align 4
  %209 = load i32, i32* %11, align 4
  %210 = load i32, i32* %12, align 4
  %211 = call i32 (i32, %struct.TYPE_8__*, i32, i8*, ...) @ql_log(i32 %205, %struct.TYPE_8__* %206, i32 20582, i8* getelementptr inbounds ([124 x i8], [124 x i8]* @.str.8, i64 0, i64 0), i32 %207, i32 %208, i32 %209, i32 %210)
  %212 = load i32, i32* @ql_log_warn, align 4
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %214 = load i32, i32* %13, align 4
  %215 = load i32, i32* %14, align 4
  %216 = load i32, i32* %15, align 4
  %217 = load i32, i32* %16, align 4
  %218 = call i32 (i32, %struct.TYPE_8__*, i32, i8*, ...) @ql_log(i32 %212, %struct.TYPE_8__* %213, i32 20583, i8* getelementptr inbounds ([93 x i8], [93 x i8]* @.str.9, i64 0, i64 0), i32 %214, i32 %215, i32 %216, i32 %217)
  %219 = load i32, i32* @ql_log_warn, align 4
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %221 = load i32, i32* %17, align 4
  %222 = load i32, i32* %18, align 4
  %223 = load i32, i32* %19, align 4
  %224 = call i32 (i32, %struct.TYPE_8__*, i32, i8*, ...) @ql_log(i32 %219, %struct.TYPE_8__* %220, i32 20584, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.10, i64 0, i64 0), i32 %221, i32 %222, i32 %223)
  %225 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %226 = load i32, i32* @QLA83XX_NIC_CORE_RESET, align 4
  %227 = call i32 @qla83xx_schedule_work(%struct.TYPE_8__* %225, i32 %226)
  br label %228

228:                                              ; preds = %151, %144
  %229 = load i32*, i32** %4, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 1
  %231 = load i32, i32* %230, align 4
  %232 = load i32, i32* @IDC_HEARTBEAT_FAILURE, align 4
  %233 = and i32 %231, %232
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %235, label %242

235:                                              ; preds = %228
  %236 = load i32, i32* @ql_log_warn, align 4
  %237 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %238 = call i32 (i32, %struct.TYPE_8__*, i32, i8*, ...) @ql_log(i32 %236, %struct.TYPE_8__* %237, i32 20585, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.11, i64 0, i64 0))
  %239 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %240 = load i32, i32* @QLA83XX_NIC_CORE_RESET, align 4
  %241 = call i32 @qla83xx_schedule_work(%struct.TYPE_8__* %239, i32 %240)
  br label %242

242:                                              ; preds = %235, %228
  br label %243

243:                                              ; preds = %242, %2
  %244 = load i32*, i32** %4, align 8
  %245 = getelementptr inbounds i32, i32* %244, i64 1
  %246 = load i32, i32* %245, align 4
  %247 = load i32, i32* @IDC_DEVICE_STATE_CHANGE, align 4
  %248 = and i32 %246, %247
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %267

250:                                              ; preds = %243
  %251 = load i32, i32* @ql_log_info, align 4
  %252 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %253 = load i32*, i32** %4, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 4
  %255 = load i32, i32* %254, align 4
  %256 = call i32 (i32, %struct.TYPE_8__*, i32, i8*, ...) @ql_log(i32 %251, %struct.TYPE_8__* %252, i32 20586, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i32 %255)
  %257 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %258 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 1
  %260 = load i64, i64* %259, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %263

262:                                              ; preds = %250
  br label %267

263:                                              ; preds = %250
  %264 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %265 = load i32, i32* @MBA_IDC_AEN, align 4
  %266 = call i32 @qla83xx_schedule_work(%struct.TYPE_8__* %264, i32 %265)
  br label %267

267:                                              ; preds = %262, %263, %243
  ret void
}

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_8__*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_8__*, i32, i8*, ...) #1

declare dso_local i32 @qla83xx_schedule_work(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
