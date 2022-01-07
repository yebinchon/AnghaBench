; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_probe_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/megaraid/extr_megaraid_sas_base.c_megasas_probe_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, %struct.megasas_instance**, i32 }
%struct.megasas_instance = type { i32, i64, %struct.pci_dev*, i64, %struct.TYPE_7__*, i64, %struct.TYPE_6__*, i32, i64, i8*, i32, i8*, i32, i64, i32, %struct.Scsi_Host*, i32 }
%struct.pci_dev = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_7__ = type { i32 (%struct.megasas_instance*)* }
%struct.TYPE_6__ = type { i64 }
%struct.Scsi_Host = type { i64 }
%struct.pci_device_id = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"Adapter is in non secure mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Adapter is in configurable secure mode\0A\00", align 1
@reset_devices = common dso_local global i64 0, align 8
@PCI_CAP_ID_MSIX = common dso_local global i32 0, align 4
@PCI_MSIX_FLAGS = common dso_local global i64 0, align 8
@PCI_MSIX_FLAGS_ENABLE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"resetting MSI-X\0A\00", align 1
@megasas_template = common dso_local global i32 0, align 4
@KERN_DEBUG = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [24 x i8] c"scsi_host_alloc failed\0A\00", align 1
@MEGASAS_DEFAULT_INIT_ID = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [49 x i8] c"Can't allocate memory for VF affiliation buffer\0A\00", align 1
@MAX_LOGICAL_DRIVES = common dso_local global i32 0, align 4
@megasas_mgmt_info = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@.str.5 = private unnamed_addr constant [18 x i8] c"start aen failed\0A\00", align 1
@MFI_SERIES = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @megasas_probe_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @megasas_probe_one(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca %struct.megasas_instance*, align 8
  %10 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %12 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %22 [
    i32 133, label %14
    i32 131, label %14
    i32 130, label %14
    i32 128, label %14
    i32 132, label %18
    i32 129, label %18
  ]

14:                                               ; preds = %2, %2, %2, %2
  %15 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %16 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %15, i32 0, i32 2
  %17 = call i32 @dev_err(i32* %16, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %266

18:                                               ; preds = %2, %2
  %19 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %20 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %19, i32 0, i32 2
  %21 = call i32 @dev_info(i32* %20, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %22

22:                                               ; preds = %2, %18
  %23 = load i64, i64* @reset_devices, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %58

25:                                               ; preds = %22
  %26 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %27 = load i32, i32* @PCI_CAP_ID_MSIX, align 4
  %28 = call i32 @pci_find_capability(%struct.pci_dev* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %57

31:                                               ; preds = %25
  %32 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = load i64, i64* @PCI_MSIX_FLAGS, align 8
  %36 = add nsw i64 %34, %35
  %37 = call i32 @pci_read_config_word(%struct.pci_dev* %32, i64 %36, i32* %10)
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @PCI_MSIX_FLAGS_ENABLE, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %31
  %43 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %44 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %43, i32 0, i32 2
  %45 = call i32 @dev_info(i32* %44, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %46 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* @PCI_MSIX_FLAGS, align 8
  %50 = add nsw i64 %48, %49
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @PCI_MSIX_FLAGS_ENABLE, align 4
  %53 = xor i32 %52, -1
  %54 = and i32 %51, %53
  %55 = call i32 @pci_write_config_word(%struct.pci_dev* %46, i64 %50, i32 %54)
  br label %56

56:                                               ; preds = %42, %31
  br label %57

57:                                               ; preds = %56, %25
  br label %58

58:                                               ; preds = %57, %22
  %59 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %60 = call i32 @pci_enable_device_mem(%struct.pci_dev* %59)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %65

63:                                               ; preds = %58
  %64 = load i32, i32* %6, align 4
  store i32 %64, i32* %3, align 4
  br label %266

65:                                               ; preds = %58
  %66 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %67 = call i32 @pci_set_master(%struct.pci_dev* %66)
  %68 = call %struct.Scsi_Host* @scsi_host_alloc(i32* @megasas_template, i32 136)
  store %struct.Scsi_Host* %68, %struct.Scsi_Host** %8, align 8
  %69 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %70 = icmp ne %struct.Scsi_Host* %69, null
  br i1 %70, label %76, label %71

71:                                               ; preds = %65
  %72 = load i32, i32* @KERN_DEBUG, align 4
  %73 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %74 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %73, i32 0, i32 2
  %75 = call i32 @dev_printk(i32 %72, i32* %74, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.3, i64 0, i64 0))
  br label %261

76:                                               ; preds = %65
  %77 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %78 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to %struct.megasas_instance*
  store %struct.megasas_instance* %80, %struct.megasas_instance** %9, align 8
  %81 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %82 = call i32 @memset(%struct.megasas_instance* %81, i32 0, i32 136)
  %83 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %84 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %83, i32 0, i32 16
  %85 = call i32 @atomic_set(i32* %84, i32 0)
  %86 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %87 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %88 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %87, i32 0, i32 2
  store %struct.pci_dev* %86, %struct.pci_dev** %88, align 8
  %89 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %90 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %91 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %90, i32 0, i32 15
  store %struct.Scsi_Host* %89, %struct.Scsi_Host** %91, align 8
  %92 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %93 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %92, i32 0, i32 3
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 8
  %98 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %99 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %97, %100
  %102 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %103 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 8
  %104 = load i32, i32* @MEGASAS_DEFAULT_INIT_ID, align 4
  %105 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %106 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %105, i32 0, i32 14
  store i32 %104, i32* %106, align 8
  %107 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %108 = call i32 @megasas_set_adapter_type(%struct.megasas_instance* %107)
  %109 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %110 = call i64 @megasas_init_fw(%struct.megasas_instance* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %113

112:                                              ; preds = %76
  br label %258

113:                                              ; preds = %76
  %114 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %115 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %114, i32 0, i32 5
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %165

118:                                              ; preds = %113
  %119 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %120 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %119, i32 0, i32 13
  %121 = load i64, i64* %120, align 8
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %141

123:                                              ; preds = %118
  %124 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %125 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %124, i32 0, i32 2
  %126 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %127 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %126, i32 0, i32 12
  %128 = load i32, i32* @GFP_KERNEL, align 4
  %129 = call i8* @dma_alloc_coherent(i32* %125, i32 4, i32* %127, i32 %128)
  %130 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %131 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %130, i32 0, i32 11
  store i8* %129, i8** %131, align 8
  %132 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %133 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %132, i32 0, i32 11
  %134 = load i8*, i8** %133, align 8
  %135 = icmp ne i8* %134, null
  br i1 %135, label %140, label %136

136:                                              ; preds = %123
  %137 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %138 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %137, i32 0, i32 2
  %139 = call i32 @dev_warn(i32* %138, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  br label %140

140:                                              ; preds = %136, %123
  br label %164

141:                                              ; preds = %118
  %142 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %143 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %142, i32 0, i32 2
  %144 = load i32, i32* @MAX_LOGICAL_DRIVES, align 4
  %145 = add nsw i32 %144, 1
  %146 = sext i32 %145 to i64
  %147 = mul i64 %146, 4
  %148 = trunc i64 %147 to i32
  %149 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %150 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %149, i32 0, i32 10
  %151 = load i32, i32* @GFP_KERNEL, align 4
  %152 = call i8* @dma_alloc_coherent(i32* %143, i32 %148, i32* %150, i32 %151)
  %153 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %154 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %153, i32 0, i32 9
  store i8* %152, i8** %154, align 8
  %155 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %156 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %155, i32 0, i32 9
  %157 = load i8*, i8** %156, align 8
  %158 = icmp ne i8* %157, null
  br i1 %158, label %163, label %159

159:                                              ; preds = %141
  %160 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %161 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %160, i32 0, i32 2
  %162 = call i32 @dev_warn(i32* %161, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0))
  br label %163

163:                                              ; preds = %159, %141
  br label %164

164:                                              ; preds = %163, %140
  br label %165

165:                                              ; preds = %164, %113
  %166 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %167 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %168 = call i32 @pci_set_drvdata(%struct.pci_dev* %166, %struct.megasas_instance* %167)
  %169 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @megasas_mgmt_info, i32 0, i32 2), align 8
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @megasas_mgmt_info, i32 0, i32 2), align 8
  %171 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %172 = load %struct.megasas_instance**, %struct.megasas_instance*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @megasas_mgmt_info, i32 0, i32 1), align 8
  %173 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @megasas_mgmt_info, i32 0, i32 0), align 8
  %174 = getelementptr inbounds %struct.megasas_instance*, %struct.megasas_instance** %172, i64 %173
  store %struct.megasas_instance* %171, %struct.megasas_instance** %174, align 8
  %175 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @megasas_mgmt_info, i32 0, i32 0), align 8
  %176 = add i64 %175, 1
  store i64 %176, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @megasas_mgmt_info, i32 0, i32 0), align 8
  %177 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %178 = call i64 @megasas_io_attach(%struct.megasas_instance* %177)
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %181

