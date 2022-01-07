; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_align_td.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_xhci-ring.c_xhci_align_td.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xhci_hcd = type { i32 }
%struct.urb = type { i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.xhci_segment = type { i32, i32, i8*, i32 }
%struct.device = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.device* }

@.str = private unnamed_addr constant [33 x i8] c"Unaligned %d bytes, buff len %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"split align, new buff len %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [50 x i8] c"WARN Wrong bounce buffer write length: %zu != %d\0A\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@DMA_FROM_DEVICE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"Failed mapping bounce buffer, not aligning\0A\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"Bounce align, new buff len %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xhci_hcd*, %struct.urb*, i32, i32*, %struct.xhci_segment*)* @xhci_align_td to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xhci_align_td(%struct.xhci_hcd* %0, %struct.urb* %1, i32 %2, i32* %3, %struct.xhci_segment* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.xhci_hcd*, align 8
  %8 = alloca %struct.urb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.xhci_segment*, align 8
  %12 = alloca %struct.device*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i64, align 8
  store %struct.xhci_hcd* %0, %struct.xhci_hcd** %7, align 8
  store %struct.urb* %1, %struct.urb** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store %struct.xhci_segment* %4, %struct.xhci_segment** %11, align 8
  %17 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %18 = call %struct.TYPE_6__* @xhci_to_hcd(%struct.xhci_hcd* %17)
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.device*, %struct.device** %20, align 8
  store %struct.device* %21, %struct.device** %12, align 8
  %22 = load %struct.urb*, %struct.urb** %8, align 8
  %23 = getelementptr inbounds %struct.urb, %struct.urb* %22, i32 0, i32 3
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = call i32 @usb_endpoint_maxp(i32* %25)
  store i32 %26, i32* %14, align 4
  %27 = load i32, i32* %9, align 4
  %28 = load i32*, i32** %10, align 8
  %29 = load i32, i32* %28, align 4
  %30 = add i32 %27, %29
  %31 = load i32, i32* %14, align 4
  %32 = urem i32 %30, %31
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %143

36:                                               ; preds = %5
  %37 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = load i32, i32* %39, align 4
  %41 = call i32 (%struct.xhci_hcd*, i8*, i32, ...) @xhci_dbg(%struct.xhci_hcd* %37, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %38, i32 %40)
  %42 = load i32*, i32** %10, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp ugt i32 %43, %44
  br i1 %45, label %46, label %55

46:                                               ; preds = %36
  %47 = load i32, i32* %13, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = load i32, i32* %48, align 4
  %50 = sub i32 %49, %47
  store i32 %50, i32* %48, align 4
  %51 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %52 = load i32*, i32** %10, align 8
  %53 = load i32, i32* %52, align 4
  %54 = call i32 (%struct.xhci_hcd*, i8*, i32, ...) @xhci_dbg(%struct.xhci_hcd* %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %53)
  store i32 0, i32* %6, align 4
  br label %143

55:                                               ; preds = %36
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %14, align 4
  %59 = urem i32 %57, %58
  %60 = sub i32 %56, %59
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = load %struct.urb*, %struct.urb** %8, align 8
  %63 = getelementptr inbounds %struct.urb, %struct.urb* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sub i32 %64, %65
  %67 = icmp ugt i32 %61, %66
  br i1 %67, label %68, label %74

68:                                               ; preds = %55
  %69 = load %struct.urb*, %struct.urb** %8, align 8
  %70 = getelementptr inbounds %struct.urb, %struct.urb* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* %9, align 4
  %73 = sub i32 %71, %72
  store i32 %73, i32* %15, align 4
  br label %74

