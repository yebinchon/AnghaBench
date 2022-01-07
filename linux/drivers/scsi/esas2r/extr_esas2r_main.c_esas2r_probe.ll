; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_main.c_esas2r_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_main.c_esas2r_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32, i32, %struct.TYPE_5__*, %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.Scsi_Host = type { i32, i32, i32, %struct.TYPE_6__, i64, i32, i32, i32, i64, i64, i64, i32, i32 }
%struct.TYPE_6__ = type { i32 }
%struct.esas2r_adapter = type { i32, i32, i32, i32, i32, i32 }

@ESAS2R_LOG_DEBG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"esas2r_probe() 0x%02x 0x%02x 0x%02x 0x%02x\00", align 1
@ESAS2R_LOG_INFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"before pci_enable_device() enable_cnt: %d\00", align 1
@ESAS2R_LOG_CRIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"pci_enable_device() FAIL (%d)\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"pci_enable_device() OK\00", align 1
@.str.4 = private unnamed_addr constant [41 x i8] c"after pci_enable_device() enable_cnt: %d\00", align 1
@driver_template = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [23 x i8] c"scsi_host_alloc() FAIL\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"scsi_host_alloc() OK host: %p\00", align 1
@ESAS2R_MAX_ID = common dso_local global i64 0, align 8
@can_queue = common dso_local global i32 0, align 4
@cmd_per_lun = common dso_local global i32 0, align 4
@found_adapters = common dso_local global i32 0, align 4
@sg_tablesize = common dso_local global i32 0, align 4
@esas2r_max_sectors = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [24 x i8] c"pci_set_master() called\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"unable to initialize device at PCI bus %x:%x\00", align 1
@.str.9 = private unnamed_addr constant [23 x i8] c"scsi_host_put() called\00", align 1
@.str.10 = private unnamed_addr constant [31 x i8] c"pci_set_drvdata(%p, %p) called\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"scsi_add_host() called\00", align 1
@.str.12 = private unnamed_addr constant [26 x i8] c"scsi_add_host returned %d\00", align 1
@.str.13 = private unnamed_addr constant [21 x i8] c"scsi_add_host() FAIL\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"pci_set_drvdata(%p, NULL) called\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"scsi_scan_host() called\00", align 1
@bin_attr_fw = common dso_local global i32 0, align 4
@ESAS2R_LOG_WARN = common dso_local global i32 0, align 4
@.str.16 = private unnamed_addr constant [39 x i8] c"Failed to create sysfs binary file: fw\00", align 1
@bin_attr_fs = common dso_local global i32 0, align 4
@.str.17 = private unnamed_addr constant [39 x i8] c"Failed to create sysfs binary file: fs\00", align 1
@bin_attr_vda = common dso_local global i32 0, align 4
@.str.18 = private unnamed_addr constant [40 x i8] c"Failed to create sysfs binary file: vda\00", align 1
@bin_attr_hw = common dso_local global i32 0, align 4
@.str.19 = private unnamed_addr constant [39 x i8] c"Failed to create sysfs binary file: hw\00", align 1
@bin_attr_live_nvram = common dso_local global i32 0, align 4
@.str.20 = private unnamed_addr constant [47 x i8] c"Failed to create sysfs binary file: live_nvram\00", align 1
@bin_attr_default_nvram = common dso_local global i32 0, align 4
@.str.21 = private unnamed_addr constant [50 x i8] c"Failed to create sysfs binary file: default_nvram\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @esas2r_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @esas2r_probe(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.esas2r_adapter*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store %struct.Scsi_Host* null, %struct.Scsi_Host** %6, align 8
  store i64 28, i64* %9, align 8
  %10 = load i32, i32* @ESAS2R_LOG_DEBG, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %14 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %17 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 5
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %23 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = call i32 (i32, i32*, i8*, ...) @esas2r_log_dev(i32 %10, i32* %12, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %18, i32 %21, i32 %24)
  %26 = load i32, i32* @ESAS2R_LOG_INFO, align 4
  %27 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %28 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %27, i32 0, i32 0
  %29 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %30 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i32, i32*, i8*, ...) @esas2r_log_dev(i32 %26, i32* %28, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %35 = call i32 @pci_enable_device(%struct.pci_dev* %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %2
  %39 = load i32, i32* @ESAS2R_LOG_CRIT, align 4
  %40 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %41 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %40, i32 0, i32 0
  %42 = load i32, i32* %8, align 4
  %43 = call i32 (i32, i32*, i8*, ...) @esas2r_log_dev(i32 %39, i32* %41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* @ENODEV, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %274

46:                                               ; preds = %2
  %47 = load i32, i32* @ESAS2R_LOG_INFO, align 4
  %48 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %49 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %48, i32 0, i32 0
  %50 = call i32 (i32, i32*, i8*, ...) @esas2r_log_dev(i32 %47, i32* %49, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %51 = load i32, i32* @ESAS2R_LOG_INFO, align 4
  %52 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %53 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %52, i32 0, i32 0
  %54 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %55 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 (i32, i32*, i8*, ...) @esas2r_log_dev(i32 %51, i32* %53, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i32 %57)
  %59 = load i64, i64* %9, align 8
  %60 = call %struct.Scsi_Host* @scsi_host_alloc(i32* @driver_template, i64 %59)
  store %struct.Scsi_Host* %60, %struct.Scsi_Host** %6, align 8
  %61 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %62 = icmp eq %struct.Scsi_Host* %61, null
  br i1 %62, label %63, label %68

63:                                               ; preds = %46
  %64 = load i32, i32* @ESAS2R_LOG_CRIT, align 4
  %65 = call i32 (i32, i8*, ...) @esas2r_log(i32 %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0))
  %66 = load i32, i32* @ENODEV, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %274

68:                                               ; preds = %46
  %69 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %70 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %69, i32 0, i32 4
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* %9, align 8
  %73 = call i32 @memset(i64 %71, i32 0, i64 %72)
  %74 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %75 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to %struct.esas2r_adapter*
  store %struct.esas2r_adapter* %77, %struct.esas2r_adapter** %7, align 8
  %78 = load i32, i32* @ESAS2R_LOG_INFO, align 4
  %79 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %80 = call i32 (i32, i8*, ...) @esas2r_log(i32 %78, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0), %struct.Scsi_Host* %79)
  %81 = load i64, i64* @ESAS2R_MAX_ID, align 8
  %82 = add nsw i64 %81, 1
  %83 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %84 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %83, i32 0, i32 9
  store i64 %82, i64* %84, align 8
  %85 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %86 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %85, i32 0, i32 0
  store i32 255, i32* %86, align 8
  %87 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %88 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %87, i32 0, i32 1
  store i32 16, i32* %88, align 4
  %89 = load i32, i32* @can_queue, align 4
  %90 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %91 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %90, i32 0, i32 12
  store i32 %89, i32* %91, align 4
  %92 = load i32, i32* @cmd_per_lun, align 4
  %93 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %94 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %93, i32 0, i32 11
  store i32 %92, i32* %94, align 8
  %95 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %96 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %95, i32 0, i32 9
  %97 = load i64, i64* %96, align 8
  %98 = add nsw i64 %97, 1
  %99 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %100 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %99, i32 0, i32 10
  store i64 %98, i64* %100, align 8
  %101 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %102 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %101, i32 0, i32 8
  store i64 0, i64* %102, align 8
  %103 = load i32, i32* @found_adapters, align 4
  %104 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %105 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %104, i32 0, i32 7
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* @sg_tablesize, align 4
  %107 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %108 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %107, i32 0, i32 6
  store i32 %106, i32* %108, align 4
  %109 = load i32, i32* @esas2r_max_sectors, align 4
  %110 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %111 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %110, i32 0, i32 5
  store i32 %109, i32* %111, align 8
  %112 = load i32, i32* @ESAS2R_LOG_INFO, align 4
  %113 = call i32 (i32, i8*, ...) @esas2r_log(i32 %112, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %114 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %115 = call i32 @pci_set_master(%struct.pci_dev* %114)
  %116 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %117 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %118 = load i32, i32* @found_adapters, align 4
  %119 = call i32 @esas2r_init_adapter(%struct.Scsi_Host* %116, %struct.pci_dev* %117, i32 %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %138, label %121

121:                                              ; preds = %68
  %122 = load i32, i32* @ESAS2R_LOG_CRIT, align 4
  %123 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %124 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %123, i32 0, i32 2
  %125 = load %struct.TYPE_5__*, %struct.TYPE_5__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %129 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 (i32, i8*, ...) @esas2r_log(i32 %122, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0), i32 %127, i32 %130)
  %132 = load i32, i32* @ESAS2R_LOG_INFO, align 4
  %133 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %134 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %133, i32 0, i32 2
  %135 = call i32 (i32, i32*, i8*, ...) @esas2r_log_dev(i32 %132, i32* %134, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %136 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %137 = call i32 @scsi_host_put(%struct.Scsi_Host* %136)
  store i32 0, i32* %3, align 4
  br label %274

138:                                              ; preds = %68
  %139 = load i32, i32* @ESAS2R_LOG_INFO, align 4
  %140 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %141 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %142 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = call i32 (i32, i8*, ...) @esas2r_log(i32 %139, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.10, i64 0, i64 0), %struct.pci_dev* %140, i64 %143)
  %145 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %146 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %147 = call i32 @pci_set_drvdata(%struct.pci_dev* %145, %struct.Scsi_Host* %146)
  %148 = load i32, i32* @ESAS2R_LOG_INFO, align 4
  %149 = call i32 (i32, i8*, ...) @esas2r_log(i32 %148, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i64 0, i64 0))
  %150 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %151 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %152 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %151, i32 0, i32 0
  %153 = call i32 @scsi_add_host(%struct.Scsi_Host* %150, i32* %152)
  store i32 %153, i32* %8, align 4
  %154 = load i32, i32* %8, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %179

156:                                              ; preds = %138
  %157 = load i32, i32* @ESAS2R_LOG_CRIT, align 4
  %158 = load i32, i32* %8, align 4
  %159 = call i32 (i32, i8*, ...) @esas2r_log(i32 %157, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.12, i64 0, i64 0), i32 %158)
  %160 = load i32, i32* @ESAS2R_LOG_CRIT, align 4
  %161 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %162 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %161, i32 0, i32 2
  %163 = call i32 (i32, i32*, i8*, ...) @esas2r_log_dev(i32 %160, i32* %162, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0))
  %164 = load i32, i32* @ESAS2R_LOG_INFO, align 4
  %165 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %166 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %165, i32 0, i32 2
  %167 = call i32 (i32, i32*, i8*, ...) @esas2r_log_dev(i32 %164, i32* %166, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.9, i64 0, i64 0))
  %168 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %169 = call i32 @scsi_host_put(%struct.Scsi_Host* %168)
  %170 = load i32, i32* @ESAS2R_LOG_INFO, align 4
  %171 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %172 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %171, i32 0, i32 2
  %173 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %174 = call i32 (i32, i32*, i8*, ...) @esas2r_log_dev(i32 %170, i32* %172, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i64 0, i64 0), %struct.pci_dev* %173)
  %175 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %176 = call i32 @pci_set_drvdata(%struct.pci_dev* %175, %struct.Scsi_Host* null)
  %177 = load i32, i32* @ENODEV, align 4
  %178 = sub nsw i32 0, %177
  store i32 %178, i32* %3, align 4
  br label %274

