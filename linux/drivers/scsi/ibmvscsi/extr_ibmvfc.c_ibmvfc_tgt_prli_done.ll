; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tgt_prli_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ibmvscsi/extr_ibmvfc.c_ibmvfc_tgt_prli_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.ibmvfc_event = type { %struct.TYPE_5__*, %struct.ibmvfc_host*, %struct.ibmvfc_target* }
%struct.TYPE_5__ = type { %struct.ibmvfc_process_login }
%struct.ibmvfc_process_login = type { i32, i32, %struct.TYPE_6__, %struct.ibmvfc_prli_svc_parms }
%struct.TYPE_6__ = type { i32 }
%struct.ibmvfc_prli_svc_parms = type { i32, i32, i32 }
%struct.ibmvfc_host = type { i32, i32 }
%struct.ibmvfc_target = type { i32, i32, i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 }

@IBMVFC_DEFAULT_LOG_LEVEL = common dso_local global i32 0, align 4
@IBMVFC_TGT_ACTION_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Process Login succeeded: %X %02X %04X\0A\00", align 1
@IBMVFC_SCSI_FCP_TYPE = common dso_local global i32 0, align 4
@prli_rsp = common dso_local global %struct.TYPE_8__* null, align 8
@IBMVFC_PRLI_EST_IMG_PAIR = common dso_local global i32 0, align 4
@IBMVFC_PRLI_TARGET_FUNC = common dso_local global i32 0, align 4
@FC_PORT_ROLE_FCP_TARGET = common dso_local global i32 0, align 4
@IBMVFC_PRLI_INITIATOR_FUNC = common dso_local global i32 0, align 4
@FC_PORT_ROLE_FCP_INITIATOR = common dso_local global i32 0, align 4
@IBMVFC_TGT_ACTION_DEL_RPORT = common dso_local global i32 0, align 4
@ibmvfc_tgt_send_prli = common dso_local global i32 0, align 4
@IBMVFC_VIOS_FAILURE = common dso_local global i32 0, align 4
@IBMVFC_PLOGI_REQUIRED = common dso_local global i32 0, align 4
@ibmvfc_tgt_send_plogi = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [44 x i8] c"Process Login failed: %s (%x:%x) rc=0x%02X\0A\00", align 1
@ibmvfc_release_tgt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ibmvfc_event*)* @ibmvfc_tgt_prli_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ibmvfc_tgt_prli_done(%struct.ibmvfc_event* %0) #0 {
  %2 = alloca %struct.ibmvfc_event*, align 8
  %3 = alloca %struct.ibmvfc_target*, align 8
  %4 = alloca %struct.ibmvfc_host*, align 8
  %5 = alloca %struct.ibmvfc_process_login*, align 8
  %6 = alloca %struct.ibmvfc_prli_svc_parms*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ibmvfc_event* %0, %struct.ibmvfc_event** %2, align 8
  %10 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %11 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %10, i32 0, i32 2
  %12 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %11, align 8
  store %struct.ibmvfc_target* %12, %struct.ibmvfc_target** %3, align 8
  %13 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %14 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %13, i32 0, i32 1
  %15 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %14, align 8
  store %struct.ibmvfc_host* %15, %struct.ibmvfc_host** %4, align 8
  %16 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %17 = getelementptr inbounds %struct.ibmvfc_event, %struct.ibmvfc_event* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  store %struct.ibmvfc_process_login* %19, %struct.ibmvfc_process_login** %5, align 8
  %20 = load %struct.ibmvfc_process_login*, %struct.ibmvfc_process_login** %5, align 8
  %21 = getelementptr inbounds %struct.ibmvfc_process_login, %struct.ibmvfc_process_login* %20, i32 0, i32 3
  store %struct.ibmvfc_prli_svc_parms* %21, %struct.ibmvfc_prli_svc_parms** %6, align 8
  %22 = load %struct.ibmvfc_process_login*, %struct.ibmvfc_process_login** %5, align 8
  %23 = getelementptr inbounds %struct.ibmvfc_process_login, %struct.ibmvfc_process_login* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @be16_to_cpu(i32 %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* @IBMVFC_DEFAULT_LOG_LEVEL, align 4
  store i32 %27, i32* %9, align 4
  %28 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %29 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %33 = load i32, i32* @IBMVFC_TGT_ACTION_NONE, align 4
  %34 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %32, i32 %33)
  %35 = load i32, i32* %7, align 4
  switch i32 %35, label %146 [
    i32 128, label %36
    i32 130, label %140
    i32 131, label %141
    i32 129, label %145
  ]

