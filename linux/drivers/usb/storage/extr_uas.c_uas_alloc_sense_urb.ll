; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas.c_uas_alloc_sense_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas.c_uas_alloc_sense_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32 }
%struct.uas_dev_info = type { i64, i32, %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.scsi_cmnd = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.uas_cmd_info = type { i32 }
%struct.sense_iu = type { i32 }

@uas_stat_cmplt = common dso_local global i32 0, align 4
@URB_FREE_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.urb* (%struct.uas_dev_info*, i32, %struct.scsi_cmnd*)* @uas_alloc_sense_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.urb* @uas_alloc_sense_urb(%struct.uas_dev_info* %0, i32 %1, %struct.scsi_cmnd* %2) #0 {
  %4 = alloca %struct.urb*, align 8
  %5 = alloca %struct.uas_dev_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca %struct.uas_cmd_info*, align 8
  %10 = alloca %struct.urb*, align 8
  %11 = alloca %struct.sense_iu*, align 8
  store %struct.uas_dev_info* %0, %struct.uas_dev_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %7, align 8
  %12 = load %struct.uas_dev_info*, %struct.uas_dev_info** %5, align 8
  %13 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %12, i32 0, i32 2
  %14 = load %struct.usb_device*, %struct.usb_device** %13, align 8
  store %struct.usb_device* %14, %struct.usb_device** %8, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 1
  %17 = bitcast i32* %16 to i8*
  %18 = bitcast i8* %17 to %struct.uas_cmd_info*
  store %struct.uas_cmd_info* %18, %struct.uas_cmd_info** %9, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %19)
  store %struct.urb* %20, %struct.urb** %10, align 8
  %21 = load %struct.urb*, %struct.urb** %10, align 8
  %22 = icmp ne %struct.urb* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %60

24:                                               ; preds = %3
  %25 = load i32, i32* %6, align 4
  %26 = call %struct.sense_iu* @kzalloc(i32 4, i32 %25)
  store %struct.sense_iu* %26, %struct.sense_iu** %11, align 8
  %27 = load %struct.sense_iu*, %struct.sense_iu** %11, align 8
  %28 = icmp ne %struct.sense_iu* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  br label %62

30:                                               ; preds = %24
  %31 = load %struct.urb*, %struct.urb** %10, align 8
  %32 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %33 = load %struct.uas_dev_info*, %struct.uas_dev_info** %5, align 8
  %34 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.sense_iu*, %struct.sense_iu** %11, align 8
  %37 = load i32, i32* @uas_stat_cmplt, align 4
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %39 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @usb_fill_bulk_urb(%struct.urb* %31, %struct.usb_device* %32, i32 %35, %struct.sense_iu* %36, i32 4, i32 %37, i32 %42)
  %44 = load %struct.uas_dev_info*, %struct.uas_dev_info** %5, align 8
  %45 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %30
  %49 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %9, align 8
  %50 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.urb*, %struct.urb** %10, align 8
  %53 = getelementptr inbounds %struct.urb, %struct.urb* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %48, %30
  %55 = load i32, i32* @URB_FREE_BUFFER, align 4
  %56 = load %struct.urb*, %struct.urb** %10, align 8
  %57 = getelementptr inbounds %struct.urb, %struct.urb* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %54, %23
  %61 = load %struct.urb*, %struct.urb** %10, align 8
  store %struct.urb* %61, %struct.urb** %4, align 8
  br label %65

62:                                               ; preds = %29
  %63 = load %struct.urb*, %struct.urb** %10, align 8
  %64 = call i32 @usb_free_urb(%struct.urb* %63)
  store %struct.urb* null, %struct.urb** %4, align 8
  br label %65

65:                                               ; preds = %62, %60
  %66 = load %struct.urb*, %struct.urb** %4, align 8
  ret %struct.urb* %66
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local %struct.sense_iu* @kzalloc(i32, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, %struct.usb_device*, i32, %struct.sense_iu*, i32, i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