179:                                              ; preds = %138
  %180 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %7, align 8
  %181 = call i32 @esas2r_fw_event_on(%struct.esas2r_adapter* %180)
  %182 = load i32, i32* @ESAS2R_LOG_INFO, align 4
  %183 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %184 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %183, i32 0, i32 2
  %185 = call i32 (i32, i32*, i8*, ...) @esas2r_log_dev(i32 %182, i32* %184, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i64 0, i64 0))
  %186 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %187 = call i32 @scsi_scan_host(%struct.Scsi_Host* %186)
  %188 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %189 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 0
  %191 = call i64 @sysfs_create_bin_file(i32* %190, i32* @bin_attr_fw)
  %192 = icmp ne i64 %191, 0
  br i1 %192, label %193, label %198

193:                                              ; preds = %179
  %194 = load i32, i32* @ESAS2R_LOG_WARN, align 4
  %195 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %196 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %195, i32 0, i32 2
  %197 = call i32 (i32, i32*, i8*, ...) @esas2r_log_dev(i32 %194, i32* %196, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.16, i64 0, i64 0))
  br label %201

198:                                              ; preds = %179
  %199 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %7, align 8
  %200 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %199, i32 0, i32 0
  store i32 1, i32* %200, align 4
  br label %201

201:                                              ; preds = %198, %193
  %202 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %203 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %202, i32 0, i32 3
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %203, i32 0, i32 0
  %205 = call i64 @sysfs_create_bin_file(i32* %204, i32* @bin_attr_fs)
  %206 = icmp ne i64 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %201
  %208 = load i32, i32* @ESAS2R_LOG_WARN, align 4
  %209 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %210 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %209, i32 0, i32 2
  %211 = call i32 (i32, i32*, i8*, ...) @esas2r_log_dev(i32 %208, i32* %210, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0))
  br label %215