180:                                              ; preds = %165
  br label %219

181:                                              ; preds = %165
  %182 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %183 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %182, i32 0, i32 8
  store i64 0, i64* %183, align 8
  %184 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %185 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %184, i32 0, i32 7
  %186 = load i32, i32* %185, align 8
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %195

188:                                              ; preds = %181
  %189 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %190 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %189, i32 0, i32 6
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  %193 = load i64, i64* %192, align 8
  %194 = icmp sgt i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %188, %181
  %196 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %197 = call i32 @scsi_scan_host(%struct.Scsi_Host* %196)
  br label %198

198:                                              ; preds = %195, %188
  %199 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %200 = call i64 @megasas_start_aen(%struct.megasas_instance* %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %207

202:                                              ; preds = %198
  %203 = load i32, i32* @KERN_DEBUG, align 4
  %204 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %205 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %204, i32 0, i32 2
  %206 = call i32 @dev_printk(i32 %203, i32* %205, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.5, i64 0, i64 0))
  br label %218

207:                                              ; preds = %198
  %208 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %209 = call i32 @megasas_setup_debugfs(%struct.megasas_instance* %208)
  %210 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %211 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %210, i32 0, i32 5
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %217

214:                                              ; preds = %207
  %215 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %216 = call i32 @megasas_get_ld_vf_affiliation(%struct.megasas_instance* %215, i32 1)
  br label %217

