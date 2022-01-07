; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas.c_uas_free_unsubmitted_urbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas.c_uas_free_unsubmitted_urbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.uas_cmd_info = type { i32, i32, i32, i32 }

@SUBMIT_CMD_URB = common dso_local global i32 0, align 4
@DATA_IN_URB_INFLIGHT = common dso_local global i32 0, align 4
@DATA_OUT_URB_INFLIGHT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_cmnd*)* @uas_free_unsubmitted_urbs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uas_free_unsubmitted_urbs(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.uas_cmd_info*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %4 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %5 = icmp ne %struct.scsi_cmnd* %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %47

7:                                                ; preds = %1
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %9 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %8, i32 0, i32 0
  %10 = bitcast i32* %9 to i8*
  %11 = bitcast i8* %10 to %struct.uas_cmd_info*
  store %struct.uas_cmd_info* %11, %struct.uas_cmd_info** %3, align 8
  %12 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %3, align 8
  %13 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @SUBMIT_CMD_URB, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %7
  %19 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %3, align 8
  %20 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @usb_free_urb(i32 %21)
  br label %23

23:                                               ; preds = %18, %7
  %24 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %3, align 8
  %25 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DATA_IN_URB_INFLIGHT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %35, label %30

30:                                               ; preds = %23
  %31 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %3, align 8
  %32 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @usb_free_urb(i32 %33)
  br label %35

35:                                               ; preds = %30, %23
  %36 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %3, align 8
  %37 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @DATA_OUT_URB_INFLIGHT, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %47, label %42

42:                                               ; preds = %35
  %43 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %3, align 8
  %44 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @usb_free_urb(i32 %45)
  br label %47

47:                                               ; preds = %6, %42, %35
  ret void
}

declare dso_local i32 @usb_free_urb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
