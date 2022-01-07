; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_pci_probe_one_s3.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_init.c_lpfc_pci_probe_one_s3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.pci_device_id = type { i32 }
%struct.lpfc_hba = type { i32, %struct.TYPE_4__, i32, %struct.lpfc_vport*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.lpfc_vport = type { i32 }
%struct.Scsi_Host = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@LPFC_PCI_DEV_LP = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@LOG_INIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"1402 Failed to set up pci memory space.\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"1404 Failed to set up driver resource.\0A\00", align 1
@LPFC_IOCB_LIST_CNT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"1405 Failed to initialize iocb list.\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"1406 Failed to set up driver resource.\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"1407 Failed to create scsi host.\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"1476 Failed to allocate sysfs attr\0A\00", align 1
@LPFC_INTR_ERROR = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [34 x i8] c"0431 Failed to enable interrupt.\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"1477 Failed to set up hba\0A\00", align 1
@LPFC_MSIX_VECTORS = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [66 x i8] c"0447 Configure interrupt mode (%d) failed active interrupt test.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, %struct.pci_device_id*)* @lpfc_pci_probe_one_s3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lpfc_pci_probe_one_s3(%struct.pci_dev* %0, %struct.pci_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_dev*, align 8
  %5 = alloca %struct.pci_device_id*, align 8
  %6 = alloca %struct.lpfc_hba*, align 8
  %7 = alloca %struct.lpfc_vport*, align 8
  %8 = alloca %struct.Scsi_Host*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %4, align 8
  store %struct.pci_device_id* %1, %struct.pci_device_id** %5, align 8
  store %struct.lpfc_vport* null, %struct.lpfc_vport** %7, align 8
  store %struct.Scsi_Host* null, %struct.Scsi_Host** %8, align 8
  %12 = load %struct.pci_dev*, %struct.pci_dev** %4, align 8
  %13 = call %struct.lpfc_hba* @lpfc_hba_alloc(%struct.pci_dev* %12)
  store %struct.lpfc_hba* %13, %struct.lpfc_hba** %6, align 8
  %14 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %15 = icmp ne %struct.lpfc_hba* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %206

19:                                               ; preds = %2
  %20 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %21 = call i32 @lpfc_enable_pci_dev(%struct.lpfc_hba* %20)
  store i32 %21, i32* %9, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %19
  br label %202

25:                                               ; preds = %19
  %26 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %27 = load i32, i32* @LPFC_PCI_DEV_LP, align 4
  %28 = call i32 @lpfc_api_table_setup(%struct.lpfc_hba* %26, i32 %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %193

32:                                               ; preds = %25
  %33 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %34 = call i32 @lpfc_sli_pci_mem_setup(%struct.lpfc_hba* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %32
  %38 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %39 = load i32, i32* @KERN_ERR, align 4
  %40 = load i32, i32* @LOG_INIT, align 4
  %41 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %38, i32 %39, i32 %40, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  br label %193

42:                                               ; preds = %32
  %43 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %44 = call i32 @lpfc_sli_driver_resource_setup(%struct.lpfc_hba* %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %42
  %48 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %49 = load i32, i32* @KERN_ERR, align 4
  %50 = load i32, i32* @LOG_INIT, align 4
  %51 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %48, i32 %49, i32 %50, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %190

52:                                               ; preds = %42
  %53 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %54 = load i32, i32* @LPFC_IOCB_LIST_CNT, align 4
  %55 = call i32 @lpfc_init_iocb_list(%struct.lpfc_hba* %53, i32 %54)
  store i32 %55, i32* %9, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %52
  %59 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %60 = load i32, i32* @KERN_ERR, align 4
  %61 = load i32, i32* @LOG_INIT, align 4
  %62 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %59, i32 %60, i32 %61, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  br label %187

63:                                               ; preds = %52
  %64 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %65 = call i32 @lpfc_setup_driver_resource_phase2(%struct.lpfc_hba* %64)
  store i32 %65, i32* %9, align 4
  %66 = load i32, i32* %9, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %63
  %69 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %70 = load i32, i32* @KERN_ERR, align 4
  %71 = load i32, i32* @LOG_INIT, align 4
  %72 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %69, i32 %70, i32 %71, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.3, i64 0, i64 0))
  br label %184

73:                                               ; preds = %63
  %74 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %75 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %76 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %79 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @lpfc_get_hba_model_desc(%struct.lpfc_hba* %74, i32 %77, i32 %80)
  %82 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %83 = call i32 @lpfc_create_shost(%struct.lpfc_hba* %82)
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %73
  %87 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %88 = load i32, i32* @KERN_ERR, align 4
  %89 = load i32, i32* @LOG_INIT, align 4
  %90 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %87, i32 %88, i32 %89, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0))
  br label %181