217:                                              ; preds = %214, %207
  store i32 0, i32* %3, align 4
  br label %266

218:                                              ; preds = %202
  br label %219

219:                                              ; preds = %218, %180
  %220 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @megasas_mgmt_info, i32 0, i32 2), align 8
  %221 = add nsw i32 %220, -1
  store i32 %221, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @megasas_mgmt_info, i32 0, i32 2), align 8
  %222 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @megasas_mgmt_info, i32 0, i32 0), align 8
  %223 = add i64 %222, -1
  store i64 %223, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @megasas_mgmt_info, i32 0, i32 0), align 8
  %224 = load %struct.megasas_instance**, %struct.megasas_instance*** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @megasas_mgmt_info, i32 0, i32 1), align 8
  %225 = load i64, i64* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @megasas_mgmt_info, i32 0, i32 0), align 8
  %226 = getelementptr inbounds %struct.megasas_instance*, %struct.megasas_instance** %224, i64 %225
  store %struct.megasas_instance* null, %struct.megasas_instance** %226, align 8
  %227 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %228 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %227, i32 0, i32 4
  %229 = load %struct.TYPE_7__*, %struct.TYPE_7__** %228, align 8
  %230 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %229, i32 0, i32 0
  %231 = load i32 (%struct.megasas_instance*)*, i32 (%struct.megasas_instance*)** %230, align 8
  %232 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %233 = call i32 %231(%struct.megasas_instance* %232)
  %234 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %235 = call i32 @megasas_destroy_irqs(%struct.megasas_instance* %234)
  %236 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %237 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %236, i32 0, i32 1
  %238 = load i64, i64* %237, align 8
  %239 = load i64, i64* @MFI_SERIES, align 8
  %240 = icmp ne i64 %238, %239
  br i1 %240, label %241, label %244

