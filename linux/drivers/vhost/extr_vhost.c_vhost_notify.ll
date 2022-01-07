; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_dev = type { i32 }
%struct.vhost_virtqueue = type { i64, i64, i32, i32, i32 }

@VIRTIO_F_NOTIFY_ON_EMPTY = common dso_local global i32 0, align 4
@VIRTIO_RING_F_EVENT_IDX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Failed to get flags\00", align 1
@VRING_AVAIL_F_NO_INTERRUPT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Failed to get used event idx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vhost_dev*, %struct.vhost_virtqueue*)* @vhost_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_notify(%struct.vhost_dev* %0, %struct.vhost_virtqueue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vhost_dev*, align 8
  %5 = alloca %struct.vhost_virtqueue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vhost_dev* %0, %struct.vhost_dev** %4, align 8
  store %struct.vhost_virtqueue* %1, %struct.vhost_virtqueue** %5, align 8
  %11 = call i32 (...) @smp_mb()
  %12 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %13 = load i32, i32* @VIRTIO_F_NOTIFY_ON_EMPTY, align 4
  %14 = call i64 @vhost_has_feature(%struct.vhost_virtqueue* %12, i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %2
  %17 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %18 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %21 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %16
  store i32 1, i32* %3, align 4
  br label %84

28:                                               ; preds = %16, %2
  %29 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %30 = load i32, i32* @VIRTIO_RING_F_EVENT_IDX, align 4
  %31 = call i64 @vhost_has_feature(%struct.vhost_virtqueue* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %49, label %33

33:                                               ; preds = %28
  %34 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %35 = call i64 @vhost_get_avail_flags(%struct.vhost_virtqueue* %34, i32* %10)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %39 = call i32 @vq_err(%struct.vhost_virtqueue* %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %84

40:                                               ; preds = %33
  %41 = load i32, i32* %10, align 4
  %42 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %43 = load i32, i32* @VRING_AVAIL_F_NO_INTERRUPT, align 4
  %44 = call i32 @cpu_to_vhost16(%struct.vhost_virtqueue* %42, i32 %43)
  %45 = and i32 %41, %44
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %3, align 4
  br label %84

49:                                               ; preds = %28
  %50 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %51 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  store i32 %52, i32* %6, align 4
  %53 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %54 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %9, align 4
  %56 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %57 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %60 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %59, i32 0, i32 4
  store i32 %58, i32* %60, align 8
  store i32 %58, i32* %7, align 4
  %61 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %62 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %61, i32 0, i32 2
  store i32 1, i32* %62, align 8
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  %65 = xor i1 %64, true
  %66 = zext i1 %65 to i32
  %67 = call i64 @unlikely(i32 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %49
  store i32 1, i32* %3, align 4
  br label %84

70:                                               ; preds = %49
  %71 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %72 = call i64 @vhost_get_used_event(%struct.vhost_virtqueue* %71, i32* %8)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %76 = call i32 @vq_err(%struct.vhost_virtqueue* %75, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %3, align 4
  br label %84

77:                                               ; preds = %70
  %78 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %79 = load i32, i32* %8, align 4
  %80 = call i32 @vhost16_to_cpu(%struct.vhost_virtqueue* %78, i32 %79)
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %6, align 4
  %83 = call i32 @vring_need_event(i32 %80, i32 %81, i32 %82)
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %77, %74, %69, %40, %37, %27
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @smp_mb(...) #1

declare dso_local i64 @vhost_has_feature(%struct.vhost_virtqueue*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @vhost_get_avail_flags(%struct.vhost_virtqueue*, i32*) #1

declare dso_local i32 @vq_err(%struct.vhost_virtqueue*, i8*) #1

declare dso_local i32 @cpu_to_vhost16(%struct.vhost_virtqueue*, i32) #1

declare dso_local i64 @vhost_get_used_event(%struct.vhost_virtqueue*, i32*) #1

declare dso_local i32 @vring_need_event(i32, i32, i32) #1

declare dso_local i32 @vhost16_to_cpu(%struct.vhost_virtqueue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