36:                                               ; preds = %1
  %37 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %38 = load %struct.ibmvfc_prli_svc_parms*, %struct.ibmvfc_prli_svc_parms** %6, align 8
  %39 = getelementptr inbounds %struct.ibmvfc_prli_svc_parms, %struct.ibmvfc_prli_svc_parms* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ibmvfc_prli_svc_parms*, %struct.ibmvfc_prli_svc_parms** %6, align 8
  %42 = getelementptr inbounds %struct.ibmvfc_prli_svc_parms, %struct.ibmvfc_prli_svc_parms* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ibmvfc_prli_svc_parms*, %struct.ibmvfc_prli_svc_parms** %6, align 8
  %45 = getelementptr inbounds %struct.ibmvfc_prli_svc_parms, %struct.ibmvfc_prli_svc_parms* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @tgt_dbg(%struct.ibmvfc_target* %37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %40, i32 %43, i32 %46)
  %48 = load %struct.ibmvfc_prli_svc_parms*, %struct.ibmvfc_prli_svc_parms** %6, align 8
  %49 = getelementptr inbounds %struct.ibmvfc_prli_svc_parms, %struct.ibmvfc_prli_svc_parms* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @IBMVFC_SCSI_FCP_TYPE, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %135

53:                                               ; preds = %36
  %54 = load %struct.ibmvfc_prli_svc_parms*, %struct.ibmvfc_prli_svc_parms** %6, align 8
  %55 = getelementptr inbounds %struct.ibmvfc_prli_svc_parms, %struct.ibmvfc_prli_svc_parms* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @be16_to_cpu(i32 %56)
  %58 = call i32 @ibmvfc_get_prli_rsp(i32 %57)
  store i32 %58, i32* %8, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** @prli_rsp, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %117

66:                                               ; preds = %53
  %67 = load %struct.ibmvfc_prli_svc_parms*, %struct.ibmvfc_prli_svc_parms** %6, align 8
  %68 = getelementptr inbounds %struct.ibmvfc_prli_svc_parms, %struct.ibmvfc_prli_svc_parms* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @be16_to_cpu(i32 %69)
  %71 = load i32, i32* @IBMVFC_PRLI_EST_IMG_PAIR, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %112

74:                                               ; preds = %66
  %75 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %76 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %75, i32 0, i32 4
  store i32 0, i32* %76, align 4
  %77 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %78 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  store i32 0, i32* %79, align 4
  %80 = load %struct.ibmvfc_prli_svc_parms*, %struct.ibmvfc_prli_svc_parms** %6, align 8
  %81 = getelementptr inbounds %struct.ibmvfc_prli_svc_parms, %struct.ibmvfc_prli_svc_parms* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @be32_to_cpu(i32 %82)
  %84 = load i32, i32* @IBMVFC_PRLI_TARGET_FUNC, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %74
  %88 = load i32, i32* @FC_PORT_ROLE_FCP_TARGET, align 4
  %89 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %90 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = or i32 %92, %88
  store i32 %93, i32* %91, align 4
  br label %94

94:                                               ; preds = %87, %74
  %95 = load %struct.ibmvfc_prli_svc_parms*, %struct.ibmvfc_prli_svc_parms** %6, align 8
  %96 = getelementptr inbounds %struct.ibmvfc_prli_svc_parms, %struct.ibmvfc_prli_svc_parms* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @be32_to_cpu(i32 %97)
  %99 = load i32, i32* @IBMVFC_PRLI_INITIATOR_FUNC, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %109

102:                                              ; preds = %94
  %103 = load i32, i32* @FC_PORT_ROLE_FCP_INITIATOR, align 4
  %104 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %105 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %103
  store i32 %108, i32* %106, align 4
  br label %109

