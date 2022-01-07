; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_vport.c_lpfc_vport_create.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_vport.c_lpfc_vport_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_vport = type { i64, i32, i32, i32, %struct.Scsi_Host* }
%struct.Scsi_Host = type { i64 }
%struct.lpfc_nodelist = type { i64 }
%struct.lpfc_vport = type { i32, i32, i64, i32, i32, i32, %struct.fc_vport*, i32, i32, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_8__, %struct.lpfc_hba* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.lpfc_hba = type { i32, i64, i64, i64, i32, %struct.TYPE_12__*, i64, i32, i64, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }

@VPORT_ERROR = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_VPORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [59 x i8] c"1808 Create VPORT failed: NPIV is not enabled: SLImode:%d\0A\00", align 1
@VPORT_INVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [64 x i8] c"3189 Create VPORT failed: NPIV is not supported on NVME Target\0A\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"1809 Create VPORT failed: Max VPORTs (%d) exceeded\0A\00", align 1
@VPORT_NORESOURCES = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [54 x i8] c"1810 Create VPORT failed: Cannot get instance number\0A\00", align 1
@.str.4 = private unnamed_addr constant [35 x i8] c"1811 Create VPORT failed: vpi x%x\0A\00", align 1
@EINTR = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"1831 Create VPORT Interrupted.\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"1813 Create VPORT failed. Cannot get sparam\0A\00", align 1
@.str.7 = private unnamed_addr constant [5 x i8] c"WWNN\00", align 1
@.str.8 = private unnamed_addr constant [5 x i8] c"WWPN\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"1821 Create VPORT failed. Invalid WWN format\0A\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"1823 Create VPORT failed. Duplicate WWN on HBA\0A\00", align 1
@LPFC_ENABLE_FCP = common dso_local global i32 0, align 4
@FC_ALLOW_FDMI = common dso_local global i32 0, align 4
@LPFC_FDMI_SUPPORT = common dso_local global i64 0, align 8
@LPFC_SLI_REV4 = common dso_local global i32 0, align 4
@FC_VFI_REGISTERED = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [45 x i8] c"1838 Failed to INIT_VPI on vpi %d status %d\0A\00", align 1
@FC_VPORT_NEEDS_INIT_VPI = common dso_local global i32 0, align 4
@FC_VPORT_LINKDOWN = common dso_local global i32 0, align 4
@VPORT_OK = common dso_local global i32 0, align 4
@LPFC_LINK_UP = common dso_local global i64 0, align 8
@LPFC_FABRIC_CFG_LINK = common dso_local global i64 0, align 8
@LPFC_TOPOLOGY_LOOP = common dso_local global i64 0, align 8
@FC_VPORT_DISABLED = common dso_local global i32 0, align 4
@Fabric_DID = common dso_local global i32 0, align 4
@NLP_STE_UNMAPPED_NODE = common dso_local global i64 0, align 8
@LS_NPIV_FAB_SUPPORTED = common dso_local global i32 0, align 4
@FC_VPORT_NO_FABRIC_SUPP = common dso_local global i32 0, align 4
@LOG_ELS = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [29 x i8] c"0262 No NPIV Fabric support\0A\00", align 1
@FC_VPORT_FAILED = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [21 x i8] c"1825 Vport Created.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lpfc_vport_create(%struct.fc_vport* %0, i32 %1) #0 {
  %3 = alloca %struct.fc_vport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.lpfc_nodelist*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.lpfc_vport*, align 8
  %8 = alloca %struct.lpfc_hba*, align 8
  %9 = alloca %struct.lpfc_vport*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.fc_vport* %0, %struct.fc_vport** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.fc_vport*, %struct.fc_vport** %3, align 8
  %15 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %14, i32 0, i32 4
  %16 = load %struct.Scsi_Host*, %struct.Scsi_Host** %15, align 8
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %6, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %18 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.lpfc_vport*
  store %struct.lpfc_vport* %20, %struct.lpfc_vport** %7, align 8
  %21 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %22 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %21, i32 0, i32 12
  %23 = load %struct.lpfc_hba*, %struct.lpfc_hba** %22, align 8
  store %struct.lpfc_hba* %23, %struct.lpfc_hba** %8, align 8
  store %struct.lpfc_vport* null, %struct.lpfc_vport** %9, align 8
  %24 = load i32, i32* @VPORT_ERROR, align 4
  store i32 %24, i32* %12, align 4
  %25 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %26 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %27, 3
  br i1 %28, label %34, label %29

29:                                               ; preds = %2
  %30 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %31 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %30, i32 0, i32 9
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %29, %2
  %35 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %36 = load i32, i32* @KERN_ERR, align 4
  %37 = load i32, i32* @LOG_VPORT, align 4
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %39 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %35, i32 %36, i32 %37, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* @VPORT_INVAL, align 4
  store i32 %42, i32* %12, align 4
  br label %390

43:                                               ; preds = %29
  %44 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %45 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %44, i32 0, i32 8
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %43
  %49 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %50 = load i32, i32* @KERN_ERR, align 4
  %51 = load i32, i32* @LOG_VPORT, align 4
  %52 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %49, i32 %50, i32 %51, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i32, i32* @VPORT_INVAL, align 4
  store i32 %53, i32* %12, align 4
  br label %390

54:                                               ; preds = %43
  %55 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %56 = call i32 @lpfc_alloc_vpi(%struct.lpfc_hba* %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %68

59:                                               ; preds = %54
  %60 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %61 = load i32, i32* @KERN_ERR, align 4
  %62 = load i32, i32* @LOG_VPORT, align 4
  %63 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %64 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %63, i32 0, i32 7
  %65 = load i32, i32* %64, align 8
  %66 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %60, i32 %61, i32 %62, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @VPORT_NORESOURCES, align 4
  store i32 %67, i32* %12, align 4
  br label %390

68:                                               ; preds = %54
  %69 = call i32 (...) @lpfc_get_instance()
  store i32 %69, i32* %10, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %80

71:                                               ; preds = %68
  %72 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %73 = load i32, i32* @KERN_ERR, align 4
  %74 = load i32, i32* @LOG_VPORT, align 4
  %75 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %72, i32 %73, i32 %74, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %76 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %77 = load i32, i32* %11, align 4
  %78 = call i32 @lpfc_free_vpi(%struct.lpfc_hba* %76, i32 %77)
  %79 = load i32, i32* @VPORT_NORESOURCES, align 4
  store i32 %79, i32* %12, align 4
  br label %390

80:                                               ; preds = %68
  %81 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.fc_vport*, %struct.fc_vport** %3, align 8
  %84 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %83, i32 0, i32 3
  %85 = call %struct.lpfc_vport* @lpfc_create_port(%struct.lpfc_hba* %81, i32 %82, i32* %84)
  store %struct.lpfc_vport* %85, %struct.lpfc_vport** %9, align 8
  %86 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %87 = icmp ne %struct.lpfc_vport* %86, null
  br i1 %87, label %98, label %88

88:                                               ; preds = %80
  %89 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %90 = load i32, i32* @KERN_ERR, align 4
  %91 = load i32, i32* @LOG_VPORT, align 4
  %92 = load i32, i32* %11, align 4
  %93 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %89, i32 %90, i32 %91, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.4, i64 0, i64 0), i32 %92)
  %94 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %95 = load i32, i32* %11, align 4
  %96 = call i32 @lpfc_free_vpi(%struct.lpfc_hba* %94, i32 %95)
  %97 = load i32, i32* @VPORT_NORESOURCES, align 4
  store i32 %97, i32* %12, align 4
  br label %390

