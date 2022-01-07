; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_input.c_virtinput_init_vqs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_input.c_virtinput_init_vqs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_input = type { %struct.virtqueue*, %struct.virtqueue*, i32 }
%struct.virtqueue = type { i32 }

@virtinput_recv_events = common dso_local global i32* null, align 8
@virtinput_recv_status = common dso_local global i32* null, align 8
@virtinput_init_vqs.names = internal constant [2 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [7 x i8] c"events\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"status\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_input*)* @virtinput_init_vqs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtinput_init_vqs(%struct.virtio_input* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.virtio_input*, align 8
  %4 = alloca [2 x %struct.virtqueue*], align 16
  %5 = alloca [2 x i32*], align 16
  %6 = alloca i32, align 4
  store %struct.virtio_input* %0, %struct.virtio_input** %3, align 8
  %7 = getelementptr inbounds [2 x i32*], [2 x i32*]* %5, i64 0, i64 0
  %8 = load i32*, i32** @virtinput_recv_events, align 8
  store i32* %8, i32** %7, align 8
  %9 = getelementptr inbounds i32*, i32** %7, i64 1
  %10 = load i32*, i32** @virtinput_recv_status, align 8
  store i32* %10, i32** %9, align 8
  %11 = load %struct.virtio_input*, %struct.virtio_input** %3, align 8
  %12 = getelementptr inbounds %struct.virtio_input, %struct.virtio_input* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds [2 x %struct.virtqueue*], [2 x %struct.virtqueue*]* %4, i64 0, i64 0
  %15 = getelementptr inbounds [2 x i32*], [2 x i32*]* %5, i64 0, i64 0
  %16 = call i32 @virtio_find_vqs(i32 %13, i32 2, %struct.virtqueue** %14, i32** %15, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @virtinput_init_vqs.names, i64 0, i64 0), i32* null)
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* %6, align 4
  store i32 %20, i32* %2, align 4
  br label %30

21:                                               ; preds = %1
  %22 = getelementptr inbounds [2 x %struct.virtqueue*], [2 x %struct.virtqueue*]* %4, i64 0, i64 0
  %23 = load %struct.virtqueue*, %struct.virtqueue** %22, align 16
  %24 = load %struct.virtio_input*, %struct.virtio_input** %3, align 8
  %25 = getelementptr inbounds %struct.virtio_input, %struct.virtio_input* %24, i32 0, i32 1
  store %struct.virtqueue* %23, %struct.virtqueue** %25, align 8
  %26 = getelementptr inbounds [2 x %struct.virtqueue*], [2 x %struct.virtqueue*]* %4, i64 0, i64 1
  %27 = load %struct.virtqueue*, %struct.virtqueue** %26, align 8
  %28 = load %struct.virtio_input*, %struct.virtio_input** %3, align 8
  %29 = getelementptr inbounds %struct.virtio_input, %struct.virtio_input* %28, i32 0, i32 0
  store %struct.virtqueue* %27, %struct.virtqueue** %29, align 8
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %21, %19
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @virtio_find_vqs(i32, i32, %struct.virtqueue**, i32**, i8**, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
