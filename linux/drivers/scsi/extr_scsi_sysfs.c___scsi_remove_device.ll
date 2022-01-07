; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_sysfs.c___scsi_remove_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_sysfs.c___scsi_remove_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i64, %struct.TYPE_4__*, i32, i32, i32, %struct.device, %struct.device, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.scsi_device*)*, i64 }
%struct.device = type { i32 }

@SDEV_DEL = common dso_local global i64 0, align 8
@SDEV_CANCEL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__scsi_remove_device(%struct.scsi_device* %0) #0 {
  %2 = alloca %struct.scsi_device*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %2, align 8
  %5 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %6 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %5, i32 0, i32 6
  store %struct.device* %6, %struct.device** %3, align 8
  %7 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %8 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SDEV_DEL, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %124

13:                                               ; preds = %1
  %14 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %15 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %14, i32 0, i32 7
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %77

18:                                               ; preds = %13
  %19 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %20 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %19, i32 0, i32 4
  %21 = call i32 @mutex_lock(i32* %20)
  %22 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %23 = load i64, i64* @SDEV_CANCEL, align 8
  %24 = call i32 @scsi_device_set_state(%struct.scsi_device* %22, i64 %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %18
  %28 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %29 = load i64, i64* @SDEV_DEL, align 8
  %30 = call i32 @scsi_device_set_state(%struct.scsi_device* %28, i64 %29)
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %35 = call i32 @scsi_start_queue(%struct.scsi_device* %34)
  br label %36

36:                                               ; preds = %33, %27
  br label %37

37:                                               ; preds = %36, %18
  %38 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %39 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %38, i32 0, i32 4
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i32, i32* %4, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37
  br label %124

44:                                               ; preds = %37
  %45 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %46 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %45, i32 0, i32 1
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %65

53:                                               ; preds = %44
  %54 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %55 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %54, i32 0, i32 6
  %56 = getelementptr inbounds %struct.device, %struct.device* %55, i32 0, i32 0
  %57 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %58 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %57, i32 0, i32 1
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @sysfs_remove_groups(i32* %56, i64 %63)
  br label %65

65:                                               ; preds = %53, %44
  %66 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %67 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @bsg_unregister_queue(i32 %68)
  %70 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %71 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %70, i32 0, i32 5
  %72 = call i32 @device_unregister(%struct.device* %71)
  %73 = load %struct.device*, %struct.device** %3, align 8
  %74 = call i32 @transport_remove_device(%struct.device* %73)
  %75 = load %struct.device*, %struct.device** %3, align 8
  %76 = call i32 @device_del(%struct.device* %75)
  br label %81

77:                                               ; preds = %13
  %78 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %79 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %78, i32 0, i32 5
  %80 = call i32 @put_device(%struct.device* %79)
  br label %81

81:                                               ; preds = %77, %65
  %82 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %83 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %82, i32 0, i32 4
  %84 = call i32 @mutex_lock(i32* %83)
  %85 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %86 = load i64, i64* @SDEV_DEL, align 8
  %87 = call i32 @scsi_device_set_state(%struct.scsi_device* %85, i64 %86)
  %88 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %89 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %88, i32 0, i32 4
  %90 = call i32 @mutex_unlock(i32* %89)
  %91 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %92 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @blk_cleanup_queue(i32 %93)
  %95 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %96 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %95, i32 0, i32 2
  %97 = call i32 @cancel_work_sync(i32* %96)
  %98 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %99 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %98, i32 0, i32 1
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  %102 = load %struct.TYPE_3__*, %struct.TYPE_3__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32 (%struct.scsi_device*)*, i32 (%struct.scsi_device*)** %103, align 8
  %105 = icmp ne i32 (%struct.scsi_device*)* %104, null
  br i1 %105, label %106, label %116

106:                                              ; preds = %81
  %107 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %108 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %107, i32 0, i32 1
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_3__*, %struct.TYPE_3__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %111, i32 0, i32 0
  %113 = load i32 (%struct.scsi_device*)*, i32 (%struct.scsi_device*)** %112, align 8
  %114 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %115 = call i32 %113(%struct.scsi_device* %114)
  br label %116

116:                                              ; preds = %106, %81
  %117 = load %struct.device*, %struct.device** %3, align 8
  %118 = call i32 @transport_destroy_device(%struct.device* %117)
  %119 = load %struct.scsi_device*, %struct.scsi_device** %2, align 8
  %120 = call i32 @scsi_target(%struct.scsi_device* %119)
  %121 = call i32 @scsi_target_reap(i32 %120)
  %122 = load %struct.device*, %struct.device** %3, align 8
  %123 = call i32 @put_device(%struct.device* %122)
  br label %124

124:                                              ; preds = %116, %43, %12
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @scsi_device_set_state(%struct.scsi_device*, i64) #1

declare dso_local i32 @scsi_start_queue(%struct.scsi_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @sysfs_remove_groups(i32*, i64) #1

declare dso_local i32 @bsg_unregister_queue(i32) #1

declare dso_local i32 @device_unregister(%struct.device*) #1

declare dso_local i32 @transport_remove_device(%struct.device*) #1

declare dso_local i32 @device_del(%struct.device*) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @blk_cleanup_queue(i32) #1

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @transport_destroy_device(%struct.device*) #1

declare dso_local i32 @scsi_target_reap(i32) #1

declare dso_local i32 @scsi_target(%struct.scsi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
