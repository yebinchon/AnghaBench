; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_scsi.c_vhost_scsi_allocate_evt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_scsi.c_vhost_scsi_allocate_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_scsi_evt = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.vhost_scsi = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.vhost_virtqueue }
%struct.vhost_virtqueue = type { i32 }

@VHOST_SCSI_VQ_EVT = common dso_local global i64 0, align 8
@VHOST_SCSI_MAX_EVENT = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to allocate vhost_scsi_evt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vhost_scsi_evt* (%struct.vhost_scsi*, i32, i32)* @vhost_scsi_allocate_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vhost_scsi_evt* @vhost_scsi_allocate_evt(%struct.vhost_scsi* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.vhost_scsi_evt*, align 8
  %5 = alloca %struct.vhost_scsi*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vhost_virtqueue*, align 8
  %9 = alloca %struct.vhost_scsi_evt*, align 8
  store %struct.vhost_scsi* %0, %struct.vhost_scsi** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.vhost_scsi*, %struct.vhost_scsi** %5, align 8
  %11 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %10, i32 0, i32 2
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = load i64, i64* @VHOST_SCSI_VQ_EVT, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  store %struct.vhost_virtqueue* %15, %struct.vhost_virtqueue** %8, align 8
  %16 = load %struct.vhost_scsi*, %struct.vhost_scsi** %5, align 8
  %17 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @VHOST_SCSI_MAX_EVENT, align 8
  %20 = icmp sgt i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %3
  %22 = load %struct.vhost_scsi*, %struct.vhost_scsi** %5, align 8
  %23 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %22, i32 0, i32 1
  store i32 1, i32* %23, align 8
  store %struct.vhost_scsi_evt* null, %struct.vhost_scsi_evt** %4, align 8
  br label %52

24:                                               ; preds = %3
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.vhost_scsi_evt* @kzalloc(i32 16, i32 %25)
  store %struct.vhost_scsi_evt* %26, %struct.vhost_scsi_evt** %9, align 8
  %27 = load %struct.vhost_scsi_evt*, %struct.vhost_scsi_evt** %9, align 8
  %28 = icmp ne %struct.vhost_scsi_evt* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %8, align 8
  %31 = call i32 @vq_err(%struct.vhost_virtqueue* %30, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.vhost_scsi*, %struct.vhost_scsi** %5, align 8
  %33 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %32, i32 0, i32 1
  store i32 1, i32* %33, align 8
  store %struct.vhost_scsi_evt* null, %struct.vhost_scsi_evt** %4, align 8
  br label %52

34:                                               ; preds = %24
  %35 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %8, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i8* @cpu_to_vhost32(%struct.vhost_virtqueue* %35, i32 %36)
  %38 = load %struct.vhost_scsi_evt*, %struct.vhost_scsi_evt** %9, align 8
  %39 = getelementptr inbounds %struct.vhost_scsi_evt, %struct.vhost_scsi_evt* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i8* %37, i8** %40, align 8
  %41 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %8, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i8* @cpu_to_vhost32(%struct.vhost_virtqueue* %41, i32 %42)
  %44 = load %struct.vhost_scsi_evt*, %struct.vhost_scsi_evt** %9, align 8
  %45 = getelementptr inbounds %struct.vhost_scsi_evt, %struct.vhost_scsi_evt* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i8* %43, i8** %46, align 8
  %47 = load %struct.vhost_scsi*, %struct.vhost_scsi** %5, align 8
  %48 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %48, align 8
  %51 = load %struct.vhost_scsi_evt*, %struct.vhost_scsi_evt** %9, align 8
  store %struct.vhost_scsi_evt* %51, %struct.vhost_scsi_evt** %4, align 8
  br label %52

52:                                               ; preds = %34, %29, %21
  %53 = load %struct.vhost_scsi_evt*, %struct.vhost_scsi_evt** %4, align 8
  ret %struct.vhost_scsi_evt* %53
}

declare dso_local %struct.vhost_scsi_evt* @kzalloc(i32, i32) #1

declare dso_local i32 @vq_err(%struct.vhost_virtqueue*, i8*) #1

declare dso_local i8* @cpu_to_vhost32(%struct.vhost_virtqueue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
