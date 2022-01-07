; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_usb.c_nfcmrvl_submit_bulk_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_usb.c_nfcmrvl_submit_bulk_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfcmrvl_usb_drv_data = type { %struct.TYPE_6__*, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.urb = type { i32 }

@NFCMRVL_NCI_MAX_EVENT_SIZE = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nfcmrvl_bulk_complete = common dso_local global i32 0, align 4
@URB_FREE_BUFFER = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"urb %p submission failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfcmrvl_usb_drv_data*, i32)* @nfcmrvl_submit_bulk_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfcmrvl_submit_bulk_urb(%struct.nfcmrvl_usb_drv_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfcmrvl_usb_drv_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.nfcmrvl_usb_drv_data* %0, %struct.nfcmrvl_usb_drv_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* @NFCMRVL_NCI_MAX_EVENT_SIZE, align 4
  store i32 %11, i32* %10, align 4
  %12 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %4, align 8
  %13 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %12, i32 0, i32 2
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENODEV, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %102

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %20)
  store %struct.urb* %21, %struct.urb** %6, align 8
  %22 = load %struct.urb*, %struct.urb** %6, align 8
  %23 = icmp ne %struct.urb* %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %3, align 4
  br label %102

27:                                               ; preds = %19
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %5, align 4
  %30 = call i8* @kmalloc(i32 %28, i32 %29)
  store i8* %30, i8** %7, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = icmp ne i8* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load %struct.urb*, %struct.urb** %6, align 8
  %35 = call i32 @usb_free_urb(%struct.urb* %34)
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %102

38:                                               ; preds = %27
  %39 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %4, align 8
  %40 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %4, align 8
  %43 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %42, i32 0, i32 2
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @usb_rcvbulkpipe(%struct.TYPE_6__* %41, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load %struct.urb*, %struct.urb** %6, align 8
  %49 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %4, align 8
  %50 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %49, i32 0, i32 0
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = load i8*, i8** %7, align 8
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* @nfcmrvl_bulk_complete, align 4
  %56 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %4, align 8
  %57 = call i32 @usb_fill_bulk_urb(%struct.urb* %48, %struct.TYPE_6__* %51, i32 %52, i8* %53, i32 %54, i32 %55, %struct.nfcmrvl_usb_drv_data* %56)
  %58 = load i32, i32* @URB_FREE_BUFFER, align 4
  %59 = load %struct.urb*, %struct.urb** %6, align 8
  %60 = getelementptr inbounds %struct.urb, %struct.urb* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %4, align 8
  %64 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %63, i32 0, i32 0
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %64, align 8
  %66 = call i32 @usb_mark_last_busy(%struct.TYPE_6__* %65)
  %67 = load %struct.urb*, %struct.urb** %6, align 8
  %68 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %4, align 8
  %69 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %68, i32 0, i32 1
  %70 = call i32 @usb_anchor_urb(%struct.urb* %67, i32* %69)
  %71 = load %struct.urb*, %struct.urb** %6, align 8
  %72 = load i32, i32* %5, align 4
  %73 = call i32 @usb_submit_urb(%struct.urb* %71, i32 %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %98

76:                                               ; preds = %38
  %77 = load i32, i32* %9, align 4
  %78 = load i32, i32* @EPERM, align 4
  %79 = sub nsw i32 0, %78
  %80 = icmp ne i32 %77, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %76
  %82 = load i32, i32* %9, align 4
  %83 = load i32, i32* @ENODEV, align 4
  %84 = sub nsw i32 0, %83
  %85 = icmp ne i32 %82, %84
  br i1 %85, label %86, label %95

86:                                               ; preds = %81
  %87 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %4, align 8
  %88 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %87, i32 0, i32 0
  %89 = load %struct.TYPE_6__*, %struct.TYPE_6__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  %91 = load %struct.urb*, %struct.urb** %6, align 8
  %92 = load i32, i32* %9, align 4
  %93 = sub nsw i32 0, %92
  %94 = call i32 @nfc_err(i32* %90, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.urb* %91, i32 %93)
  br label %95

95:                                               ; preds = %86, %81, %76
  %96 = load %struct.urb*, %struct.urb** %6, align 8
  %97 = call i32 @usb_unanchor_urb(%struct.urb* %96)
  br label %98

98:                                               ; preds = %95, %38
  %99 = load %struct.urb*, %struct.urb** %6, align 8
  %100 = call i32 @usb_free_urb(%struct.urb* %99)
  %101 = load i32, i32* %9, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %98, %33, %24, %16
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, %struct.TYPE_6__*, i32, i8*, i32, i32, %struct.nfcmrvl_usb_drv_data*) #1

declare dso_local i32 @usb_mark_last_busy(%struct.TYPE_6__*) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @nfc_err(i32*, i8*, %struct.urb*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
