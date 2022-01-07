; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_sr_ioctl.c_sr_disk_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_sr_ioctl.c_sr_disk_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdrom_device_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.cdrom_tochdr = type { i32, i32 }
%struct.cdrom_tocentry = type { i32, i32, i32 }

@ENOMEDIUM = common dso_local global i32 0, align 4
@CDS_NO_DISC = common dso_local global i32 0, align 4
@CDS_NO_INFO = common dso_local global i32 0, align 4
@CDROM_LBA = common dso_local global i32 0, align 4
@CDROM_DATA_TRACK = common dso_local global i32 0, align 4
@CDS_AUDIO = common dso_local global i32 0, align 4
@CDS_XA_2_1 = common dso_local global i32 0, align 4
@CDS_DATA_1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sr_disk_status(%struct.cdrom_device_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cdrom_device_info*, align 8
  %4 = alloca %struct.TYPE_2__*, align 8
  %5 = alloca %struct.cdrom_tochdr, align 4
  %6 = alloca %struct.cdrom_tocentry, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cdrom_device_info* %0, %struct.cdrom_device_info** %3, align 8
  %10 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %11 = getelementptr inbounds %struct.cdrom_device_info, %struct.cdrom_device_info* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  store %struct.TYPE_2__* %12, %struct.TYPE_2__** %4, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %14 = call i32 @sr_read_tochdr(%struct.cdrom_device_info* %13, %struct.cdrom_tochdr* %5)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %28

17:                                               ; preds = %1
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @ENOMEDIUM, align 4
  %20 = sub nsw i32 0, %19
  %21 = icmp eq i32 %18, %20
  br i1 %21, label %22, label %24

22:                                               ; preds = %17
  %23 = load i32, i32* @CDS_NO_DISC, align 4
  br label %26

24:                                               ; preds = %17
  %25 = load i32, i32* @CDS_NO_INFO, align 4
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi i32 [ %23, %22 ], [ %25, %24 ]
  store i32 %27, i32* %2, align 4
  br label %71

28:                                               ; preds = %1
  %29 = getelementptr inbounds %struct.cdrom_tochdr, %struct.cdrom_tochdr* %5, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %54, %28
  %32 = load i32, i32* %7, align 4
  %33 = getelementptr inbounds %struct.cdrom_tochdr, %struct.cdrom_tochdr* %5, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = icmp sle i32 %32, %34
  br i1 %35, label %36, label %57

36:                                               ; preds = %31
  %37 = load i32, i32* %7, align 4
  %38 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %6, i32 0, i32 0
  store i32 %37, i32* %38, align 4
  %39 = load i32, i32* @CDROM_LBA, align 4
  %40 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %6, i32 0, i32 2
  store i32 %39, i32* %40, align 4
  %41 = load %struct.cdrom_device_info*, %struct.cdrom_device_info** %3, align 8
  %42 = call i64 @sr_read_tocentry(%struct.cdrom_device_info* %41, %struct.cdrom_tocentry* %6)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %36
  %45 = load i32, i32* @CDS_NO_INFO, align 4
  store i32 %45, i32* %2, align 4
  br label %71

46:                                               ; preds = %36
  %47 = getelementptr inbounds %struct.cdrom_tocentry, %struct.cdrom_tocentry* %6, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @CDROM_DATA_TRACK, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 1, i32* %9, align 4
  br label %57

53:                                               ; preds = %46
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %7, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %7, align 4
  br label %31

57:                                               ; preds = %52, %31
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* @CDS_AUDIO, align 4
  store i32 %61, i32* %2, align 4
  br label %71

62:                                               ; preds = %57
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %4, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %62
  %68 = load i32, i32* @CDS_XA_2_1, align 4
  store i32 %68, i32* %2, align 4
  br label %71

69:                                               ; preds = %62
  %70 = load i32, i32* @CDS_DATA_1, align 4
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %69, %67, %60, %44, %26
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @sr_read_tochdr(%struct.cdrom_device_info*, %struct.cdrom_tochdr*) #1

declare dso_local i64 @sr_read_tocentry(%struct.cdrom_device_info*, %struct.cdrom_tocentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
