; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_vq_avail_empty.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_vq_avail_empty.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_dev = type { i32 }
%struct.vhost_virtqueue = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vhost_vq_avail_empty(%struct.vhost_dev* %0, %struct.vhost_virtqueue* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vhost_dev*, align 8
  %5 = alloca %struct.vhost_virtqueue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.vhost_dev* %0, %struct.vhost_dev** %4, align 8
  store %struct.vhost_virtqueue* %1, %struct.vhost_virtqueue** %5, align 8
  %8 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %9 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %12 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %37

16:                                               ; preds = %2
  %17 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %18 = call i32 @vhost_get_avail_idx(%struct.vhost_virtqueue* %17, i32* %6)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %16
  store i32 0, i32* %3, align 4
  br label %37

23:                                               ; preds = %16
  %24 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i32 @vhost16_to_cpu(%struct.vhost_virtqueue* %24, i32 %25)
  %27 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %28 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 4
  %29 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %30 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %33 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %31, %34
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %23, %22, %15
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @vhost_get_avail_idx(%struct.vhost_virtqueue*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vhost16_to_cpu(%struct.vhost_virtqueue*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
