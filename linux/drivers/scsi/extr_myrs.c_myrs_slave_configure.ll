; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_slave_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_slave_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64, i64, i32, i64, i32, i32, %struct.myrs_ldev_info*, %struct.TYPE_6__* }
%struct.myrs_ldev_info = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_6__ = type { i64 }
%struct.myrs_hba = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@ENXIO = common dso_local global i32 0, align 4
@TYPE_RAID = common dso_local global i64 0, align 8
@MYRS_WRITECACHE_ENABLED = common dso_local global i64 0, align 8
@MYRS_INTELLIGENT_WRITECACHE_ENABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_device*)* @myrs_slave_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @myrs_slave_configure(%struct.scsi_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.myrs_hba*, align 8
  %5 = alloca %struct.myrs_ldev_info*, align 8
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  %6 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %7 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %6, i32 0, i32 7
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = call %struct.myrs_hba* @shost_priv(%struct.TYPE_6__* %8)
  store %struct.myrs_hba* %9, %struct.myrs_hba** %4, align 8
  %10 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %11 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %14 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %13, i32 0, i32 7
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp sgt i64 %12, %17
  br i1 %18, label %19, label %22

19:                                               ; preds = %1
  %20 = load i32, i32* @ENXIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %2, align 4
  br label %81

22:                                               ; preds = %1
  %23 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %24 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.myrs_hba*, %struct.myrs_hba** %4, align 8
  %27 = getelementptr inbounds %struct.myrs_hba, %struct.myrs_hba* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp slt i64 %25, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %22
  %33 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %34 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @TYPE_RAID, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @ENXIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %81

41:                                               ; preds = %32
  %42 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %43 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %42, i32 0, i32 2
  store i32 1, i32* %43, align 8
  store i32 0, i32* %2, align 4
  br label %81

44:                                               ; preds = %22
  %45 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %46 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %45, i32 0, i32 3
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load i32, i32* @ENXIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %81

52:                                               ; preds = %44
  %53 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %54 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %53, i32 0, i32 6
  %55 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %54, align 8
  store %struct.myrs_ldev_info* %55, %struct.myrs_ldev_info** %5, align 8
  %56 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %5, align 8
  %57 = icmp ne %struct.myrs_ldev_info* %56, null
  br i1 %57, label %61, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @ENXIO, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %2, align 4
  br label %81

61:                                               ; preds = %52
  %62 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %5, align 8
  %63 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @MYRS_WRITECACHE_ENABLED, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %75, label %68

68:                                               ; preds = %61
  %69 = load %struct.myrs_ldev_info*, %struct.myrs_ldev_info** %5, align 8
  %70 = getelementptr inbounds %struct.myrs_ldev_info, %struct.myrs_ldev_info* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @MYRS_INTELLIGENT_WRITECACHE_ENABLED, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %68, %61
  %76 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %77 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %76, i32 0, i32 4
  store i32 1, i32* %77, align 8
  br label %78

78:                                               ; preds = %75, %68
  %79 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %80 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %79, i32 0, i32 5
  store i32 1, i32* %80, align 4
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %78, %58, %49, %41, %38, %19
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.myrs_hba* @shost_priv(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
