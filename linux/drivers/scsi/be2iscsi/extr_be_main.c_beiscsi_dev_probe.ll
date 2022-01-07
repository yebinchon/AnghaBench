; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_dev_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_main.c_beiscsi_dev_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32 }
%struct.pci_device_id = type { i32 }
%struct.hwi_context_memory = type { %struct.be_eq_obj* }
%struct.be_eq_obj = type { i32, i32 }
%struct.hwi_controller = type { %struct.hwi_context_memory* }
%struct.beiscsi_hba = type { i32, i32, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_15__, i32, i32, i32, i32, i32, i32, i32, %struct.hwi_controller*, %struct.TYPE_12__, i32, i32, i32, i32, i8* }
%struct.TYPE_14__ = type { i32, i32, i32 }
%struct.TYPE_13__ = type { i32, i64 }
%struct.TYPE_15__ = type { i32*, %struct.TYPE_11__, i64, i64, %struct.TYPE_10__*, i32, i64*, i32* }
%struct.TYPE_11__ = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32 }

@.str = private unnamed_addr constant [49 x i8] c"beiscsi_dev_probe - Failed to enable pci device\0A\00", align 1
@.str.1 = private unnamed_addr constant [49 x i8] c"beiscsi_dev_probe - Failed in beiscsi_hba_alloc\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@BEISCSI_LOG_INIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [46 x i8] c"BM_%d : PCIe Error Reporting Enabling Failed\0A\00", align 1
@BE_GEN2 = common dso_local global i32 0, align 4
@beiscsi_iotask = common dso_local global i8* null, align 8
@.str.3 = private unnamed_addr constant [41 x i8] c"Obsolete/Unsupported BE2 Adapter Family\0A\00", align 1
@BE_GEN3 = common dso_local global i32 0, align 4
@BE_GEN4 = common dso_local global i32 0, align 4
@beiscsi_iotask_v2 = common dso_local global i8* null, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"BM_%d : be_ctrl_init failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"BM_%d : Error getting fw config\0A\00", align 1
@KERN_INFO = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [23 x i8] c"BM_%d : num_cpus = %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"BM_%d : alloc host mem failed\0A\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"BM_%d : init port failed\0A\00", align 1
@MAX_MCC_CMD = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [16 x i8] c"beiscsi_%02x_wq\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@WQ_MEM_RECLAIM = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [57 x i8] c"BM_%d : beiscsi_dev_probe-Failed to allocate work queue\0A\00", align 1
@beiscsi_eqd_update_work = common dso_local global i32 0, align 4
@be_iopoll_budget = common dso_local global i32 0, align 4
@be_iopoll = common dso_local global i32 0, align 4
@beiscsi_mcc_work = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [55 x i8] c"BM_%d : beiscsi_dev_probe-Failed to beiscsi_init_irqs\0A\00", align 1
@BEISCSI_HBA_ONLINE = common dso_local global i32 0, align 4
@.str.13 = private unnamed_addr constant [28 x i8] c"BM_%d : port online: 0x%lx\0A\00", align 1
@beiscsi_boot_work = common dso_local global i32 0, align 4
@BEISCSI_HBA_BOOT_FOUND = common dso_local global i32 0, align 4
@BEISCSI_EQD_UPDATE_INTERVAL = common dso_local global i32 0, align 4
@beiscsi_sess_work = common dso_local global i32 0, align 4
@beiscsi_recover_port = common dso_local global i32 0, align 4
@beiscsi_hw_health_check = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@BEISCSI_UE_DETECT_INTERVAL = common dso_local global i32 0, align 4
@.str.14 = private unnamed_addr constant [39 x i8] c"\0A\0A\0A BM_%d : SUCCESS - DRIVER LOADED\0A\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @beiscsi_dev_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @beiscsi_dev_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.hwi_context_memory*, align 8
  %7 = alloca %struct.hwi_controller*, align 8
  %8 = alloca %struct.beiscsi_hba*, align 8
  %9 = alloca %struct.be_eq_obj*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [20 x i8], align 16
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store %struct.beiscsi_hba* null, %struct.beiscsi_hba** %8, align 8
  %14 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %15 = call i32 @beiscsi_enable_pci(%struct.pci_dev* %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 1
  %21 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %3, align 4
  br label %471

23:                                               ; preds = %2
  %24 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %25 = call %struct.beiscsi_hba* @beiscsi_hba_alloc(%struct.pci_dev* %24)
  store %struct.beiscsi_hba* %25, %struct.beiscsi_hba** %8, align 8
  %26 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %27 = icmp ne %struct.beiscsi_hba* %26, null
  br i1 %27, label %34, label %28

28:                                               ; preds = %23
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 1
  %31 = call i32 @dev_err(i32* %30, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.1, i64 0, i64 0))
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %12, align 4
  br label %465

