; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_show_resource_path.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_show_resource_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.scsi_device = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.ipr_ioa_cfg = type { %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ipr_resource_entry = type { i32, i32, i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@IPR_MAX_RES_PATH_LENGTH = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"%d:%d:%d:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @ipr_show_resource_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_show_resource_path(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.scsi_device*, align 8
  %8 = alloca %struct.ipr_ioa_cfg*, align 8
  %9 = alloca %struct.ipr_resource_entry*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call %struct.scsi_device* @to_scsi_device(%struct.device* %14)
  store %struct.scsi_device* %15, %struct.scsi_device** %7, align 8
  %16 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %17 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.ipr_ioa_cfg*
  store %struct.ipr_ioa_cfg* %21, %struct.ipr_ioa_cfg** %8, align 8
  store i64 0, i64* %10, align 8
  %22 = load i32, i32* @ENXIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* @IPR_MAX_RES_PATH_LENGTH, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %12, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %13, align 8
  %28 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  %29 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %28, i32 0, i32 0
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load i64, i64* %10, align 8
  %34 = call i32 @spin_lock_irqsave(i32 %32, i64 %33)
  %35 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %36 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = inttoptr i64 %37 to %struct.ipr_resource_entry*
  store %struct.ipr_resource_entry* %38, %struct.ipr_resource_entry** %9, align 8
  %39 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %9, align 8
  %40 = icmp ne %struct.ipr_resource_entry* %39, null
  br i1 %40, label %41, label %55

41:                                               ; preds = %3
  %42 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  %43 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %41
  %47 = load i8*, i8** %6, align 8
  %48 = load i32, i32* @PAGE_SIZE, align 4
  %49 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %9, align 8
  %50 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = trunc i64 %25 to i32
  %53 = call i8* @__ipr_format_res_path(i32 %51, i8* %27, i32 %52)
  %54 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %47, i32 %48, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %53)
  store i32 %54, i32* %11, align 4
  br label %77

55:                                               ; preds = %41, %3
  %56 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %9, align 8
  %57 = icmp ne %struct.ipr_resource_entry* %56, null
  br i1 %57, label %58, label %76

58:                                               ; preds = %55
  %59 = load i8*, i8** %6, align 8
  %60 = load i32, i32* @PAGE_SIZE, align 4
  %61 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  %62 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %9, align 8
  %67 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %9, align 8
  %70 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %9, align 8
  %73 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 (i8*, i32, i8*, ...) @snprintf(i8* %59, i32 %60, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %65, i32 %68, i32 %71, i32 %74)
  store i32 %75, i32* %11, align 4
  br label %76

76:                                               ; preds = %58, %55
  br label %77

77:                                               ; preds = %76, %46
  %78 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %8, align 8
  %79 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %78, i32 0, i32 0
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i64, i64* %10, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32 %82, i64 %83)
  %85 = load i32, i32* %11, align 4
  %86 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %86)
  ret i32 %85
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @snprintf(i8*, i32, i8*, ...) #1

declare dso_local i8* @__ipr_format_res_path(i32, i8*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
