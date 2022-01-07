; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_synchronize_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_synchronize_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ftdi = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.urb = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"could not get a buffer for flush sequence\0A\00", align 1
@ftdi_elan_write_bulk_callback = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"failed to submit urb containing the flush sequence\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ftdi*)* @ftdi_elan_synchronize_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftdi_elan_synchronize_flush(%struct.usb_ftdi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_ftdi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_ftdi* %0, %struct.usb_ftdi** %3, align 8
  store i32 257, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %9)
  store %struct.urb* %10, %struct.urb** %5, align 8
  %11 = load %struct.urb*, %struct.urb** %5, align 8
  %12 = icmp ne %struct.urb* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %97

16:                                               ; preds = %1
  %17 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %18 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = load %struct.urb*, %struct.urb** %5, align 8
  %23 = getelementptr inbounds %struct.urb, %struct.urb* %22, i32 0, i32 0
  %24 = call i8* @usb_alloc_coherent(%struct.TYPE_5__* %19, i32 %20, i32 %21, i32* %23)
  store i8* %24, i8** %6, align 8
  %25 = load i8*, i8** %6, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %37, label %27

27:                                               ; preds = %16
  %28 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %29 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %28, i32 0, i32 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.urb*, %struct.urb** %5, align 8
  %34 = call i32 @usb_free_urb(%struct.urb* %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %97

37:                                               ; preds = %16
  br label %38

38:                                               ; preds = %42, %37
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, -1
  store i32 %40, i32* %7, align 4
  %41 = icmp sgt i32 %39, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %38
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  store i8 85, i8* %47, align 1
  br label %38

48:                                               ; preds = %38
  %49 = load %struct.urb*, %struct.urb** %5, align 8
  %50 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %51 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %50, i32 0, i32 0
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %54 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %53, i32 0, i32 0
  %55 = load %struct.TYPE_5__*, %struct.TYPE_5__** %54, align 8
  %56 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %57 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @usb_sndbulkpipe(%struct.TYPE_5__* %55, i32 %58)
  %60 = load i8*, i8** %6, align 8
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @ftdi_elan_write_bulk_callback, align 4
  %63 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %64 = call i32 @usb_fill_bulk_urb(%struct.urb* %49, %struct.TYPE_5__* %52, i32 %59, i8* %60, i32 %61, i32 %62, %struct.usb_ftdi* %63)
  %65 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %66 = load %struct.urb*, %struct.urb** %5, align 8
  %67 = getelementptr inbounds %struct.urb, %struct.urb* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 4
  %70 = load %struct.urb*, %struct.urb** %5, align 8
  %71 = load i32, i32* @GFP_KERNEL, align 4
  %72 = call i32 @usb_submit_urb(%struct.urb* %70, i32 %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %94

75:                                               ; preds = %48
  %76 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %77 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %76, i32 0, i32 0
  %78 = load %struct.TYPE_5__*, %struct.TYPE_5__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 0
  %80 = call i32 @dev_err(i32* %79, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %81 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %82 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = load i8*, i8** %6, align 8
  %86 = load %struct.urb*, %struct.urb** %5, align 8
  %87 = getelementptr inbounds %struct.urb, %struct.urb* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @usb_free_coherent(%struct.TYPE_5__* %83, i32 %84, i8* %85, i32 %88)
  %90 = load %struct.urb*, %struct.urb** %5, align 8
  %91 = call i32 @usb_free_urb(%struct.urb* %90)
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %2, align 4
  br label %97

94:                                               ; preds = %48
  %95 = load %struct.urb*, %struct.urb** %5, align 8
  %96 = call i32 @usb_free_urb(%struct.urb* %95)
  store i32 0, i32* %2, align 4
  br label %97

97:                                               ; preds = %94, %75, %27, %13
  %98 = load i32, i32* %2, align 4
  ret i32 %98
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i8* @usb_alloc_coherent(%struct.TYPE_5__*, i32, i32, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, %struct.TYPE_5__*, i32, i8*, i32, i32, %struct.usb_ftdi*) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_free_coherent(%struct.TYPE_5__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
