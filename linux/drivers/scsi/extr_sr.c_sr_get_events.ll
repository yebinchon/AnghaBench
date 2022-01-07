; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sr.c_sr_get_events.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sr.c_sr_get_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32 }
%struct.event_header = type { i32, i64, i32 }
%struct.media_event_desc = type { i32 }
%struct.scsi_sense_hdr = type { i64 }

@GET_EVENT_STATUS_NOTIFICATION = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@SR_TIMEOUT = common dso_local global i32 0, align 4
@MAX_RETRIES = common dso_local global i32 0, align 4
@UNIT_ATTENTION = common dso_local global i64 0, align 8
@DISK_EVENT_MEDIA_CHANGE = common dso_local global i32 0, align 4
@DISK_EVENT_EJECT_REQUEST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @sr_get_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sr_get_events(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca [8 x i32], align 16
  %5 = alloca [10 x i32], align 16
  %6 = alloca %struct.event_header*, align 8
  %7 = alloca %struct.media_event_desc*, align 8
  %8 = alloca %struct.scsi_sense_hdr, align 8
  %9 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %10 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 0
  %11 = load i32, i32* @GET_EVENT_STATUS_NOTIFICATION, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds i32, i32* %10, i64 1
  store i32 1, i32* %12, align 4
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 16, i32* %15, align 4
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 0, i32* %18, align 4
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 32, i32* %19, align 4
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 0, i32* %20, align 4
  %21 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %22 = bitcast i32* %21 to i8*
  %23 = bitcast i8* %22 to %struct.event_header*
  store %struct.event_header* %23, %struct.event_header** %6, align 8
  %24 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %25 = getelementptr inbounds i32, i32* %24, i64 4
  %26 = bitcast i32* %25 to i8*
  %27 = bitcast i8* %26 to %struct.media_event_desc*
  store %struct.media_event_desc* %27, %struct.media_event_desc** %7, align 8
  %28 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %29 = getelementptr inbounds [10 x i32], [10 x i32]* %5, i64 0, i64 0
  %30 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %31 = getelementptr inbounds [8 x i32], [8 x i32]* %4, i64 0, i64 0
  %32 = load i32, i32* @SR_TIMEOUT, align 4
  %33 = load i32, i32* @MAX_RETRIES, align 4
  %34 = call i32 @scsi_execute_req(%struct.scsi_device* %28, i32* %29, i32 %30, i32* %31, i32 32, %struct.scsi_sense_hdr* %8, i32 %32, i32 %33, i32* null)
  store i32 %34, i32* %9, align 4
  %35 = call i64 @scsi_sense_valid(%struct.scsi_sense_hdr* %8)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %1
  %38 = getelementptr inbounds %struct.scsi_sense_hdr, %struct.scsi_sense_hdr* %8, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @UNIT_ATTENTION, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* @DISK_EVENT_MEDIA_CHANGE, align 4
  store i32 %43, i32* %2, align 4
  br label %82

44:                                               ; preds = %37, %1
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %54, label %47

47:                                               ; preds = %44
  %48 = load %struct.event_header*, %struct.event_header** %6, align 8
  %49 = getelementptr inbounds %struct.event_header, %struct.event_header* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @be16_to_cpu(i32 %50)
  %52 = sext i32 %51 to i64
  %53 = icmp ult i64 %52, 4
  br i1 %53, label %54, label %55

54:                                               ; preds = %47, %44
  store i32 0, i32* %2, align 4
  br label %82

55:                                               ; preds = %47
  %56 = load %struct.event_header*, %struct.event_header** %6, align 8
  %57 = getelementptr inbounds %struct.event_header, %struct.event_header* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %65, label %60

60:                                               ; preds = %55
  %61 = load %struct.event_header*, %struct.event_header** %6, align 8
  %62 = getelementptr inbounds %struct.event_header, %struct.event_header* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 4
  br i1 %64, label %65, label %66

65:                                               ; preds = %60, %55
  store i32 0, i32* %2, align 4
  br label %82

66:                                               ; preds = %60
  %67 = load %struct.media_event_desc*, %struct.media_event_desc** %7, align 8
  %68 = getelementptr inbounds %struct.media_event_desc, %struct.media_event_desc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %73

71:                                               ; preds = %66
  %72 = load i32, i32* @DISK_EVENT_EJECT_REQUEST, align 4
  store i32 %72, i32* %2, align 4
  br label %82

73:                                               ; preds = %66
  %74 = load %struct.media_event_desc*, %struct.media_event_desc** %7, align 8
  %75 = getelementptr inbounds %struct.media_event_desc, %struct.media_event_desc* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 2
  br i1 %77, label %78, label %80

78:                                               ; preds = %73
  %79 = load i32, i32* @DISK_EVENT_MEDIA_CHANGE, align 4
  store i32 %79, i32* %2, align 4
  br label %82

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80
  store i32 0, i32* %2, align 4
  br label %82

82:                                               ; preds = %81, %78, %71, %65, %54, %42
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local i32 @scsi_execute_req(%struct.scsi_device*, i32*, i32, i32*, i32, %struct.scsi_sense_hdr*, i32, i32, i32*) #1

declare dso_local i64 @scsi_sense_valid(%struct.scsi_sense_hdr*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
