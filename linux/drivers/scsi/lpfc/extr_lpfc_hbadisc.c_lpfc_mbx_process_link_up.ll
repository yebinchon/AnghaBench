; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_process_link_up.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_hbadisc.c_lpfc_mbx_process_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_hba = type { i32, i32, i32, i32, i32, i32*, i64, i32, i32, %struct.TYPE_13__, i32, i64, i64, i32, %struct.lpfc_vport* }
%struct.TYPE_13__ = type { i32 }
%struct.lpfc_vport = type { i32, i32, i32, i32 }
%struct.lpfc_mbx_read_top = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_17__ = type { i32, %struct.lpfc_vport*, i64 }
%struct.Scsi_Host = type { i32* }
%struct.lpfc_dmabuf = type { i32, i32 }
%struct.fcf_record = type { i32, i32 }
%union.anon = type { [16 x i32] }
%struct.anon = type { i32, i32, i32, i32 }

@lpfc_mbx_read_top_link_spd = common dso_local global i32 0, align 4
@HBA_FCOE_MODE = common dso_local global i32 0, align 4
@LPFC_LINK_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@lpfc_mbx_read_top_topology = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@LOG_SLI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"3314 Toplogy changed was 0x%x is 0x%x\0A\00", align 1
@LS_NPIV_FAB_SUPPORTED = common dso_local global i32 0, align 4
@LPFC_TOPOLOGY_LOOP = common dso_local global i32 0, align 4
@LPFC_SLI3_NPIV_ENABLED = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_LINK_EVENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [56 x i8] c"1309 Link Up Event npiv not supported in loop topology\0A\00", align 1
@lpfc_mbx_read_top_il = common dso_local global i32 0, align 4
@FC_LBIT = common dso_local global i32 0, align 4
@lpfc_mbx_read_top_alpa_granted = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [51 x i8] c"1304 Link Up Event ALPA map Data: x%x x%x x%x x%x\0A\00", align 1
@LPFC_SLI_REV3 = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@lpfc_mbx_cmpl_read_sparam = common dso_local global i32 0, align 4
@MBX_NOWAIT = common dso_local global i32 0, align 4
@MBX_NOT_FINISHED = common dso_local global i32 0, align 4
@LPFC_LOCAL_CFG_LINK = common dso_local global i32 0, align 4
@lpfc_mbx_cmpl_local_config_link = common dso_local global i32 0, align 4
@LPFC_VPORT_UNKNOWN = common dso_local global i32 0, align 4
@HBA_FIP_SUPPORT = common dso_local global i32 0, align 4
@LOG_MBOX = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [47 x i8] c"2554 Could not allocate memory for fcf record\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@LPFC_FCOE_FCF_DEF_INDEX = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [53 x i8] c"2013 Could not manually add FCF record 0, status %d\0A\00", align 1
@FCF_TS_INPROG = common dso_local global i32 0, align 4
@FCF_INIT_DISC = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@LOG_FIP = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [37 x i8] c"2778 Start FCF table scan at linkup\0A\00", align 1
@LPFC_FCOE_FCF_GET_FIRST = common dso_local global i32 0, align 4
@FC_VPORT_FAILED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [55 x i8] c"0263 Discovery Mailbox error: state: 0x%x : x%px x%px\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpfc_hba*, %struct.lpfc_mbx_read_top*)* @lpfc_mbx_process_link_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lpfc_mbx_process_link_up(%struct.lpfc_hba* %0, %struct.lpfc_mbx_read_top* %1) #0 {
  %3 = alloca %struct.lpfc_hba*, align 8
  %4 = alloca %struct.lpfc_mbx_read_top*, align 8
  %5 = alloca %struct.lpfc_vport*, align 8
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.lpfc_dmabuf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.fcf_record*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %union.anon, align 4
  store %struct.lpfc_hba* %0, %struct.lpfc_hba** %3, align 8
  store %struct.lpfc_mbx_read_top* %1, %struct.lpfc_mbx_read_top** %4, align 8
  %19 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %20 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %19, i32 0, i32 14
  %21 = load %struct.lpfc_vport*, %struct.lpfc_vport** %20, align 8
  store %struct.lpfc_vport* %21, %struct.lpfc_vport** %5, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %7, align 8
  store i32 0, i32* %13, align 4
  %22 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %23 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %22, i32 0, i32 8
  %24 = load i64, i64* %14, align 8
  %25 = call i32 @spin_lock_irqsave(i32* %23, i64 %24)
  %26 = load i32, i32* @lpfc_mbx_read_top_link_spd, align 4
  %27 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %4, align 8
  %28 = call i32 @bf_get(i32 %26, %struct.lpfc_mbx_read_top* %27)
  %29 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %30 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %32 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @HBA_FCOE_MODE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %47, label %37

