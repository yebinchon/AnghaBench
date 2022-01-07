; ModuleID = '/home/carl/AnghaBench/linux/drivers/rpmsg/extr_virtio_rpmsg_bus.c_rpmsg_recv_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rpmsg/extr_virtio_rpmsg_bus.c_rpmsg_recv_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device, %struct.virtproc_info* }
%struct.device = type { i32 }
%struct.virtproc_info = type { i32 }
%struct.rpmsg_hdr = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"uhm, incoming signal, but no used buffer ?\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Received %u messages\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*)* @rpmsg_recv_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rpmsg_recv_done(%struct.virtqueue* %0) #0 {
  %2 = alloca %struct.virtqueue*, align 8
  %3 = alloca %struct.virtproc_info*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rpmsg_hdr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.virtqueue* %0, %struct.virtqueue** %2, align 8
  %9 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %10 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load %struct.virtproc_info*, %struct.virtproc_info** %12, align 8
  store %struct.virtproc_info* %13, %struct.virtproc_info** %3, align 8
  %14 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %15 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store %struct.device* %17, %struct.device** %4, align 8
  store i32 0, i32* %7, align 4
  %18 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %19 = call %struct.rpmsg_hdr* @virtqueue_get_buf(%struct.virtqueue* %18, i32* %6)
  store %struct.rpmsg_hdr* %19, %struct.rpmsg_hdr** %5, align 8
  %20 = load %struct.rpmsg_hdr*, %struct.rpmsg_hdr** %5, align 8
  %21 = icmp ne %struct.rpmsg_hdr* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %1
  %23 = load %struct.device*, %struct.device** %4, align 8
  %24 = call i32 @dev_err(%struct.device* %23, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0))
  br label %54

25:                                               ; preds = %1
  br label %26

26:                                               ; preds = %38, %25
  %27 = load %struct.rpmsg_hdr*, %struct.rpmsg_hdr** %5, align 8
  %28 = icmp ne %struct.rpmsg_hdr* %27, null
  br i1 %28, label %29, label %43

29:                                               ; preds = %26
  %30 = load %struct.virtproc_info*, %struct.virtproc_info** %3, align 8
  %31 = load %struct.device*, %struct.device** %4, align 8
  %32 = load %struct.rpmsg_hdr*, %struct.rpmsg_hdr** %5, align 8
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @rpmsg_recv_single(%struct.virtproc_info* %30, %struct.device* %31, %struct.rpmsg_hdr* %32, i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %29
  br label %43

38:                                               ; preds = %29
  %39 = load i32, i32* %7, align 4
  %40 = add i32 %39, 1
  store i32 %40, i32* %7, align 4
  %41 = load %struct.virtqueue*, %struct.virtqueue** %2, align 8
  %42 = call %struct.rpmsg_hdr* @virtqueue_get_buf(%struct.virtqueue* %41, i32* %6)
  store %struct.rpmsg_hdr* %42, %struct.rpmsg_hdr** %5, align 8
  br label %26

43:                                               ; preds = %37, %26
  %44 = load %struct.device*, %struct.device** %4, align 8
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @dev_dbg(%struct.device* %44, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.virtproc_info*, %struct.virtproc_info** %3, align 8
  %51 = getelementptr inbounds %struct.virtproc_info, %struct.virtproc_info* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @virtqueue_kick(i32 %52)
  br label %54

54:                                               ; preds = %22, %49, %43
  ret void
}

declare dso_local %struct.rpmsg_hdr* @virtqueue_get_buf(%struct.virtqueue*, i32*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @rpmsg_recv_single(%struct.virtproc_info*, %struct.device*, %struct.rpmsg_hdr*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @virtqueue_kick(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