98:                                               ; preds = %80
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %101 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %100, i32 0, i32 0
  store i32 %99, i32* %101, align 8
  %102 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %103 = call i32 @lpfc_debugfs_initialize(%struct.lpfc_vport* %102)
  %104 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %105 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %106 = call i32 @lpfc_vport_sparm(%struct.lpfc_hba* %104, %struct.lpfc_vport* %105)
  store i32 %106, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %131

108:                                              ; preds = %98
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* @EINTR, align 4
  %111 = sub nsw i32 0, %110
  %112 = icmp eq i32 %109, %111
  br i1 %112, label %113, label %119

113:                                              ; preds = %108
  %114 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %115 = load i32, i32* @KERN_ERR, align 4
  %116 = load i32, i32* @LOG_VPORT, align 4
  %117 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %114, i32 %115, i32 %116, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0))
  %118 = load i32, i32* @VPORT_ERROR, align 4
  store i32 %118, i32* %12, align 4
  br label %125

119:                                              ; preds = %108
  %120 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %121 = load i32, i32* @KERN_ERR, align 4
  %122 = load i32, i32* @LOG_VPORT, align 4
  %123 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %120, i32 %121, i32 %122, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i64 0, i64 0))
  %124 = load i32, i32* @VPORT_NORESOURCES, align 4
  store i32 %124, i32* %12, align 4
  br label %125

