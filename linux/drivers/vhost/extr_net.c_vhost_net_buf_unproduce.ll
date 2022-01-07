; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_vhost_net_buf_unproduce.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_net.c_vhost_net_buf_unproduce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vhost_net_virtqueue = type { i64, %struct.vhost_net_buf }
%struct.vhost_net_buf = type { i64, i64, i64 }

@tun_ptr_free = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vhost_net_virtqueue*)* @vhost_net_buf_unproduce to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vhost_net_buf_unproduce(%struct.vhost_net_virtqueue* %0) #0 {
  %2 = alloca %struct.vhost_net_virtqueue*, align 8
  %3 = alloca %struct.vhost_net_buf*, align 8
  store %struct.vhost_net_virtqueue* %0, %struct.vhost_net_virtqueue** %2, align 8
  %4 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %2, align 8
  %5 = getelementptr inbounds %struct.vhost_net_virtqueue, %struct.vhost_net_virtqueue* %4, i32 0, i32 1
  store %struct.vhost_net_buf* %5, %struct.vhost_net_buf** %3, align 8
  %6 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %2, align 8
  %7 = getelementptr inbounds %struct.vhost_net_virtqueue, %struct.vhost_net_virtqueue* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %33

10:                                               ; preds = %1
  %11 = load %struct.vhost_net_buf*, %struct.vhost_net_buf** %3, align 8
  %12 = call i32 @vhost_net_buf_is_empty(%struct.vhost_net_buf* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %33, label %14

14:                                               ; preds = %10
  %15 = load %struct.vhost_net_virtqueue*, %struct.vhost_net_virtqueue** %2, align 8
  %16 = getelementptr inbounds %struct.vhost_net_virtqueue, %struct.vhost_net_virtqueue* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.vhost_net_buf*, %struct.vhost_net_buf** %3, align 8
  %19 = getelementptr inbounds %struct.vhost_net_buf, %struct.vhost_net_buf* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.vhost_net_buf*, %struct.vhost_net_buf** %3, align 8
  %22 = getelementptr inbounds %struct.vhost_net_buf, %struct.vhost_net_buf* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = load %struct.vhost_net_buf*, %struct.vhost_net_buf** %3, align 8
  %26 = call i32 @vhost_net_buf_get_size(%struct.vhost_net_buf* %25)
  %27 = load i32, i32* @tun_ptr_free, align 4
  %28 = call i32 @ptr_ring_unconsume(i64 %17, i64 %24, i32 %26, i32 %27)
  %29 = load %struct.vhost_net_buf*, %struct.vhost_net_buf** %3, align 8
  %30 = getelementptr inbounds %struct.vhost_net_buf, %struct.vhost_net_buf* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.vhost_net_buf*, %struct.vhost_net_buf** %3, align 8
  %32 = getelementptr inbounds %struct.vhost_net_buf, %struct.vhost_net_buf* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  br label %33

33:                                               ; preds = %14, %10, %1
  ret void
}

declare dso_local i32 @vhost_net_buf_is_empty(%struct.vhost_net_buf*) #1

declare dso_local i32 @ptr_ring_unconsume(i64, i64, i32, i32) #1

declare dso_local i32 @vhost_net_buf_get_size(%struct.vhost_net_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