37:                                               ; preds = %2
  %38 = load i32, i32* @lpfc_mbx_read_top_link_spd, align 4
  %39 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %4, align 8
  %40 = call i32 @bf_get(i32 %38, %struct.lpfc_mbx_read_top* %39)
  switch i32 %40, label %42 [
    i32 133, label %41
    i32 132, label %41
    i32 130, label %41
    i32 128, label %41
    i32 136, label %41
    i32 134, label %41
    i32 131, label %41
    i32 129, label %41
    i32 135, label %41
  ]

41:                                               ; preds = %37, %37, %37, %37, %37, %37, %37, %37, %37
  br label %46

42:                                               ; preds = %37
  %43 = load i32, i32* @LPFC_LINK_SPEED_UNKNOWN, align 4
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %45 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %42, %41
  br label %47

47:                                               ; preds = %46, %2
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %49 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %73

52:                                               ; preds = %47
  %53 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %54 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @lpfc_mbx_read_top_topology, align 4
  %57 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %4, align 8
  %58 = call i32 @bf_get(i32 %56, %struct.lpfc_mbx_read_top* %57)
  %59 = icmp ne i32 %55, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %52
  %61 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %62 = load i32, i32* @KERN_WARNING, align 4
  %63 = load i32, i32* @LOG_SLI, align 4
  %64 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %65 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = load i32, i32* @lpfc_mbx_read_top_topology, align 4
  %68 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %4, align 8
  %69 = call i32 @bf_get(i32 %67, %struct.lpfc_mbx_read_top* %68)
  %70 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %61, i32 %62, i32 %63, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %66, i32 %69)
  %71 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %72 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %71, i32 0, i32 3
  store i32 1, i32* %72, align 4
  br label %73

73:                                               ; preds = %60, %52, %47
  %74 = load i32, i32* @lpfc_mbx_read_top_topology, align 4
  %75 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %4, align 8
  %76 = call i32 @bf_get(i32 %74, %struct.lpfc_mbx_read_top* %75)
  %77 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %78 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %77, i32 0, i32 2
  store i32 %76, i32* %78, align 8
  %79 = load i32, i32* @LS_NPIV_FAB_SUPPORTED, align 4
  %80 = xor i32 %79, -1
  %81 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %82 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %81, i32 0, i32 13
  %83 = load i32, i32* %82, align 8
  %84 = and i32 %83, %80
  store i32 %84, i32* %82, align 8
  %85 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %86 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %85)
  store %struct.Scsi_Host* %86, %struct.Scsi_Host** %8, align 8
  %87 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %88 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* @LPFC_TOPOLOGY_LOOP, align 4
  %91 = icmp eq i32 %89, %90
  br i1 %91, label %92, label %209

92:                                               ; preds = %73
  %93 = load i32, i32* @LPFC_SLI3_NPIV_ENABLED, align 4
  %94 = xor i32 %93, -1
  %95 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %96 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 8
  %98 = and i32 %97, %94
  store i32 %98, i32* %96, align 8
  %99 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %100 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %99, i32 0, i32 11
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %92
  %104 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %105 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %104, i32 0, i32 12
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %103
  %109 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %110 = load i32, i32* @KERN_ERR, align 4
  %111 = load i32, i32* @LOG_LINK_EVENT, align 4
  %112 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %109, i32 %110, i32 %111, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0))
  br label %113