34:                                               ; preds = %23
  %35 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %36 = call i32 @pci_enable_pcie_error_reporting(%struct.pci_dev* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %41 = load i32, i32* @KERN_WARNING, align 4
  %42 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %43 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %40, i32 %41, i32 %42, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %39, %34
  %45 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %46 = call i32 @pci_save_state(%struct.pci_dev* %45)
  %47 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %48 = call i32 @beiscsi_hba_attrs_init(%struct.beiscsi_hba* %47)
  %49 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %50 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  %51 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %52 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %78 [
    i32 133, label %54
    i32 131, label %54
    i32 130, label %54
    i32 132, label %64
    i32 129, label %64
    i32 128, label %71
  ]

54:                                               ; preds = %44, %44, %44
  %55 = load i32, i32* @BE_GEN2, align 4
  %56 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %57 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %56, i32 0, i32 17
  store i32 %55, i32* %57, align 4
  %58 = load i8*, i8** @beiscsi_iotask, align 8
  %59 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %60 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %59, i32 0, i32 18
  store i8* %58, i8** %60, align 8
  %61 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %62 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %61, i32 0, i32 1
  %63 = call i32 @dev_warn(i32* %62, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  br label %81

64:                                               ; preds = %44, %44
  %65 = load i32, i32* @BE_GEN3, align 4
  %66 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %67 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %66, i32 0, i32 17
  store i32 %65, i32* %67, align 4
  %68 = load i8*, i8** @beiscsi_iotask, align 8
  %69 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %70 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %69, i32 0, i32 18
  store i8* %68, i8** %70, align 8
  br label %81

71:                                               ; preds = %44
  %72 = load i32, i32* @BE_GEN4, align 4
  %73 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %74 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %73, i32 0, i32 17
  store i32 %72, i32* %74, align 4
  %75 = load i8*, i8** @beiscsi_iotask_v2, align 8
  %76 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %77 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %76, i32 0, i32 18
  store i8* %75, i8** %77, align 8
  br label %81

78:                                               ; preds = %44
  %79 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %80 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %79, i32 0, i32 17
  store i32 0, i32* %80, align 4
  br label %81

81:                                               ; preds = %78, %71, %64, %54
  %82 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %83 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %84 = call i32 @be_ctrl_init(%struct.beiscsi_hba* %82, %struct.pci_dev* %83)
  store i32 %84, i32* %12, align 4
  %85 = load i32, i32* %12, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %89 = load i32, i32* @KERN_ERR, align 4
  %90 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %91 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %88, i32 %89, i32 %90, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  br label %450

92:                                               ; preds = %81
  %93 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %94 = call i32 @beiscsi_init_sliport(%struct.beiscsi_hba* %93)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %92
  br label %450

98:                                               ; preds = %92
  %99 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %100 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %99, i32 0, i32 16
  %101 = call i32 @spin_lock_init(i32* %100)
  %102 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %103 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %102, i32 0, i32 15
  %104 = call i32 @spin_lock_init(i32* %103)
  %105 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %106 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %105, i32 0, i32 14
  %107 = call i32 @spin_lock_init(i32* %106)
  %108 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %109 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %108, i32 0, i32 4
  %110 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %111 = call i32 @beiscsi_get_fw_config(%struct.TYPE_15__* %109, %struct.beiscsi_hba* %110)
  store i32 %111, i32* %12, align 4
  %112 = load i32, i32* %12, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %98
  %115 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %116 = load i32, i32* @KERN_ERR, align 4
  %117 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %118 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %115, i32 %116, i32 %117, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  br label %427

119:                                              ; preds = %98
  %120 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %121 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %120, i32 0, i32 4
  %122 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %123 = call i32 @beiscsi_get_port_name(%struct.TYPE_15__* %121, %struct.beiscsi_hba* %122)
  %124 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %125 = call i32 @beiscsi_get_params(%struct.beiscsi_hba* %124)
  %126 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %127 = call i32 @beiscsi_set_host_data(%struct.beiscsi_hba* %126)
  %128 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %129 = call i32 @beiscsi_set_uer_feature(%struct.beiscsi_hba* %128)
  %130 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %131 = call i32 @be2iscsi_enable_msix(%struct.beiscsi_hba* %130)
  %132 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %133 = load i32, i32* @KERN_INFO, align 4
  %134 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %135 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %136 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %132, i32 %133, i32 %134, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i64 0, i64 0), i32 %137)
  %139 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %140 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %139, i32 0, i32 13
  %141 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %144 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %143, i32 0, i32 2
  %145 = load %struct.TYPE_14__*, %struct.TYPE_14__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 2
  store i32 %142, i32* %146, align 4
  %147 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %148 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %147, i32 0, i32 13
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %152 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %151, i32 0, i32 2
  %153 = load %struct.TYPE_14__*, %struct.TYPE_14__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %153, i32 0, i32 1
  store i32 %150, i32* %154, align 4
  %155 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %156 = call i32 @beiscsi_get_memory(%struct.beiscsi_hba* %155)
  store i32 %156, i32* %12, align 4
  %157 = load i32, i32* %12, align 4
  %158 = icmp slt i32 %157, 0
  br i1 %158, label %159, label %164

