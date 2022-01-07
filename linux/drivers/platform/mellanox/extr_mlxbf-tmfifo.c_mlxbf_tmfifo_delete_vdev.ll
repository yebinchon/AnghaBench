; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_delete_vdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_delete_vdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxbf_tmfifo = type { i32, %struct.mlxbf_tmfifo_vdev** }
%struct.mlxbf_tmfifo_vdev = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxbf_tmfifo*, i32)* @mlxbf_tmfifo_delete_vdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxbf_tmfifo_delete_vdev(%struct.mlxbf_tmfifo* %0, i32 %1) #0 {
  %3 = alloca %struct.mlxbf_tmfifo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.mlxbf_tmfifo_vdev*, align 8
  store %struct.mlxbf_tmfifo* %0, %struct.mlxbf_tmfifo** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %3, align 8
  %7 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %3, align 8
  %10 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %9, i32 0, i32 1
  %11 = load %struct.mlxbf_tmfifo_vdev**, %struct.mlxbf_tmfifo_vdev*** %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %11, i64 %13
  %15 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %14, align 8
  store %struct.mlxbf_tmfifo_vdev* %15, %struct.mlxbf_tmfifo_vdev** %5, align 8
  %16 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %5, align 8
  %17 = icmp ne %struct.mlxbf_tmfifo_vdev* %16, null
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %5, align 8
  %20 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev, %struct.mlxbf_tmfifo_vdev* %19, i32 0, i32 0
  %21 = call i32 @unregister_virtio_device(i32* %20)
  %22 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %3, align 8
  %23 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %5, align 8
  %24 = call i32 @mlxbf_tmfifo_free_vrings(%struct.mlxbf_tmfifo* %22, %struct.mlxbf_tmfifo_vdev* %23)
  %25 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %3, align 8
  %26 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %25, i32 0, i32 1
  %27 = load %struct.mlxbf_tmfifo_vdev**, %struct.mlxbf_tmfifo_vdev*** %26, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %27, i64 %29
  store %struct.mlxbf_tmfifo_vdev* null, %struct.mlxbf_tmfifo_vdev** %30, align 8
  br label %31

31:                                               ; preds = %18, %2
  %32 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %3, align 8
  %33 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %32, i32 0, i32 0
  %34 = call i32 @mutex_unlock(i32* %33)
  ret i32 0
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @unregister_virtio_device(i32*) #1

declare dso_local i32 @mlxbf_tmfifo_free_vrings(%struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo_vdev*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