125:                                              ; preds = %119, %113
  %126 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %127 = load i32, i32* %11, align 4
  %128 = call i32 @lpfc_free_vpi(%struct.lpfc_hba* %126, i32 %127)
  %129 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %130 = call i32 @destroy_port(%struct.lpfc_vport* %129)
  br label %390

131:                                              ; preds = %98
  %132 = load %struct.fc_vport*, %struct.fc_vport** %3, align 8
  %133 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %132, i32 0, i32 2
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %136 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %135, i32 0, i32 10
  %137 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @u64_to_wwn(i32 %134, i32 %139)
  %141 = load %struct.fc_vport*, %struct.fc_vport** %3, align 8
  %142 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 8
  %144 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %145 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %144, i32 0, i32 11
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @u64_to_wwn(i32 %143, i32 %148)
  %150 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %151 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %150, i32 0, i32 9
  %152 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %151, i32 0, i32 0
  %153 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %154 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %153, i32 0, i32 11
  %155 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @memcpy(i32* %152, i32 %157, i32 8)
  %159 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %160 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %159, i32 0, i32 9
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 1
  %162 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %163 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %162, i32 0, i32 10
  %164 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %163, i32 0, i32 0
  %165 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = call i32 @memcpy(i32* %161, i32 %166, i32 8)
  %168 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %169 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %170 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %169, i32 0, i32 9
  %171 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %170, i32 0, i32 1
  %172 = call i32 @lpfc_valid_wwn_format(%struct.lpfc_hba* %168, i32* %171, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0))
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %181

174:                                              ; preds = %131
  %175 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %176 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %177 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %176, i32 0, i32 9
  %178 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %177, i32 0, i32 0
  %179 = call i32 @lpfc_valid_wwn_format(%struct.lpfc_hba* %175, i32* %178, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0))
  %180 = icmp ne i32 %179, 0
  br i1 %180, label %192, label %181

181:                                              ; preds = %174, %131
  %182 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %183 = load i32, i32* @KERN_ERR, align 4
  %184 = load i32, i32* @LOG_VPORT, align 4
  %185 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %182, i32 %183, i32 %184, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i64 0, i64 0))
  %186 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %187 = load i32, i32* %11, align 4
  %188 = call i32 @lpfc_free_vpi(%struct.lpfc_hba* %186, i32 %187)
  %189 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %190 = call i32 @destroy_port(%struct.lpfc_vport* %189)
  %191 = load i32, i32* @VPORT_INVAL, align 4
  store i32 %191, i32* %12, align 4
  br label %390

192:                                              ; preds = %174
  %193 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %194 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %195 = call i32 @lpfc_unique_wwpn(%struct.lpfc_hba* %193, %struct.lpfc_vport* %194)
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %208, label %197

