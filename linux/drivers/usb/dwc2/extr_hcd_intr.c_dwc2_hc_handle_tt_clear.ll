; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_hc_handle_tt_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_intr.c_dwc2_hc_handle_tt_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }
%struct.dwc2_host_chan = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i64, i32 }
%struct.dwc2_qtd = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, %struct.urb* }
%struct.urb = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.usb_device* }
%struct.usb_device = type { i32 }
%struct.TYPE_12__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.usb_device* }

@USB_SPEED_HIGH = common dso_local global i64 0, align 8
@EPIPE = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, %struct.dwc2_qtd*)* @dwc2_hc_handle_tt_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_hc_handle_tt_clear(%struct.dwc2_hsotg* %0, %struct.dwc2_host_chan* %1, %struct.dwc2_qtd* %2) #0 {
  %4 = alloca %struct.dwc2_hsotg*, align 8
  %5 = alloca %struct.dwc2_host_chan*, align 8
  %6 = alloca %struct.dwc2_qtd*, align 8
  %7 = alloca %struct.usb_device*, align 8
  %8 = alloca %struct.urb*, align 8
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %4, align 8
  store %struct.dwc2_host_chan* %1, %struct.dwc2_host_chan** %5, align 8
  store %struct.dwc2_qtd* %2, %struct.dwc2_qtd** %6, align 8
  %9 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %4, align 8
  %10 = call %struct.TYPE_12__* @dwc2_hsotg_to_hcd(%struct.dwc2_hsotg* %9)
  %11 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  store %struct.usb_device* %13, %struct.usb_device** %7, align 8
  %14 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %15 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %14, i32 0, i32 0
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %17 = icmp ne %struct.TYPE_11__* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  br label %98

19:                                               ; preds = %3
  %20 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %21 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %20, i32 0, i32 0
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @USB_SPEED_HIGH, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %98

28:                                               ; preds = %19
  %29 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %6, align 8
  %30 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %29, i32 0, i32 0
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** %30, align 8
  %32 = icmp ne %struct.TYPE_10__* %31, null
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %98

34:                                               ; preds = %28
  %35 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %6, align 8
  %36 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %35, i32 0, i32 0
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 1
  %39 = load %struct.urb*, %struct.urb** %38, align 8
  store %struct.urb* %39, %struct.urb** %8, align 8
  %40 = load %struct.urb*, %struct.urb** %8, align 8
  %41 = icmp ne %struct.urb* %40, null
  br i1 %41, label %42, label %54

42:                                               ; preds = %34
  %43 = load %struct.urb*, %struct.urb** %8, align 8
  %44 = getelementptr inbounds %struct.urb, %struct.urb* %43, i32 0, i32 0
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %44, align 8
  %46 = icmp ne %struct.TYPE_9__* %45, null
  br i1 %46, label %47, label %54

47:                                               ; preds = %42
  %48 = load %struct.urb*, %struct.urb** %8, align 8
  %49 = getelementptr inbounds %struct.urb, %struct.urb* %48, i32 0, i32 0
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = icmp ne %struct.TYPE_8__* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %47, %42, %34
  br label %98

55:                                               ; preds = %47
  %56 = load %struct.urb*, %struct.urb** %8, align 8
  %57 = getelementptr inbounds %struct.urb, %struct.urb* %56, i32 0, i32 0
  %58 = load %struct.TYPE_9__*, %struct.TYPE_9__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = load %struct.usb_device*, %struct.usb_device** %61, align 8
  %63 = load %struct.usb_device*, %struct.usb_device** %7, align 8
  %64 = icmp eq %struct.usb_device* %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %55
  br label %98

66:                                               ; preds = %55
  %67 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %6, align 8
  %68 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %67, i32 0, i32 0
  %69 = load %struct.TYPE_10__*, %struct.TYPE_10__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @EPIPE, align 4
  %73 = sub nsw i32 0, %72
  %74 = icmp ne i32 %71, %73
  br i1 %74, label %75, label %98

75:                                               ; preds = %66
  %76 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %6, align 8
  %77 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %76, i32 0, i32 0
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @EREMOTEIO, align 4
  %82 = sub nsw i32 0, %81
  %83 = icmp ne i32 %80, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %75
  %85 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %86 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %85, i32 0, i32 0
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 1
  store i32 1, i32* %88, align 8
  %89 = load %struct.urb*, %struct.urb** %8, align 8
  %90 = call i64 @usb_hub_clear_tt_buffer(%struct.urb* %89)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %84
  %93 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %5, align 8
  %94 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %93, i32 0, i32 0
  %95 = load %struct.TYPE_11__*, %struct.TYPE_11__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %95, i32 0, i32 1
  store i32 0, i32* %96, align 8
  br label %97

97:                                               ; preds = %92, %84
  br label %98

98:                                               ; preds = %18, %27, %33, %54, %65, %97, %75, %66
  ret void
}

declare dso_local %struct.TYPE_12__* @dwc2_hsotg_to_hcd(%struct.dwc2_hsotg*) #1

declare dso_local i64 @usb_hub_clear_tt_buffer(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
