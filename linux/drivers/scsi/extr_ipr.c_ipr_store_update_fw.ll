; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_store_update_fw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_store_update_fw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i64 }
%struct.ipr_ioa_cfg = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ipr_ucode_image_header = type { i32 }
%struct.firmware = type { i32, i64 }
%struct.ipr_sglist = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Firmware file %s not found\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"Microcode buffer allocation failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Microcode buffer copy to DMA buffer failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [73 x i8] c"Updating microcode, please be patient.  This may take up to 30 minutes.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ipr_store_update_fw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_store_update_fw(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.ipr_ioa_cfg*, align 8
  %12 = alloca %struct.ipr_ucode_image_header*, align 8
  %13 = alloca %struct.firmware*, align 8
  %14 = alloca %struct.ipr_sglist*, align 8
  %15 = alloca [100 x i8], align 16
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %20 = load %struct.device*, %struct.device** %6, align 8
  %21 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %20)
  store %struct.Scsi_Host* %21, %struct.Scsi_Host** %10, align 8
  %22 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %23 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.ipr_ioa_cfg*
  store %struct.ipr_ioa_cfg* %25, %struct.ipr_ioa_cfg** %11, align 8
  %26 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %27 = call i32 @capable(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* @EACCES, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %124

32:                                               ; preds = %4
  %33 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %34 = load i8*, i8** %8, align 8
  %35 = call i32 @snprintf(i8* %33, i32 100, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %34)
  %36 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %37 = call i8* @strchr(i8* %36, i8 signext 10)
  store i8* %37, i8** %17, align 8
  %38 = load i8*, i8** %17, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %42

40:                                               ; preds = %32
  %41 = load i8*, i8** %17, align 8
  store i8 0, i8* %41, align 1
  br label %42

42:                                               ; preds = %40, %32
  %43 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %44 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %45 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %44, i32 0, i32 0
  %46 = load %struct.TYPE_2__*, %struct.TYPE_2__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = call i64 @request_firmware(%struct.firmware** %13, i8* %43, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %42
  %51 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %52 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = getelementptr inbounds [100 x i8], [100 x i8]* %15, i64 0, i64 0
  %56 = call i32 (i32*, i8*, ...) @dev_err(i32* %54, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i8* %55)
  %57 = load i32, i32* @EIO, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %5, align 4
  br label %124

59:                                               ; preds = %42
  %60 = load %struct.firmware*, %struct.firmware** %13, align 8
  %61 = getelementptr inbounds %struct.firmware, %struct.firmware* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = inttoptr i64 %62 to %struct.ipr_ucode_image_header*
  store %struct.ipr_ucode_image_header* %63, %struct.ipr_ucode_image_header** %12, align 8
  %64 = load %struct.ipr_ucode_image_header*, %struct.ipr_ucode_image_header** %12, align 8
  %65 = bitcast %struct.ipr_ucode_image_header* %64 to i8*
  %66 = load %struct.ipr_ucode_image_header*, %struct.ipr_ucode_image_header** %12, align 8
  %67 = getelementptr inbounds %struct.ipr_ucode_image_header, %struct.ipr_ucode_image_header* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @be32_to_cpu(i32 %68)
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %65, i64 %70
  store i8* %71, i8** %16, align 8
  %72 = load %struct.firmware*, %struct.firmware** %13, align 8
  %73 = getelementptr inbounds %struct.firmware, %struct.firmware* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.ipr_ucode_image_header*, %struct.ipr_ucode_image_header** %12, align 8
  %76 = getelementptr inbounds %struct.ipr_ucode_image_header, %struct.ipr_ucode_image_header* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @be32_to_cpu(i32 %77)
  %79 = sub nsw i32 %74, %78
  store i32 %79, i32* %19, align 4
  %80 = load i32, i32* %19, align 4
  %81 = call %struct.ipr_sglist* @ipr_alloc_ucode_buffer(i32 %80)
  store %struct.ipr_sglist* %81, %struct.ipr_sglist** %14, align 8
  %82 = load %struct.ipr_sglist*, %struct.ipr_sglist** %14, align 8
  %83 = icmp ne %struct.ipr_sglist* %82, null
  br i1 %83, label %94, label %84

84:                                               ; preds = %59
  %85 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %86 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = call i32 (i32*, i8*, ...) @dev_err(i32* %88, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %90 = load %struct.firmware*, %struct.firmware** %13, align 8
  %91 = call i32 @release_firmware(%struct.firmware* %90)
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %5, align 4
  br label %124

94:                                               ; preds = %59
  %95 = load %struct.ipr_sglist*, %struct.ipr_sglist** %14, align 8
  %96 = load i8*, i8** %16, align 8
  %97 = load i32, i32* %19, align 4
  %98 = call i32 @ipr_copy_ucode_buffer(%struct.ipr_sglist* %95, i8* %96, i32 %97)
  store i32 %98, i32* %18, align 4
  %99 = load i32, i32* %18, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %107

101:                                              ; preds = %94
  %102 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %103 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %102, i32 0, i32 0
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = call i32 (i32*, i8*, ...) @dev_err(i32* %105, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %118

107:                                              ; preds = %94
  %108 = call i32 @ipr_info(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.4, i64 0, i64 0))
  %109 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %110 = load %struct.ipr_sglist*, %struct.ipr_sglist** %14, align 8
  %111 = call i32 @ipr_update_ioa_ucode(%struct.ipr_ioa_cfg* %109, %struct.ipr_sglist* %110)
  store i32 %111, i32* %18, align 4
  %112 = load i32, i32* %18, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %107
  %115 = load i64, i64* %9, align 8
  %116 = trunc i64 %115 to i32
  store i32 %116, i32* %18, align 4
  br label %117

117:                                              ; preds = %114, %107
  br label %118

118:                                              ; preds = %117, %101
  %119 = load %struct.ipr_sglist*, %struct.ipr_sglist** %14, align 8
  %120 = call i32 @ipr_free_ucode_buffer(%struct.ipr_sglist* %119)
  %121 = load %struct.firmware*, %struct.firmware** %13, align 8
  %122 = call i32 @release_firmware(%struct.firmware* %121)
  %123 = load i32, i32* %18, align 4
  store i32 %123, i32* %5, align 4
  br label %124

124:                                              ; preds = %118, %84, %50, %29
  %125 = load i32, i32* %5, align 4
  ret i32 %125
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i64 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.ipr_sglist* @ipr_alloc_ucode_buffer(i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

declare dso_local i32 @ipr_copy_ucode_buffer(%struct.ipr_sglist*, i8*, i32) #1

declare dso_local i32 @ipr_info(i8*) #1

declare dso_local i32 @ipr_update_ioa_ucode(%struct.ipr_ioa_cfg*, %struct.ipr_sglist*) #1

declare dso_local i32 @ipr_free_ucode_buffer(%struct.ipr_sglist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
