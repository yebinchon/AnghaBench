; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ch.c_ch_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ch.c_ch_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.scsi_device = type { i64 }
%struct.TYPE_9__ = type { i32, i32, %struct.scsi_device*, i32, i32 }

@TYPE_MEDIUM_CHANGER = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ch_index_lock = common dso_local global i32 0, align 4
@ch_index_idr = common dso_local global i32 0, align 4
@CH_MAX_DEVS = common dso_local global i64 0, align 8
@GFP_NOWAIT = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"ch%d\00", align 1
@ch_sysfs_class = common dso_local global i32 0, align 4
@SCSI_CHANGER_MAJOR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"s%s\00", align 1
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c"ch%d: device_create failed\0A\00", align 1
@init = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"Attached scsi changer %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ch_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ch_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.scsi_device*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_9__*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call %struct.scsi_device* @to_scsi_device(%struct.device* %8)
  store %struct.scsi_device* %9, %struct.scsi_device** %4, align 8
  %10 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @TYPE_MEDIUM_CHANGER, align 8
  %14 = icmp ne i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @ENODEV, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %131

18:                                               ; preds = %1
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.TYPE_9__* @kzalloc(i32 24, i32 %19)
  store %struct.TYPE_9__* %20, %struct.TYPE_9__** %7, align 8
  %21 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %22 = icmp eq %struct.TYPE_9__* null, %21
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %131

26:                                               ; preds = %18
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32 @idr_preload(i32 %27)
  %29 = call i32 @spin_lock(i32* @ch_index_lock)
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %31 = load i64, i64* @CH_MAX_DEVS, align 8
  %32 = add nsw i64 %31, 1
  %33 = load i32, i32* @GFP_NOWAIT, align 4
  %34 = call i32 @idr_alloc(i32* @ch_index_idr, %struct.TYPE_9__* %30, i32 0, i64 %32, i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = call i32 @spin_unlock(i32* @ch_index_lock)
  %36 = call i32 (...) @idr_preload_end()
  %37 = load i32, i32* %6, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %26
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* @ENOSPC, align 4
  %42 = sub nsw i32 0, %41
  %43 = icmp eq i32 %40, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @ENODEV, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %44, %39
  br label %127

48:                                               ; preds = %26
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @sprintf(i32 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %57)
  %59 = load i32, i32* @ch_sysfs_class, align 4
  %60 = load %struct.device*, %struct.device** %3, align 8
  %61 = load i32, i32* @SCSI_CHANGER_MAJOR, align 4
  %62 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %63 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @MKDEV(i32 %61, i32 %64)
  %66 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call %struct.device* @device_create(i32 %59, %struct.device* %60, i32 %65, %struct.TYPE_9__* %66, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %69)
  store %struct.device* %70, %struct.device** %5, align 8
  %71 = load %struct.device*, %struct.device** %5, align 8
  %72 = call i64 @IS_ERR(%struct.device* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %83

74:                                               ; preds = %48
  %75 = load i32, i32* @KERN_WARNING, align 4
  %76 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @sdev_printk(i32 %75, %struct.scsi_device* %76, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = load %struct.device*, %struct.device** %5, align 8
  %82 = call i32 @PTR_ERR(%struct.device* %81)
  store i32 %82, i32* %6, align 4
  br label %122

83:                                               ; preds = %48
  %84 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 4
  %86 = call i32 @mutex_init(i32* %85)
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 3
  %89 = call i32 @kref_init(i32* %88)
  %90 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  store %struct.scsi_device* %90, %struct.scsi_device** %92, align 8
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %94 = call i32 @ch_readconfig(%struct.TYPE_9__* %93)
  store i32 %94, i32* %6, align 4
  %95 = load i32, i32* %6, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %83
  br label %114

98:                                               ; preds = %83
  %99 = load i64, i64* @init, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %103 = call i32 @ch_init_elem(%struct.TYPE_9__* %102)
  br label %104

104:                                              ; preds = %101, %98
  %105 = load %struct.device*, %struct.device** %3, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %107 = call i32 @dev_set_drvdata(%struct.device* %105, %struct.TYPE_9__* %106)
  %108 = load i32, i32* @KERN_INFO, align 4
  %109 = load %struct.scsi_device*, %struct.scsi_device** %4, align 8
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @sdev_printk(i32 %108, %struct.scsi_device* %109, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %112)
  store i32 0, i32* %2, align 4
  br label %131

114:                                              ; preds = %97
  %115 = load i32, i32* @ch_sysfs_class, align 4
  %116 = load i32, i32* @SCSI_CHANGER_MAJOR, align 4
  %117 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = call i32 @MKDEV(i32 %116, i32 %119)
  %121 = call i32 @device_destroy(i32 %115, i32 %120)
  br label %122

122:                                              ; preds = %114, %74
  %123 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %124 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @idr_remove(i32* @ch_index_idr, i32 %125)
  br label %127

127:                                              ; preds = %122, %47
  %128 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %129 = call i32 @kfree(%struct.TYPE_9__* %128)
  %130 = load i32, i32* %6, align 4
  store i32 %130, i32* %2, align 4
  br label %131

131:                                              ; preds = %127, %104, %23, %15
  %132 = load i32, i32* %2, align 4
  ret i32 %132
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local %struct.TYPE_9__* @kzalloc(i32, i32) #1

declare dso_local i32 @idr_preload(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @idr_alloc(i32*, %struct.TYPE_9__*, i32, i64, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @idr_preload_end(...) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local %struct.device* @device_create(i32, %struct.device*, i32, %struct.TYPE_9__*, i8*, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @sdev_printk(i32, %struct.scsi_device*, i8*, i32) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @ch_readconfig(%struct.TYPE_9__*) #1

declare dso_local i32 @ch_init_elem(%struct.TYPE_9__*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.TYPE_9__*) #1

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @idr_remove(i32*, i32) #1

declare dso_local i32 @kfree(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
