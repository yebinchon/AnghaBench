; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla24xx_proc_fcp_prio_cfg_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_bsg.c_qla24xx_proc_fcp_prio_cfg_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bsg_job = type { %struct.TYPE_19__, %struct.TYPE_18__, %struct.fc_bsg_reply*, %struct.fc_bsg_request* }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32 }
%struct.fc_bsg_reply = type { i32, i32 }
%struct.fc_bsg_request = type { %struct.TYPE_17__ }
%struct.TYPE_17__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32* }
%struct.Scsi_Host = type { i32 }
%struct.TYPE_21__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_20__, %struct.TYPE_22__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_22__ = type { i32 }
%struct.qla_fcp_prio_cfg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FCP_PRIO_ATTR_ENABLE = common dso_local global i32 0, align 4
@DID_OK = common dso_local global i8* null, align 8
@DID_ERROR = common dso_local global i32 0, align 4
@FCP_PRIO_CFG_SIZE = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"Unable to allocate memory for fcp prio config data (%x).\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bsg_job*)* @qla24xx_proc_fcp_prio_cfg_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla24xx_proc_fcp_prio_cfg_cmd(%struct.bsg_job* %0) #0 {
  %2 = alloca %struct.bsg_job*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca %struct.fc_bsg_request*, align 8
  %5 = alloca %struct.fc_bsg_reply*, align 8
  %6 = alloca %struct.TYPE_21__*, align 8
  %7 = alloca %struct.qla_hw_data*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bsg_job* %0, %struct.bsg_job** %2, align 8
  %11 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %12 = call %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job* %11)
  store %struct.Scsi_Host* %12, %struct.Scsi_Host** %3, align 8
  %13 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %14 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %13, i32 0, i32 3
  %15 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %14, align 8
  store %struct.fc_bsg_request* %15, %struct.fc_bsg_request** %4, align 8
  %16 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %17 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %16, i32 0, i32 2
  %18 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %17, align 8
  store %struct.fc_bsg_reply* %18, %struct.fc_bsg_reply** %5, align 8
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %20 = call %struct.TYPE_21__* @shost_priv(%struct.Scsi_Host* %19)
  store %struct.TYPE_21__* %20, %struct.TYPE_21__** %6, align 8
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %23 = load %struct.qla_hw_data*, %struct.qla_hw_data** %22, align 8
  store %struct.qla_hw_data* %23, %struct.qla_hw_data** %7, align 8
  store i32 0, i32* %8, align 4
  %24 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %25 = call i64 @IS_QLA24XX_TYPE(%struct.qla_hw_data* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %38, label %27

27:                                               ; preds = %1
  %28 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %29 = call i64 @IS_QLA25XX(%struct.qla_hw_data* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %38, label %31

31:                                               ; preds = %27
  %32 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %33 = call i64 @IS_P3P_TYPE(%struct.qla_hw_data* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %38, label %35

35:                                               ; preds = %31
  %36 = load i32, i32* @EINVAL, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %8, align 4
  br label %275

38:                                               ; preds = %31, %27, %1
  %39 = load %struct.fc_bsg_request*, %struct.fc_bsg_request** %4, align 8
  %40 = getelementptr inbounds %struct.fc_bsg_request, %struct.fc_bsg_request* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 1
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %10, align 4
  %46 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %47 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %46, i32 0, i32 1
  %48 = load %struct.TYPE_22__*, %struct.TYPE_22__** %47, align 8
  %49 = icmp ne %struct.TYPE_22__* %48, null
  br i1 %49, label %56, label %50

50:                                               ; preds = %38
  %51 = load i32, i32* %10, align 4
  %52 = icmp ne i32 %51, 128
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %8, align 4
  br label %275

56:                                               ; preds = %50, %38
  %57 = load i32, i32* %10, align 4
  switch i32 %57, label %271 [
    i32 131, label %58
    i32 130, label %90
    i32 129, label %127
    i32 128, label %165
  ]

58:                                               ; preds = %56
  %59 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %60 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %58
  %65 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %66 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  %68 = load i32, i32* @FCP_PRIO_ATTR_ENABLE, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %71 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %70, i32 0, i32 1
  %72 = load %struct.TYPE_22__*, %struct.TYPE_22__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = and i32 %74, %69
  store i32 %75, i32* %73, align 4
  %76 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %77 = call i32 @qla24xx_update_all_fcp_prio(%struct.TYPE_21__* %76)
  %78 = load i8*, i8** @DID_OK, align 8
  %79 = ptrtoint i8* %78 to i32
  %80 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %81 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 4
  br label %89

82:                                               ; preds = %58
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* @DID_ERROR, align 4
  %86 = shl i32 %85, 16
  %87 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %88 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %87, i32 0, i32 0
  store i32 %86, i32* %88, align 4
  br label %275

89:                                               ; preds = %64
  br label %274

90:                                               ; preds = %56
  %91 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %92 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %126, label %96

96:                                               ; preds = %90
  %97 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %98 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %97, i32 0, i32 1
  %99 = load %struct.TYPE_22__*, %struct.TYPE_22__** %98, align 8
  %100 = icmp ne %struct.TYPE_22__* %99, null
  br i1 %100, label %101, label %118

101:                                              ; preds = %96
  %102 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %103 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %103, i32 0, i32 0
  store i32 1, i32* %104, align 8
  %105 = load i32, i32* @FCP_PRIO_ATTR_ENABLE, align 4
  %106 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %107 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %106, i32 0, i32 1
  %108 = load %struct.TYPE_22__*, %struct.TYPE_22__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %105
  store i32 %111, i32* %109, align 4
  %112 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %113 = call i32 @qla24xx_update_all_fcp_prio(%struct.TYPE_21__* %112)
  %114 = load i8*, i8** @DID_OK, align 8
  %115 = ptrtoint i8* %114 to i32
  %116 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %117 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %116, i32 0, i32 0
  store i32 %115, i32* %117, align 4
  br label %125

118:                                              ; preds = %96
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %8, align 4
  %121 = load i32, i32* @DID_ERROR, align 4
  %122 = shl i32 %121, 16
  %123 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %124 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %123, i32 0, i32 0
  store i32 %122, i32* %124, align 4
  br label %275

125:                                              ; preds = %101
  br label %126

126:                                              ; preds = %125, %90
  br label %274

127:                                              ; preds = %56
  %128 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %129 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %9, align 4
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %127
  %135 = load i32, i32* %9, align 4
  %136 = load i32, i32* @FCP_PRIO_CFG_SIZE, align 4
  %137 = icmp sgt i32 %135, %136
  br i1 %137, label %138, label %145

138:                                              ; preds = %134, %127
  %139 = load i32, i32* @EINVAL, align 4
  %140 = sub nsw i32 0, %139
  store i32 %140, i32* %8, align 4
  %141 = load i32, i32* @DID_ERROR, align 4
  %142 = shl i32 %141, 16
  %143 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %144 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 4
  br label %275

145:                                              ; preds = %134
  %146 = load i8*, i8** @DID_OK, align 8
  %147 = ptrtoint i8* %146 to i32
  %148 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %149 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %148, i32 0, i32 0
  store i32 %147, i32* %149, align 4
  %150 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %151 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %155 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %159 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %158, i32 0, i32 1
  %160 = load %struct.TYPE_22__*, %struct.TYPE_22__** %159, align 8
  %161 = load i32, i32* %9, align 4
  %162 = call i32 @sg_copy_from_buffer(i32 %153, i32 %157, %struct.TYPE_22__* %160, i32 %161)
  %163 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %164 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %163, i32 0, i32 1
  store i32 %162, i32* %164, align 4
  br label %274

165:                                              ; preds = %56
  %166 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %167 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %166, i32 0, i32 0
  %168 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  store i32 %169, i32* %9, align 4
  %170 = load i32, i32* %9, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %176

172:                                              ; preds = %165
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* @FCP_PRIO_CFG_SIZE, align 4
  %175 = icmp sgt i32 %173, %174
  br i1 %175, label %176, label %183

176:                                              ; preds = %172, %165
  %177 = load i32, i32* @DID_ERROR, align 4
  %178 = shl i32 %177, 16
  %179 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %180 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %179, i32 0, i32 0
  store i32 %178, i32* %180, align 4
  %181 = load i32, i32* @EINVAL, align 4
  %182 = sub nsw i32 0, %181
  store i32 %182, i32* %8, align 4
  br label %275

183:                                              ; preds = %172
  %184 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %185 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %184, i32 0, i32 1
  %186 = load %struct.TYPE_22__*, %struct.TYPE_22__** %185, align 8
  %187 = icmp ne %struct.TYPE_22__* %186, null
  br i1 %187, label %209, label %188

188:                                              ; preds = %183
  %189 = load i32, i32* @FCP_PRIO_CFG_SIZE, align 4
  %190 = call %struct.TYPE_22__* @vmalloc(i32 %189)
  %191 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %192 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %191, i32 0, i32 1
  store %struct.TYPE_22__* %190, %struct.TYPE_22__** %192, align 8
  %193 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %194 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %193, i32 0, i32 1
  %195 = load %struct.TYPE_22__*, %struct.TYPE_22__** %194, align 8
  %196 = icmp ne %struct.TYPE_22__* %195, null
  br i1 %196, label %208, label %197

197:                                              ; preds = %188
  %198 = load i32, i32* @ql_log_warn, align 4
  %199 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %200 = load i32, i32* @FCP_PRIO_CFG_SIZE, align 4
  %201 = call i32 @ql_log(i32 %198, %struct.TYPE_21__* %199, i32 28752, i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %200)
  %202 = load i32, i32* @DID_ERROR, align 4
  %203 = shl i32 %202, 16
  %204 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %205 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %204, i32 0, i32 0
  store i32 %203, i32* %205, align 4
  %206 = load i32, i32* @ENOMEM, align 4
  %207 = sub nsw i32 0, %206
  store i32 %207, i32* %8, align 4
  br label %275

208:                                              ; preds = %188
  br label %209

209:                                              ; preds = %208, %183
  %210 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %211 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %210, i32 0, i32 1
  %212 = load %struct.TYPE_22__*, %struct.TYPE_22__** %211, align 8
  %213 = load i32, i32* @FCP_PRIO_CFG_SIZE, align 4
  %214 = call i32 @memset(%struct.TYPE_22__* %212, i32 0, i32 %213)
  %215 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %216 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %215, i32 0, i32 0
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %220 = getelementptr inbounds %struct.bsg_job, %struct.bsg_job* %219, i32 0, i32 0
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %224 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %223, i32 0, i32 1
  %225 = load %struct.TYPE_22__*, %struct.TYPE_22__** %224, align 8
  %226 = load i32, i32* @FCP_PRIO_CFG_SIZE, align 4
  %227 = call i32 @sg_copy_to_buffer(i32 %218, i32 %222, %struct.TYPE_22__* %225, i32 %226)
  %228 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %229 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %230 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %229, i32 0, i32 1
  %231 = load %struct.TYPE_22__*, %struct.TYPE_22__** %230, align 8
  %232 = bitcast %struct.TYPE_22__* %231 to %struct.qla_fcp_prio_cfg*
  %233 = call i32 @qla24xx_fcp_prio_cfg_valid(%struct.TYPE_21__* %228, %struct.qla_fcp_prio_cfg* %232, i32 1)
  %234 = icmp ne i32 %233, 0
  br i1 %234, label %248, label %235

235:                                              ; preds = %209
  %236 = load i32, i32* @DID_ERROR, align 4
  %237 = shl i32 %236, 16
  %238 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %239 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %238, i32 0, i32 0
  store i32 %237, i32* %239, align 4
  %240 = load i32, i32* @EINVAL, align 4
  %241 = sub nsw i32 0, %240
  store i32 %241, i32* %8, align 4
  %242 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %243 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %242, i32 0, i32 1
  %244 = load %struct.TYPE_22__*, %struct.TYPE_22__** %243, align 8
  %245 = call i32 @vfree(%struct.TYPE_22__* %244)
  %246 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %247 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %246, i32 0, i32 1
  store %struct.TYPE_22__* null, %struct.TYPE_22__** %247, align 8
  br label %275

248:                                              ; preds = %209
  %249 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %250 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %249, i32 0, i32 0
  %251 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %250, i32 0, i32 0
  store i32 0, i32* %251, align 8
  %252 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %253 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %252, i32 0, i32 1
  %254 = load %struct.TYPE_22__*, %struct.TYPE_22__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load i32, i32* @FCP_PRIO_ATTR_ENABLE, align 4
  %258 = and i32 %256, %257
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %264

260:                                              ; preds = %248
  %261 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %262 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %261, i32 0, i32 0
  %263 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %262, i32 0, i32 0
  store i32 1, i32* %263, align 8
  br label %264

264:                                              ; preds = %260, %248
  %265 = load %struct.TYPE_21__*, %struct.TYPE_21__** %6, align 8
  %266 = call i32 @qla24xx_update_all_fcp_prio(%struct.TYPE_21__* %265)
  %267 = load i8*, i8** @DID_OK, align 8
  %268 = ptrtoint i8* %267 to i32
  %269 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %270 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %269, i32 0, i32 0
  store i32 %268, i32* %270, align 4
  br label %274

271:                                              ; preds = %56
  %272 = load i32, i32* @EINVAL, align 4
  %273 = sub nsw i32 0, %272
  store i32 %273, i32* %8, align 4
  br label %274

274:                                              ; preds = %271, %264, %145, %126, %89
  br label %275

275:                                              ; preds = %274, %235, %197, %176, %138, %118, %82, %53, %35
  %276 = load i32, i32* %8, align 4
  %277 = icmp ne i32 %276, 0
  br i1 %277, label %287, label %278

278:                                              ; preds = %275
  %279 = load %struct.bsg_job*, %struct.bsg_job** %2, align 8
  %280 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %281 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %280, i32 0, i32 0
  %282 = load i32, i32* %281, align 4
  %283 = load %struct.fc_bsg_reply*, %struct.fc_bsg_reply** %5, align 8
  %284 = getelementptr inbounds %struct.fc_bsg_reply, %struct.fc_bsg_reply* %283, i32 0, i32 1
  %285 = load i32, i32* %284, align 4
  %286 = call i32 @bsg_job_done(%struct.bsg_job* %279, i32 %282, i32 %285)
  br label %287

287:                                              ; preds = %278, %275
  %288 = load i32, i32* %8, align 4
  ret i32 %288
}

declare dso_local %struct.Scsi_Host* @fc_bsg_to_shost(%struct.bsg_job*) #1

declare dso_local %struct.TYPE_21__* @shost_priv(%struct.Scsi_Host*) #1

declare dso_local i64 @IS_QLA24XX_TYPE(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA25XX(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_P3P_TYPE(%struct.qla_hw_data*) #1

declare dso_local i32 @qla24xx_update_all_fcp_prio(%struct.TYPE_21__*) #1

declare dso_local i32 @sg_copy_from_buffer(i32, i32, %struct.TYPE_22__*, i32) #1

declare dso_local %struct.TYPE_22__* @vmalloc(i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_21__*, i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @sg_copy_to_buffer(i32, i32, %struct.TYPE_22__*, i32) #1

declare dso_local i32 @qla24xx_fcp_prio_cfg_valid(%struct.TYPE_21__*, %struct.qla_fcp_prio_cfg*, i32) #1

declare dso_local i32 @vfree(%struct.TYPE_22__*) #1

declare dso_local i32 @bsg_job_done(%struct.bsg_job*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