113:                                              ; preds = %108, %103, %92
  %114 = load i32, i32* @lpfc_mbx_read_top_il, align 4
  %115 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %4, align 8
  %116 = call i32 @bf_get(i32 %114, %struct.lpfc_mbx_read_top* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %113
  %119 = load i32, i32* @FC_LBIT, align 4
  %120 = load i32, i32* %13, align 4
  %121 = or i32 %120, %119
  store i32 %121, i32* %13, align 4
  br label %122

122:                                              ; preds = %118, %113
  %123 = load i32, i32* @lpfc_mbx_read_top_alpa_granted, align 4
  %124 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %4, align 8
  %125 = call i32 @bf_get(i32 %123, %struct.lpfc_mbx_read_top* %124)
  %126 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %127 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %126, i32 0, i32 0
  store i32 %125, i32* %127, align 4
  %128 = load %struct.lpfc_mbx_read_top*, %struct.lpfc_mbx_read_top** %4, align 8
  %129 = getelementptr inbounds %struct.lpfc_mbx_read_top, %struct.lpfc_mbx_read_top* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  store i32 %133, i32* %9, align 4
  %134 = load i32, i32* %9, align 4
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %141

136:                                              ; preds = %122
  %137 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %138 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %137, i32 0, i32 5
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 0
  store i32 0, i32* %140, align 4
  br label %208

141:                                              ; preds = %122
  %142 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %143 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load i32, i32* @LOG_LINK_EVENT, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %207

148:                                              ; preds = %141
  %149 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %150 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %149, i32 0, i32 5
  %151 = load i32*, i32** %150, align 8
  %152 = getelementptr inbounds i32, i32* %151, i64 0
  %153 = load i32, i32* %152, align 4
  store i32 %153, i32* %15, align 4
  store i32 0, i32* %16, align 4
  br label %154

154:                                              ; preds = %189, %148
  %155 = load i32, i32* %16, align 4
  %156 = load i32, i32* %15, align 4
  %157 = icmp slt i32 %155, %156
  br i1 %157, label %158, label %206

158:                                              ; preds = %154
  %159 = bitcast %union.anon* %18 to [16 x i32]*
  %160 = getelementptr inbounds [16 x i32], [16 x i32]* %159, i64 0, i64 0
  %161 = call i32 @memset(i32* %160, i32 0, i32 16)
  store i32 1, i32* %17, align 4
  br label %162

162:                                              ; preds = %186, %158
  %163 = load i32, i32* %16, align 4
  %164 = load i32, i32* %15, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %189

166:                                              ; preds = %162
  %167 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %168 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %167, i32 0, i32 5
  %169 = load i32*, i32** %168, align 8
  %170 = load i32, i32* %16, align 4
  %171 = add nsw i32 %170, 1
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %169, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = bitcast %union.anon* %18 to [16 x i32]*
  %176 = load i32, i32* %17, align 4
  %177 = sub nsw i32 %176, 1
  %178 = sext i32 %177 to i64
  %179 = getelementptr inbounds [16 x i32], [16 x i32]* %175, i64 0, i64 %178
  store i32 %174, i32* %179, align 4
  %180 = load i32, i32* %16, align 4
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %16, align 4
  %182 = load i32, i32* %17, align 4
  %183 = icmp eq i32 %182, 16
  br i1 %183, label %184, label %185

184:                                              ; preds = %166
  br label %189

185:                                              ; preds = %166
  br label %186

186:                                              ; preds = %185
  %187 = load i32, i32* %17, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %17, align 4
  br label %162

189:                                              ; preds = %184, %162
  %190 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %191 = load i32, i32* @KERN_WARNING, align 4
  %192 = load i32, i32* @LOG_LINK_EVENT, align 4
  %193 = bitcast %union.anon* %18 to %struct.anon*
  %194 = getelementptr inbounds %struct.anon, %struct.anon* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = bitcast %union.anon* %18 to %struct.anon*
  %197 = getelementptr inbounds %struct.anon, %struct.anon* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = bitcast %union.anon* %18 to %struct.anon*
  %200 = getelementptr inbounds %struct.anon, %struct.anon* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 4
  %202 = bitcast %union.anon* %18 to %struct.anon*
  %203 = getelementptr inbounds %struct.anon, %struct.anon* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %190, i32 %191, i32 %192, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %195, i32 %198, i32 %201, i32 %204)
  br label %154

206:                                              ; preds = %154
  br label %207

207:                                              ; preds = %206, %141
  br label %208

208:                                              ; preds = %207, %136
  br label %248

209:                                              ; preds = %73
  %210 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %211 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %210, i32 0, i32 4
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @LPFC_SLI3_NPIV_ENABLED, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %239, label %216

216:                                              ; preds = %209
  %217 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %218 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %217, i32 0, i32 12
  %219 = load i64, i64* %218, align 8
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %238

