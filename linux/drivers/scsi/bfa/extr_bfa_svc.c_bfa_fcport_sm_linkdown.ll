; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_sm_linkdown.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_sm_linkdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcport_s = type { %struct.TYPE_19__*, i32, %struct.TYPE_18__, %struct.TYPE_17__, i32, %struct.TYPE_12__ }
%struct.TYPE_19__ = type { i32, i32, i64 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { %struct.bfi_fcport_event_s* }
%struct.bfi_fcport_event_s = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.bfad_s = type { i32 }

@BFA_STRING_32 = common dso_local global i32 0, align 4
@bfa_fcport_sm_linkup = common dso_local global i32 0, align 4
@BFA_PL_MID_HAL = common dso_local global i32 0, align 4
@BFA_PL_EID_PORT_ST_CHANGE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"Port Linkup\00", align 1
@BFA_PL_EID_FIP_FCF_DISC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"FIP FCF Discovery Failed\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"FIP FCF Discovered\00", align 1
@BFA_PORT_LINKUP = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@bfa_log_level = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [28 x i8] c"Base port online: WWN = %s\0A\00", align 1
@BFA_PORT_AEN_ONLINE = common dso_local global i32 0, align 4
@BFA_QOS_ONLINE = common dso_local global i32 0, align 4
@BFA_PORT_AEN_QOS_NEG = common dso_local global i32 0, align 4
@bfa_fcport_sm_disabling = common dso_local global i32 0, align 4
@bfa_fcport_sm_disabling_qwait = common dso_local global i32 0, align 4
@BFA_PL_EID_PORT_DISABLE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [13 x i8] c"Port Disable\00", align 1
@.str.5 = private unnamed_addr constant [30 x i8] c"Base port disabled: WWN = %s\0A\00", align 1
@BFA_PORT_AEN_DISABLE = common dso_local global i32 0, align 4
@bfa_fcport_sm_stopped = common dso_local global i32 0, align 4
@bfa_fcport_sm_iocdown = common dso_local global i32 0, align 4
@BFA_PORT_AEN_DISCONNECT = common dso_local global i32 0, align 4
@bfa_fcport_sm_faa_misconfig = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcport_s*, i32)* @bfa_fcport_sm_linkdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcport_sm_linkdown(%struct.bfa_fcport_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcport_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfi_fcport_event_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bfad_s*, align 8
  store %struct.bfa_fcport_s* %0, %struct.bfa_fcport_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %10 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %9, i32 0, i32 5
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load %struct.bfi_fcport_event_s*, %struct.bfi_fcport_event_s** %12, align 8
  store %struct.bfi_fcport_event_s* %13, %struct.bfi_fcport_event_s** %5, align 8
  %14 = load i32, i32* @BFA_STRING_32, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %6, align 8
  %17 = alloca i8, i64 %15, align 16
  store i64 %15, i64* %7, align 8
  %18 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %19 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %18, i32 0, i32 0
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = inttoptr i64 %22 to %struct.bfad_s*
  store %struct.bfad_s* %23, %struct.bfad_s** %8, align 8
  %24 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %25 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %24, i32 0, i32 0
  %26 = load %struct.TYPE_19__*, %struct.TYPE_19__** %25, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @bfa_trc(%struct.TYPE_19__* %26, i32 %27)
  %29 = load i32, i32* %4, align 4
  switch i32 %29, label %191 [
    i32 129, label %30
    i32 130, label %140
    i32 133, label %141
    i32 134, label %142
    i32 128, label %174
    i32 131, label %178
    i32 132, label %182
  ]

30:                                               ; preds = %2
  %31 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %32 = call i32 @bfa_fcport_update_linkinfo(%struct.bfa_fcport_s* %31)
  %33 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %34 = load i32, i32* @bfa_fcport_sm_linkup, align 4
  %35 = call i32 @bfa_sm_set_state(%struct.bfa_fcport_s* %33, i32 %34)
  %36 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %37 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %36, i32 0, i32 4
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  %40 = xor i1 %39, true
  %41 = zext i1 %40 to i32
  %42 = call i32 @WARN_ON(i32 %41)
  %43 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %44 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %43, i32 0, i32 0
  %45 = load %struct.TYPE_19__*, %struct.TYPE_19__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @BFA_PL_MID_HAL, align 4
  %49 = load i32, i32* @BFA_PL_EID_PORT_ST_CHANGE, align 4
  %50 = call i32 @bfa_plog_str(i32 %47, i32 %48, i32 %49, i32 0, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %51 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %52 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %51, i32 0, i32 0
  %53 = load %struct.TYPE_19__*, %struct.TYPE_19__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %53, i32 0, i32 1
  %55 = call i32 @bfa_ioc_get_fcmode(i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %107, label %57

57:                                               ; preds = %30
  %58 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %59 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %58, i32 0, i32 0
  %60 = load %struct.TYPE_19__*, %struct.TYPE_19__** %59, align 8
  %61 = load %struct.bfi_fcport_event_s*, %struct.bfi_fcport_event_s** %5, align 8
  %62 = getelementptr inbounds %struct.bfi_fcport_event_s, %struct.bfi_fcport_event_s* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @bfa_trc(%struct.TYPE_19__* %60, i32 %67)
  %69 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %70 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %69, i32 0, i32 0
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %70, align 8
  %72 = load %struct.bfi_fcport_event_s*, %struct.bfi_fcport_event_s** %5, align 8
  %73 = getelementptr inbounds %struct.bfi_fcport_event_s, %struct.bfi_fcport_event_s* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @bfa_trc(%struct.TYPE_19__* %71, i32 %78)
  %80 = load %struct.bfi_fcport_event_s*, %struct.bfi_fcport_event_s** %5, align 8
  %81 = getelementptr inbounds %struct.bfi_fcport_event_s, %struct.bfi_fcport_event_s* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %57
  %89 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %90 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %89, i32 0, i32 0
  %91 = load %struct.TYPE_19__*, %struct.TYPE_19__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @BFA_PL_MID_HAL, align 4
  %95 = load i32, i32* @BFA_PL_EID_FIP_FCF_DISC, align 4
  %96 = call i32 @bfa_plog_str(i32 %93, i32 %94, i32 %95, i32 0, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %106

97:                                               ; preds = %57
  %98 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %99 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %98, i32 0, i32 0
  %100 = load %struct.TYPE_19__*, %struct.TYPE_19__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @BFA_PL_MID_HAL, align 4
  %104 = load i32, i32* @BFA_PL_EID_FIP_FCF_DISC, align 4
  %105 = call i32 @bfa_plog_str(i32 %102, i32 %103, i32 %104, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %106

106:                                              ; preds = %97, %88
  br label %107

107:                                              ; preds = %106, %30
  %108 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %109 = load i32, i32* @BFA_PORT_LINKUP, align 4
  %110 = load i32, i32* @BFA_FALSE, align 4
  %111 = call i32 @bfa_fcport_scn(%struct.bfa_fcport_s* %108, i32 %109, i32 %110)
  %112 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %113 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = call i32 @wwn2str(i8* %17, i32 %114)
  %116 = load i32, i32* @KERN_INFO, align 4
  %117 = load %struct.bfad_s*, %struct.bfad_s** %8, align 8
  %118 = load i32, i32* @bfa_log_level, align 4
  %119 = call i32 @BFA_LOG(i32 %116, %struct.bfad_s* %117, i32 %118, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i8* %17)
  %120 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %121 = load i32, i32* @BFA_PORT_AEN_ONLINE, align 4
  %122 = call i32 @bfa_fcport_aen_post(%struct.bfa_fcport_s* %120, i32 %121)
  %123 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %124 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %139

128:                                              ; preds = %107
  %129 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %130 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %129, i32 0, i32 2
  %131 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  %133 = load i32, i32* @BFA_QOS_ONLINE, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %139

135:                                              ; preds = %128
  %136 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %137 = load i32, i32* @BFA_PORT_AEN_QOS_NEG, align 4
  %138 = call i32 @bfa_fcport_aen_post(%struct.bfa_fcport_s* %136, i32 %137)
  br label %139

139:                                              ; preds = %135, %128, %107
  br label %197

140:                                              ; preds = %2
  br label %197

141:                                              ; preds = %2
  br label %197

142:                                              ; preds = %2
  %143 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %144 = call i32 @bfa_fcport_send_disable(%struct.bfa_fcport_s* %143)
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %150

146:                                              ; preds = %142
  %147 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %148 = load i32, i32* @bfa_fcport_sm_disabling, align 4
  %149 = call i32 @bfa_sm_set_state(%struct.bfa_fcport_s* %147, i32 %148)
  br label %154

150:                                              ; preds = %142
  %151 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %152 = load i32, i32* @bfa_fcport_sm_disabling_qwait, align 4
  %153 = call i32 @bfa_sm_set_state(%struct.bfa_fcport_s* %151, i32 %152)
  br label %154

154:                                              ; preds = %150, %146
  %155 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %156 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %155, i32 0, i32 0
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* @BFA_PL_MID_HAL, align 4
  %161 = load i32, i32* @BFA_PL_EID_PORT_DISABLE, align 4
  %162 = call i32 @bfa_plog_str(i32 %159, i32 %160, i32 %161, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %163 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %164 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %163, i32 0, i32 1
  %165 = load i32, i32* %164, align 8
  %166 = call i32 @wwn2str(i8* %17, i32 %165)
  %167 = load i32, i32* @KERN_INFO, align 4
  %168 = load %struct.bfad_s*, %struct.bfad_s** %8, align 8
  %169 = load i32, i32* @bfa_log_level, align 4
  %170 = call i32 @BFA_LOG(i32 %167, %struct.bfad_s* %168, i32 %169, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), i8* %17)
  %171 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %172 = load i32, i32* @BFA_PORT_AEN_DISABLE, align 4
  %173 = call i32 @bfa_fcport_aen_post(%struct.bfa_fcport_s* %171, i32 %172)
  br label %197

174:                                              ; preds = %2
  %175 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %176 = load i32, i32* @bfa_fcport_sm_stopped, align 4
  %177 = call i32 @bfa_sm_set_state(%struct.bfa_fcport_s* %175, i32 %176)
  br label %197

178:                                              ; preds = %2
  %179 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %180 = load i32, i32* @bfa_fcport_sm_iocdown, align 4
  %181 = call i32 @bfa_sm_set_state(%struct.bfa_fcport_s* %179, i32 %180)
  br label %197

182:                                              ; preds = %2
  %183 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %184 = call i32 @bfa_fcport_reset_linkinfo(%struct.bfa_fcport_s* %183)
  %185 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %186 = load i32, i32* @BFA_PORT_AEN_DISCONNECT, align 4
  %187 = call i32 @bfa_fcport_aen_post(%struct.bfa_fcport_s* %185, i32 %186)
  %188 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %189 = load i32, i32* @bfa_fcport_sm_faa_misconfig, align 4
  %190 = call i32 @bfa_sm_set_state(%struct.bfa_fcport_s* %188, i32 %189)
  br label %197

191:                                              ; preds = %2
  %192 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %193 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %192, i32 0, i32 0
  %194 = load %struct.TYPE_19__*, %struct.TYPE_19__** %193, align 8
  %195 = load i32, i32* %4, align 4
  %196 = call i32 @bfa_sm_fault(%struct.TYPE_19__* %194, i32 %195)
  br label %197

197:                                              ; preds = %191, %182, %178, %174, %154, %141, %140, %139
  %198 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %198)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bfa_trc(%struct.TYPE_19__*, i32) #2

declare dso_local i32 @bfa_fcport_update_linkinfo(%struct.bfa_fcport_s*) #2

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcport_s*, i32) #2

declare dso_local i32 @WARN_ON(i32) #2

declare dso_local i32 @bfa_plog_str(i32, i32, i32, i32, i8*) #2

declare dso_local i32 @bfa_ioc_get_fcmode(i32*) #2

declare dso_local i32 @bfa_fcport_scn(%struct.bfa_fcport_s*, i32, i32) #2

declare dso_local i32 @wwn2str(i8*, i32) #2

declare dso_local i32 @BFA_LOG(i32, %struct.bfad_s*, i32, i8*, i8*) #2

declare dso_local i32 @bfa_fcport_aen_post(%struct.bfa_fcport_s*, i32) #2

declare dso_local i32 @bfa_fcport_send_disable(%struct.bfa_fcport_s*) #2

declare dso_local i32 @bfa_fcport_reset_linkinfo(%struct.bfa_fcport_s*) #2

declare dso_local i32 @bfa_sm_fault(%struct.TYPE_19__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
