; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas.c_uas_alloc_data_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas.c_uas_alloc_data_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32 }
%struct.uas_dev_info = type { i32, i32, i64, %struct.usb_device* }
%struct.usb_device = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.scsi_cmnd = type { %struct.scsi_data_buffer, i32 }
%struct.scsi_data_buffer = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.uas_cmd_info = type { i32 }

@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@uas_data_cmplt = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.urb* (%struct.uas_dev_info*, i32, %struct.scsi_cmnd*, i32)* @uas_alloc_data_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.urb* @uas_alloc_data_urb(%struct.uas_dev_info* %0, i32 %1, %struct.scsi_cmnd* %2, i32 %3) #0 {
  %5 = alloca %struct.uas_dev_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_device*, align 8
  %10 = alloca %struct.uas_cmd_info*, align 8
  %11 = alloca %struct.urb*, align 8
  %12 = alloca %struct.scsi_data_buffer*, align 8
  %13 = alloca i32, align 4
  store %struct.uas_dev_info* %0, %struct.uas_dev_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %7, align 8
  store i32 %3, i32* %8, align 4
  %14 = load %struct.uas_dev_info*, %struct.uas_dev_info** %5, align 8
  %15 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %14, i32 0, i32 3
  %16 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  store %struct.usb_device* %16, %struct.usb_device** %9, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 1
  %19 = bitcast i32* %18 to i8*
  %20 = bitcast i8* %19 to %struct.uas_cmd_info*
  store %struct.uas_cmd_info* %20, %struct.uas_cmd_info** %10, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %21)
  store %struct.urb* %22, %struct.urb** %11, align 8
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %24 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %23, i32 0, i32 0
  store %struct.scsi_data_buffer* %24, %struct.scsi_data_buffer** %12, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %4
  %29 = load %struct.uas_dev_info*, %struct.uas_dev_info** %5, align 8
  %30 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  br label %36

32:                                               ; preds = %4
  %33 = load %struct.uas_dev_info*, %struct.uas_dev_info** %5, align 8
  %34 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  br label %36

36:                                               ; preds = %32, %28
  %37 = phi i32 [ %31, %28 ], [ %35, %32 ]
  store i32 %37, i32* %13, align 4
  %38 = load %struct.urb*, %struct.urb** %11, align 8
  %39 = icmp ne %struct.urb* %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  br label %84

41:                                               ; preds = %36
  %42 = load %struct.urb*, %struct.urb** %11, align 8
  %43 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %44 = load i32, i32* %13, align 4
  %45 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %12, align 8
  %46 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @uas_data_cmplt, align 4
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %50 = call i32 @usb_fill_bulk_urb(%struct.urb* %42, %struct.usb_device* %43, i32 %44, i32* null, i32 %47, i32 %48, %struct.scsi_cmnd* %49)
  %51 = load %struct.uas_dev_info*, %struct.uas_dev_info** %5, align 8
  %52 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %61

55:                                               ; preds = %41
  %56 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %10, align 8
  %57 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.urb*, %struct.urb** %11, align 8
  %60 = getelementptr inbounds %struct.urb, %struct.urb* %59, i32 0, i32 2
  store i32 %58, i32* %60, align 4
  br label %61

61:                                               ; preds = %55, %41
  %62 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %63 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %62, i32 0, i32 0
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %61
  %69 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %12, align 8
  %70 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  br label %74

73:                                               ; preds = %61
  br label %74

74:                                               ; preds = %73, %68
  %75 = phi i32 [ %72, %68 ], [ 0, %73 ]
  %76 = load %struct.urb*, %struct.urb** %11, align 8
  %77 = getelementptr inbounds %struct.urb, %struct.urb* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load %struct.scsi_data_buffer*, %struct.scsi_data_buffer** %12, align 8
  %79 = getelementptr inbounds %struct.scsi_data_buffer, %struct.scsi_data_buffer* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.urb*, %struct.urb** %11, align 8
  %83 = getelementptr inbounds %struct.urb, %struct.urb* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  br label %84

84:                                               ; preds = %74, %40
  %85 = load %struct.urb*, %struct.urb** %11, align 8
  ret %struct.urb* %85
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, %struct.usb_device*, i32, i32*, i32, i32, %struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