91:                                               ; preds = %73
  %92 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %93 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %92, i32 0, i32 3
  %94 = load %struct.lpfc_vport*, %struct.lpfc_vport** %93, align 8
  store %struct.lpfc_vport* %94, %struct.lpfc_vport** %7, align 8
  %95 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %96 = call i32 @lpfc_alloc_sysfs_attr(%struct.lpfc_vport* %95)
  store i32 %96, i32* %9, align 4
  %97 = load i32, i32* %9, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %91
  %100 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %101 = load i32, i32* @KERN_ERR, align 4
  %102 = load i32, i32* @LOG_INIT, align 4
  %103 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %100, i32 %101, i32 %102, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i64 0, i64 0))
  br label %178

104:                                              ; preds = %91
  %105 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %106 = call %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport* %105)
  store %struct.Scsi_Host* %106, %struct.Scsi_Host** %8, align 8
  %107 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %108 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %104, %166
  %111 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %112 = call i32 @lpfc_stop_port(%struct.lpfc_hba* %111)
  %113 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @lpfc_sli_enable_intr(%struct.lpfc_hba* %113, i32 %114)
  store i32 %115, i32* %11, align 4
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* @LPFC_INTR_ERROR, align 4
  %118 = icmp eq i32 %116, %117
  br i1 %118, label %119, label %126

119:                                              ; preds = %110
  %120 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %121 = load i32, i32* @KERN_ERR, align 4
  %122 = load i32, i32* @LOG_INIT, align 4
  %123 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %120, i32 %121, i32 %122, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0))
  %124 = load i32, i32* @ENODEV, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %9, align 4
  br label %175

126:                                              ; preds = %110
  %127 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %128 = call i64 @lpfc_sli_hba_setup(%struct.lpfc_hba* %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %137

130:                                              ; preds = %126
  %131 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %132 = load i32, i32* @KERN_ERR, align 4
  %133 = load i32, i32* @LOG_INIT, align 4
  %134 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %131, i32 %132, i32 %133, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0))
  %135 = load i32, i32* @ENODEV, align 4
  %136 = sub nsw i32 0, %135
  store i32 %136, i32* %9, align 4
  br label %172

137:                                              ; preds = %126
  %138 = call i32 @msleep(i32 50)
  %139 = load i32, i32* %11, align 4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %149, label %141

141:                                              ; preds = %137
  %142 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %143 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @LPFC_MSIX_VECTORS, align 8
  %148 = icmp sgt i64 %146, %147
  br i1 %148, label %149, label %156

149:                                              ; preds = %141, %137
  %150 = load i32, i32* %11, align 4
  %151 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %152 = getelementptr inbounds %struct.lpfc_hba, %struct.lpfc_hba* %151, i32 0, i32 0
  store i32 %150, i32* %152, align 8
  %153 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %154 = load i32, i32* %11, align 4
  %155 = call i32 @lpfc_log_intr_mode(%struct.lpfc_hba* %153, i32 %154)
  br label %167

156:                                              ; preds = %141
  %157 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %158 = load i32, i32* @KERN_INFO, align 4
  %159 = load i32, i32* @LOG_INIT, align 4
  %160 = load i32, i32* %11, align 4
  %161 = call i32 (%struct.lpfc_hba*, i32, i32, i8*, ...) @lpfc_printf_log(%struct.lpfc_hba* %157, i32 %158, i32 %159, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.8, i64 0, i64 0), i32 %160)
  %162 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %163 = call i32 @lpfc_sli_disable_intr(%struct.lpfc_hba* %162)
  %164 = load i32, i32* %11, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %11, align 4
  store i32 %165, i32* %10, align 4
  br label %166