74:                                               ; preds = %68, %55
  %75 = load %struct.urb*, %struct.urb** %8, align 8
  %76 = call i64 @usb_urb_dir_out(%struct.urb* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %110

78:                                               ; preds = %74
  %79 = load %struct.urb*, %struct.urb** %8, align 8
  %80 = getelementptr inbounds %struct.urb, %struct.urb* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.urb*, %struct.urb** %8, align 8
  %83 = getelementptr inbounds %struct.urb, %struct.urb* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.xhci_segment*, %struct.xhci_segment** %11, align 8
  %86 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* %9, align 4
  %90 = call i64 @sg_pcopy_to_buffer(i32 %81, i32 %84, i32 %87, i32 %88, i32 %89)
  store i64 %90, i64* %16, align 8
  %91 = load i64, i64* %16, align 8
  %92 = load i32, i32* %15, align 4
  %93 = zext i32 %92 to i64
  %94 = icmp ne i64 %91, %93
  br i1 %94, label %95, label %100

95:                                               ; preds = %78
  %96 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %97 = load i64, i64* %16, align 8
  %98 = load i32, i32* %15, align 4
  %99 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_warn(%struct.xhci_hcd* %96, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %97, i32 %98)
  br label %100

100:                                              ; preds = %95, %78
  %101 = load %struct.device*, %struct.device** %12, align 8
  %102 = load %struct.xhci_segment*, %struct.xhci_segment** %11, align 8
  %103 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load i32, i32* %14, align 4
  %106 = load i32, i32* @DMA_TO_DEVICE, align 4
  %107 = call i8* @dma_map_single(%struct.device* %101, i32 %104, i32 %105, i32 %106)
  %108 = load %struct.xhci_segment*, %struct.xhci_segment** %11, align 8
  %109 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %108, i32 0, i32 2
  store i8* %107, i8** %109, align 8
  br label %120

110:                                              ; preds = %74
  %111 = load %struct.device*, %struct.device** %12, align 8
  %112 = load %struct.xhci_segment*, %struct.xhci_segment** %11, align 8
  %113 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %112, i32 0, i32 3
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* @DMA_FROM_DEVICE, align 4
  %117 = call i8* @dma_map_single(%struct.device* %111, i32 %114, i32 %115, i32 %116)
  %118 = load %struct.xhci_segment*, %struct.xhci_segment** %11, align 8
  %119 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %118, i32 0, i32 2
  store i8* %117, i8** %119, align 8
  br label %120

120:                                              ; preds = %110, %100
  %121 = load %struct.device*, %struct.device** %12, align 8
  %122 = load %struct.xhci_segment*, %struct.xhci_segment** %11, align 8
  %123 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %122, i32 0, i32 2
  %124 = load i8*, i8** %123, align 8
  %125 = call i64 @dma_mapping_error(%struct.device* %121, i8* %124)
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %130

127:                                              ; preds = %120
  %128 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %129 = call i32 (%struct.xhci_hcd*, i8*, ...) @xhci_warn(%struct.xhci_hcd* %128, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  store i32 0, i32* %6, align 4
  br label %143

130:                                              ; preds = %120
  %131 = load i32, i32* %15, align 4
  %132 = load i32*, i32** %10, align 8
  store i32 %131, i32* %132, align 4
  %133 = load i32, i32* %15, align 4
  %134 = load %struct.xhci_segment*, %struct.xhci_segment** %11, align 8
  %135 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %134, i32 0, i32 0
  store i32 %133, i32* %135, align 8
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.xhci_segment*, %struct.xhci_segment** %11, align 8
  %138 = getelementptr inbounds %struct.xhci_segment, %struct.xhci_segment* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 4
  %139 = load %struct.xhci_hcd*, %struct.xhci_hcd** %7, align 8
  %140 = load i32*, i32** %10, align 8
  %141 = load i32, i32* %140, align 4
  %142 = call i32 (%struct.xhci_hcd*, i8*, i32, ...) @xhci_dbg(%struct.xhci_hcd* %139, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i32 %141)
  store i32 1, i32* %6, align 4
  br label %143

143:                                              ; preds = %130, %127, %46, %35
  %144 = load i32, i32* %6, align 4
  ret i32 %144
}

declare dso_local %struct.TYPE_6__* @xhci_to_hcd(%struct.xhci_hcd*) #1

declare dso_local i32 @usb_endpoint_maxp(i32*) #1

declare dso_local i32 @xhci_dbg(%struct.xhci_hcd*, i8*, i32, ...) #1

declare dso_local i64 @usb_urb_dir_out(%struct.urb*) #1

declare dso_local i64 @sg_pcopy_to_buffer(i32, i32, i32, i32, i32) #1

declare dso_local i32 @xhci_warn(%struct.xhci_hcd*, i8*, ...) #1

declare dso_local i8* @dma_map_single(%struct.device*, i32, i32, i32) #1

declare dso_local i64 @dma_mapping_error(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
