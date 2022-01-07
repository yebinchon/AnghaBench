; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_usb.c_mt7601u_usb_submit_buf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/mediatek/mt7601u/extr_usb.c_mt7601u_usb_submit_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt7601u_dev = type { i32, i32*, i32* }
%struct.mt7601u_dma_buf = type { %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.usb_device = type { i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Error: submit URB dir:%d ep:%d failed:%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt7601u_usb_submit_buf(%struct.mt7601u_dev* %0, i32 %1, i32 %2, %struct.mt7601u_dma_buf* %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca %struct.mt7601u_dev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mt7601u_dma_buf*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.usb_device*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.mt7601u_dev* %0, %struct.mt7601u_dev** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store %struct.mt7601u_dma_buf* %3, %struct.mt7601u_dma_buf** %11, align 8
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %18 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %8, align 8
  %19 = call %struct.usb_device* @mt7601u_to_usb_dev(%struct.mt7601u_dev* %18)
  store %struct.usb_device* %19, %struct.usb_device** %15, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* @USB_DIR_IN, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %7
  %24 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %25 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %8, align 8
  %26 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %10, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @usb_rcvbulkpipe(%struct.usb_device* %24, i32 %31)
  store i32 %32, i32* %16, align 4
  br label %43

33:                                               ; preds = %7
  %34 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %35 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %8, align 8
  %36 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @usb_sndbulkpipe(%struct.usb_device* %34, i32 %41)
  store i32 %42, i32* %16, align 4
  br label %43

43:                                               ; preds = %33, %23
  %44 = load %struct.mt7601u_dma_buf*, %struct.mt7601u_dma_buf** %11, align 8
  %45 = getelementptr inbounds %struct.mt7601u_dma_buf, %struct.mt7601u_dma_buf* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %48 = load i32, i32* %16, align 4
  %49 = load %struct.mt7601u_dma_buf*, %struct.mt7601u_dma_buf** %11, align 8
  %50 = getelementptr inbounds %struct.mt7601u_dma_buf, %struct.mt7601u_dma_buf* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.mt7601u_dma_buf*, %struct.mt7601u_dma_buf** %11, align 8
  %53 = getelementptr inbounds %struct.mt7601u_dma_buf, %struct.mt7601u_dma_buf* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i8*, i8** %14, align 8
  %57 = call i32 @usb_fill_bulk_urb(%struct.TYPE_4__* %46, %struct.usb_device* %47, i32 %48, i32 %51, i32 %54, i32 %55, i8* %56)
  %58 = load %struct.mt7601u_dma_buf*, %struct.mt7601u_dma_buf** %11, align 8
  %59 = getelementptr inbounds %struct.mt7601u_dma_buf, %struct.mt7601u_dma_buf* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.mt7601u_dma_buf*, %struct.mt7601u_dma_buf** %11, align 8
  %62 = getelementptr inbounds %struct.mt7601u_dma_buf, %struct.mt7601u_dma_buf* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  store i32 %60, i32* %64, align 4
  %65 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %66 = load %struct.mt7601u_dma_buf*, %struct.mt7601u_dma_buf** %11, align 8
  %67 = getelementptr inbounds %struct.mt7601u_dma_buf, %struct.mt7601u_dma_buf* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = or i32 %70, %65
  store i32 %71, i32* %69, align 4
  %72 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %8, align 8
  %73 = load %struct.mt7601u_dma_buf*, %struct.mt7601u_dma_buf** %11, align 8
  %74 = getelementptr inbounds %struct.mt7601u_dma_buf, %struct.mt7601u_dma_buf* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = call i32 @trace_mt_submit_urb(%struct.mt7601u_dev* %72, %struct.TYPE_4__* %75)
  %77 = load %struct.mt7601u_dma_buf*, %struct.mt7601u_dma_buf** %11, align 8
  %78 = getelementptr inbounds %struct.mt7601u_dma_buf, %struct.mt7601u_dma_buf* %77, i32 0, i32 0
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @usb_submit_urb(%struct.TYPE_4__* %79, i32 %80)
  store i32 %81, i32* %17, align 4
  %82 = load i32, i32* %17, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %92

84:                                               ; preds = %43
  %85 = load %struct.mt7601u_dev*, %struct.mt7601u_dev** %8, align 8
  %86 = getelementptr inbounds %struct.mt7601u_dev, %struct.mt7601u_dev* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = load i32, i32* %9, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load i32, i32* %17, align 4
  %91 = call i32 @dev_err(i32 %87, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %88, i32 %89, i32 %90)
  br label %92

92:                                               ; preds = %84, %43
  %93 = load i32, i32* %17, align 4
  ret i32 %93
}

declare dso_local %struct.usb_device* @mt7601u_to_usb_dev(%struct.mt7601u_dev*) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.TYPE_4__*, %struct.usb_device*, i32, i32, i32, i32, i8*) #1

declare dso_local i32 @trace_mt_submit_urb(%struct.mt7601u_dev*, %struct.TYPE_4__*) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
