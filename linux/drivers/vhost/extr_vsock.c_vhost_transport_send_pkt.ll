; ModuleID = '/home/carl/AnghaBench/linux/drivers/vhost/extr_vsock.c_vhost_transport_send_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vhost/extr_vsock.c_vhost_transport_send_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_vsock_pkt = type { i32, i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.vhost_vsock = type { i32, i32, i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_vsock_pkt*)* @vhost_transport_send_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vhost_transport_send_pkt(%struct.virtio_vsock_pkt* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.virtio_vsock_pkt*, align 8
  %4 = alloca %struct.vhost_vsock*, align 8
  %5 = alloca i32, align 4
  store %struct.virtio_vsock_pkt* %0, %struct.virtio_vsock_pkt** %3, align 8
  %6 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %3, align 8
  %7 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  store i32 %8, i32* %5, align 4
  %9 = call i32 (...) @rcu_read_lock()
  %10 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %3, align 8
  %11 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @le64_to_cpu(i32 %13)
  %15 = call %struct.vhost_vsock* @vhost_vsock_get(i32 %14)
  store %struct.vhost_vsock* %15, %struct.vhost_vsock** %4, align 8
  %16 = load %struct.vhost_vsock*, %struct.vhost_vsock** %4, align 8
  %17 = icmp ne %struct.vhost_vsock* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %1
  %19 = call i32 (...) @rcu_read_unlock()
  %20 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %3, align 8
  %21 = call i32 @virtio_transport_free_pkt(%struct.virtio_vsock_pkt* %20)
  %22 = load i32, i32* @ENODEV, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %52

24:                                               ; preds = %1
  %25 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %3, align 8
  %26 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.vhost_vsock*, %struct.vhost_vsock** %4, align 8
  %31 = getelementptr inbounds %struct.vhost_vsock, %struct.vhost_vsock* %30, i32 0, i32 4
  %32 = call i32 @atomic_inc(i32* %31)
  br label %33

33:                                               ; preds = %29, %24
  %34 = load %struct.vhost_vsock*, %struct.vhost_vsock** %4, align 8
  %35 = getelementptr inbounds %struct.vhost_vsock, %struct.vhost_vsock* %34, i32 0, i32 2
  %36 = call i32 @spin_lock_bh(i32* %35)
  %37 = load %struct.virtio_vsock_pkt*, %struct.virtio_vsock_pkt** %3, align 8
  %38 = getelementptr inbounds %struct.virtio_vsock_pkt, %struct.virtio_vsock_pkt* %37, i32 0, i32 1
  %39 = load %struct.vhost_vsock*, %struct.vhost_vsock** %4, align 8
  %40 = getelementptr inbounds %struct.vhost_vsock, %struct.vhost_vsock* %39, i32 0, i32 3
  %41 = call i32 @list_add_tail(i32* %38, i32* %40)
  %42 = load %struct.vhost_vsock*, %struct.vhost_vsock** %4, align 8
  %43 = getelementptr inbounds %struct.vhost_vsock, %struct.vhost_vsock* %42, i32 0, i32 2
  %44 = call i32 @spin_unlock_bh(i32* %43)
  %45 = load %struct.vhost_vsock*, %struct.vhost_vsock** %4, align 8
  %46 = getelementptr inbounds %struct.vhost_vsock, %struct.vhost_vsock* %45, i32 0, i32 1
  %47 = load %struct.vhost_vsock*, %struct.vhost_vsock** %4, align 8
  %48 = getelementptr inbounds %struct.vhost_vsock, %struct.vhost_vsock* %47, i32 0, i32 0
  %49 = call i32 @vhost_work_queue(i32* %46, i32* %48)
  %50 = call i32 (...) @rcu_read_unlock()
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %33, %18
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local %struct.vhost_vsock* @vhost_vsock_get(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @virtio_transport_free_pkt(%struct.virtio_vsock_pkt*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @vhost_work_queue(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