159:                                              ; preds = %119
  %160 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %161 = load i32, i32* @KERN_ERR, align 4
  %162 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %163 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %160, i32 %161, i32 %162, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0))
  br label %427

164:                                              ; preds = %119
  %165 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %166 = call i32 @beiscsi_init_port(%struct.beiscsi_hba* %165)
  store i32 %166, i32* %12, align 4
  %167 = load i32, i32* %12, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %169, label %176

169:                                              ; preds = %164
  %170 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %171 = load i32, i32* @KERN_ERR, align 4
  %172 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %173 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %170, i32 %171, i32 %172, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0))
  %174 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %175 = call i32 @beiscsi_free_mem(%struct.beiscsi_hba* %174)
  br label %427

176:                                              ; preds = %164
  store i32 0, i32* %13, align 4
  br label %177

177:                                              ; preds = %222, %176
  %178 = load i32, i32* %13, align 4
  %179 = load i32, i32* @MAX_MCC_CMD, align 4
  %180 = icmp slt i32 %178, %179
  br i1 %180, label %181, label %225

181:                                              ; preds = %177
  %182 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %183 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %182, i32 0, i32 4
  %184 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %183, i32 0, i32 7
  %185 = load i32*, i32** %184, align 8
  %186 = load i32, i32* %13, align 4
  %187 = add nsw i32 %186, 1
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i32, i32* %185, i64 %188
  %190 = call i32 @init_waitqueue_head(i32* %189)
  %191 = load i32, i32* %13, align 4
  %192 = add nsw i32 %191, 1
  %193 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %194 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %193, i32 0, i32 4
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = load i32, i32* %13, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i32, i32* %196, i64 %198
  store i32 %192, i32* %199, align 4
  %200 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %201 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %200, i32 0, i32 4
  %202 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %201, i32 0, i32 6
  %203 = load i64*, i64** %202, align 8
  %204 = load i32, i32* %13, align 4
  %205 = add nsw i32 %204, 1
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds i64, i64* %203, i64 %206
  store i64 0, i64* %207, align 8
  %208 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %209 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %208, i32 0, i32 4
  %210 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i32 0, i32 5
  %211 = load i32, i32* %210, align 8
  %212 = add nsw i32 %211, 1
  store i32 %212, i32* %210, align 8
  %213 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %214 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %213, i32 0, i32 4
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 4
  %216 = load %struct.TYPE_10__*, %struct.TYPE_10__** %215, align 8
  %217 = load i32, i32* %13, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %216, i64 %218
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 0
  %221 = call i32 @memset(i32* %220, i32 0, i32 4)
  br label %222

222:                                              ; preds = %181
  %223 = load i32, i32* %13, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %13, align 4
  br label %177

