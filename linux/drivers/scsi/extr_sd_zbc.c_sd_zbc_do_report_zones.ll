; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd_zbc.c_sd_zbc_do_report_zones.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd_zbc.c_sd_zbc_do_report_zones.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_disk = type { %struct.scsi_device* }
%struct.scsi_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_sense_hdr = type { i32 }

@ZBC_IN = common dso_local global i8 0, align 1
@ZI_REPORT_ZONES = common dso_local global i8 0, align 1
@ZBC_REPORT_ZONE_PARTIAL = common dso_local global i8 0, align 1
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@SD_MAX_RETRIES = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"REPORT ZONES lba %llu failed with %d/%d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"REPORT ZONES report invalid length %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_disk*, i8*, i32, i64, i32)* @sd_zbc_do_report_zones to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_zbc_do_report_zones(%struct.scsi_disk* %0, i8* %1, i32 %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_disk*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.scsi_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.scsi_sense_hdr, align 4
  %15 = alloca [16 x i8], align 16
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.scsi_disk* %0, %struct.scsi_disk** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %18 = load %struct.scsi_disk*, %struct.scsi_disk** %7, align 8
  %19 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %18, i32 0, i32 0
  %20 = load %struct.scsi_device*, %struct.scsi_device** %19, align 8
  store %struct.scsi_device* %20, %struct.scsi_device** %12, align 8
  %21 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  %22 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %13, align 4
  %26 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %27 = call i32 @memset(i8* %26, i32 0, i32 16)
  %28 = load i8, i8* @ZBC_IN, align 1
  %29 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  store i8 %28, i8* %29, align 16
  %30 = load i8, i8* @ZI_REPORT_ZONES, align 1
  %31 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 1
  store i8 %30, i8* %31, align 1
  %32 = load i64, i64* %10, align 8
  %33 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 2
  %34 = call i32 @put_unaligned_be64(i64 %32, i8* %33)
  %35 = load i32, i32* %9, align 4
  %36 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 10
  %37 = call i32 @put_unaligned_be32(i32 %35, i8* %36)
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %5
  %41 = load i8, i8* @ZBC_REPORT_ZONE_PARTIAL, align 1
  %42 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 14
  store i8 %41, i8* %42, align 2
  br label %43

43:                                               ; preds = %40, %5
  %44 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  %45 = getelementptr inbounds [16 x i8], [16 x i8]* %15, i64 0, i64 0
  %46 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %47 = load i8*, i8** %8, align 8
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* @SD_MAX_RETRIES, align 4
  %51 = call i32 @scsi_execute_req(%struct.scsi_device* %44, i8* %45, i32 %46, i8* %47, i32 %48, %struct.scsi_sense_hdr* %14, i32 %49, i32 %50, i32* null)
  store i32 %51, i32* %17, align 4
  %52 = load i32, i32* %17, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %66

54:                                               ; preds = %43
  %55 = load i32, i32* @KERN_ERR, align 4
  %56 = load %struct.scsi_disk*, %struct.scsi_disk** %7, align 8
  %57 = load i64, i64* %10, align 8
  %58 = trunc i64 %57 to i32
  %59 = load i32, i32* %17, align 4
  %60 = call i32 @host_byte(i32 %59)
  %61 = load i32, i32* %17, align 4
  %62 = call i32 @driver_byte(i32 %61)
  %63 = call i32 (i32, %struct.scsi_disk*, i8*, i32, ...) @sd_printk(i32 %55, %struct.scsi_disk* %56, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %58, i32 %60, i32 %62)
  %64 = load i32, i32* @EIO, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %80

66:                                               ; preds = %43
  %67 = load i8*, i8** %8, align 8
  %68 = getelementptr inbounds i8, i8* %67, i64 0
  %69 = call i32 @get_unaligned_be32(i8* %68)
  store i32 %69, i32* %16, align 4
  %70 = load i32, i32* %16, align 4
  %71 = icmp ult i32 %70, 64
  br i1 %71, label %72, label %79

72:                                               ; preds = %66
  %73 = load i32, i32* @KERN_ERR, align 4
  %74 = load %struct.scsi_disk*, %struct.scsi_disk** %7, align 8
  %75 = load i32, i32* %16, align 4
  %76 = call i32 (i32, %struct.scsi_disk*, i8*, i32, ...) @sd_printk(i32 %73, %struct.scsi_disk* %74, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @EIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %6, align 4
  br label %80

79:                                               ; preds = %66
  store i32 0, i32* %6, align 4
  br label %80

80:                                               ; preds = %79, %72, %54
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @put_unaligned_be64(i64, i8*) #1

declare dso_local i32 @put_unaligned_be32(i32, i8*) #1

declare dso_local i32 @scsi_execute_req(%struct.scsi_device*, i8*, i32, i8*, i32, %struct.scsi_sense_hdr*, i32, i32, i32*) #1

declare dso_local i32 @sd_printk(i32, %struct.scsi_disk*, i8*, i32, ...) #1

declare dso_local i32 @host_byte(i32) #1

declare dso_local i32 @driver_byte(i32) #1

declare dso_local i32 @get_unaligned_be32(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
