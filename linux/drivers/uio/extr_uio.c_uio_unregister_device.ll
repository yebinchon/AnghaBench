; ModuleID = '/home/carl/AnghaBench/linux/drivers/uio/extr_uio.c_uio_unregister_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/uio/extr_uio.c_uio_unregister_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uio_info = type { i64, %struct.uio_device* }
%struct.uio_device = type { i32, i32, i32, i32, i32* }

@UIO_IRQ_CUSTOM = common dso_local global i64 0, align 8
@SIGIO = common dso_local global i32 0, align 4
@POLL_HUP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @uio_unregister_device(%struct.uio_info* %0) #0 {
  %2 = alloca %struct.uio_info*, align 8
  %3 = alloca %struct.uio_device*, align 8
  store %struct.uio_info* %0, %struct.uio_info** %2, align 8
  %4 = load %struct.uio_info*, %struct.uio_info** %2, align 8
  %5 = icmp ne %struct.uio_info* %4, null
  br i1 %5, label %6, label %11

6:                                                ; preds = %1
  %7 = load %struct.uio_info*, %struct.uio_info** %2, align 8
  %8 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %7, i32 0, i32 1
  %9 = load %struct.uio_device*, %struct.uio_device** %8, align 8
  %10 = icmp ne %struct.uio_device* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %6, %1
  br label %56

12:                                               ; preds = %6
  %13 = load %struct.uio_info*, %struct.uio_info** %2, align 8
  %14 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %13, i32 0, i32 1
  %15 = load %struct.uio_device*, %struct.uio_device** %14, align 8
  store %struct.uio_device* %15, %struct.uio_device** %3, align 8
  %16 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %17 = call i32 @uio_free_minor(%struct.uio_device* %16)
  %18 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %19 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %18, i32 0, i32 3
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %22 = call i32 @uio_dev_del_attributes(%struct.uio_device* %21)
  %23 = load %struct.uio_info*, %struct.uio_info** %2, align 8
  %24 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %12
  %28 = load %struct.uio_info*, %struct.uio_info** %2, align 8
  %29 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @UIO_IRQ_CUSTOM, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.uio_info*, %struct.uio_info** %2, align 8
  %35 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %38 = call i32 @free_irq(i64 %36, %struct.uio_device* %37)
  br label %39

39:                                               ; preds = %33, %27, %12
  %40 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %41 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %40, i32 0, i32 4
  store i32* null, i32** %41, align 8
  %42 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %43 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %42, i32 0, i32 3
  %44 = call i32 @mutex_unlock(i32* %43)
  %45 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %46 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %45, i32 0, i32 2
  %47 = call i32 @wake_up_interruptible(i32* %46)
  %48 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %49 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %48, i32 0, i32 1
  %50 = load i32, i32* @SIGIO, align 4
  %51 = load i32, i32* @POLL_HUP, align 4
  %52 = call i32 @kill_fasync(i32* %49, i32 %50, i32 %51)
  %53 = load %struct.uio_device*, %struct.uio_device** %3, align 8
  %54 = getelementptr inbounds %struct.uio_device, %struct.uio_device* %53, i32 0, i32 0
  %55 = call i32 @device_unregister(i32* %54)
  br label %56

56:                                               ; preds = %39, %11
  ret void
}

declare dso_local i32 @uio_free_minor(%struct.uio_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @uio_dev_del_attributes(%struct.uio_device*) #1

declare dso_local i32 @free_irq(i64, %struct.uio_device*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

declare dso_local i32 @device_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
