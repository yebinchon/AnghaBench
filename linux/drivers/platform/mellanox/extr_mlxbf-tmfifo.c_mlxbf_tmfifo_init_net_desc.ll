; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_init_net_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_init_net_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxbf_tmfifo_vring = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.virtio_device* }
%struct.virtio_device = type { i32 }
%struct.vring_desc = type { i32 }
%struct.virtio_net_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mlxbf_tmfifo_vring*, %struct.vring_desc*, i32)* @mlxbf_tmfifo_init_net_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mlxbf_tmfifo_init_net_desc(%struct.mlxbf_tmfifo_vring* %0, %struct.vring_desc* %1, i32 %2) #0 {
  %4 = alloca %struct.mlxbf_tmfifo_vring*, align 8
  %5 = alloca %struct.vring_desc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.virtio_device*, align 8
  %8 = alloca %struct.virtio_net_hdr*, align 8
  store %struct.mlxbf_tmfifo_vring* %0, %struct.mlxbf_tmfifo_vring** %4, align 8
  store %struct.vring_desc* %1, %struct.vring_desc** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %4, align 8
  %10 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.virtio_device*, %struct.virtio_device** %12, align 8
  store %struct.virtio_device* %13, %struct.virtio_device** %7, align 8
  %14 = load %struct.virtio_device*, %struct.virtio_device** %7, align 8
  %15 = load %struct.vring_desc*, %struct.vring_desc** %5, align 8
  %16 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @virtio64_to_cpu(%struct.virtio_device* %14, i32 %17)
  %19 = call %struct.virtio_net_hdr* @phys_to_virt(i32 %18)
  store %struct.virtio_net_hdr* %19, %struct.virtio_net_hdr** %8, align 8
  %20 = load %struct.virtio_net_hdr*, %struct.virtio_net_hdr** %8, align 8
  %21 = call i32 @memset(%struct.virtio_net_hdr* %20, i32 0, i32 4)
  ret void
}

declare dso_local %struct.virtio_net_hdr* @phys_to_virt(i32) #1

declare dso_local i32 @virtio64_to_cpu(%struct.virtio_device*, i32) #1

declare dso_local i32 @memset(%struct.virtio_net_hdr*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