225:                                              ; preds = %177
  %226 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %227 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %226, i32 0, i32 4
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %227, i32 0, i32 2
  store i64 0, i64* %228, align 8
  %229 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %230 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %229, i32 0, i32 4
  %231 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %230, i32 0, i32 3
  store i64 0, i64* %231, align 8
  %232 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %233 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %234 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %233, i32 0, i32 2
  %235 = load %struct.TYPE_14__*, %struct.TYPE_14__** %234, align 8
  %236 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 4
  %238 = call i32 @snprintf(i8* %232, i32 20, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i64 0, i64 0), i32 %237)
  %239 = load i32, i32* @WQ_MEM_RECLAIM, align 4
  %240 = getelementptr inbounds [20 x i8], [20 x i8]* %11, i64 0, i64 0
  %241 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.10, i64 0, i64 0), i32 %239, i32 1, i8* %240)
  %242 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %243 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %242, i32 0, i32 5
  store i32 %241, i32* %243, align 8
  %244 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %245 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %244, i32 0, i32 5
  %246 = load i32, i32* %245, align 8
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %255, label %248

248:                                              ; preds = %225
  %249 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %250 = load i32, i32* @KERN_ERR, align 4
  %251 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %252 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %249, i32 %250, i32 %251, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.11, i64 0, i64 0))
  %253 = load i32, i32* @ENOMEM, align 4
  %254 = sub nsw i32 0, %253
  store i32 %254, i32* %12, align 4
  br label %420

255:                                              ; preds = %225
  %256 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %257 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %256, i32 0, i32 9
  %258 = load i32, i32* @beiscsi_eqd_update_work, align 4
  %259 = call i32 @INIT_DELAYED_WORK(i32* %257, i32 %258)
  %260 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %261 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %260, i32 0, i32 12
  %262 = load %struct.hwi_controller*, %struct.hwi_controller** %261, align 8
  store %struct.hwi_controller* %262, %struct.hwi_controller** %7, align 8
  %263 = load %struct.hwi_controller*, %struct.hwi_controller** %7, align 8
  %264 = getelementptr inbounds %struct.hwi_controller, %struct.hwi_controller* %263, i32 0, i32 0
  %265 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %264, align 8
  store %struct.hwi_context_memory* %265, %struct.hwi_context_memory** %6, align 8
  store i32 0, i32* %13, align 4
  br label %266

266:                                              ; preds = %284, %255
  %267 = load i32, i32* %13, align 4
  %268 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %269 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %268, i32 0, i32 1
  %270 = load i32, i32* %269, align 4
  %271 = icmp slt i32 %267, %270
  br i1 %271, label %272, label %287

272:                                              ; preds = %266
  %273 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %6, align 8
  %274 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %273, i32 0, i32 0
  %275 = load %struct.be_eq_obj*, %struct.be_eq_obj** %274, align 8
  %276 = load i32, i32* %13, align 4
  %277 = sext i32 %276 to i64
  %278 = getelementptr inbounds %struct.be_eq_obj, %struct.be_eq_obj* %275, i64 %277
  store %struct.be_eq_obj* %278, %struct.be_eq_obj** %9, align 8
  %279 = load %struct.be_eq_obj*, %struct.be_eq_obj** %9, align 8
  %280 = getelementptr inbounds %struct.be_eq_obj, %struct.be_eq_obj* %279, i32 0, i32 0
  %281 = load i32, i32* @be_iopoll_budget, align 4
  %282 = load i32, i32* @be_iopoll, align 4
  %283 = call i32 @irq_poll_init(i32* %280, i32 %281, i32 %282)
  br label %284

284:                                              ; preds = %272
  %285 = load i32, i32* %13, align 4
  %286 = add nsw i32 %285, 1
  store i32 %286, i32* %13, align 4
  br label %266

287:                                              ; preds = %266
  %288 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %289 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %288, i32 0, i32 3
  %290 = load %struct.TYPE_13__*, %struct.TYPE_13__** %289, align 8
  %291 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %290, i32 0, i32 1
  %292 = load i64, i64* %291, align 8
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %296

294:                                              ; preds = %287
  %295 = load i32, i32* %13, align 4
  br label %297

296:                                              ; preds = %287
  br label %297