221:                                              ; preds = %216
  %222 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %223 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %222, i32 0, i32 11
  %224 = load i64, i64* %223, align 8
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %238

226:                                              ; preds = %221
  %227 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %228 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %227, i32 0, i32 6
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @LPFC_SLI_REV3, align 8
  %231 = icmp sge i64 %229, %230
  br i1 %231, label %232, label %238

232:                                              ; preds = %226
  %233 = load i32, i32* @LPFC_SLI3_NPIV_ENABLED, align 4
  %234 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %235 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 8
  %237 = or i32 %236, %233
  store i32 %237, i32* %235, align 8
  br label %238

238:                                              ; preds = %232, %226, %221, %216
  br label %239

239:                                              ; preds = %238, %209
  %240 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %241 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %240, i32 0, i32 7
  %242 = load i32, i32* %241, align 8
  %243 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %244 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %243, i32 0, i32 0
  store i32 %242, i32* %244, align 4
  %245 = load i32, i32* @FC_LBIT, align 4
  %246 = load i32, i32* %13, align 4
  %247 = or i32 %246, %245
  store i32 %247, i32* %13, align 4
  br label %248

248:                                              ; preds = %239, %208
  %249 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %250 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %249, i32 0, i32 8
  %251 = load i64, i64* %14, align 8
  %252 = call i32 @spin_unlock_irqrestore(i32* %250, i64 %251)
  %253 = load i32, i32* %13, align 4
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %255, label %271

255:                                              ; preds = %248
  %256 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %257 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %256, i32 0, i32 0
  %258 = load i32*, i32** %257, align 8
  %259 = load i64, i64* %14, align 8
  %260 = call i32 @spin_lock_irqsave(i32* %258, i64 %259)
  %261 = load i32, i32* %13, align 4
  %262 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %263 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %262, i32 0, i32 2
  %264 = load i32, i32* %263, align 4
  %265 = or i32 %264, %261
  store i32 %265, i32* %263, align 4
  %266 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %267 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %266, i32 0, i32 0
  %268 = load i32*, i32** %267, align 8
  %269 = load i64, i64* %14, align 8
  %270 = call i32 @spin_unlock_irqrestore(i32* %268, i64 %269)
  br label %271

271:                                              ; preds = %255, %248
  %272 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %273 = call i32 @lpfc_linkup(%struct.lpfc_hba* %272)
  %274 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %275 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %274, i32 0, i32 10
  %276 = load i32, i32* %275, align 4
  %277 = load i32, i32* @GFP_KERNEL, align 4
  %278 = call %struct.TYPE_17__* @mempool_alloc(i32 %276, i32 %277)
  store %struct.TYPE_17__* %278, %struct.TYPE_17__** %6, align 8
  %279 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %280 = icmp ne %struct.TYPE_17__* %279, null
  br i1 %280, label %282, label %281

281:                                              ; preds = %271
  br label %488

282:                                              ; preds = %271
  %283 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %284 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %285 = call i32 @lpfc_read_sparam(%struct.lpfc_hba* %283, %struct.TYPE_17__* %284, i32 0)
  store i32 %285, i32* %11, align 4
  %286 = load i32, i32* %11, align 4
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %294

288:                                              ; preds = %282
  %289 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %290 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %291 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %290, i32 0, i32 10
  %292 = load i32, i32* %291, align 4
  %293 = call i32 @mempool_free(%struct.TYPE_17__* %289, i32 %292)
  br label %488

294:                                              ; preds = %282
  %295 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %296 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %297 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %296, i32 0, i32 1
  store %struct.lpfc_vport* %295, %struct.lpfc_vport** %297, align 8
  %298 = load i32, i32* @lpfc_mbx_cmpl_read_sparam, align 4
  %299 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %300 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %299, i32 0, i32 0
  store i32 %298, i32* %300, align 8
  %301 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %302 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %303 = load i32, i32* @MBX_NOWAIT, align 4
  %304 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %301, %struct.TYPE_17__* %302, i32 %303)
  store i32 %304, i32* %11, align 4
  %305 = load i32, i32* %11, align 4
  %306 = load i32, i32* @MBX_NOT_FINISHED, align 4
  %307 = icmp eq i32 %305, %306
  br i1 %307, label %308, label %328

