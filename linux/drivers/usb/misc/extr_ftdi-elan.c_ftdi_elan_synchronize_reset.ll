; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_synchronize_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_synchronize_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ftdi = type { %struct.TYPE_5__*, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.urb = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"could not get a buffer for the reset sequence\0A\00", align 1
@ftdi_elan_write_bulk_callback = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [52 x i8] c"failed to submit urb containing the reset sequence\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ftdi*)* @ftdi_elan_synchronize_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftdi_elan_synchronize_reset(%struct.usb_ftdi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_ftdi*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_ftdi* %0, %struct.usb_ftdi** %3, align 8
  store i32 4, i32* %7, align 4
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
  br label %106

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
  %32 = call i32 @dev_err(i32* %31, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %33 = load %struct.urb*, %struct.urb** %5, align 8
  %34 = call i32 @usb_free_urb(%struct.urb* %33)
  %35 = load i32, i32* @ENOMEM, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %2, align 4
  br label %106

37:                                               ; preds = %16
  %38 = load i8*, i8** %6, align 8
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8, i8* %38, i64 %41
  store i8 85, i8* %42, align 1
  %43 = load i8*, i8** %6, align 8
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  %46 = sext i32 %44 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  store i8 -86, i8* %47, align 1
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i8, i8* %48, i64 %51
  store i8 90, i8* %52, align 1
  %53 = load i8*, i8** %6, align 8
  %54 = load i32, i32* %8, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %8, align 4
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i8, i8* %53, i64 %56
  store i8 -91, i8* %57, align 1
  %58 = load %struct.urb*, %struct.urb** %5, align 8
  %59 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %60 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %59, i32 0, i32 0
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %63 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %62, i32 0, i32 0
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %63, align 8
  %65 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %66 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @usb_sndbulkpipe(%struct.TYPE_5__* %64, i32 %67)
  %69 = load i8*, i8** %6, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @ftdi_elan_write_bulk_callback, align 4
  %72 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %73 = call i32 @usb_fill_bulk_urb(%struct.urb* %58, %struct.TYPE_5__* %61, i32 %68, i8* %69, i32 %70, i32 %71, %struct.usb_ftdi* %72)
  %74 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %75 = load %struct.urb*, %struct.urb** %5, align 8
  %76 = getelementptr inbounds %struct.urb, %struct.urb* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = or i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load %struct.urb*, %struct.urb** %5, align 8
  %80 = load i32, i32* @GFP_KERNEL, align 4
  %81 = call i32 @usb_submit_urb(%struct.urb* %79, i32 %80)
  store i32 %81, i32* %4, align 4
  %82 = load i32, i32* %4, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %103

84:                                               ; preds = %37
  %85 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %86 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %85, i32 0, i32 0
  %87 = load %struct.TYPE_5__*, %struct.TYPE_5__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = call i32 @dev_err(i32* %88, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0))
  %90 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %91 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %90, i32 0, i32 0
  %92 = load %struct.TYPE_5__*, %struct.TYPE_5__** %91, align 8
  %93 = load i32, i32* %8, align 4
  %94 = load i8*, i8** %6, align 8
  %95 = load %struct.urb*, %struct.urb** %5, align 8
  %96 = getelementptr inbounds %struct.urb, %struct.urb* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 @usb_free_coherent(%struct.TYPE_5__* %92, i32 %93, i8* %94, i32 %97)
  %99 = load %struct.urb*, %struct.urb** %5, align 8
  %100 = call i32 @usb_free_urb(%struct.urb* %99)
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %106

103:                                              ; preds = %37
  %104 = load %struct.urb*, %struct.urb** %5, align 8
  %105 = call i32 @usb_free_urb(%struct.urb* %104)
  store i32 0, i32* %2, align 4
  br label %106

106:                                              ; preds = %103, %84, %27, %13
  %107 = load i32, i32* %2, align 4
  ret i32 %107
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