297:                                              ; preds = %296, %294
  %298 = phi i32 [ %295, %294 ], [ 0, %296 ]
  store i32 %298, i32* %13, align 4
  %299 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %6, align 8
  %300 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %299, i32 0, i32 0
  %301 = load %struct.be_eq_obj*, %struct.be_eq_obj** %300, align 8
  %302 = load i32, i32* %13, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds %struct.be_eq_obj, %struct.be_eq_obj* %301, i64 %303
  store %struct.be_eq_obj* %304, %struct.be_eq_obj** %9, align 8
  %305 = load %struct.be_eq_obj*, %struct.be_eq_obj** %9, align 8
  %306 = getelementptr inbounds %struct.be_eq_obj, %struct.be_eq_obj* %305, i32 0, i32 1
  %307 = load i32, i32* @beiscsi_mcc_work, align 4
  %308 = call i32 @INIT_WORK(i32* %306, i32 %307)
  %309 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %310 = call i32 @beiscsi_init_irqs(%struct.beiscsi_hba* %309)
  store i32 %310, i32* %12, align 4
  %311 = load i32, i32* %12, align 4
  %312 = icmp slt i32 %311, 0
  br i1 %312, label %313, label %318

313:                                              ; preds = %297
  %314 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %315 = load i32, i32* @KERN_ERR, align 4
  %316 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %317 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %314, i32 %315, i32 %316, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.12, i64 0, i64 0))
  br label %395

318:                                              ; preds = %297
  %319 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %320 = call i32 @hwi_enable_intr(%struct.beiscsi_hba* %319)
  %321 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %322 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %321, i32 0, i32 2
  %323 = load %struct.TYPE_14__*, %struct.TYPE_14__** %322, align 8
  %324 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %325 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %324, i32 0, i32 3
  %326 = load %struct.TYPE_13__*, %struct.TYPE_13__** %325, align 8
  %327 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %326, i32 0, i32 0
  %328 = call i32 @iscsi_host_add(%struct.TYPE_14__* %323, i32* %327)
  store i32 %328, i32* %12, align 4
  %329 = load i32, i32* %12, align 4
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %331, label %332

331:                                              ; preds = %318
  br label %390

332:                                              ; preds = %318
  %333 = load i32, i32* @BEISCSI_HBA_ONLINE, align 4
  %334 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %335 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %334, i32 0, i32 10
  %336 = call i32 @set_bit(i32 %333, i32* %335)
  %337 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %338 = load i32, i32* @KERN_INFO, align 4
  %339 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %340 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %339, i32 0, i32 10
  %341 = load i32, i32* %340, align 4
  %342 = call i32 @__beiscsi_log(%struct.beiscsi_hba* %337, i32 %338, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.13, i64 0, i64 0), i32 %341)
  %343 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %344 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %343, i32 0, i32 11
  %345 = load i32, i32* @beiscsi_boot_work, align 4
  %346 = call i32 @INIT_WORK(i32* %344, i32 %345)
  %347 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %348 = call i32 @beiscsi_boot_get_shandle(%struct.beiscsi_hba* %347, i32* %10)
  store i32 %348, i32* %12, align 4
  %349 = load i32, i32* %12, align 4
  %350 = icmp sgt i32 %349, 0
  br i1 %350, label %351, label %359

351:                                              ; preds = %332
  %352 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %353 = load i32, i32* %10, align 4
  %354 = call i32 @beiscsi_start_boot_work(%struct.beiscsi_hba* %352, i32 %353)
  %355 = load i32, i32* @BEISCSI_HBA_BOOT_FOUND, align 4
  %356 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %357 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %356, i32 0, i32 10
  %358 = call i32 @set_bit(i32 %355, i32* %357)
  br label %359

