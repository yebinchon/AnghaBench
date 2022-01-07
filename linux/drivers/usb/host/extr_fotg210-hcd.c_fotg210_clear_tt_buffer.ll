; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_fotg210_clear_tt_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_fotg210_clear_tt_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_hcd = type { i32 }
%struct.fotg210_qh = type { i32 }
%struct.urb = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__*, i32, i32 }
%struct.TYPE_5__ = type { %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.usb_device* }

@.str = private unnamed_addr constant [41 x i8] c"clear tt buffer port %d, a%d ep%d t%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fotg210_hcd*, %struct.fotg210_qh*, %struct.urb*, i32)* @fotg210_clear_tt_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fotg210_clear_tt_buffer(%struct.fotg210_hcd* %0, %struct.fotg210_qh* %1, %struct.urb* %2, i32 %3) #0 {
  %5 = alloca %struct.fotg210_hcd*, align 8
  %6 = alloca %struct.fotg210_qh*, align 8
  %7 = alloca %struct.urb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_device*, align 8
  store %struct.fotg210_hcd* %0, %struct.fotg210_hcd** %5, align 8
  store %struct.fotg210_qh* %1, %struct.fotg210_qh** %6, align 8
  store %struct.urb* %2, %struct.urb** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.urb*, %struct.urb** %7, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 0
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %16, label %75

16:                                               ; preds = %4
  %17 = load %struct.urb*, %struct.urb** %7, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @usb_pipeint(i32 %19)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %75, label %22

22:                                               ; preds = %16
  %23 = load %struct.fotg210_qh*, %struct.fotg210_qh** %6, align 8
  %24 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %75, label %27

27:                                               ; preds = %22
  %28 = load %struct.urb*, %struct.urb** %7, align 8
  %29 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 0
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load %struct.usb_device*, %struct.usb_device** %33, align 8
  store %struct.usb_device* %34, %struct.usb_device** %9, align 8
  %35 = load %struct.usb_device*, %struct.usb_device** %9, align 8
  %36 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %35, i32 0, i32 0
  %37 = load %struct.urb*, %struct.urb** %7, align 8
  %38 = getelementptr inbounds %struct.urb, %struct.urb* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.urb*, %struct.urb** %7, align 8
  %43 = getelementptr inbounds %struct.urb, %struct.urb* %42, i32 0, i32 0
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.urb*, %struct.urb** %7, align 8
  %48 = getelementptr inbounds %struct.urb, %struct.urb* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @usb_pipeendpoint(i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @dev_dbg(i32* %36, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %46, i32 %50, i32 %51)
  %53 = load %struct.urb*, %struct.urb** %7, align 8
  %54 = getelementptr inbounds %struct.urb, %struct.urb* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i32 0, i32 0
  %59 = load %struct.usb_device*, %struct.usb_device** %58, align 8
  %60 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %5, align 8
  %61 = call %struct.TYPE_8__* @fotg210_to_hcd(%struct.fotg210_hcd* %60)
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load %struct.usb_device*, %struct.usb_device** %63, align 8
  %65 = icmp ne %struct.usb_device* %59, %64
  br i1 %65, label %66, label %74

66:                                               ; preds = %27
  %67 = load %struct.urb*, %struct.urb** %7, align 8
  %68 = call i64 @usb_hub_clear_tt_buffer(%struct.urb* %67)
  %69 = icmp eq i64 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %66
  %71 = load %struct.fotg210_qh*, %struct.fotg210_qh** %6, align 8
  %72 = getelementptr inbounds %struct.fotg210_qh, %struct.fotg210_qh* %71, i32 0, i32 0
  store i32 1, i32* %72, align 4
  br label %73

73:                                               ; preds = %70, %66
  br label %74

74:                                               ; preds = %73, %27
  br label %75

75:                                               ; preds = %74, %22, %16, %4
  ret void
}

declare dso_local i32 @usb_pipeint(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @usb_pipeendpoint(i32) #1

declare dso_local %struct.TYPE_8__* @fotg210_to_hcd(%struct.fotg210_hcd*) #1

declare dso_local i64 @usb_hub_clear_tt_buffer(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