109:                                              ; preds = %102, %94
  %110 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %111 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %110, i32 0, i32 0
  store i32 1, i32* %111, align 4
  br label %116

112:                                              ; preds = %66
  %113 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %114 = load i32, i32* @IBMVFC_TGT_ACTION_DEL_RPORT, align 4
  %115 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %113, i32 %114)
  br label %116

116:                                              ; preds = %112, %109
  br label %134

117:                                              ; preds = %53
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** @prli_rsp, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i64 %120
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %117
  %126 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %127 = load i32, i32* @ibmvfc_tgt_send_prli, align 4
  %128 = call i32 @ibmvfc_retry_tgt_init(%struct.ibmvfc_target* %126, i32 %127)
  br label %133

129:                                              ; preds = %117
  %130 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %131 = load i32, i32* @IBMVFC_TGT_ACTION_DEL_RPORT, align 4
  %132 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %130, i32 %131)
  br label %133

133:                                              ; preds = %129, %125
  br label %134

134:                                              ; preds = %133, %116
  br label %139

135:                                              ; preds = %36
  %136 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %137 = load i32, i32* @IBMVFC_TGT_ACTION_DEL_RPORT, align 4
  %138 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %136, i32 %137)
  br label %139

139:                                              ; preds = %135, %134
  br label %223

140:                                              ; preds = %1
  br label %223

141:                                              ; preds = %1
  %142 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %143 = load i32, i32* @ibmvfc_tgt_send_prli, align 4
  %144 = call i32 @ibmvfc_retry_tgt_init(%struct.ibmvfc_target* %142, i32 %143)
  br label %223

145:                                              ; preds = %1
  br label %146

146:                                              ; preds = %1, %145
  %147 = load %struct.ibmvfc_process_login*, %struct.ibmvfc_process_login** %5, align 8
  %148 = getelementptr inbounds %struct.ibmvfc_process_login, %struct.ibmvfc_process_login* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = call i32 @be16_to_cpu(i32 %149)
  %151 = load i32, i32* @IBMVFC_VIOS_FAILURE, align 4
  %152 = and i32 %150, %151
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %167

154:                                              ; preds = %146
  %155 = load %struct.ibmvfc_process_login*, %struct.ibmvfc_process_login** %5, align 8
  %156 = getelementptr inbounds %struct.ibmvfc_process_login, %struct.ibmvfc_process_login* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @be16_to_cpu(i32 %157)
  %159 = load i32, i32* @IBMVFC_PLOGI_REQUIRED, align 4
  %160 = icmp eq i32 %158, %159
  br i1 %160, label %161, label %167

161:                                              ; preds = %154
  %162 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %163 = load i32, i32* @ibmvfc_tgt_send_plogi, align 4
  %164 = call i32 @ibmvfc_retry_tgt_init(%struct.ibmvfc_target* %162, i32 %163)
  %165 = load i32, i32* %9, align 4
  %166 = add nsw i32 %165, %164
  store i32 %166, i32* %9, align 4
  br label %201

167:                                              ; preds = %154, %146
  %168 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %169 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %178

172:                                              ; preds = %167
  %173 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %174 = load i32, i32* @ibmvfc_tgt_send_plogi, align 4
  %175 = call i32 @ibmvfc_retry_tgt_init(%struct.ibmvfc_target* %173, i32 %174)
  %176 = load i32, i32* %9, align 4
  %177 = add nsw i32 %176, %175
  store i32 %177, i32* %9, align 4
  br label %200

