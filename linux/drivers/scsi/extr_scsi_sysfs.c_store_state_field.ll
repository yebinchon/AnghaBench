; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_sysfs.c_store_state_field.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_sysfs.c_store_state_field.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }
%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.scsi_device = type { i32, i32 }

@sdev_states = common dso_local global %struct.TYPE_3__* null, align 8
@EINVAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_state_field to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @store_state_field(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.scsi_device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.scsi_device* @to_scsi_device(%struct.device* %15)
  store %struct.scsi_device* %16, %struct.scsi_device** %12, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %10, align 4
  br label %17

17:                                               ; preds = %56, %4
  %18 = load i32, i32* %10, align 4
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sdev_states, align 8
  %20 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %59

22:                                               ; preds = %17
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sdev_states, align 8
  %24 = load i32, i32* %10, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @strlen(i32 %28)
  store i32 %29, i32* %14, align 4
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sdev_states, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %14, align 4
  %38 = call i64 @strncmp(i32 %35, i8* %36, i32 %37)
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %55

40:                                               ; preds = %22
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* %14, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 10
  br i1 %47, label %48, label %55

48:                                               ; preds = %40
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @sdev_states, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i64 %51
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  store i32 %54, i32* %13, align 4
  br label %59

55:                                               ; preds = %40, %22
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %10, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %17

59:                                               ; preds = %48, %17
  %60 = load i32, i32* %13, align 4
  switch i32 %60, label %62 [
    i32 128, label %61
    i32 129, label %61
  ]

61:                                               ; preds = %59, %59
  br label %65

62:                                               ; preds = %59
  %63 = load i64, i64* @EINVAL, align 8
  %64 = sub i64 0, %63
  store i64 %64, i64* %5, align 8
  br label %95

65:                                               ; preds = %61
  %66 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  %67 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %66, i32 0, i32 0
  %68 = call i32 @mutex_lock(i32* %67)
  %69 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @scsi_device_set_state(%struct.scsi_device* %69, i32 %70)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %65
  %75 = load i32, i32* %13, align 4
  %76 = icmp eq i32 %75, 128
  br i1 %76, label %77, label %82

77:                                               ; preds = %74
  %78 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  %79 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @blk_mq_run_hw_queues(i32 %80, i32 1)
  br label %82

82:                                               ; preds = %77, %74, %65
  %83 = load %struct.scsi_device*, %struct.scsi_device** %12, align 8
  %84 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %83, i32 0, i32 0
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load i32, i32* %11, align 4
  %87 = icmp eq i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %82
  %89 = load i64, i64* %9, align 8
  br label %93

90:                                               ; preds = %82
  %91 = load i64, i64* @EINVAL, align 8
  %92 = sub i64 0, %91
  br label %93

93:                                               ; preds = %90, %88
  %94 = phi i64 [ %89, %88 ], [ %92, %90 ]
  store i64 %94, i64* %5, align 8
  br label %95

95:                                               ; preds = %93, %62
  %96 = load i64, i64* %5, align 8
  ret i64 %96
}

declare dso_local %struct.scsi_device* @to_scsi_device(%struct.device*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @scsi_device_set_state(%struct.scsi_device*, i32) #1

declare dso_local i32 @blk_mq_run_hw_queues(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
