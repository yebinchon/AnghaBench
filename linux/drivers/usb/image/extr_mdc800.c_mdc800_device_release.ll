; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/image/extr_mdc800.c_mdc800_device_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/image/extr_mdc800.c_mdc800_device_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i64, i32, i32, i32 }
%struct.inode = type { i32 }
%struct.file = type { i32 }

@mdc800 = common dso_local global %struct.TYPE_2__* null, align 8
@NOT_CONNECTED = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @mdc800_device_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdc800_device_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdc800, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdc800, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %34

13:                                               ; preds = %2
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdc800, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NOT_CONNECTED, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %34

19:                                               ; preds = %13
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdc800, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @usb_kill_urb(i32 %22)
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdc800, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @usb_kill_urb(i32 %26)
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdc800, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @usb_kill_urb(i32 %30)
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdc800, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 2
  store i64 0, i64* %33, align 8
  br label %37

34:                                               ; preds = %13, %2
  %35 = load i32, i32* @EIO, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %37

37:                                               ; preds = %34, %19
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mdc800, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = call i32 @mutex_unlock(i32* %39)
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_kill_urb(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