308:                                              ; preds = %294
  %309 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %309, i32 0, i32 2
  %311 = load i64, i64* %310, align 8
  %312 = inttoptr i64 %311 to %struct.lpfc_dmabuf*
  store %struct.lpfc_dmabuf* %312, %struct.lpfc_dmabuf** %10, align 8
  %313 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %314 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %315 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %314, i32 0, i32 1
  %316 = load i32, i32* %315, align 4
  %317 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %318 = getelementptr inbounds %struct.lpfc_dmabuf, %struct.lpfc_dmabuf* %317, i32 0, i32 0
  %319 = load i32, i32* %318, align 4
  %320 = call i32 @lpfc_mbuf_free(%struct.lpfc_hba* %313, i32 %316, i32 %319)
  %321 = load %struct.lpfc_dmabuf*, %struct.lpfc_dmabuf** %10, align 8
  %322 = call i32 @kfree(%struct.lpfc_dmabuf* %321)
  %323 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %324 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %325 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %324, i32 0, i32 10
  %326 = load i32, i32* %325, align 4
  %327 = call i32 @mempool_free(%struct.TYPE_17__* %323, i32 %326)
  br label %488

328:                                              ; preds = %294
  %329 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %330 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %329, i32 0, i32 1
  %331 = load i32, i32* %330, align 4
  %332 = load i32, i32* @HBA_FCOE_MODE, align 4
  %333 = and i32 %331, %332
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %371, label %335

335:                                              ; preds = %328
  %336 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %337 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %336, i32 0, i32 10
  %338 = load i32, i32* %337, align 4
  %339 = load i32, i32* @GFP_KERNEL, align 4
  %340 = call %struct.TYPE_17__* @mempool_alloc(i32 %338, i32 %339)
  store %struct.TYPE_17__* %340, %struct.TYPE_17__** %7, align 8
  %341 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %342 = icmp ne %struct.TYPE_17__* %341, null
  br i1 %342, label %344, label %343

343:                                              ; preds = %335
  br label %488

344:                                              ; preds = %335
  %345 = load i32, i32* @LPFC_LOCAL_CFG_LINK, align 4
  %346 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %347 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %346, i32 0, i32 3
  store i32 %345, i32* %347, align 4
  %348 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %349 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %350 = call i32 @lpfc_config_link(%struct.lpfc_hba* %348, %struct.TYPE_17__* %349)
  %351 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %352 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %353 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %352, i32 0, i32 1
  store %struct.lpfc_vport* %351, %struct.lpfc_vport** %353, align 8
  %354 = load i32, i32* @lpfc_mbx_cmpl_local_config_link, align 4
  %355 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %356 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %355, i32 0, i32 0
  store i32 %354, i32* %356, align 8
  %357 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %358 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %359 = load i32, i32* @MBX_NOWAIT, align 4
  %360 = call i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba* %357, %struct.TYPE_17__* %358, i32 %359)
  store i32 %360, i32* %11, align 4
  %361 = load i32, i32* %11, align 4
  %362 = load i32, i32* @MBX_NOT_FINISHED, align 4
  %363 = icmp eq i32 %361, %362
  br i1 %363, label %364, label %370

364:                                              ; preds = %344
  %365 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %366 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %367 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %366, i32 0, i32 10
  %368 = load i32, i32* %367, align 4
  %369 = call i32 @mempool_free(%struct.TYPE_17__* %365, i32 %368)
  br label %488

370:                                              ; preds = %344
  br label %487

371:                                              ; preds = %328
  %372 = load i32, i32* @LPFC_VPORT_UNKNOWN, align 4
  %373 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %374 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %373, i32 0, i32 3
  store i32 %372, i32* %374, align 4
  %375 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %376 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %375, i32 0, i32 1
  %377 = load i32, i32* %376, align 4
  %378 = load i32, i32* @HBA_FIP_SUPPORT, align 4
  %379 = and i32 %377, %378
  %380 = icmp ne i32 %379, 0
  br i1 %380, label %430, label %381