241:                                              ; preds = %219
  %242 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %243 = call i32 @megasas_release_fusion(%struct.megasas_instance* %242)
  br label %247

244:                                              ; preds = %219
  %245 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %246 = call i32 @megasas_release_mfi(%struct.megasas_instance* %245)
  br label %247

247:                                              ; preds = %244, %241
  %248 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %249 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %248, i32 0, i32 3
  %250 = load i64, i64* %249, align 8
  %251 = icmp ne i64 %250, 0
  br i1 %251, label %252, label %257

252:                                              ; preds = %247
  %253 = load %struct.megasas_instance*, %struct.megasas_instance** %9, align 8
  %254 = getelementptr inbounds %struct.megasas_instance, %struct.megasas_instance* %253, i32 0, i32 2
  %255 = load %struct.pci_dev*, %struct.pci_dev** %254, align 8
  %256 = call i32 @pci_free_irq_vectors(%struct.pci_dev* %255)
  br label %257

257:                                              ; preds = %252, %247
  br label %258

258:                                              ; preds = %257, %112
  %259 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %260 = call i32 @scsi_host_put(%struct.Scsi_Host* %259)
  br label %261

261:                                              ; preds = %258, %71
  %262 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %263 = call i32 @pci_disable_device(%struct.pci_dev* %262)
  %264 = load i32, i32* @ENODEV, align 4
  %265 = sub nsw i32 0, %264
  store i32 %265, i32* %3, align 4
  br label %266

266:                                              ; preds = %261, %217, %63, %14
  %267 = load i32, i32* %3, align 4
  ret i32 %267
}

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @pci_find_capability(%struct.pci_dev*, i32) #1

declare dso_local i32 @pci_read_config_word(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @pci_write_config_word(%struct.pci_dev*, i64, i32) #1

declare dso_local i32 @pci_enable_device_mem(%struct.pci_dev*) #1

declare dso_local i32 @pci_set_master(%struct.pci_dev*) #1

declare dso_local %struct.Scsi_Host* @scsi_host_alloc(i32*, i32) #1

declare dso_local i32 @dev_printk(i32, i32*, i8*) #1

declare dso_local i32 @memset(%struct.megasas_instance*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @megasas_set_adapter_type(%struct.megasas_instance*) #1

declare dso_local i64 @megasas_init_fw(%struct.megasas_instance*) #1

declare dso_local i8* @dma_alloc_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @pci_set_drvdata(%struct.pci_dev*, %struct.megasas_instance*) #1

declare dso_local i64 @megasas_io_attach(%struct.megasas_instance*) #1

declare dso_local i32 @scsi_scan_host(%struct.Scsi_Host*) #1

declare dso_local i64 @megasas_start_aen(%struct.megasas_instance*) #1

declare dso_local i32 @megasas_setup_debugfs(%struct.megasas_instance*) #1

declare dso_local i32 @megasas_get_ld_vf_affiliation(%struct.megasas_instance*, i32) #1

declare dso_local i32 @megasas_destroy_irqs(%struct.megasas_instance*) #1

declare dso_local i32 @megasas_release_fusion(%struct.megasas_instance*) #1

declare dso_local i32 @megasas_release_mfi(%struct.megasas_instance*) #1

declare dso_local i32 @pci_free_irq_vectors(%struct.pci_dev*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @pci_disable_device(%struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
