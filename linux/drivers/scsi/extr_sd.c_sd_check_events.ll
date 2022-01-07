; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_check_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_check_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gendisk = type { i32 }
%struct.scsi_disk = type { i32, %struct.scsi_device* }
%struct.scsi_device = type { i32 }
%struct.scsi_sense_hdr = type { i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"sd_check_events\0A\00", align 1
@SD_TIMEOUT = common dso_local global i32 0, align 4
@SD_MAX_RETRIES = common dso_local global i32 0, align 4
@DISK_EVENT_MEDIA_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gendisk*, i32)* @sd_check_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_check_events(%struct.gendisk* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gendisk*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.scsi_disk*, align 8
  %7 = alloca %struct.scsi_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.scsi_sense_hdr, align 4
  store %struct.gendisk* %0, %struct.gendisk** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.gendisk*, %struct.gendisk** %4, align 8
  %11 = call %struct.scsi_disk* @scsi_disk_get(%struct.gendisk* %10)
  store %struct.scsi_disk* %11, %struct.scsi_disk** %6, align 8
  %12 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %13 = icmp ne %struct.scsi_disk* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %77

15:                                               ; preds = %2
  %16 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %17 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %16, i32 0, i32 1
  %18 = load %struct.scsi_device*, %struct.scsi_device** %17, align 8
  store %struct.scsi_device* %18, %struct.scsi_device** %7, align 8
  %19 = load i32, i32* @KERN_INFO, align 4
  %20 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %21 = call i32 @sd_printk(i32 %19, %struct.scsi_disk* %20, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %22 = call i32 @SCSI_LOG_HLQUEUE(i32 3, i32 %21)
  %23 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %24 = call i32 @scsi_device_online(%struct.scsi_device* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %15
  %27 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %28 = call i32 @set_media_not_present(%struct.scsi_disk* %27)
  br label %62

29:                                               ; preds = %15
  %30 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %31 = call i64 @scsi_block_when_processing_errors(%struct.scsi_device* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %51

33:                                               ; preds = %29
  %34 = bitcast %struct.scsi_sense_hdr* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %34, i8 0, i64 4, i1 false)
  %35 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %36 = load i32, i32* @SD_TIMEOUT, align 4
  %37 = load i32, i32* @SD_MAX_RETRIES, align 4
  %38 = call i32 @scsi_test_unit_ready(%struct.scsi_device* %35, i32 %36, i32 %37, %struct.scsi_sense_hdr* %9)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @host_byte(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %33
  %43 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %44 = call i32 @set_media_not_present(%struct.scsi_disk* %43)
  br label %62

45:                                               ; preds = %33
  %46 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %47 = call i64 @media_not_present(%struct.scsi_disk* %46, %struct.scsi_sense_hdr* %9)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %62

50:                                               ; preds = %45
  br label %51

51:                                               ; preds = %50, %29
  %52 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %53 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %59, label %56

56:                                               ; preds = %51
  %57 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %58 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %57, i32 0, i32 0
  store i32 1, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %51
  %60 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %61 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %60, i32 0, i32 0
  store i32 1, i32* %61, align 8
  br label %62

62:                                               ; preds = %59, %49, %42, %26
  %63 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %64 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @DISK_EVENT_MEDIA_CHANGE, align 4
  br label %70

69:                                               ; preds = %62
  br label %70

70:                                               ; preds = %69, %67
  %71 = phi i32 [ %68, %67 ], [ 0, %69 ]
  store i32 %71, i32* %8, align 4
  %72 = load %struct.scsi_device*, %struct.scsi_device** %7, align 8
  %73 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %72, i32 0, i32 0
  store i32 0, i32* %73, align 4
  %74 = load %struct.scsi_disk*, %struct.scsi_disk** %6, align 8
  %75 = call i32 @scsi_disk_put(%struct.scsi_disk* %74)
  %76 = load i32, i32* %8, align 4
  store i32 %76, i32* %3, align 4
  br label %77

77:                                               ; preds = %70, %14
  %78 = load i32, i32* %3, align 4
  ret i32 %78
}

declare dso_local %struct.scsi_disk* @scsi_disk_get(%struct.gendisk*) #1

declare dso_local i32 @SCSI_LOG_HLQUEUE(i32, i32) #1

declare dso_local i32 @sd_printk(i32, %struct.scsi_disk*, i8*) #1

declare dso_local i32 @scsi_device_online(%struct.scsi_device*) #1

declare dso_local i32 @set_media_not_present(%struct.scsi_disk*) #1

declare dso_local i64 @scsi_block_when_processing_errors(%struct.scsi_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @scsi_test_unit_ready(%struct.scsi_device*, i32, i32, %struct.scsi_sense_hdr*) #1

declare dso_local i64 @host_byte(i32) #1

declare dso_local i64 @media_not_present(%struct.scsi_disk*, %struct.scsi_sense_hdr*) #1

declare dso_local i32 @scsi_disk_put(%struct.scsi_disk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
