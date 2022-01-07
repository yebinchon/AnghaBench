; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_exceeds_weight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_vhost.c_vhost_exceeds_weight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_virtqueue = type { i32, %struct.vhost_dev* }
%struct.vhost_dev = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vhost_exceeds_weight(%struct.vhost_virtqueue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vhost_virtqueue*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.vhost_dev*, align 8
  store %struct.vhost_virtqueue* %0, %struct.vhost_virtqueue** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %10 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %9, i32 0, i32 1
  %11 = load %struct.vhost_dev*, %struct.vhost_dev** %10, align 8
  store %struct.vhost_dev* %11, %struct.vhost_dev** %8, align 8
  %12 = load %struct.vhost_dev*, %struct.vhost_dev** %8, align 8
  %13 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = load %struct.vhost_dev*, %struct.vhost_dev** %8, align 8
  %19 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp sge i32 %17, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %16, %3
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.vhost_dev*, %struct.vhost_dev** %8, align 8
  %25 = getelementptr inbounds %struct.vhost_dev, %struct.vhost_dev* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp sge i32 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22, %16
  %29 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %5, align 8
  %30 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %29, i32 0, i32 0
  %31 = call i32 @vhost_poll_queue(i32* %30)
  store i32 1, i32* %4, align 4
  br label %33

32:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %28
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @vhost_poll_queue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
