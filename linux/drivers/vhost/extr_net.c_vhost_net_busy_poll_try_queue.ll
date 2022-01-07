; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_vhost_net_busy_poll_try_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_vhost_net_busy_poll_try_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_net = type { i32 }
%struct.vhost_virtqueue = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vhost_net*, %struct.vhost_virtqueue*)* @vhost_net_busy_poll_try_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhost_net_busy_poll_try_queue(%struct.vhost_net* %0, %struct.vhost_virtqueue* %1) #0 {
  %3 = alloca %struct.vhost_net*, align 8
  %4 = alloca %struct.vhost_virtqueue*, align 8
  store %struct.vhost_net* %0, %struct.vhost_net** %3, align 8
  store %struct.vhost_virtqueue* %1, %struct.vhost_virtqueue** %4, align 8
  %5 = load %struct.vhost_net*, %struct.vhost_net** %3, align 8
  %6 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %5, i32 0, i32 0
  %7 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %8 = call i32 @vhost_vq_avail_empty(i32* %6, %struct.vhost_virtqueue* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %12 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %11, i32 0, i32 0
  %13 = call i32 @vhost_poll_queue(i32* %12)
  br label %30

14:                                               ; preds = %2
  %15 = load %struct.vhost_net*, %struct.vhost_net** %3, align 8
  %16 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %15, i32 0, i32 0
  %17 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %18 = call i32 @vhost_enable_notify(i32* %16, %struct.vhost_virtqueue* %17)
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %14
  %22 = load %struct.vhost_net*, %struct.vhost_net** %3, align 8
  %23 = getelementptr inbounds %struct.vhost_net, %struct.vhost_net* %22, i32 0, i32 0
  %24 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %25 = call i32 @vhost_disable_notify(i32* %23, %struct.vhost_virtqueue* %24)
  %26 = load %struct.vhost_virtqueue*, %struct.vhost_virtqueue** %4, align 8
  %27 = getelementptr inbounds %struct.vhost_virtqueue, %struct.vhost_virtqueue* %26, i32 0, i32 0
  %28 = call i32 @vhost_poll_queue(i32* %27)
  br label %29

29:                                               ; preds = %21, %14
  br label %30

30:                                               ; preds = %29, %10
  ret void
}

declare dso_local i32 @vhost_vq_avail_empty(i32*, %struct.vhost_virtqueue*) #1

declare dso_local i32 @vhost_poll_queue(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @vhost_enable_notify(i32*, %struct.vhost_virtqueue*) #1

declare dso_local i32 @vhost_disable_notify(i32*, %struct.vhost_virtqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