359:                                              ; preds = %351, %332
  %360 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %361 = call i32 @beiscsi_iface_create_default(%struct.beiscsi_hba* %360)
  %362 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %363 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %362, i32 0, i32 9
  %364 = load i32, i32* @BEISCSI_EQD_UPDATE_INTERVAL, align 4
  %365 = call i64 @msecs_to_jiffies(i32 %364)
  %366 = call i32 @schedule_delayed_work(i32* %363, i64 %365)
  %367 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %368 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %367, i32 0, i32 8
  %369 = load i32, i32* @beiscsi_sess_work, align 4
  %370 = call i32 @INIT_WORK(i32* %368, i32 %369)
  %371 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %372 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %371, i32 0, i32 7
  %373 = load i32, i32* @beiscsi_recover_port, align 4
  %374 = call i32 @INIT_DELAYED_WORK(i32* %372, i32 %373)
  %375 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %376 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %375, i32 0, i32 6
  %377 = load i32, i32* @beiscsi_hw_health_check, align 4
  %378 = call i32 @timer_setup(i32* %376, i32 %377, i32 0)
  %379 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %380 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %379, i32 0, i32 6
  %381 = load i64, i64* @jiffies, align 8
  %382 = load i32, i32* @BEISCSI_UE_DETECT_INTERVAL, align 4
  %383 = call i64 @msecs_to_jiffies(i32 %382)
  %384 = add nsw i64 %381, %383
  %385 = call i32 @mod_timer(i32* %380, i64 %384)
  %386 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %387 = load i32, i32* @KERN_INFO, align 4
  %388 = load i32, i32* @BEISCSI_LOG_INIT, align 4
  %389 = call i32 (%struct.beiscsi_hba*, i32, i32, i8*, ...) @beiscsi_log(%struct.beiscsi_hba* %386, i32 %387, i32 %388, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %471

390:                                              ; preds = %331
  %391 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %392 = call i32 @hwi_disable_intr(%struct.beiscsi_hba* %391)
  %393 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %394 = call i32 @beiscsi_free_irqs(%struct.beiscsi_hba* %393)
  br label %395

395:                                              ; preds = %390, %313
  store i32 0, i32* %13, align 4
  br label %396

396:                                              ; preds = %412, %395
  %397 = load i32, i32* %13, align 4
  %398 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %399 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 4
  %401 = icmp slt i32 %397, %400
  br i1 %401, label %402, label %415

402:                                              ; preds = %396
  %403 = load %struct.hwi_context_memory*, %struct.hwi_context_memory** %6, align 8
  %404 = getelementptr inbounds %struct.hwi_context_memory, %struct.hwi_context_memory* %403, i32 0, i32 0
  %405 = load %struct.be_eq_obj*, %struct.be_eq_obj** %404, align 8
  %406 = load i32, i32* %13, align 4
  %407 = sext i32 %406 to i64
  %408 = getelementptr inbounds %struct.be_eq_obj, %struct.be_eq_obj* %405, i64 %407
  store %struct.be_eq_obj* %408, %struct.be_eq_obj** %9, align 8
  %409 = load %struct.be_eq_obj*, %struct.be_eq_obj** %9, align 8
  %410 = getelementptr inbounds %struct.be_eq_obj, %struct.be_eq_obj* %409, i32 0, i32 0
  %411 = call i32 @irq_poll_disable(i32* %410)
  br label %412

412:                                              ; preds = %402
  %413 = load i32, i32* %13, align 4
  %414 = add nsw i32 %413, 1
  store i32 %414, i32* %13, align 4
  br label %396

415:                                              ; preds = %396
  %416 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %417 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %416, i32 0, i32 5
  %418 = load i32, i32* %417, align 8
  %419 = call i32 @destroy_workqueue(i32 %418)
  br label %420

420:                                              ; preds = %415, %248
  %421 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %422 = call i32 @hwi_cleanup_port(%struct.beiscsi_hba* %421)
  %423 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %424 = call i32 @beiscsi_cleanup_port(%struct.beiscsi_hba* %423)
  %425 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %426 = call i32 @beiscsi_free_mem(%struct.beiscsi_hba* %425)
  br label %427

427:                                              ; preds = %420, %169, %159, %114
  %428 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %429 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %428, i32 0, i32 3
  %430 = load %struct.TYPE_13__*, %struct.TYPE_13__** %429, align 8
  %431 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %430, i32 0, i32 0
  %432 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %433 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %432, i32 0, i32 4
  %434 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %433, i32 0, i32 1
  %435 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %434, i32 0, i32 2
  %436 = load i32, i32* %435, align 8
  %437 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %438 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %437, i32 0, i32 4
  %439 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %438, i32 0, i32 1
  %440 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %439, i32 0, i32 1
  %441 = load i32, i32* %440, align 4
  %442 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %443 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %442, i32 0, i32 4
  %444 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %443, i32 0, i32 1
  %445 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 8
  %447 = call i32 @dma_free_coherent(i32* %431, i32 %436, i32 %441, i32 %446)
  %448 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %449 = call i32 @beiscsi_unmap_pci_function(%struct.beiscsi_hba* %448)
  br label %450

450:                                              ; preds = %427, %97, %87
  %451 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %452 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %451, i32 0, i32 3
  %453 = load %struct.TYPE_13__*, %struct.TYPE_13__** %452, align 8
  %454 = call i32 @pci_disable_msix(%struct.TYPE_13__* %453)
  %455 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %456 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %455, i32 0, i32 3
  %457 = load %struct.TYPE_13__*, %struct.TYPE_13__** %456, align 8
  %458 = call i32 @pci_dev_put(%struct.TYPE_13__* %457)
  %459 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %8, align 8
  %460 = getelementptr inbounds %struct.beiscsi_hba, %struct.beiscsi_hba* %459, i32 0, i32 2
  %461 = load %struct.TYPE_14__*, %struct.TYPE_14__** %460, align 8
  %462 = call i32 @iscsi_host_free(%struct.TYPE_14__* %461)
  %463 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %464 = call i32 @pci_set_drvdata(%struct.pci_dev* %463, i32* null)
  br label %465

465:                                              ; preds = %450, %28
  %466 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %467 = call i32 @pci_release_regions(%struct.pci_dev* %466)
  %468 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %469 = call i32 @pci_disable_device(%struct.pci_dev* %468)
  %470 = load i32, i32* %12, align 4
  store i32 %470, i32* %3, align 4
  br label %471

471:                                              ; preds = %465, %359, %18
  %472 = load i32, i32* %3, align 4
  ret i32 %472
}

