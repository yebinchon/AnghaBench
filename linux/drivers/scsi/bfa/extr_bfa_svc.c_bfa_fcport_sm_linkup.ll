; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_sm_linkup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfa_svc.c_bfa_fcport_sm_linkup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcport_s = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i64 }
%struct.bfad_s = type { i32 }

@BFA_STRING_32 = common dso_local global i32 0, align 4
@bfa_fcport_sm_disabling = common dso_local global i32 0, align 4
@bfa_fcport_sm_disabling_qwait = common dso_local global i32 0, align 4
@BFA_PORT_LINKDOWN = common dso_local global i32 0, align 4
@BFA_FALSE = common dso_local global i32 0, align 4
@BFA_PL_MID_HAL = common dso_local global i32 0, align 4
@BFA_PL_EID_PORT_DISABLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Port Disable\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@bfa_log_level = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Base port offline: WWN = %s\0A\00", align 1
@BFA_PORT_AEN_OFFLINE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"Base port disabled: WWN = %s\0A\00", align 1
@BFA_PORT_AEN_DISABLE = common dso_local global i32 0, align 4
@bfa_fcport_sm_linkdown = common dso_local global i32 0, align 4
@BFA_PL_EID_PORT_ST_CHANGE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [14 x i8] c"Port Linkdown\00", align 1
@KERN_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [47 x i8] c"Base port (WWN = %s) lost fabric connectivity\0A\00", align 1
@BFA_PORT_AEN_DISCONNECT = common dso_local global i32 0, align 4
@bfa_fcport_sm_stopped = common dso_local global i32 0, align 4
@bfa_fcport_sm_iocdown = common dso_local global i32 0, align 4
@bfa_fcport_sm_faa_misconfig = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_fcport_s*, i32)* @bfa_fcport_sm_linkup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_fcport_sm_linkup(%struct.bfa_fcport_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_fcport_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.bfad_s*, align 8
  store %struct.bfa_fcport_s* %0, %struct.bfa_fcport_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @BFA_STRING_32, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %5, align 8
  %11 = alloca i8, i64 %9, align 16
  store i64 %9, i64* %6, align 8
  %12 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.bfad_s*
  store %struct.bfad_s* %17, %struct.bfad_s** %7, align 8
  %18 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %19 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @bfa_trc(%struct.TYPE_4__* %20, i32 %21)
  %23 = load i32, i32* %4, align 4
  switch i32 %23, label %191 [
    i32 132, label %24
    i32 133, label %25
    i32 129, label %70
    i32 128, label %114
    i32 130, label %146
    i32 131, label %182
  ]

24:                                               ; preds = %2
  br label %197

25:                                               ; preds = %2
  %26 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %27 = call i32 @bfa_fcport_send_disable(%struct.bfa_fcport_s* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %25
  %30 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %31 = load i32, i32* @bfa_fcport_sm_disabling, align 4
  %32 = call i32 @bfa_sm_set_state(%struct.bfa_fcport_s* %30, i32 %31)
  br label %37

33:                                               ; preds = %25
  %34 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %35 = load i32, i32* @bfa_fcport_sm_disabling_qwait, align 4
  %36 = call i32 @bfa_sm_set_state(%struct.bfa_fcport_s* %34, i32 %35)
  br label %37

37:                                               ; preds = %33, %29
  %38 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %39 = call i32 @bfa_fcport_reset_linkinfo(%struct.bfa_fcport_s* %38)
  %40 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %41 = load i32, i32* @BFA_PORT_LINKDOWN, align 4
  %42 = load i32, i32* @BFA_FALSE, align 4
  %43 = call i32 @bfa_fcport_scn(%struct.bfa_fcport_s* %40, i32 %41, i32 %42)
  %44 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %45 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @BFA_PL_MID_HAL, align 4
  %50 = load i32, i32* @BFA_PL_EID_PORT_DISABLE, align 4
  %51 = call i32 @bfa_plog_str(i32 %48, i32 %49, i32 %50, i32 0, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %52 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %53 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @wwn2str(i8* %11, i32 %54)
  %56 = load i32, i32* @KERN_INFO, align 4
  %57 = load %struct.bfad_s*, %struct.bfad_s** %7, align 8
  %58 = load i32, i32* @bfa_log_level, align 4
  %59 = call i32 @BFA_LOG(i32 %56, %struct.bfad_s* %57, i32 %58, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  %60 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %61 = load i32, i32* @BFA_PORT_AEN_OFFLINE, align 4
  %62 = call i32 @bfa_fcport_aen_post(%struct.bfa_fcport_s* %60, i32 %61)
  %63 = load i32, i32* @KERN_INFO, align 4
  %64 = load %struct.bfad_s*, %struct.bfad_s** %7, align 8
  %65 = load i32, i32* @bfa_log_level, align 4
  %66 = call i32 @BFA_LOG(i32 %63, %struct.bfad_s* %64, i32 %65, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %11)
  %67 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %68 = load i32, i32* @BFA_PORT_AEN_DISABLE, align 4
  %69 = call i32 @bfa_fcport_aen_post(%struct.bfa_fcport_s* %67, i32 %68)
  br label %197

70:                                               ; preds = %2
  %71 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %72 = load i32, i32* @bfa_fcport_sm_linkdown, align 4
  %73 = call i32 @bfa_sm_set_state(%struct.bfa_fcport_s* %71, i32 %72)
  %74 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %75 = call i32 @bfa_fcport_reset_linkinfo(%struct.bfa_fcport_s* %74)
  %76 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %77 = load i32, i32* @BFA_PORT_LINKDOWN, align 4
  %78 = load i32, i32* @BFA_FALSE, align 4
  %79 = call i32 @bfa_fcport_scn(%struct.bfa_fcport_s* %76, i32 %77, i32 %78)
  %80 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %81 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @BFA_PL_MID_HAL, align 4
  %86 = load i32, i32* @BFA_PL_EID_PORT_ST_CHANGE, align 4
  %87 = call i32 @bfa_plog_str(i32 %84, i32 %85, i32 %86, i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.3, i64 0, i64 0))
  %88 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %89 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @wwn2str(i8* %11, i32 %90)
  %92 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %93 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = call i32 @BFA_PORT_IS_DISABLED(%struct.TYPE_4__* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %70
  %98 = load i32, i32* @KERN_INFO, align 4
  %99 = load %struct.bfad_s*, %struct.bfad_s** %7, align 8
  %100 = load i32, i32* @bfa_log_level, align 4
  %101 = call i32 @BFA_LOG(i32 %98, %struct.bfad_s* %99, i32 %100, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  %102 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %103 = load i32, i32* @BFA_PORT_AEN_OFFLINE, align 4
  %104 = call i32 @bfa_fcport_aen_post(%struct.bfa_fcport_s* %102, i32 %103)
  br label %113

105:                                              ; preds = %70
  %106 = load i32, i32* @KERN_ERR, align 4
  %107 = load %struct.bfad_s*, %struct.bfad_s** %7, align 8
  %108 = load i32, i32* @bfa_log_level, align 4
  %109 = call i32 @BFA_LOG(i32 %106, %struct.bfad_s* %107, i32 %108, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* %11)
  %110 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %111 = load i32, i32* @BFA_PORT_AEN_DISCONNECT, align 4
  %112 = call i32 @bfa_fcport_aen_post(%struct.bfa_fcport_s* %110, i32 %111)
  br label %113

113:                                              ; preds = %105, %97
  br label %197

114:                                              ; preds = %2
  %115 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %116 = load i32, i32* @bfa_fcport_sm_stopped, align 4
  %117 = call i32 @bfa_sm_set_state(%struct.bfa_fcport_s* %115, i32 %116)
  %118 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %119 = call i32 @bfa_fcport_reset_linkinfo(%struct.bfa_fcport_s* %118)
  %120 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %121 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @wwn2str(i8* %11, i32 %122)
  %124 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %125 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %124, i32 0, i32 0
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %125, align 8
  %127 = call i32 @BFA_PORT_IS_DISABLED(%struct.TYPE_4__* %126)
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %137

129:                                              ; preds = %114
  %130 = load i32, i32* @KERN_INFO, align 4
  %131 = load %struct.bfad_s*, %struct.bfad_s** %7, align 8
  %132 = load i32, i32* @bfa_log_level, align 4
  %133 = call i32 @BFA_LOG(i32 %130, %struct.bfad_s* %131, i32 %132, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  %134 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %135 = load i32, i32* @BFA_PORT_AEN_OFFLINE, align 4
  %136 = call i32 @bfa_fcport_aen_post(%struct.bfa_fcport_s* %134, i32 %135)
  br label %145

137:                                              ; preds = %114
  %138 = load i32, i32* @KERN_ERR, align 4
  %139 = load %struct.bfad_s*, %struct.bfad_s** %7, align 8
  %140 = load i32, i32* @bfa_log_level, align 4
  %141 = call i32 @BFA_LOG(i32 %138, %struct.bfad_s* %139, i32 %140, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* %11)
  %142 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %143 = load i32, i32* @BFA_PORT_AEN_DISCONNECT, align 4
  %144 = call i32 @bfa_fcport_aen_post(%struct.bfa_fcport_s* %142, i32 %143)
  br label %145

145:                                              ; preds = %137, %129
  br label %197

146:                                              ; preds = %2
  %147 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %148 = load i32, i32* @bfa_fcport_sm_iocdown, align 4
  %149 = call i32 @bfa_sm_set_state(%struct.bfa_fcport_s* %147, i32 %148)
  %150 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %151 = call i32 @bfa_fcport_reset_linkinfo(%struct.bfa_fcport_s* %150)
  %152 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %153 = load i32, i32* @BFA_PORT_LINKDOWN, align 4
  %154 = load i32, i32* @BFA_FALSE, align 4
  %155 = call i32 @bfa_fcport_scn(%struct.bfa_fcport_s* %152, i32 %153, i32 %154)
  %156 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %157 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = call i32 @wwn2str(i8* %11, i32 %158)
  %160 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %161 = getelementptr inbounds %struct.bfa_fcport_s, %struct.bfa_fcport_s* %160, i32 0, i32 0
  %162 = load %struct.TYPE_4__*, %struct.TYPE_4__** %161, align 8
  %163 = call i32 @BFA_PORT_IS_DISABLED(%struct.TYPE_4__* %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %173

165:                                              ; preds = %146
  %166 = load i32, i32* @KERN_INFO, align 4
  %167 = load %struct.bfad_s*, %struct.bfad_s** %7, align 8
  %168 = load i32, i32* @bfa_log_level, align 4
  %169 = call i32 @BFA_LOG(i32 %166, %struct.bfad_s* %167, i32 %168, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i8* %11)
  %170 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %171 = load i32, i32* @BFA_PORT_AEN_OFFLINE, align 4
  %172 = call i32 @bfa_fcport_aen_post(%struct.bfa_fcport_s* %170, i32 %171)
  br label %181

173:                                              ; preds = %146
  %174 = load i32, i32* @KERN_ERR, align 4
  %175 = load %struct.bfad_s*, %struct.bfad_s** %7, align 8
  %176 = load i32, i32* @bfa_log_level, align 4
  %177 = call i32 @BFA_LOG(i32 %174, %struct.bfad_s* %175, i32 %176, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i8* %11)
  %178 = load %struct.bfa_fcport_s*, %struct.bfa_fcport_s** %3, align 8
  %179 = load i32, i32* @BFA_PORT_AEN_DISCONNECT, align 4
  %180 = call i32 @bfa_fcport_aen_post(%struct.bfa_fcport_s* %178, i32 %179)
  br label %181

181:                                              ; preds = %173, %165
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
  %194 = load %struct.TYPE_4__*, %struct.TYPE_4__** %193, align 8
  %195 = load i32, i32* %4, align 4
  %196 = call i32 @bfa_sm_fault(%struct.TYPE_4__* %194, i32 %195)
  br label %197

197:                                              ; preds = %191, %182, %181, %145, %113, %37, %24
  %198 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %198)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @bfa_trc(%struct.TYPE_4__*, i32) #2

declare dso_local i32 @bfa_fcport_send_disable(%struct.bfa_fcport_s*) #2

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcport_s*, i32) #2

declare dso_local i32 @bfa_fcport_reset_linkinfo(%struct.bfa_fcport_s*) #2

declare dso_local i32 @bfa_fcport_scn(%struct.bfa_fcport_s*, i32, i32) #2

declare dso_local i32 @bfa_plog_str(i32, i32, i32, i32, i8*) #2

declare dso_local i32 @wwn2str(i8*, i32) #2

declare dso_local i32 @BFA_LOG(i32, %struct.bfad_s*, i32, i8*, i8*) #2

declare dso_local i32 @bfa_fcport_aen_post(%struct.bfa_fcport_s*, i32) #2

declare dso_local i32 @BFA_PORT_IS_DISABLED(%struct.TYPE_4__*) #2

declare dso_local i32 @bfa_sm_fault(%struct.TYPE_4__*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