197:                                              ; preds = %192
  %198 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %199 = load i32, i32* @KERN_ERR, align 4
  %200 = load i32, i32* @LOG_VPORT, align 4
  %201 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %198, i32 %199, i32 %200, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i64 0, i64 0))
  %202 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %203 = load i32, i32* %11, align 4
  %204 = call i32 @lpfc_free_vpi(%struct.lpfc_hba* %202, i32 %203)
  %205 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %206 = call i32 @destroy_port(%struct.lpfc_vport* %205)
  %207 = load i32, i32* @VPORT_INVAL, align 4
  store i32 %207, i32* %12, align 4
  br label %390

208:                                              ; preds = %192
  %209 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %210 = call i32 @lpfc_alloc_sysfs_attr(%struct.lpfc_vport* %209)
  %211 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %212 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %211, i32 0, i32 5
  %213 = load %struct.TYPE_12__*, %struct.TYPE_12__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %217 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %216, i32 0, i32 8
  store i32 %215, i32* %217, align 4
  %218 = load i32, i32* @LPFC_ENABLE_FCP, align 4
  %219 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %220 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %219, i32 0, i32 7
  store i32 %218, i32* %220, align 8
  %221 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %222 = load %struct.fc_vport*, %struct.fc_vport** %3, align 8
  %223 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %222, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = inttoptr i64 %224 to %struct.lpfc_vport**
  store %struct.lpfc_vport* %221, %struct.lpfc_vport** %225, align 8
  %226 = load %struct.fc_vport*, %struct.fc_vport** %3, align 8
  %227 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %228 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %227, i32 0, i32 6
  store %struct.fc_vport* %226, %struct.fc_vport** %228, align 8
  %229 = load i32, i32* @FC_ALLOW_FDMI, align 4
  %230 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %231 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %230, i32 0, i32 5
  %232 = load i32, i32* %231, align 8
  %233 = or i32 %232, %229
  store i32 %233, i32* %231, align 8
  %234 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %235 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %234, i32 0, i32 6
  %236 = load i64, i64* %235, align 8
  %237 = icmp ne i64 %236, 0
  br i1 %237, label %244, label %238

238:                                              ; preds = %208
  %239 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %240 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %239, i32 0, i32 1
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @LPFC_FDMI_SUPPORT, align 8
  %243 = icmp eq i64 %241, %242
  br i1 %243, label %244, label %259

244:                                              ; preds = %238, %208
  %245 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %246 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %245, i32 0, i32 5
  %247 = load %struct.TYPE_12__*, %struct.TYPE_12__** %246, align 8
  %248 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %247, i32 0, i32 1
  %249 = load i32, i32* %248, align 4
  %250 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %251 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %250, i32 0, i32 4
  store i32 %249, i32* %251, align 4
  %252 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %253 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %252, i32 0, i32 5
  %254 = load %struct.TYPE_12__*, %struct.TYPE_12__** %253, align 8
  %255 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %254, i32 0, i32 0
  %256 = load i32, i32* %255, align 4
  %257 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %258 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %257, i32 0, i32 3
  store i32 %256, i32* %258, align 8
  br label %259

259:                                              ; preds = %244, %238
  %260 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %261 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 8
  %263 = load i32, i32* @LPFC_SLI_REV4, align 4
  %264 = icmp eq i32 %262, %263
  br i1 %264, label %265, label %289

265:                                              ; preds = %259
  %266 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %267 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* @FC_VFI_REGISTERED, align 4
  %270 = and i32 %268, %269
  %271 = icmp ne i32 %270, 0
  br i1 %271, label %272, label %289

272:                                              ; preds = %265
  %273 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %274 = call i32 @lpfc_sli4_init_vpi(%struct.lpfc_vport* %273)
  store i32 %274, i32* %12, align 4
  %275 = load i32, i32* %12, align 4
  %276 = icmp ne i32 %275, 0
  br i1 %276, label %277, label %288