declare dso_local i32 @beiscsi_enable_pci(%struct.pci_dev*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local %struct.beiscsi_hba* @beiscsi_hba_alloc(%struct.pci_dev*) #1

declare dso_local i32 @pci_enable_pcie_error_reporting(%struct.pci_dev*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @pci_save_state(%struct.pci_dev*) #1

declare dso_local i32 @beiscsi_hba_attrs_init(%struct.beiscsi_hba*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @be_ctrl_init(%struct.beiscsi_hba*, %struct.pci_dev*) #1

declare dso_local i32 @beiscsi_init_sliport(%struct.beiscsi_hba*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @beiscsi_get_fw_config(%struct.TYPE_15__*, %struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_get_port_name(%struct.TYPE_15__*, %struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_get_params(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_set_host_data(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_set_uer_feature(%struct.beiscsi_hba*) #1

declare dso_local i32 @be2iscsi_enable_msix(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_get_memory(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_init_port(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_free_mem(%struct.beiscsi_hba*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #1

declare dso_local i32 @alloc_workqueue(i8*, i32, i32, i8*) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @irq_poll_init(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @beiscsi_init_irqs(%struct.beiscsi_hba*) #1

declare dso_local i32 @hwi_enable_intr(%struct.beiscsi_hba*) #1

declare dso_local i32 @iscsi_host_add(%struct.TYPE_14__*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @__beiscsi_log(%struct.beiscsi_hba*, i32, i8*, i32) #1

declare dso_local i32 @beiscsi_boot_get_shandle(%struct.beiscsi_hba*, i32*) #1

declare dso_local i32 @beiscsi_start_boot_work(%struct.beiscsi_hba*, i32) #1

declare dso_local i32 @beiscsi_iface_create_default(%struct.beiscsi_hba*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @hwi_disable_intr(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_free_irqs(%struct.beiscsi_hba*) #1

declare dso_local i32 @irq_poll_disable(i32*) #1

declare dso_local i32 @destroy_workqueue(i32) #1

declare dso_local i32 @hwi_cleanup_port(%struct.beiscsi_hba*) #1

declare dso_local i32 @beiscsi_cleanup_port(%struct.beiscsi_hba*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32, i32) #1

declare dso_local i32 @beiscsi_unmap_pci_function(%struct.beiscsi_hba*) #1

declare dso_local i32 @pci_disable_msix(%struct.TYPE_13__*) #1

declare dso_local i32 @pci_dev_put(%struct.TYPE_13__*) #1

declare dso_local i32 @iscsi_host_free(%struct.TYPE_14__*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, i32*) #1

declare dso_local i32 @pci_release_regions(%struct.pci_dev*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
