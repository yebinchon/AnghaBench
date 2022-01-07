; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_td_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_td_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.xhci_td = type { i32, i32, %struct.urb* }
%struct.urb = type { i64, i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.xhci_ring = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"URB req %u and actual %u transfer length mismatch\0A\00", align 1
@URB_SHORT_NOT_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [55 x i8] c"Giveback URB %p, len = %d, expected = %d, status = %d\0A\00", align 1
@PIPE_ISOCHRONOUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, %struct.xhci_td*, %struct.xhci_ring*, i32*)* @xhci_td_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_td_cleanup(%struct.xhci_hcd* %0, %struct.xhci_td* %1, %struct.xhci_ring* %2, i32* %3) #0 {
  %5 = alloca %struct.xhci_hcd*, align 8
  %6 = alloca %struct.xhci_td*, align 8
  %7 = alloca %struct.xhci_ring*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.urb*, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %5, align 8
  store %struct.xhci_td* %1, %struct.xhci_td** %6, align 8
  store %struct.xhci_ring* %2, %struct.xhci_ring** %7, align 8
  store i32* %3, i32** %8, align 8
  store %struct.urb* null, %struct.urb** %9, align 8
  %10 = load %struct.xhci_td*, %struct.xhci_td** %6, align 8
  %11 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %10, i32 0, i32 2
  %12 = load %struct.urb*, %struct.urb** %11, align 8
  store %struct.urb* %12, %struct.urb** %9, align 8
  %13 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %14 = load %struct.xhci_ring*, %struct.xhci_ring** %7, align 8
  %15 = load %struct.xhci_td*, %struct.xhci_td** %6, align 8
  %16 = call i32 @xhci_unmap_td_bounce_buffer(%struct.xhci_hcd* %13, %struct.xhci_ring* %14, %struct.xhci_td* %15)
  %17 = load %struct.urb*, %struct.urb** %9, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.urb*, %struct.urb** %9, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %19, %22
  br i1 %23, label %24, label %36

24:                                               ; preds = %4
  %25 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %26 = load %struct.urb*, %struct.urb** %9, align 8
  %27 = getelementptr inbounds %struct.urb, %struct.urb* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.urb*, %struct.urb** %9, align 8
  %30 = getelementptr inbounds %struct.urb, %struct.urb* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @xhci_warn(%struct.xhci_hcd* %25, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i64 %28, i64 %31)
  %33 = load %struct.urb*, %struct.urb** %9, align 8
  %34 = getelementptr inbounds %struct.urb, %struct.urb* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  %35 = load i32*, i32** %8, align 8
  store i32 0, i32* %35, align 4
  br label %36

36:                                               ; preds = %24, %4
  %37 = load %struct.xhci_td*, %struct.xhci_td** %6, align 8
  %38 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %37, i32 0, i32 1
  %39 = call i32 @list_del_init(i32* %38)
  %40 = load %struct.xhci_td*, %struct.xhci_td** %6, align 8
  %41 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %40, i32 0, i32 0
  %42 = call i32 @list_empty(i32* %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %48, label %44

44:                                               ; preds = %36
  %45 = load %struct.xhci_td*, %struct.xhci_td** %6, align 8
  %46 = getelementptr inbounds %struct.xhci_td, %struct.xhci_td* %45, i32 0, i32 0
  %47 = call i32 @list_del_init(i32* %46)
  br label %48

48:                                               ; preds = %44, %36
  %49 = load %struct.urb*, %struct.urb** %9, align 8
  %50 = call i32 @inc_td_cnt(%struct.urb* %49)
  %51 = load %struct.xhci_td*, %struct.xhci_td** %6, align 8
  %52 = call i64 @last_td_in_urb(%struct.xhci_td* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %107

54:                                               ; preds = %48
  %55 = load %struct.urb*, %struct.urb** %9, align 8
  %56 = getelementptr inbounds %struct.urb, %struct.urb* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.urb*, %struct.urb** %9, align 8
  %59 = getelementptr inbounds %struct.urb, %struct.urb* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = icmp ne i64 %57, %60
  br i1 %61, label %62, label %69

62:                                               ; preds = %54
  %63 = load %struct.urb*, %struct.urb** %9, align 8
  %64 = getelementptr inbounds %struct.urb, %struct.urb* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @URB_SHORT_NOT_OK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %80, label %69

69:                                               ; preds = %62, %54
  %70 = load i32*, i32** %8, align 8
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %69
  %74 = load %struct.urb*, %struct.urb** %9, align 8
  %75 = getelementptr inbounds %struct.urb, %struct.urb* %74, i32 0, i32 4
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  %78 = call i32 @usb_endpoint_xfer_isoc(i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %92, label %80

80:                                               ; preds = %73, %62
  %81 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %82 = load %struct.urb*, %struct.urb** %9, align 8
  %83 = load %struct.urb*, %struct.urb** %9, align 8
  %84 = getelementptr inbounds %struct.urb, %struct.urb* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.urb*, %struct.urb** %9, align 8
  %87 = getelementptr inbounds %struct.urb, %struct.urb* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = load i32*, i32** %8, align 8
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @xhci_dbg(%struct.xhci_hcd* %81, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0), %struct.urb* %82, i64 %85, i64 %88, i32 %90)
  br label %92

92:                                               ; preds = %80, %73, %69
  %93 = load %struct.urb*, %struct.urb** %9, align 8
  %94 = getelementptr inbounds %struct.urb, %struct.urb* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = call i64 @usb_pipetype(i32 %95)
  %97 = load i64, i64* @PIPE_ISOCHRONOUS, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %101

99:                                               ; preds = %92
  %100 = load i32*, i32** %8, align 8
  store i32 0, i32* %100, align 4
  br label %101

101:                                              ; preds = %99, %92
  %102 = load %struct.xhci_hcd*, %struct.xhci_hcd** %5, align 8
  %103 = load %struct.xhci_td*, %struct.xhci_td** %6, align 8
  %104 = load i32*, i32** %8, align 8
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @xhci_giveback_urb_in_irq(%struct.xhci_hcd* %102, %struct.xhci_td* %103, i32 %105)
  br label %107

107:                                              ; preds = %101, %48
  ret i32 0
}

declare dso_local i32 @xhci_unmap_td_bounce_buffer(%struct.xhci_hcd*, %struct.xhci_ring*, %struct.xhci_td*) #1

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*, i64, i64) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @inc_td_cnt(%struct.urb*) #1

declare dso_local i64 @last_td_in_urb(%struct.xhci_td*) #1

declare dso_local i32 @usb_endpoint_xfer_isoc(i32*) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, %struct.urb*, i64, i64, i32) #1

declare dso_local i64 @usb_pipetype(i32) #1

declare dso_local i32 @xhci_giveback_urb_in_irq(%struct.xhci_hcd*, %struct.xhci_td*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
