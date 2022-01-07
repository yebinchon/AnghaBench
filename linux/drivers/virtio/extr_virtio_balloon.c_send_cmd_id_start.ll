; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_balloon.c_send_cmd_id_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_balloon.c_send_cmd_id_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_balloon = type { i32, i32, %struct.virtqueue* }
%struct.virtqueue = type { i32 }
%struct.scatterlist = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_balloon*)* @send_cmd_id_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @send_cmd_id_start(%struct.virtio_balloon* %0) #0 {
  %2 = alloca %struct.virtio_balloon*, align 8
  %3 = alloca %struct.scatterlist, align 4
  %4 = alloca %struct.virtqueue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.virtio_balloon* %0, %struct.virtio_balloon** %2, align 8
  %7 = load %struct.virtio_balloon*, %struct.virtio_balloon** %2, align 8
  %8 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %7, i32 0, i32 2
  %9 = load %struct.virtqueue*, %struct.virtqueue** %8, align 8
  store %struct.virtqueue* %9, %struct.virtqueue** %4, align 8
  br label %10

10:                                               ; preds = %14, %1
  %11 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %12 = call i64 @virtqueue_get_buf(%struct.virtqueue* %11, i32* %6)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %10
  br label %10

15:                                               ; preds = %10
  %16 = load %struct.virtio_balloon*, %struct.virtio_balloon** %2, align 8
  %17 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.virtio_balloon*, %struct.virtio_balloon** %2, align 8
  %20 = call i32 @virtio_balloon_cmd_id_received(%struct.virtio_balloon* %19)
  %21 = call i32 @virtio32_to_cpu(i32 %18, i32 %20)
  %22 = load %struct.virtio_balloon*, %struct.virtio_balloon** %2, align 8
  %23 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.virtio_balloon*, %struct.virtio_balloon** %2, align 8
  %25 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %24, i32 0, i32 0
  %26 = call i32 @sg_init_one(%struct.scatterlist* %3, i32* %25, i32 4)
  %27 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %28 = load %struct.virtio_balloon*, %struct.virtio_balloon** %2, align 8
  %29 = getelementptr inbounds %struct.virtio_balloon, %struct.virtio_balloon* %28, i32 0, i32 0
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @virtqueue_add_outbuf(%struct.virtqueue* %27, %struct.scatterlist* %3, i32 1, i32* %29, i32 %30)
  store i32 %31, i32* %5, align 4
  %32 = load i32, i32* %5, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %15
  %35 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %36 = call i32 @virtqueue_kick(%struct.virtqueue* %35)
  br label %37

37:                                               ; preds = %34, %15
  %38 = load i32, i32* %5, align 4
  ret i32 %38
}

declare dso_local i64 @virtqueue_get_buf(%struct.virtqueue*, i32*) #1

declare dso_local i32 @virtio32_to_cpu(i32, i32) #1

declare dso_local i32 @virtio_balloon_cmd_id_received(%struct.virtio_balloon*) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, i32*, i32) #1

declare dso_local i32 @virtqueue_add_outbuf(%struct.virtqueue*, %struct.scatterlist*, i32, i32*, i32) #1

declare dso_local i32 @virtqueue_kick(%struct.virtqueue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