212:                                              ; preds = %201
  %213 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %7, align 8
  %214 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %213, i32 0, i32 1
  store i32 1, i32* %214, align 4
  br label %215

215:                                              ; preds = %212, %207
  %216 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %217 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 0
  %219 = call i64 @sysfs_create_bin_file(i32* %218, i32* @bin_attr_vda)
  %220 = icmp ne i64 %219, 0
  br i1 %220, label %221, label %226

221:                                              ; preds = %215
  %222 = load i32, i32* @ESAS2R_LOG_WARN, align 4
  %223 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %224 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %223, i32 0, i32 2
  %225 = call i32 (i32, i32*, i8*, ...) @esas2r_log_dev(i32 %222, i32* %224, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i64 0, i64 0))
  br label %229

226:                                              ; preds = %215
  %227 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %7, align 8
  %228 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %227, i32 0, i32 2
  store i32 1, i32* %228, align 4
  br label %229

229:                                              ; preds = %226, %221
  %230 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %231 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %230, i32 0, i32 3
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 0
  %233 = call i64 @sysfs_create_bin_file(i32* %232, i32* @bin_attr_hw)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %240

235:                                              ; preds = %229
  %236 = load i32, i32* @ESAS2R_LOG_WARN, align 4
  %237 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %238 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %237, i32 0, i32 2
  %239 = call i32 (i32, i32*, i8*, ...) @esas2r_log_dev(i32 %236, i32* %238, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.19, i64 0, i64 0))
  br label %243

