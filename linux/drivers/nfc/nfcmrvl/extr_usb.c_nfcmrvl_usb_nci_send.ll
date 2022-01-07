; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_usb.c_nfcmrvl_usb_nci_send.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_usb.c_nfcmrvl_usb_nci_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfcmrvl_private = type { %struct.nfcmrvl_usb_drv_data* }
%struct.nfcmrvl_usb_drv_data = type { %struct.TYPE_6__*, i32, i32, i32, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32, i32 }
%struct.urb = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nfcmrvl_tx_complete = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"urb %p submission failed (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfcmrvl_private*, %struct.sk_buff*)* @nfcmrvl_usb_nci_send to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfcmrvl_usb_nci_send(%struct.nfcmrvl_private* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfcmrvl_private*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.nfcmrvl_usb_drv_data*, align 8
  %7 = alloca %struct.urb*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nfcmrvl_private* %0, %struct.nfcmrvl_private** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %10 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %4, align 8
  %11 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %10, i32 0, i32 0
  %12 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %11, align 8
  store %struct.nfcmrvl_usb_drv_data* %12, %struct.nfcmrvl_usb_drv_data** %6, align 8
  %13 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %6, align 8
  %14 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %13, i32 0, i32 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = icmp ne %struct.TYPE_5__* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENODEV, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %110

20:                                               ; preds = %2
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %21)
  store %struct.urb* %22, %struct.urb** %7, align 8
  %23 = load %struct.urb*, %struct.urb** %7, align 8
  %24 = icmp ne %struct.urb* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %110

28:                                               ; preds = %20
  %29 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %6, align 8
  %30 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %6, align 8
  %33 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %32, i32 0, i32 4
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @usb_sndbulkpipe(%struct.TYPE_6__* %31, i32 %36)
  store i32 %37, i32* %8, align 4
  %38 = load %struct.urb*, %struct.urb** %7, align 8
  %39 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %6, align 8
  %40 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %39, i32 0, i32 0
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %47 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @nfcmrvl_tx_complete, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %51 = call i32 @usb_fill_bulk_urb(%struct.urb* %38, %struct.TYPE_6__* %41, i32 %42, i32 %45, i32 %48, i32 %49, %struct.sk_buff* %50)
  %52 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %6, align 8
  %53 = call i32 @nfcmrvl_inc_tx(%struct.nfcmrvl_usb_drv_data* %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %28
  %57 = load %struct.urb*, %struct.urb** %7, align 8
  %58 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %6, align 8
  %59 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %58, i32 0, i32 3
  %60 = call i32 @usb_anchor_urb(%struct.urb* %57, i32* %59)
  %61 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %6, align 8
  %62 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %61, i32 0, i32 2
  %63 = call i32 @schedule_work(i32* %62)
  store i32 0, i32* %9, align 4
  br label %106

64:                                               ; preds = %28
  %65 = load %struct.urb*, %struct.urb** %7, align 8
  %66 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %6, align 8
  %67 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %66, i32 0, i32 1
  %68 = call i32 @usb_anchor_urb(%struct.urb* %65, i32* %67)
  %69 = load %struct.urb*, %struct.urb** %7, align 8
  %70 = load i32, i32* @GFP_ATOMIC, align 4
  %71 = call i32 @usb_submit_urb(%struct.urb* %69, i32 %70)
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %100

74:                                               ; preds = %64
  %75 = load i32, i32* %9, align 4
  %76 = load i32, i32* @EPERM, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp ne i32 %75, %77
  br i1 %78, label %79, label %93

79:                                               ; preds = %74
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* @ENODEV, align 4
  %82 = sub nsw i32 0, %81
  %83 = icmp ne i32 %80, %82
  br i1 %83, label %84, label %93

84:                                               ; preds = %79
  %85 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %6, align 8
  %86 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = load %struct.urb*, %struct.urb** %7, align 8
  %90 = load i32, i32* %9, align 4
  %91 = sub nsw i32 0, %90
  %92 = call i32 @nfc_err(i32* %88, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.urb* %89, i32 %91)
  br label %93

93:                                               ; preds = %84, %79, %74
  %94 = load %struct.urb*, %struct.urb** %7, align 8
  %95 = getelementptr inbounds %struct.urb, %struct.urb* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @kfree(i32 %96)
  %98 = load %struct.urb*, %struct.urb** %7, align 8
  %99 = call i32 @usb_unanchor_urb(%struct.urb* %98)
  br label %105

100:                                              ; preds = %64
  %101 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %6, align 8
  %102 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = call i32 @usb_mark_last_busy(%struct.TYPE_6__* %103)
  br label %105

105:                                              ; preds = %100, %93
  br label %106

106:                                              ; preds = %105, %56
  %107 = load %struct.urb*, %struct.urb** %7, align 8
  %108 = call i32 @usb_free_urb(%struct.urb* %107)
  %109 = load i32, i32* %9, align 4
  store i32 %109, i32* %3, align 4
  br label %110

110:                                              ; preds = %106, %25, %17
  %111 = load i32, i32* %3, align 4
  ret i32 %111
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @usb_fill_bulk_urb(%struct.urb*, %struct.TYPE_6__*, i32, i32, i32, i32, %struct.sk_buff*) #1

declare dso_local i32 @nfcmrvl_inc_tx(%struct.nfcmrvl_usb_drv_data*) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @nfc_err(i32*, i8*, %struct.urb*, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

declare dso_local i32 @usb_mark_last_busy(%struct.TYPE_6__*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
