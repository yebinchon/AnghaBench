; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_store_raw_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_store_raw_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.scsi_device = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.ipr_ioa_cfg = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.ipr_resource_entry = type { i64, i64 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"raw mode is %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ipr_store_raw_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_store_raw_mode(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.scsi_device*, align 8
  %10 = alloca %struct.ipr_ioa_cfg*, align 8
  %11 = alloca %struct.ipr_resource_entry*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.scsi_device* @to_scsi_device(%struct.device* %14)
  store %struct.scsi_device* %15, %struct.scsi_device** %9, align 8
  %16 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %17 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %16, i32 0, i32 1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to %struct.ipr_ioa_cfg*
  store %struct.ipr_ioa_cfg* %21, %struct.ipr_ioa_cfg** %10, align 8
  store i64 0, i64* %12, align 8
  %22 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %10, align 8
  %23 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i64, i64* %12, align 8
  %28 = call i32 @spin_lock_irqsave(i32 %26, i64 %27)
  %29 = load %struct.scsi_device*, %struct.scsi_device** %9, align 8
  %30 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.ipr_resource_entry*
  store %struct.ipr_resource_entry* %32, %struct.ipr_resource_entry** %11, align 8
  %33 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %11, align 8
  %34 = icmp ne %struct.ipr_resource_entry* %33, null
  br i1 %34, label %35, label %67

35:                                               ; preds = %4
  %36 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %11, align 8
  %37 = call i64 @ipr_is_af_dasd_device(%struct.ipr_resource_entry* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %35
  %40 = load i8*, i8** %7, align 8
  %41 = call i64 @simple_strtoul(i8* %40, i32* null, i32 10)
  %42 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %11, align 8
  %43 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = call i32 @strlen(i8* %44)
  store i32 %45, i32* %13, align 4
  %46 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %11, align 8
  %47 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %62

50:                                               ; preds = %39
  %51 = load i32, i32* @KERN_INFO, align 4
  %52 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %11, align 8
  %53 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.ipr_resource_entry*, %struct.ipr_resource_entry** %11, align 8
  %56 = getelementptr inbounds %struct.ipr_resource_entry, %struct.ipr_resource_entry* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  %59 = zext i1 %58 to i64
  %60 = select i1 %58, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %61 = call i32 @sdev_printk(i32 %51, i64 %54, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %50, %39
  br label %66

63:                                               ; preds = %35
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %13, align 4
  br label %66

66:                                               ; preds = %63, %62
  br label %70

67:                                               ; preds = %4
  %68 = load i32, i32* @ENXIO, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %13, align 4
  br label %70

70:                                               ; preds = %67, %66
  %71 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %10, align 8
  %72 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %71, i32 0, i32 0
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* %12, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32 %75, i64 %76)
  %78 = load i32, i32* %13, align 4
  ret i32 %78
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i64 @ipr_is_af_dasd_device(%struct.ipr_resource_entry*) #1

declare dso_local i64 @simple_strtoul(i8*, i32*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @sdev_printk(i32, i64, i8*, i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
