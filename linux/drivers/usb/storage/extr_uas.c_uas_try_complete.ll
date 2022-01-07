; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas.c_uas_try_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_uas.c_uas_try_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 (%struct.scsi_cmnd*)*, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.uas_cmd_info = type { i32, i32 }
%struct.uas_dev_info = type { i32**, i32 }

@COMMAND_INFLIGHT = common dso_local global i32 0, align 4
@DATA_IN_URB_INFLIGHT = common dso_local global i32 0, align 4
@DATA_OUT_URB_INFLIGHT = common dso_local global i32 0, align 4
@COMMAND_ABORTED = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, i8*)* @uas_try_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uas_try_complete(%struct.scsi_cmnd* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.uas_cmd_info*, align 8
  %7 = alloca %struct.uas_dev_info*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %9 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %8, i32 0, i32 2
  %10 = bitcast i32* %9 to i8*
  %11 = bitcast i8* %10 to %struct.uas_cmd_info*
  store %struct.uas_cmd_info* %11, %struct.uas_cmd_info** %6, align 8
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 1
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = bitcast i8* %17 to %struct.uas_dev_info*
  store %struct.uas_dev_info* %18, %struct.uas_dev_info** %7, align 8
  %19 = load %struct.uas_dev_info*, %struct.uas_dev_info** %7, align 8
  %20 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %19, i32 0, i32 1
  %21 = call i32 @lockdep_assert_held(i32* %20)
  %22 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %6, align 8
  %23 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @COMMAND_INFLIGHT, align 4
  %26 = load i32, i32* @DATA_IN_URB_INFLIGHT, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @DATA_OUT_URB_INFLIGHT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @COMMAND_ABORTED, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %24, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %2
  %35 = load i32, i32* @EBUSY, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %54

37:                                               ; preds = %2
  %38 = load %struct.uas_dev_info*, %struct.uas_dev_info** %7, align 8
  %39 = getelementptr inbounds %struct.uas_dev_info, %struct.uas_dev_info* %38, i32 0, i32 0
  %40 = load i32**, i32*** %39, align 8
  %41 = load %struct.uas_cmd_info*, %struct.uas_cmd_info** %6, align 8
  %42 = getelementptr inbounds %struct.uas_cmd_info, %struct.uas_cmd_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %40, i64 %45
  store i32* null, i32** %46, align 8
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %48 = call i32 @uas_free_unsubmitted_urbs(%struct.scsi_cmnd* %47)
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %50 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %49, i32 0, i32 0
  %51 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %50, align 8
  %52 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %53 = call i32 %51(%struct.scsi_cmnd* %52)
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %37, %34
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @uas_free_unsubmitted_urbs(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