277:                                              ; preds = %272
  %278 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %279 = load i32, i32* @KERN_ERR, align 4
  %280 = load i32, i32* @LOG_VPORT, align 4
  %281 = load i32, i32* %11, align 4
  %282 = load i32, i32* %12, align 4
  %283 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %278, i32 %279, i32 %280, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.11, i64 0, i64 0), i32 %281, i32 %282)
  %284 = load i32, i32* @VPORT_NORESOURCES, align 4
  store i32 %284, i32* %12, align 4
  %285 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %286 = load i32, i32* %11, align 4
  %287 = call i32 @lpfc_free_vpi(%struct.lpfc_hba* %285, i32 %286)
  br label %390

288:                                              ; preds = %272
  br label %306

289:                                              ; preds = %265, %259
  %290 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %291 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %290, i32 0, i32 0
  %292 = load i32, i32* %291, align 8
  %293 = load i32, i32* @LPFC_SLI_REV4, align 4
  %294 = icmp eq i32 %292, %293
  br i1 %294, label %295, label %305

295:                                              ; preds = %289
  %296 = load i32, i32* @FC_VPORT_NEEDS_INIT_VPI, align 4
  %297 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %298 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %297, i32 0, i32 1
  %299 = load i32, i32* %298, align 4
  %300 = or i32 %299, %296
  store i32 %300, i32* %298, align 4
  %301 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %302 = load i32, i32* @FC_VPORT_LINKDOWN, align 4
  %303 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %301, i32 %302)
  %304 = load i32, i32* @VPORT_OK, align 4
  store i32 %304, i32* %12, align 4
  br label %382

305:                                              ; preds = %289
  br label %306

306:                                              ; preds = %305, %288
  %307 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %308 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %307, i32 0, i32 2
  %309 = load i64, i64* %308, align 8
  %310 = load i64, i64* @LPFC_LINK_UP, align 8
  %311 = icmp slt i64 %309, %310
  br i1 %311, label %324, label %312

312:                                              ; preds = %306
  %313 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %314 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %313, i32 0, i32 2
  %315 = load i64, i64* %314, align 8
  %316 = load i64, i64* @LPFC_FABRIC_CFG_LINK, align 8
  %317 = icmp slt i64 %315, %316
  br i1 %317, label %324, label %318

318:                                              ; preds = %312
  %319 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %320 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %319, i32 0, i32 3
  %321 = load i64, i64* %320, align 8
  %322 = load i64, i64* @LPFC_TOPOLOGY_LOOP, align 8
  %323 = icmp eq i64 %321, %322
  br i1 %323, label %324, label %329

324:                                              ; preds = %318, %312, %306
  %325 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %326 = load i32, i32* @FC_VPORT_LINKDOWN, align 4
  %327 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %325, i32 %326)
  %328 = load i32, i32* @VPORT_OK, align 4
  store i32 %328, i32* %12, align 4
  br label %382

329:                                              ; preds = %318
  %330 = load i32, i32* %4, align 4
  %331 = icmp ne i32 %330, 0
  br i1 %331, label %332, label %337

332:                                              ; preds = %329
  %333 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %334 = load i32, i32* @FC_VPORT_DISABLED, align 4
  %335 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %333, i32 %334)
  %336 = load i32, i32* @VPORT_OK, align 4
  store i32 %336, i32* %12, align 4
  br label %382

337:                                              ; preds = %329
  %338 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %339 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %338, i32 0, i32 5
  %340 = load %struct.TYPE_12__*, %struct.TYPE_12__** %339, align 8
  %341 = load i32, i32* @Fabric_DID, align 4
  %342 = call %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.TYPE_12__* %340, i32 %341)
  store %struct.lpfc_nodelist* %342, %struct.lpfc_nodelist** %5, align 8
  %343 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %344 = icmp ne %struct.lpfc_nodelist* %343, null
  br i1 %344, label %345, label %376

345:                                              ; preds = %337
  %346 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %347 = call i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist* %346)
  %348 = icmp ne i64 %347, 0
  br i1 %348, label %349, label %376

