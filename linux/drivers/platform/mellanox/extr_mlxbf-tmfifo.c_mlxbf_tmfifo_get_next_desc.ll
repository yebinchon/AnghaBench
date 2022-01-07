; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_get_next_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_get_next_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vring_desc = type { i32 }
%struct.mlxbf_tmfifo_vring = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.virtio_device* }
%struct.virtio_device = type { i32 }
%struct.vring = type { i32, %struct.vring_desc*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vring_desc* (%struct.mlxbf_tmfifo_vring*)* @mlxbf_tmfifo_get_next_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vring_desc* @mlxbf_tmfifo_get_next_desc(%struct.mlxbf_tmfifo_vring* %0) #0 {
  %2 = alloca %struct.vring_desc*, align 8
  %3 = alloca %struct.mlxbf_tmfifo_vring*, align 8
  %4 = alloca %struct.vring*, align 8
  %5 = alloca %struct.virtio_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mlxbf_tmfifo_vring* %0, %struct.mlxbf_tmfifo_vring** %3, align 8
  %8 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %3, align 8
  %9 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = call %struct.vring* @virtqueue_get_vring(%struct.TYPE_4__* %10)
  store %struct.vring* %11, %struct.vring** %4, align 8
  %12 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %3, align 8
  %13 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %12, i32 0, i32 1
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load %struct.virtio_device*, %struct.virtio_device** %15, align 8
  store %struct.virtio_device* %16, %struct.virtio_device** %5, align 8
  %17 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %3, align 8
  %18 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.virtio_device*, %struct.virtio_device** %5, align 8
  %21 = load %struct.vring*, %struct.vring** %4, align 8
  %22 = getelementptr inbounds %struct.vring, %struct.vring* %21, i32 0, i32 2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @virtio16_to_cpu(%struct.virtio_device* %20, i32 %25)
  %27 = icmp eq i32 %19, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %1
  store %struct.vring_desc* null, %struct.vring_desc** %2, align 8
  br label %68

29:                                               ; preds = %1
  %30 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %3, align 8
  %31 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.vring*, %struct.vring** %4, align 8
  %34 = getelementptr inbounds %struct.vring, %struct.vring* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = urem i32 %32, %35
  store i32 %36, i32* %6, align 4
  %37 = load %struct.virtio_device*, %struct.virtio_device** %5, align 8
  %38 = load %struct.vring*, %struct.vring** %4, align 8
  %39 = getelementptr inbounds %struct.vring, %struct.vring* %38, i32 0, i32 2
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @virtio16_to_cpu(%struct.virtio_device* %37, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.vring*, %struct.vring** %4, align 8
  %50 = getelementptr inbounds %struct.vring, %struct.vring* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp uge i32 %48, %51
  %53 = zext i1 %52 to i32
  %54 = call i64 @WARN_ON(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %29
  store %struct.vring_desc* null, %struct.vring_desc** %2, align 8
  br label %68

57:                                               ; preds = %29
  %58 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %3, align 8
  %59 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = load %struct.vring*, %struct.vring** %4, align 8
  %63 = getelementptr inbounds %struct.vring, %struct.vring* %62, i32 0, i32 1
  %64 = load %struct.vring_desc*, %struct.vring_desc** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds %struct.vring_desc, %struct.vring_desc* %64, i64 %66
  store %struct.vring_desc* %67, %struct.vring_desc** %2, align 8
  br label %68

68:                                               ; preds = %57, %56, %28
  %69 = load %struct.vring_desc*, %struct.vring_desc** %2, align 8
  ret %struct.vring_desc* %69
}

declare dso_local %struct.vring* @virtqueue_get_vring(%struct.TYPE_4__*) #1

declare dso_local i32 @virtio16_to_cpu(%struct.virtio_device*, i32) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
