; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas.c_uas_submit_sense_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas.c_uas_submit_sense_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32 }
%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.uas_dev_info* }
%struct.uas_dev_info = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"sense submit err\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.urb* (%struct.scsi_cmnd*, i32)* @uas_submit_sense_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.urb* @uas_submit_sense_urb(%struct.scsi_cmnd* %0, i32 %1) #0 {
  %3 = alloca %struct.urb*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.uas_dev_info*, align 8
  %7 = alloca %struct.urb*, align 8
  %8 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.uas_dev_info*, %struct.uas_dev_info** %12, align 8
  store %struct.uas_dev_info* %13, %struct.uas_dev_info** %6, align 8
  %14 = load %struct.uas_dev_info*, %struct.uas_dev_info** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %17 = call %struct.urb* @uas_alloc_sense_urb(%struct.uas_dev_info* %14, i32 %15, %struct.scsi_cmnd* %16)
  store %struct.urb* %17, %struct.urb** %7, align 8
  %18 = load %struct.urb*, %struct.urb** %7, align 8
  %19 = icmp ne %struct.urb* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store %struct.urb* null, %struct.urb** %3, align 8
  br label %41

21:                                               ; preds = %2
  %22 = load %struct.urb*, %struct.urb** %7, align 8
  %23 = load %struct.uas_dev_info*, %struct.uas_dev_info** %6, align 8
  %24 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %23, i32 0, i32 0
  %25 = call i32 @usb_anchor_urb(%struct.urb* %22, i32* %24)
  %26 = load %struct.urb*, %struct.urb** %7, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @usb_submit_urb(%struct.urb* %26, i32 %27)
  store i32 %28, i32* %8, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %21
  %32 = load %struct.urb*, %struct.urb** %7, align 8
  %33 = call i32 @usb_unanchor_urb(%struct.urb* %32)
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i32 @uas_log_cmd_state(%struct.scsi_cmnd* %34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load %struct.urb*, %struct.urb** %7, align 8
  %38 = call i32 @usb_free_urb(%struct.urb* %37)
  store %struct.urb* null, %struct.urb** %3, align 8
  br label %41

39:                                               ; preds = %21
  %40 = load %struct.urb*, %struct.urb** %7, align 8
  store %struct.urb* %40, %struct.urb** %3, align 8
  br label %41

41:                                               ; preds = %39, %31, %20
  %42 = load %struct.urb*, %struct.urb** %3, align 8
  ret %struct.urb* %42
}

declare dso_local %struct.urb* @uas_alloc_sense_urb(%struct.uas_dev_info*, i32, %struct.scsi_cmnd*) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @uas_log_cmd_state(%struct.scsi_cmnd*, i8*, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
