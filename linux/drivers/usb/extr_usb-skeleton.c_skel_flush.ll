; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/extr_usb-skeleton.c_skel_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/extr_usb-skeleton.c_skel_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.usb_skel* }
%struct.usb_skel = type { i32, i32, i32 }

@ENODEV = common dso_local global i32 0, align 4
@EPIPE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32)* @skel_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skel_flush(%struct.file* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_skel*, align 8
  %7 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.file*, %struct.file** %4, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = load %struct.usb_skel*, %struct.usb_skel** %9, align 8
  store %struct.usb_skel* %10, %struct.usb_skel** %6, align 8
  %11 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %12 = icmp eq %struct.usb_skel* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @ENODEV, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %56

16:                                               ; preds = %2
  %17 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %18 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %17, i32 0, i32 1
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %21 = call i32 @skel_draw_down(%struct.usb_skel* %20)
  %22 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %23 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %22, i32 0, i32 2
  %24 = call i32 @spin_lock_irq(i32* %23)
  %25 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %26 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %16
  %30 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %31 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @EPIPE, align 4
  %34 = sub nsw i32 0, %33
  %35 = icmp eq i32 %32, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %29
  %37 = load i32, i32* @EPIPE, align 4
  %38 = sub nsw i32 0, %37
  br label %42

39:                                               ; preds = %29
  %40 = load i32, i32* @EIO, align 4
  %41 = sub nsw i32 0, %40
  br label %42

42:                                               ; preds = %39, %36
  %43 = phi i32 [ %38, %36 ], [ %41, %39 ]
  br label %45

44:                                               ; preds = %16
  br label %45

45:                                               ; preds = %44, %42
  %46 = phi i32 [ %43, %42 ], [ 0, %44 ]
  store i32 %46, i32* %7, align 4
  %47 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %48 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %47, i32 0, i32 0
  store i32 0, i32* %48, align 4
  %49 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %50 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %49, i32 0, i32 2
  %51 = call i32 @spin_unlock_irq(i32* %50)
  %52 = load %struct.usb_skel*, %struct.usb_skel** %6, align 8
  %53 = getelementptr inbounds %struct.usb_skel, %struct.usb_skel* %52, i32 0, i32 1
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %45, %13
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @skel_draw_down(%struct.usb_skel*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