240:                                              ; preds = %229
  %241 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %7, align 8
  %242 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %241, i32 0, i32 3
  store i32 1, i32* %242, align 4
  br label %243

243:                                              ; preds = %240, %235
  %244 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %245 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %244, i32 0, i32 3
  %246 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %245, i32 0, i32 0
  %247 = call i64 @sysfs_create_bin_file(i32* %246, i32* @bin_attr_live_nvram)
  %248 = icmp ne i64 %247, 0
  br i1 %248, label %249, label %254

249:                                              ; preds = %243
  %250 = load i32, i32* @ESAS2R_LOG_WARN, align 4
  %251 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %252 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %251, i32 0, i32 2
  %253 = call i32 (i32, i32*, i8*, ...) @esas2r_log_dev(i32 %250, i32* %252, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.20, i64 0, i64 0))
  br label %257

254:                                              ; preds = %243
  %255 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %7, align 8
  %256 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %255, i32 0, i32 4
  store i32 1, i32* %256, align 4
  br label %257

257:                                              ; preds = %254, %249
  %258 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %259 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %258, i32 0, i32 3
  %260 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %259, i32 0, i32 0
  %261 = call i64 @sysfs_create_bin_file(i32* %260, i32* @bin_attr_default_nvram)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %257
  %264 = load i32, i32* @ESAS2R_LOG_WARN, align 4
  %265 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %266 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %265, i32 0, i32 2
  %267 = call i32 (i32, i32*, i8*, ...) @esas2r_log_dev(i32 %264, i32* %266, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.21, i64 0, i64 0))
  br label %271

268:                                              ; preds = %257
  %269 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %7, align 8
  %270 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %269, i32 0, i32 5
  store i32 1, i32* %270, align 4
  br label %271

271:                                              ; preds = %268, %263
  %272 = load i32, i32* @found_adapters, align 4
  %273 = add nsw i32 %272, 1
  store i32 %273, i32* @found_adapters, align 4
  store i32 0, i32* %3, align 4
  br label %274

274:                                              ; preds = %271, %156, %121, %63, %38
  %275 = load i32, i32* %3, align 4
  ret i32 %275
}

declare dso_local i32 @esas2r_log_dev(i32, i32*, i8*, ...) #1

declare dso_local i32 @pci_enable_device(%struct.pci_dev*) #1

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(i32*, i64) #1

declare dso_local i32 @esas2r_log(i32, i8*, ...) #1

declare dso_local i32 @memset(i64, i32, i64) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local i32 @esas2r_init_adapter(%struct.Scsi_Host*, %struct.pci_dev*, i32) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.Scsi_Host*) #1

declare dso_local i32 @scsi_add_host(%struct.Scsi_Host*, i32*) #1

declare dso_local i32 @esas2r_fw_event_on(%struct.esas2r_adapter*) #1

declare dso_local i32 @scsi_scan_host(%struct.Scsi_Host*) #1

declare dso_local i64 @sysfs_create_bin_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
