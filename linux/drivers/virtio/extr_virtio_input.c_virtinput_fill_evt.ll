; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_input.c_virtinput_fill_evt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_input.c_virtinput_fill_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_input = type { i32, i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtio_input*)* @virtinput_fill_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @virtinput_fill_evt(%struct.virtio_input* %0) #0 {
  %2 = alloca %struct.virtio_input*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.virtio_input* %0, %struct.virtio_input** %2, align 8
  %6 = load %struct.virtio_input*, %struct.virtio_input** %2, align 8
  %7 = getelementptr inbounds %struct.virtio_input, %struct.virtio_input* %6, i32 0, i32 0
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.virtio_input*, %struct.virtio_input** %2, align 8
  %11 = getelementptr inbounds %struct.virtio_input, %struct.virtio_input* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @virtqueue_get_vring_size(i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.virtio_input*, %struct.virtio_input** %2, align 8
  %16 = getelementptr inbounds %struct.virtio_input, %struct.virtio_input* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = call i32 @ARRAY_SIZE(i32* %17)
  %19 = icmp sgt i32 %14, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %1
  %21 = load %struct.virtio_input*, %struct.virtio_input** %2, align 8
  %22 = getelementptr inbounds %struct.virtio_input, %struct.virtio_input* %21, i32 0, i32 2
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @ARRAY_SIZE(i32* %23)
  store i32 %24, i32* %5, align 4
  br label %25

25:                                               ; preds = %20, %1
  store i32 0, i32* %4, align 4
  br label %26

26:                                               ; preds = %39, %25
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %42

30:                                               ; preds = %26
  %31 = load %struct.virtio_input*, %struct.virtio_input** %2, align 8
  %32 = load %struct.virtio_input*, %struct.virtio_input** %2, align 8
  %33 = getelementptr inbounds %struct.virtio_input, %struct.virtio_input* %32, i32 0, i32 2
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = call i32 @virtinput_queue_evtbuf(%struct.virtio_input* %31, i32* %37)
  br label %39

39:                                               ; preds = %30
  %40 = load i32, i32* %4, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %4, align 4
  br label %26

42:                                               ; preds = %26
  %43 = load %struct.virtio_input*, %struct.virtio_input** %2, align 8
  %44 = getelementptr inbounds %struct.virtio_input, %struct.virtio_input* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @virtqueue_kick(i32 %45)
  %47 = load %struct.virtio_input*, %struct.virtio_input** %2, align 8
  %48 = getelementptr inbounds %struct.virtio_input, %struct.virtio_input* %47, i32 0, i32 0
  %49 = load i64, i64* %3, align 8
  %50 = call i32 @spin_unlock_irqrestore(i32* %48, i64 %49)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @virtqueue_get_vring_size(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @virtinput_queue_evtbuf(%struct.virtio_input*, i32*) #1

declare dso_local i32 @virtqueue_kick(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