381:                                              ; preds = %371
  %382 = load i32, i32* @GFP_KERNEL, align 4
  %383 = call %struct.lpfc_dmabuf* @kzalloc(i32 8, i32 %382)
  %384 = bitcast %struct.lpfc_dmabuf* %383 to %struct.fcf_record*
  store %struct.fcf_record* %384, %struct.fcf_record** %12, align 8
  %385 = load %struct.fcf_record*, %struct.fcf_record** %12, align 8
  %386 = icmp ne %struct.fcf_record* %385, null
  %387 = xor i1 %386, true
  %388 = zext i1 %387 to i32
  %389 = call i64 @unlikely(i32 %388)
  %390 = icmp ne i64 %389, 0
  br i1 %390, label %391, label %400

391:                                              ; preds = %381
  %392 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %393 = load i32, i32* @KERN_ERR, align 4
  %394 = load i32, i32* @LOG_MBOX, align 4
  %395 = load i32, i32* @LOG_SLI, align 4
  %396 = or i32 %394, %395
  %397 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %392, i32 %393, i32 %396, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %398 = load i32, i32* @ENODEV, align 4
  %399 = sub nsw i32 0, %398
  store i32 %399, i32* %11, align 4
  br label %488

400:                                              ; preds = %381
  %401 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %402 = load %struct.fcf_record*, %struct.fcf_record** %12, align 8
  %403 = bitcast %struct.fcf_record* %402 to %struct.lpfc_dmabuf*
  %404 = load i32, i32* @LPFC_FCOE_FCF_DEF_INDEX, align 4
  %405 = call i32 @lpfc_sli4_build_dflt_fcf_record(%struct.lpfc_hba* %401, %struct.lpfc_dmabuf* %403, i32 %404)
  %406 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %407 = load %struct.fcf_record*, %struct.fcf_record** %12, align 8
  %408 = bitcast %struct.fcf_record* %407 to %struct.lpfc_dmabuf*
  %409 = call i32 @lpfc_sli4_add_fcf_record(%struct.lpfc_hba* %406, %struct.lpfc_dmabuf* %408)
  store i32 %409, i32* %11, align 4
  %410 = load i32, i32* %11, align 4
  %411 = call i64 @unlikely(i32 %410)
  %412 = icmp ne i64 %411, 0
  br i1 %412, label %413, label %426

413:                                              ; preds = %400
  %414 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %415 = load i32, i32* @KERN_ERR, align 4
  %416 = load i32, i32* @LOG_MBOX, align 4
  %417 = load i32, i32* @LOG_SLI, align 4
  %418 = or i32 %416, %417
  %419 = load i32, i32* %11, align 4
  %420 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %414, i32 %415, i32 %418, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.4, i64 0, i64 0), i32 %419)
  %421 = load i32, i32* @ENODEV, align 4
  %422 = sub nsw i32 0, %421
  store i32 %422, i32* %11, align 4
  %423 = load %struct.fcf_record*, %struct.fcf_record** %12, align 8
  %424 = bitcast %struct.fcf_record* %423 to %struct.lpfc_dmabuf*
  %425 = call i32 @kfree(%struct.lpfc_dmabuf* %424)
  br label %488

426:                                              ; preds = %400
  %427 = load %struct.fcf_record*, %struct.fcf_record** %12, align 8
  %428 = bitcast %struct.fcf_record* %427 to %struct.lpfc_dmabuf*
  %429 = call i32 @kfree(%struct.lpfc_dmabuf* %428)
  br label %430

430:                                              ; preds = %426, %371
  %431 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %432 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %431, i32 0, i32 8
  %433 = load i64, i64* %14, align 8
  %434 = call i32 @spin_lock_irqsave(i32* %432, i64 %433)
  %435 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %436 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %435, i32 0, i32 1
  %437 = load i32, i32* %436, align 4
  %438 = load i32, i32* @FCF_TS_INPROG, align 4
  %439 = and i32 %437, %438
  %440 = icmp ne i32 %439, 0
  br i1 %440, label %441, label %446

441:                                              ; preds = %430
  %442 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %443 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %442, i32 0, i32 8
  %444 = load i64, i64* %14, align 8
  %445 = call i32 @spin_unlock_irqrestore(i32* %443, i64 %444)
  br label %504

