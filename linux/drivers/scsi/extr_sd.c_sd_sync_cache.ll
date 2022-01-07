; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_sync_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sd.c_sd_sync_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_disk = type { %struct.scsi_device* }
%struct.scsi_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.scsi_sense_hdr = type { i32, i32 }

@SD_FLUSH_TIMEOUT_MULTIPLIER = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SYNCHRONIZE_CACHE = common dso_local global i8 0, align 1
@DMA_NONE = common dso_local global i32 0, align 4
@SD_MAX_RETRIES = common dso_local global i32 0, align 4
@RQF_PM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Synchronize Cache(10) failed\00", align 1
@DRIVER_SENSE = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_disk*, %struct.scsi_sense_hdr*)* @sd_sync_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_sync_cache(%struct.scsi_disk* %0, %struct.scsi_sense_hdr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_disk*, align 8
  %5 = alloca %struct.scsi_sense_hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.scsi_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.scsi_sense_hdr, align 4
  %11 = alloca [10 x i8], align 1
  store %struct.scsi_disk* %0, %struct.scsi_disk** %4, align 8
  store %struct.scsi_sense_hdr* %1, %struct.scsi_sense_hdr** %5, align 8
  %12 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %13 = getelementptr inbounds %struct.scsi_disk, %struct.scsi_disk* %12, i32 0, i32 0
  %14 = load %struct.scsi_device*, %struct.scsi_device** %13, align 8
  store %struct.scsi_device* %14, %struct.scsi_device** %8, align 8
  %15 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %16 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @SD_FLUSH_TIMEOUT_MULTIPLIER, align 4
  %21 = mul nsw i32 %19, %20
  store i32 %21, i32* %9, align 4
  %22 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %23 = call i32 @scsi_device_online(%struct.scsi_device* %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @ENODEV, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %106

28:                                               ; preds = %2
  %29 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %30 = icmp ne %struct.scsi_sense_hdr* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  store %struct.scsi_sense_hdr* %10, %struct.scsi_sense_hdr** %5, align 8
  br label %32

32:                                               ; preds = %31, %28
  store i32 3, i32* %6, align 4
  br label %33

33:                                               ; preds = %52, %32
  %34 = load i32, i32* %6, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %55

36:                                               ; preds = %33
  %37 = bitcast [10 x i8]* %11 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 1 %37, i8 0, i64 10, i1 false)
  %38 = load i8, i8* @SYNCHRONIZE_CACHE, align 1
  %39 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  store i8 %38, i8* %39, align 1
  %40 = load %struct.scsi_device*, %struct.scsi_device** %8, align 8
  %41 = getelementptr inbounds [10 x i8], [10 x i8]* %11, i64 0, i64 0
  %42 = load i32, i32* @DMA_NONE, align 4
  %43 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @SD_MAX_RETRIES, align 4
  %46 = load i32, i32* @RQF_PM, align 4
  %47 = call i32 @scsi_execute(%struct.scsi_device* %40, i8* %41, i32 %42, i32* null, i32 0, i32* null, %struct.scsi_sense_hdr* %43, i32 %44, i32 %45, i32 0, i32 %46, i32* null)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %36
  br label %55

51:                                               ; preds = %36
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, -1
  store i32 %54, i32* %6, align 4
  br label %33

55:                                               ; preds = %50, %33
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %105

58:                                               ; preds = %55
  %59 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @sd_print_result(%struct.scsi_disk* %59, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* %7, align 4
  %63 = call i64 @driver_byte(i32 %62)
  %64 = load i64, i64* @DRIVER_SENSE, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %70

66:                                               ; preds = %58
  %67 = load %struct.scsi_disk*, %struct.scsi_disk** %4, align 8
  %68 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %69 = call i32 @sd_print_sense_hdr(%struct.scsi_disk* %67, %struct.scsi_sense_hdr* %68)
  br label %70

70:                                               ; preds = %66, %58
  %71 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %72 = call i64 @scsi_sense_valid(%struct.scsi_sense_hdr* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %95

74:                                               ; preds = %70
  %75 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %76 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 58
  br i1 %78, label %94, label %79

79:                                               ; preds = %74
  %80 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %81 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 32
  br i1 %83, label %94, label %84

84:                                               ; preds = %79
  %85 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %86 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = icmp eq i32 %87, 116
  br i1 %88, label %89, label %95

89:                                               ; preds = %84
  %90 = load %struct.scsi_sense_hdr*, %struct.scsi_sense_hdr** %5, align 8
  %91 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = icmp eq i32 %92, 113
  br i1 %93, label %94, label %95

94:                                               ; preds = %89, %79, %74
  store i32 0, i32* %3, align 4
  br label %106

95:                                               ; preds = %89, %84, %70
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @host_byte(i32 %96)
  switch i32 %97, label %102 [
    i32 133, label %98
    i32 130, label %98
    i32 132, label %99
    i32 131, label %99
    i32 129, label %99
    i32 128, label %99
  ]

98:                                               ; preds = %95, %95
  store i32 0, i32* %3, align 4
  br label %106

99:                                               ; preds = %95, %95, %95, %95
  %100 = load i32, i32* @EBUSY, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %106

102:                                              ; preds = %95
  %103 = load i32, i32* @EIO, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %3, align 4
  br label %106

105:                                              ; preds = %55
  store i32 0, i32* %3, align 4
  br label %106

106:                                              ; preds = %105, %102, %99, %98, %94, %25
  %107 = load i32, i32* %3, align 4
  ret i32 %107
}

declare dso_local i32 @scsi_device_online(%struct.scsi_device*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @scsi_execute(%struct.scsi_device*, i8*, i32, i32*, i32, i32*, %struct.scsi_sense_hdr*, i32, i32, i32, i32, i32*) #1

declare dso_local i32 @sd_print_result(%struct.scsi_disk*, i8*, i32) #1

declare dso_local i64 @driver_byte(i32) #1

declare dso_local i32 @sd_print_sense_hdr(%struct.scsi_disk*, %struct.scsi_sense_hdr*) #1

declare dso_local i64 @scsi_sense_valid(%struct.scsi_sense_hdr*) #1

declare dso_local i32 @host_byte(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
