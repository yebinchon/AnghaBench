; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_host.c_musb_host_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_musb_host.c_musb_host_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.musb = type { i64, %struct.TYPE_4__*, %struct.usb_hcd* }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i32, i64 }
%struct.usb_hcd = type { i32, i32, %struct.TYPE_6__ }

@MUSB_HOST = common dso_local global i64 0, align 8
@OTG_STATE_A_IDLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @musb_host_setup(%struct.musb* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.musb*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.usb_hcd*, align 8
  store %struct.musb* %0, %struct.musb** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.musb*, %struct.musb** %4, align 8
  %9 = getelementptr inbounds %struct.musb, %struct.musb* %8, i32 0, i32 2
  %10 = load %struct.usb_hcd*, %struct.usb_hcd** %9, align 8
  store %struct.usb_hcd* %10, %struct.usb_hcd** %7, align 8
  %11 = load %struct.musb*, %struct.musb** %4, align 8
  %12 = getelementptr inbounds %struct.musb, %struct.musb* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MUSB_HOST, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %26

16:                                               ; preds = %2
  %17 = load %struct.musb*, %struct.musb** %4, align 8
  %18 = call i32 @MUSB_HST_MODE(%struct.musb* %17)
  %19 = load i32, i32* @OTG_STATE_A_IDLE, align 4
  %20 = load %struct.musb*, %struct.musb** %4, align 8
  %21 = getelementptr inbounds %struct.musb, %struct.musb* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  store i32 %19, i32* %25, align 8
  br label %26

26:                                               ; preds = %16, %2
  %27 = load %struct.musb*, %struct.musb** %4, align 8
  %28 = getelementptr inbounds %struct.musb, %struct.musb* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %33 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %32, i32 0, i32 2
  %34 = call i32 @otg_set_host(%struct.TYPE_5__* %31, %struct.TYPE_6__* %33)
  %35 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %36 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store i64 0, i64* %37, align 8
  %38 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %39 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %38, i32 0, i32 2
  %40 = load %struct.musb*, %struct.musb** %4, align 8
  %41 = getelementptr inbounds %struct.musb, %struct.musb* %40, i32 0, i32 1
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %45, align 8
  %46 = load i32, i32* %5, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %26
  br label %50

49:                                               ; preds = %26
  br label %50

50:                                               ; preds = %49, %48
  %51 = phi i32 [ %46, %48 ], [ 250, %49 ]
  %52 = mul nsw i32 2, %51
  %53 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %54 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %56 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %55, i32 0, i32 1
  store i32 1, i32* %56, align 4
  %57 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %58 = call i32 @usb_add_hcd(%struct.usb_hcd* %57, i32 0, i32 0)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %50
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %69

63:                                               ; preds = %50
  %64 = load %struct.usb_hcd*, %struct.usb_hcd** %7, align 8
  %65 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @device_wakeup_enable(i32 %67)
  store i32 0, i32* %3, align 4
  br label %69

69:                                               ; preds = %63, %61
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @MUSB_HST_MODE(%struct.musb*) #1

declare dso_local i32 @otg_set_host(%struct.TYPE_5__*, %struct.TYPE_6__*) #1

declare dso_local i32 @usb_add_hcd(%struct.usb_hcd*, i32, i32) #1

declare dso_local i32 @device_wakeup_enable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