446:                                              ; preds = %430
  %447 = load i32, i32* @FCF_INIT_DISC, align 4
  %448 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %449 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %448, i32 0, i32 9
  %450 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %449, i32 0, i32 0
  %451 = load i32, i32* %450, align 8
  %452 = or i32 %451, %447
  store i32 %452, i32* %450, align 8
  %453 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %454 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %453, i32 0, i32 8
  %455 = load i64, i64* %14, align 8
  %456 = call i32 @spin_unlock_irqrestore(i32* %454, i64 %455)
  %457 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %458 = load i32, i32* @KERN_INFO, align 4
  %459 = load i32, i32* @LOG_FIP, align 4
  %460 = load i32, i32* @LOG_DISCOVERY, align 4
  %461 = or i32 %459, %460
  %462 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %457, i32 %458, i32 %461, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i64 0, i64 0))
  %463 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %464 = load i32, i32* @LPFC_FCOE_FCF_GET_FIRST, align 4
  %465 = call i32 @lpfc_sli4_fcf_scan_read_fcf_rec(%struct.lpfc_hba* %463, i32 %464)
  store i32 %465, i32* %11, align 4
  %466 = load i32, i32* %11, align 4
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %468, label %484

468:                                              ; preds = %446
  %469 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %470 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %469, i32 0, i32 8
  %471 = load i64, i64* %14, align 8
  %472 = call i32 @spin_lock_irqsave(i32* %470, i64 %471)
  %473 = load i32, i32* @FCF_INIT_DISC, align 4
  %474 = xor i32 %473, -1
  %475 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %476 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %475, i32 0, i32 9
  %477 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %476, i32 0, i32 0
  %478 = load i32, i32* %477, align 8
  %479 = and i32 %478, %474
  store i32 %479, i32* %477, align 8
  %480 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %481 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %480, i32 0, i32 8
  %482 = load i64, i64* %14, align 8
  %483 = call i32 @spin_unlock_irqrestore(i32* %481, i64 %482)
  br label %488

484:                                              ; preds = %446
  %485 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %486 = call i32 @lpfc_sli4_clear_fcf_rr_bmask(%struct.lpfc_hba* %485)
  br label %487

487:                                              ; preds = %484, %370
  br label %504

488:                                              ; preds = %468, %413, %391, %364, %343, %308, %288, %281
  %489 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %490 = load i32, i32* @FC_VPORT_FAILED, align 4
  %491 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %489, i32 %490)
  %492 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %493 = load i32, i32* @KERN_ERR, align 4
  %494 = load i32, i32* @LOG_MBOX, align 4
  %495 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %496 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %495, i32 0, i32 3
  %497 = load i32, i32* %496, align 4
  %498 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %499 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %500 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %492, i32 %493, i32 %494, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0), i32 %497, %struct.TYPE_17__* %498, %struct.TYPE_17__* %499)
  %501 = load %struct.lpfc_hba*, %struct.lpfc_hba** %3, align 8
  %502 = load %struct.lpfc_vport*, %struct.lpfc_vport** %5, align 8
  %503 = call i32 @lpfc_issue_clear_la(%struct.lpfc_hba* %501, %struct.lpfc_vport* %502)
  br label %504

504:                                              ; preds = %488, %487, %441
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @bf_get(i32, %struct.lpfc_mbx_read_top*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @lpfc_linkup(%struct.lpfc_hba*) #1

declare dso_local %struct.TYPE_17__* @mempool_alloc(i32, i32) #1

declare dso_local i32 @lpfc_read_sparam(%struct.lpfc_hba*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @mempool_free(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @lpfc_sli_issue_mbox(%struct.lpfc_hba*, %struct.TYPE_17__*, i32) #1

declare dso_local i32 @lpfc_mbuf_free(%struct.lpfc_hba*, i32, i32) #1

declare dso_local i32 @kfree(%struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_config_link(%struct.lpfc_hba*, %struct.TYPE_17__*) #1

declare dso_local %struct.lpfc_dmabuf* @kzalloc(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @lpfc_sli4_build_dflt_fcf_record(%struct.lpfc_hba*, %struct.lpfc_dmabuf*, i32) #1

declare dso_local i32 @lpfc_sli4_add_fcf_record(%struct.lpfc_hba*, %struct.lpfc_dmabuf*) #1

declare dso_local i32 @lpfc_sli4_fcf_scan_read_fcf_rec(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_sli4_clear_fcf_rr_bmask(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_vport_set_state(%struct.lpfc_vport*, i32) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i32, %struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @lpfc_issue_clear_la(%struct.lpfc_hba*, %struct.lpfc_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