349:                                              ; preds = %345
  %350 = load %struct.lpfc_nodelist*, %struct.lpfc_nodelist** %5, align 8
  %351 = getelementptr inbounds %struct.lpfc_nodelist, %struct.lpfc_nodelist* %350, i32 0, i32 0
  %352 = load i64, i64* %351, align 8
  %353 = load i64, i64* @NLP_STE_UNMAPPED_NODE, align 8
  %354 = icmp eq i64 %352, %353
  br i1 %354, label %355, label %376

355:                                              ; preds = %349
  %356 = load %struct.lpfc_hba*, %struct.lpfc_hba** %8, align 8
  %357 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %356, i32 0, i32 4
  %358 = load i32, i32* %357, align 8
  %359 = load i32, i32* @LS_NPIV_FAB_SUPPORTED, align 4
  %360 = and i32 %358, %359
  %361 = icmp ne i32 %360, 0
  br i1 %361, label %362, label %367

362:                                              ; preds = %355
  %363 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %364 = call i32 @lpfc_set_disctmo(%struct.lpfc_vport* %363)
  %365 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %366 = call i32 @lpfc_initial_fdisc(%struct.lpfc_vport* %365)
  br label %375

367:                                              ; preds = %355
  %368 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %369 = load i32, i32* @FC_VPORT_NO_FABRIC_SUPP, align 4
  %370 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %368, i32 %369)
  %371 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %372 = load i32, i32* @KERN_ERR, align 4
  %373 = load i32, i32* @LOG_ELS, align 4
  %374 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %371, i32 %372, i32 %373, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  br label %375

375:                                              ; preds = %367, %362
  br label %380

376:                                              ; preds = %349, %345, %337
  %377 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %378 = load i32, i32* @FC_VPORT_FAILED, align 4
  %379 = call i32 @lpfc_vport_set_state(%struct.lpfc_vport* %377, i32 %378)
  br label %380

380:                                              ; preds = %376, %375
  %381 = load i32, i32* @VPORT_OK, align 4
  store i32 %381, i32* %12, align 4
  br label %382

382:                                              ; preds = %380, %332, %324, %295
  %383 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %384 = load i32, i32* @KERN_ERR, align 4
  %385 = load i32, i32* @LOG_VPORT, align 4
  %386 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %383, i32 %384, i32 %385, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  %387 = load %struct.lpfc_vport*, %struct.lpfc_vport** %9, align 8
  %388 = call i32 @lpfc_shost_from_vport(%struct.lpfc_vport* %387)
  %389 = call i32 @lpfc_host_attrib_init(i32 %388)
  br label %390

390:                                              ; preds = %382, %277, %197, %181, %125, %88, %71, %59, %48, %34
  %391 = load i32, i32* %12, align 4
  ret i32 %391
}

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @lpfc_alloc_vpi(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_get_instance(...) #1

declare dso_local i32 @lpfc_free_vpi(%struct.lpfc_hba*, i32) #1

declare dso_local %struct.lpfc_vport* @lpfc_create_port(%struct.lpfc_hba*, i32, i32*) #1

declare dso_local i32 @lpfc_debugfs_initialize(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_vport_sparm(%struct.lpfc_hba*, %struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*) #1

declare dso_local i32 @destroy_port(%struct.lpfc_vport*) #1

declare dso_local i32 @u64_to_wwn(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @lpfc_valid_wwn_format(%struct.lpfc_hba*, i32*, i8*) #1

declare dso_local i32 @lpfc_unique_wwpn(%struct.lpfc_hba*, %struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_alloc_sysfs_attr(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_sli4_init_vpi(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_vport_set_state(%struct.lpfc_vport*, i32) #1

declare dso_local %struct.lpfc_nodelist* @lpfc_findnode_did(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @NLP_CHK_NODE_ACT(%struct.lpfc_nodelist*) #1

declare dso_local i32 @lpfc_set_disctmo(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_initial_fdisc(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_host_attrib_init(i32) #1

declare dso_local i32 @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
