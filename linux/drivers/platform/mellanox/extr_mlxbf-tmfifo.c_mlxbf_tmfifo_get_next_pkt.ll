; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_get_next_pkt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_get_next_pkt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vring_desc = type { i32 }
%struct.mlxbf_tmfifo_vring = type { i64, %struct.vring_desc*, %struct.vring_desc* }

@VIRTIO_ID_NET = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vring_desc* (%struct.mlxbf_tmfifo_vring*, i32)* @mlxbf_tmfifo_get_next_pkt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vring_desc* @mlxbf_tmfifo_get_next_pkt(%struct.mlxbf_tmfifo_vring* %0, i32 %1) #0 {
  %3 = alloca %struct.mlxbf_tmfifo_vring*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vring_desc*, align 8
  store %struct.mlxbf_tmfifo_vring* %0, %struct.mlxbf_tmfifo_vring** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %3, align 8
  %7 = call %struct.vring_desc* @mlxbf_tmfifo_get_next_desc(%struct.mlxbf_tmfifo_vring* %6)
  store %struct.vring_desc* %7, %struct.vring_desc** %5, align 8
  %8 = load %struct.vring_desc*, %struct.vring_desc** %5, align 8
  %9 = icmp ne %struct.vring_desc* %8, null
  br i1 %9, label %10, label %24

10:                                               ; preds = %2
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

13:                                               ; preds = %10
  %14 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %3, align 8
  %15 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @VIRTIO_ID_NET, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %3, align 8
  %21 = load %struct.vring_desc*, %struct.vring_desc** %5, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @mlxbf_tmfifo_init_net_desc(%struct.mlxbf_tmfifo_vring* %20, %struct.vring_desc* %21, i32 %22)
  br label %24

24:                                               ; preds = %19, %13, %10, %2
  %25 = load %struct.vring_desc*, %struct.vring_desc** %5, align 8
  %26 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %3, align 8
  %27 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %26, i32 0, i32 2
  store %struct.vring_desc* %25, %struct.vring_desc** %27, align 8
  %28 = load %struct.vring_desc*, %struct.vring_desc** %5, align 8
  %29 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %3, align 8
  %30 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %29, i32 0, i32 1
  store %struct.vring_desc* %28, %struct.vring_desc** %30, align 8
  %31 = load %struct.vring_desc*, %struct.vring_desc** %5, align 8
  ret %struct.vring_desc* %31
}

declare dso_local %struct.vring_desc* @mlxbf_tmfifo_get_next_desc(%struct.mlxbf_tmfifo_vring*) #1

declare dso_local i32 @mlxbf_tmfifo_init_net_desc(%struct.mlxbf_tmfifo_vring*, %struct.vring_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
