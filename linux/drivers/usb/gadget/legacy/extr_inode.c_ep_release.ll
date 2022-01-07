; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_ep_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_ep_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.ep_data* }
%struct.ep_data = type { i64, i32, i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i64 }

@STATE_EP_UNBOUND = common dso_local global i64 0, align 8
@STATE_EP_DISABLED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @ep_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ep_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.ep_data*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.file*, %struct.file** %5, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.ep_data*, %struct.ep_data** %9, align 8
  store %struct.ep_data* %10, %struct.ep_data** %6, align 8
  %11 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %12 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock_interruptible(i32* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %44

18:                                               ; preds = %2
  %19 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %20 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @STATE_EP_UNBOUND, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %38

24:                                               ; preds = %18
  %25 = load i64, i64* @STATE_EP_DISABLED, align 8
  %26 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %27 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  %28 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %29 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %32 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  store i64 0, i64* %33, align 8
  %34 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %35 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @usb_ep_disable(i32 %36)
  br label %38

38:                                               ; preds = %24, %18
  %39 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %40 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %39, i32 0, i32 1
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %43 = call i32 @put_ep(%struct.ep_data* %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %38, %16
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @usb_ep_disable(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_ep(%struct.ep_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
