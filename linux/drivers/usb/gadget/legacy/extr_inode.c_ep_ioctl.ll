; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_ep_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_ep_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32, %struct.ep_data* }
%struct.ep_data = type { i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }

@ENOTTY = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.file*, i32, i64)* @ep_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ep_ioctl(%struct.file* %0, i32 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca %struct.ep_data*, align 8
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64 %2, i64* %7, align 8
  %10 = load %struct.file*, %struct.file** %5, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 1
  %12 = load %struct.ep_data*, %struct.ep_data** %11, align 8
  store %struct.ep_data* %12, %struct.ep_data** %8, align 8
  %13 = load %struct.file*, %struct.file** %5, align 8
  %14 = getelementptr inbounds %struct.file, %struct.file* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.ep_data*, %struct.ep_data** %8, align 8
  %17 = call i32 @get_ready_ep(i32 %15, %struct.ep_data* %16, i32 0)
  store i32 %17, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load i32, i32* %9, align 4
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %4, align 8
  br label %70

22:                                               ; preds = %3
  %23 = load %struct.ep_data*, %struct.ep_data** %8, align 8
  %24 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @spin_lock_irq(i32* %26)
  %28 = load %struct.ep_data*, %struct.ep_data** %8, align 8
  %29 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i64 @likely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %56

35:                                               ; preds = %22
  %36 = load i32, i32* %6, align 4
  switch i32 %36, label %52 [
    i32 128, label %37
    i32 129, label %42
    i32 130, label %47
  ]

37:                                               ; preds = %35
  %38 = load %struct.ep_data*, %struct.ep_data** %8, align 8
  %39 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = call i32 @usb_ep_fifo_status(i32* %40)
  store i32 %41, i32* %9, align 4
  br label %55

42:                                               ; preds = %35
  %43 = load %struct.ep_data*, %struct.ep_data** %8, align 8
  %44 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %43, i32 0, i32 2
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @usb_ep_fifo_flush(i32* %45)
  br label %55

47:                                               ; preds = %35
  %48 = load %struct.ep_data*, %struct.ep_data** %8, align 8
  %49 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %48, i32 0, i32 2
  %50 = load i32*, i32** %49, align 8
  %51 = call i32 @usb_ep_clear_halt(i32* %50)
  store i32 %51, i32* %9, align 4
  br label %55

52:                                               ; preds = %35
  %53 = load i32, i32* @ENOTTY, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %9, align 4
  br label %55

55:                                               ; preds = %52, %47, %42, %37
  br label %59

56:                                               ; preds = %22
  %57 = load i32, i32* @ENODEV, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %56, %55
  %60 = load %struct.ep_data*, %struct.ep_data** %8, align 8
  %61 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %60, i32 0, i32 1
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = call i32 @spin_unlock_irq(i32* %63)
  %65 = load %struct.ep_data*, %struct.ep_data** %8, align 8
  %66 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %65, i32 0, i32 0
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  store i64 %69, i64* %4, align 8
  br label %70

70:                                               ; preds = %59, %19
  %71 = load i64, i64* %4, align 8
  ret i64 %71
}

declare dso_local i32 @get_ready_ep(i32, %struct.ep_data*, i32) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @usb_ep_fifo_status(i32*) #1

declare dso_local i32 @usb_ep_fifo_flush(i32*) #1

declare dso_local i32 @usb_ep_clear_halt(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
