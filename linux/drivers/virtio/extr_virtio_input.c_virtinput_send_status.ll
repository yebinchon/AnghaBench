; ModuleID = '/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_input.c_virtinput_send_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virtio/extr_virtio_input.c_virtinput_send_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtio_input = type { i32, i32, i64 }
%struct.virtio_input_event = type { i32, i8*, i8* }
%struct.scatterlist = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtio_input*, i32, i32, i32)* @virtinput_send_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @virtinput_send_status(%struct.virtio_input* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.virtio_input*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.virtio_input_event*, align 8
  %11 = alloca [1 x %struct.scatterlist], align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.virtio_input* %0, %struct.virtio_input** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.virtio_input_event* @kzalloc(i32 24, i32 %14)
  store %struct.virtio_input_event* %15, %struct.virtio_input_event** %10, align 8
  %16 = load %struct.virtio_input_event*, %struct.virtio_input_event** %10, align 8
  %17 = icmp ne %struct.virtio_input_event* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %72

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = call i8* @cpu_to_le16(i32 %22)
  %24 = load %struct.virtio_input_event*, %struct.virtio_input_event** %10, align 8
  %25 = getelementptr inbounds %struct.virtio_input_event, %struct.virtio_input_event* %24, i32 0, i32 2
  store i8* %23, i8** %25, align 8
  %26 = load i32, i32* %8, align 4
  %27 = call i8* @cpu_to_le16(i32 %26)
  %28 = load %struct.virtio_input_event*, %struct.virtio_input_event** %10, align 8
  %29 = getelementptr inbounds %struct.virtio_input_event, %struct.virtio_input_event* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* %9, align 4
  %31 = call i32 @cpu_to_le32(i32 %30)
  %32 = load %struct.virtio_input_event*, %struct.virtio_input_event** %10, align 8
  %33 = getelementptr inbounds %struct.virtio_input_event, %struct.virtio_input_event* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 8
  %34 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %11, i64 0, i64 0
  %35 = load %struct.virtio_input_event*, %struct.virtio_input_event** %10, align 8
  %36 = call i32 @sg_init_one(%struct.scatterlist* %34, %struct.virtio_input_event* %35, i32 24)
  %37 = load %struct.virtio_input*, %struct.virtio_input** %6, align 8
  %38 = getelementptr inbounds %struct.virtio_input, %struct.virtio_input* %37, i32 0, i32 0
  %39 = load i64, i64* %12, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.virtio_input*, %struct.virtio_input** %6, align 8
  %42 = getelementptr inbounds %struct.virtio_input, %struct.virtio_input* %41, i32 0, i32 2
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %21
  %46 = load %struct.virtio_input*, %struct.virtio_input** %6, align 8
  %47 = getelementptr inbounds %struct.virtio_input, %struct.virtio_input* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds [1 x %struct.scatterlist], [1 x %struct.scatterlist]* %11, i64 0, i64 0
  %50 = load %struct.virtio_input_event*, %struct.virtio_input_event** %10, align 8
  %51 = load i32, i32* @GFP_ATOMIC, align 4
  %52 = call i32 @virtqueue_add_outbuf(i32 %48, %struct.scatterlist* %49, i32 1, %struct.virtio_input_event* %50, i32 %51)
  store i32 %52, i32* %13, align 4
  %53 = load %struct.virtio_input*, %struct.virtio_input** %6, align 8
  %54 = getelementptr inbounds %struct.virtio_input, %struct.virtio_input* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @virtqueue_kick(i32 %55)
  br label %60

57:                                               ; preds = %21
  %58 = load i32, i32* @ENODEV, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %13, align 4
  br label %60

60:                                               ; preds = %57, %45
  %61 = load %struct.virtio_input*, %struct.virtio_input** %6, align 8
  %62 = getelementptr inbounds %struct.virtio_input, %struct.virtio_input* %61, i32 0, i32 0
  %63 = load i64, i64* %12, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  %65 = load i32, i32* %13, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %60
  %68 = load %struct.virtio_input_event*, %struct.virtio_input_event** %10, align 8
  %69 = call i32 @kfree(%struct.virtio_input_event* %68)
  br label %70

70:                                               ; preds = %67, %60
  %71 = load i32, i32* %13, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %70, %18
  %73 = load i32, i32* %5, align 4
  ret i32 %73
}

declare dso_local %struct.virtio_input_event* @kzalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @sg_init_one(%struct.scatterlist*, %struct.virtio_input_event*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @virtqueue_add_outbuf(i32, %struct.scatterlist*, i32, %struct.virtio_input_event*, i32) #1

declare dso_local i32 @virtqueue_kick(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @kfree(%struct.virtio_input_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
