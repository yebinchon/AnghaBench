; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fhci-sched.c_rotate_frames.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fhci-sched.c_rotate_frames.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fhci_usb = type { %struct.TYPE_4__*, %struct.fhci_hcd* }
%struct.TYPE_4__ = type { i32, i64, i32, i32 }
%struct.fhci_hcd = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@FRAME_IS_PREPARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fhci_usb*)* @rotate_frames to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rotate_frames(%struct.fhci_usb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fhci_usb*, align 8
  %4 = alloca %struct.fhci_hcd*, align 8
  store %struct.fhci_usb* %0, %struct.fhci_usb** %3, align 8
  %5 = load %struct.fhci_usb*, %struct.fhci_usb** %3, align 8
  %6 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %5, i32 0, i32 1
  %7 = load %struct.fhci_hcd*, %struct.fhci_hcd** %6, align 8
  store %struct.fhci_hcd* %7, %struct.fhci_hcd** %4, align 8
  %8 = load %struct.fhci_usb*, %struct.fhci_usb** %3, align 8
  %9 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 3
  %12 = call i32 @list_empty(i32* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %36, label %14

14:                                               ; preds = %1
  %15 = load %struct.fhci_hcd*, %struct.fhci_hcd** %4, align 8
  %16 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = call i32 @in_be16(i32* %18)
  %20 = and i32 %19, 2047
  %21 = load %struct.fhci_usb*, %struct.fhci_usb** %3, align 8
  %22 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %21, i32 0, i32 0
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %20, %25
  %27 = and i32 %26, 2047
  %28 = icmp sgt i32 %27, 5
  br i1 %28, label %29, label %32

29:                                               ; preds = %14
  %30 = load %struct.fhci_usb*, %struct.fhci_usb** %3, align 8
  %31 = call i32 @fhci_flush_actual_frame(%struct.fhci_usb* %30)
  br label %35

32:                                               ; preds = %14
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %56

35:                                               ; preds = %29
  br label %36

36:                                               ; preds = %35, %1
  %37 = load i32, i32* @FRAME_IS_PREPARED, align 4
  %38 = load %struct.fhci_usb*, %struct.fhci_usb** %3, align 8
  %39 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 2
  store i32 %37, i32* %41, align 8
  %42 = load %struct.fhci_hcd*, %struct.fhci_hcd** %4, align 8
  %43 = getelementptr inbounds %struct.fhci_hcd, %struct.fhci_hcd* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = call i32 @in_be16(i32* %45)
  %47 = and i32 %46, 2047
  %48 = load %struct.fhci_usb*, %struct.fhci_usb** %3, align 8
  %49 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store i32 %47, i32* %51, align 8
  %52 = load %struct.fhci_usb*, %struct.fhci_usb** %3, align 8
  %53 = getelementptr inbounds %struct.fhci_usb, %struct.fhci_usb* %52, i32 0, i32 0
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %36, %32
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @in_be16(i32*) #1

declare dso_local i32 @fhci_flush_actual_frame(%struct.fhci_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
