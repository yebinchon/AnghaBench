; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_virtio_notify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxbf-tmfifo.c_mlxbf_tmfifo_virtio_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { %struct.mlxbf_tmfifo_vring* }
%struct.mlxbf_tmfifo_vring = type { i32, i64, %struct.mlxbf_tmfifo* }
%struct.mlxbf_tmfifo = type { i32, i32, i32, %struct.mlxbf_tmfifo_vdev** }
%struct.mlxbf_tmfifo_vdev = type { i32 }

@VIRTIO_ID_CONSOLE = common dso_local global i64 0, align 8
@MLXBF_TM_TX_LWM_IRQ = common dso_local global i32 0, align 4
@MLXBF_TM_RX_HWM_IRQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtqueue*)* @mlxbf_tmfifo_virtio_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxbf_tmfifo_virtio_notify(%struct.virtqueue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.virtqueue*, align 8
  %4 = alloca %struct.mlxbf_tmfifo_vring*, align 8
  %5 = alloca %struct.mlxbf_tmfifo_vdev*, align 8
  %6 = alloca %struct.mlxbf_tmfifo*, align 8
  %7 = alloca i64, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %3, align 8
  %8 = load %struct.virtqueue*, %struct.virtqueue** %3, align 8
  %9 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %8, i32 0, i32 0
  %10 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %9, align 8
  store %struct.mlxbf_tmfifo_vring* %10, %struct.mlxbf_tmfifo_vring** %4, align 8
  %11 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %4, align 8
  %12 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %11, i32 0, i32 2
  %13 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %12, align 8
  store %struct.mlxbf_tmfifo* %13, %struct.mlxbf_tmfifo** %6, align 8
  %14 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %4, align 8
  %15 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @BIT(i32 0)
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %53

20:                                               ; preds = %1
  %21 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %4, align 8
  %22 = getelementptr inbounds %struct.mlxbf_tmfifo_vring, %struct.mlxbf_tmfifo_vring* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @VIRTIO_ID_CONSOLE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %44

26:                                               ; preds = %20
  %27 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %6, align 8
  %28 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %27, i32 0, i32 2
  %29 = load i64, i64* %7, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %6, align 8
  %32 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %31, i32 0, i32 3
  %33 = load %struct.mlxbf_tmfifo_vdev**, %struct.mlxbf_tmfifo_vdev*** %32, align 8
  %34 = load i64, i64* @VIRTIO_ID_CONSOLE, align 8
  %35 = getelementptr inbounds %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %33, i64 %34
  %36 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %35, align 8
  store %struct.mlxbf_tmfifo_vdev* %36, %struct.mlxbf_tmfifo_vdev** %5, align 8
  %37 = load %struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vdev** %5, align 8
  %38 = load %struct.mlxbf_tmfifo_vring*, %struct.mlxbf_tmfifo_vring** %4, align 8
  %39 = call i32 @mlxbf_tmfifo_console_output(%struct.mlxbf_tmfifo_vdev* %37, %struct.mlxbf_tmfifo_vring* %38)
  %40 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %6, align 8
  %41 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %40, i32 0, i32 2
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @spin_unlock_irqrestore(i32* %41, i64 %42)
  br label %52

44:                                               ; preds = %20
  %45 = load i32, i32* @MLXBF_TM_TX_LWM_IRQ, align 4
  %46 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %6, align 8
  %47 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %46, i32 0, i32 1
  %48 = call i64 @test_and_set_bit(i32 %45, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  store i32 1, i32* %2, align 4
  br label %65

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %26
  br label %61

53:                                               ; preds = %1
  %54 = load i32, i32* @MLXBF_TM_RX_HWM_IRQ, align 4
  %55 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %6, align 8
  %56 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %55, i32 0, i32 1
  %57 = call i64 @test_and_set_bit(i32 %54, i32* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  store i32 1, i32* %2, align 4
  br label %65

60:                                               ; preds = %53
  br label %61

61:                                               ; preds = %60, %52
  %62 = load %struct.mlxbf_tmfifo*, %struct.mlxbf_tmfifo** %6, align 8
  %63 = getelementptr inbounds %struct.mlxbf_tmfifo, %struct.mlxbf_tmfifo* %62, i32 0, i32 0
  %64 = call i32 @schedule_work(i32* %63)
  store i32 1, i32* %2, align 4
  br label %65

65:                                               ; preds = %61, %59, %50
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @mlxbf_tmfifo_console_output(%struct.mlxbf_tmfifo_vdev*, %struct.mlxbf_tmfifo_vring*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