178:                                              ; preds = %167
  %179 = load %struct.ibmvfc_process_login*, %struct.ibmvfc_process_login** %5, align 8
  %180 = getelementptr inbounds %struct.ibmvfc_process_login, %struct.ibmvfc_process_login* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @be16_to_cpu(i32 %181)
  %183 = load %struct.ibmvfc_process_login*, %struct.ibmvfc_process_login** %5, align 8
  %184 = getelementptr inbounds %struct.ibmvfc_process_login, %struct.ibmvfc_process_login* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = call i32 @be16_to_cpu(i32 %185)
  %187 = call i32 @ibmvfc_retry_cmd(i32 %182, i32 %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %189, label %195

189:                                              ; preds = %178
  %190 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %191 = load i32, i32* @ibmvfc_tgt_send_prli, align 4
  %192 = call i32 @ibmvfc_retry_tgt_init(%struct.ibmvfc_target* %190, i32 %191)
  %193 = load i32, i32* %9, align 4
  %194 = add nsw i32 %193, %192
  store i32 %194, i32* %9, align 4
  br label %199

195:                                              ; preds = %178
  %196 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %197 = load i32, i32* @IBMVFC_TGT_ACTION_DEL_RPORT, align 4
  %198 = call i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target* %196, i32 %197)
  br label %199

199:                                              ; preds = %195, %189
  br label %200

200:                                              ; preds = %199, %172
  br label %201

201:                                              ; preds = %200, %161
  %202 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %203 = load i32, i32* %9, align 4
  %204 = load %struct.ibmvfc_process_login*, %struct.ibmvfc_process_login** %5, align 8
  %205 = getelementptr inbounds %struct.ibmvfc_process_login, %struct.ibmvfc_process_login* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = call i32 @be16_to_cpu(i32 %206)
  %208 = load %struct.ibmvfc_process_login*, %struct.ibmvfc_process_login** %5, align 8
  %209 = getelementptr inbounds %struct.ibmvfc_process_login, %struct.ibmvfc_process_login* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @be16_to_cpu(i32 %210)
  %212 = call i32 @ibmvfc_get_cmd_error(i32 %207, i32 %211)
  %213 = load %struct.ibmvfc_process_login*, %struct.ibmvfc_process_login** %5, align 8
  %214 = getelementptr inbounds %struct.ibmvfc_process_login, %struct.ibmvfc_process_login* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @be16_to_cpu(i32 %215)
  %217 = load %struct.ibmvfc_process_login*, %struct.ibmvfc_process_login** %5, align 8
  %218 = getelementptr inbounds %struct.ibmvfc_process_login, %struct.ibmvfc_process_login* %217, i32 0, i32 0
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @be16_to_cpu(i32 %219)
  %221 = load i32, i32* %7, align 4
  %222 = call i32 @tgt_log(%struct.ibmvfc_target* %202, i32 %203, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.1, i64 0, i64 0), i32 %212, i32 %216, i32 %220, i32 %221)
  br label %223

223:                                              ; preds = %201, %141, %140, %139
  %224 = load %struct.ibmvfc_target*, %struct.ibmvfc_target** %3, align 8
  %225 = getelementptr inbounds %struct.ibmvfc_target, %struct.ibmvfc_target* %224, i32 0, i32 1
  %226 = load i32, i32* @ibmvfc_release_tgt, align 4
  %227 = call i32 @kref_put(i32* %225, i32 %226)
  %228 = load %struct.ibmvfc_event*, %struct.ibmvfc_event** %2, align 8
  %229 = call i32 @ibmvfc_free_event(%struct.ibmvfc_event* %228)
  %230 = load %struct.ibmvfc_host*, %struct.ibmvfc_host** %4, align 8
  %231 = getelementptr inbounds %struct.ibmvfc_host, %struct.ibmvfc_host* %230, i32 0, i32 0
  %232 = call i32 @wake_up(i32* %231)
  ret void
}

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @ibmvfc_set_tgt_action(%struct.ibmvfc_target*, i32) #1

declare dso_local i32 @tgt_dbg(%struct.ibmvfc_target*, i8*, i32, i32, i32) #1

declare dso_local i32 @ibmvfc_get_prli_rsp(i32) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @ibmvfc_retry_tgt_init(%struct.ibmvfc_target*, i32) #1

declare dso_local i32 @ibmvfc_retry_cmd(i32, i32) #1

declare dso_local i32 @tgt_log(%struct.ibmvfc_target*, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @ibmvfc_get_cmd_error(i32, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

declare dso_local i32 @ibmvfc_free_event(%struct.ibmvfc_event*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