166:                                              ; preds = %156
  br label %110

167:                                              ; preds = %149
  %168 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %169 = call i32 @lpfc_post_init_setup(%struct.lpfc_hba* %168)
  %170 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %171 = call i32 @lpfc_create_static_vport(%struct.lpfc_hba* %170)
  store i32 0, i32* %3, align 4
  br label %206

172:                                              ; preds = %130
  %173 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %174 = call i32 @lpfc_unset_hba(%struct.lpfc_hba* %173)
  br label %175

175:                                              ; preds = %172, %119
  %176 = load %struct.lpfc_vport*, %struct.lpfc_vport** %7, align 8
  %177 = call i32 @lpfc_free_sysfs_attr(%struct.lpfc_vport* %176)
  br label %178

178:                                              ; preds = %175, %99
  %179 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %180 = call i32 @lpfc_destroy_shost(%struct.lpfc_hba* %179)
  br label %181

181:                                              ; preds = %178, %86
  %182 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %183 = call i32 @lpfc_unset_driver_resource_phase2(%struct.lpfc_hba* %182)
  br label %184

184:                                              ; preds = %181, %68
  %185 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %186 = call i32 @lpfc_free_iocb_list(%struct.lpfc_hba* %185)
  br label %187

187:                                              ; preds = %184, %58
  %188 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %189 = call i32 @lpfc_sli_driver_resource_unset(%struct.lpfc_hba* %188)
  br label %190

190:                                              ; preds = %187, %47
  %191 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %192 = call i32 @lpfc_sli_pci_mem_unset(%struct.lpfc_hba* %191)
  br label %193

193:                                              ; preds = %190, %37, %31
  %194 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %195 = call i32 @lpfc_disable_pci_dev(%struct.lpfc_hba* %194)
  %196 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %197 = icmp ne %struct.Scsi_Host* %196, null
  br i1 %197, label %198, label %201

198:                                              ; preds = %193
  %199 = load %struct.Scsi_Host*, %struct.Scsi_Host** %8, align 8
  %200 = call i32 @scsi_host_put(%struct.Scsi_Host* %199)
  br label %201

201:                                              ; preds = %198, %193
  br label %202

202:                                              ; preds = %201, %24
  %203 = load %struct.lpfc_hba*, %struct.lpfc_hba** %6, align 8
  %204 = call i32 @lpfc_hba_free(%struct.lpfc_hba* %203)
  %205 = load i32, i32* %9, align 4
  store i32 %205, i32* %3, align 4
  br label %206

206:                                              ; preds = %202, %167, %16
  %207 = load i32, i32* %3, align 4
  ret i32 %207
}

declare dso_local %struct.lpfc_hba* @lpfc_hba_alloc(%struct.pci_dev*) #1

declare dso_local i32 @lpfc_enable_pci_dev(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_api_table_setup(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_sli_pci_mem_setup(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_printf_log(%struct.lpfc_hba*, i32, i32, i8*, ...) #1

declare dso_local i32 @lpfc_sli_driver_resource_setup(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_init_iocb_list(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_setup_driver_resource_phase2(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_get_hba_model_desc(%struct.lpfc_hba*, i32, i32) #1

declare dso_local i32 @lpfc_create_shost(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_alloc_sysfs_attr(%struct.lpfc_vport*) #1

declare dso_local %struct.Scsi_Host* @lpfc_shost_from_vport(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_stop_port(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli_enable_intr(%struct.lpfc_hba*, i32) #1

declare dso_local i64 @lpfc_sli_hba_setup(%struct.lpfc_hba*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @lpfc_log_intr_mode(%struct.lpfc_hba*, i32) #1

declare dso_local i32 @lpfc_sli_disable_intr(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_post_init_setup(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_create_static_vport(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_unset_hba(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_free_sysfs_attr(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_destroy_shost(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_unset_driver_resource_phase2(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_free_iocb_list(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli_driver_resource_unset(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_sli_pci_mem_unset(%struct.lpfc_hba*) #1

declare dso_local i32 @lpfc_disable_pci_dev(%struct.lpfc_hba*) #1

declare dso_local i32 @scsi_host_put(%struct.Scsi_Host*) #1

declare dso_local i32 @lpfc_hba_free(%struct.lpfc_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
