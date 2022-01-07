; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_scsi.c_vhost_scsi_init_inflight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_scsi.c_vhost_scsi_init_inflight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_scsi = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.vhost_scsi_inflight*, %struct.vhost_virtqueue }
%struct.vhost_scsi_inflight = type { i32, i32 }
%struct.vhost_virtqueue = type { i32 }

@VHOST_SCSI_MAX_VQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vhost_scsi*, %struct.vhost_scsi_inflight**)* @vhost_scsi_init_inflight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhost_scsi_init_inflight(%struct.vhost_scsi* %0, %struct.vhost_scsi_inflight** %1) #0 {
  %3 = alloca %struct.vhost_scsi*, align 8
  %4 = alloca %struct.vhost_scsi_inflight**, align 8
  %5 = alloca %struct.vhost_scsi_inflight*, align 8
  %6 = alloca %struct.vhost_virtqueue*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.vhost_scsi* %0, %struct.vhost_scsi** %3, align 8
  store %struct.vhost_scsi_inflight** %1, %struct.vhost_scsi_inflight*** %4, align 8
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %81, %2
  %10 = load i32, i32* %8, align 4
  %11 = load i32, i32* @VHOST_SCSI_MAX_VQ, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %84

13:                                               ; preds = %9
  %14 = load %struct.vhost_scsi*, %struct.vhost_scsi** %3, align 8
  %15 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 2
  store %struct.vhost_virtqueue* %20, %struct.vhost_virtqueue** %6, align 8
  %21 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %6, align 8
  %22 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %21, i32 0, i32 0
  %23 = call i32 @mutex_lock(i32* %22)
  %24 = load %struct.vhost_scsi*, %struct.vhost_scsi** %3, align 8
  %25 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  store i32 %31, i32* %7, align 4
  %32 = load %struct.vhost_scsi_inflight**, %struct.vhost_scsi_inflight*** %4, align 8
  %33 = icmp ne %struct.vhost_scsi_inflight** %32, null
  br i1 %33, label %34, label %50

34:                                               ; preds = %13
  %35 = load %struct.vhost_scsi*, %struct.vhost_scsi** %3, align 8
  %36 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load %struct.vhost_scsi_inflight*, %struct.vhost_scsi_inflight** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.vhost_scsi_inflight, %struct.vhost_scsi_inflight* %42, i64 %44
  %46 = load %struct.vhost_scsi_inflight**, %struct.vhost_scsi_inflight*** %4, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.vhost_scsi_inflight*, %struct.vhost_scsi_inflight** %46, i64 %48
  store %struct.vhost_scsi_inflight* %45, %struct.vhost_scsi_inflight** %49, align 8
  br label %50

50:                                               ; preds = %34, %13
  %51 = load i32, i32* %7, align 4
  %52 = xor i32 %51, 1
  %53 = load %struct.vhost_scsi*, %struct.vhost_scsi** %3, align 8
  %54 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %52, i32* %59, align 8
  %60 = load %struct.vhost_scsi*, %struct.vhost_scsi** %3, align 8
  %61 = getelementptr inbounds %struct.vhost_scsi, %struct.vhost_scsi* %60, i32 0, i32 0
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = load i32, i32* %8, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i64 %64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load %struct.vhost_scsi_inflight*, %struct.vhost_scsi_inflight** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = xor i32 %68, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.vhost_scsi_inflight, %struct.vhost_scsi_inflight* %67, i64 %70
  store %struct.vhost_scsi_inflight* %71, %struct.vhost_scsi_inflight** %5, align 8
  %72 = load %struct.vhost_scsi_inflight*, %struct.vhost_scsi_inflight** %5, align 8
  %73 = getelementptr inbounds %struct.vhost_scsi_inflight, %struct.vhost_scsi_inflight* %72, i32 0, i32 1
  %74 = call i32 @kref_init(i32* %73)
  %75 = load %struct.vhost_scsi_inflight*, %struct.vhost_scsi_inflight** %5, align 8
  %76 = getelementptr inbounds %struct.vhost_scsi_inflight, %struct.vhost_scsi_inflight* %75, i32 0, i32 0
  %77 = call i32 @init_completion(i32* %76)
  %78 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %6, align 8
  %79 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %78, i32 0, i32 0
  %80 = call i32 @mutex_unlock(i32* %79)
  br label %81

81:                                               ; preds = %50
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %8, align 4
  br label %9

84:                                               ; preds = %9
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
