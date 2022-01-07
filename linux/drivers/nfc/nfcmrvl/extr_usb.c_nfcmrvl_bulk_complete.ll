; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_usb.c_nfcmrvl_bulk_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_usb.c_nfcmrvl_bulk_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, i32, i32, %struct.nfcmrvl_usb_drv_data* }
%struct.nfcmrvl_usb_drv_data = type { %struct.TYPE_3__*, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"urb %p status %d count %d\0A\00", align 1
@NFCMRVL_NCI_RUNNING = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"failed to alloc mem\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"corrupted Rx packet\0A\00", align 1
@NFCMRVL_USB_BULK_RUNNING = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"urb %p failed to resubmit (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urb*)* @nfcmrvl_bulk_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfcmrvl_bulk_complete(%struct.urb* %0) #0 {
  %2 = alloca %struct.urb*, align 8
  %3 = alloca %struct.nfcmrvl_usb_drv_data*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i32, align 4
  store %struct.urb* %0, %struct.urb** %2, align 8
  %6 = load %struct.urb*, %struct.urb** %2, align 8
  %7 = getelementptr inbounds %struct.urb, %struct.urb* %6, i32 0, i32 3
  %8 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %7, align 8
  store %struct.nfcmrvl_usb_drv_data* %8, %struct.nfcmrvl_usb_drv_data** %3, align 8
  %9 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %3, align 8
  %10 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.urb*, %struct.urb** %2, align 8
  %14 = load %struct.urb*, %struct.urb** %2, align 8
  %15 = getelementptr inbounds %struct.urb, %struct.urb* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.urb*, %struct.urb** %2, align 8
  %18 = getelementptr inbounds %struct.urb, %struct.urb* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @dev_dbg(i32* %12, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), %struct.urb* %13, i32 %16, i32 %19)
  %21 = load i32, i32* @NFCMRVL_NCI_RUNNING, align 4
  %22 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %3, align 8
  %23 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %22, i32 0, i32 2
  %24 = call i32 @test_bit(i32 %21, i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %1
  br label %117

27:                                               ; preds = %1
  %28 = load %struct.urb*, %struct.urb** %2, align 8
  %29 = getelementptr inbounds %struct.urb, %struct.urb* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %74, label %32

32:                                               ; preds = %27
  %33 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %3, align 8
  %34 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %33, i32 0, i32 3
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.urb*, %struct.urb** %2, align 8
  %39 = getelementptr inbounds %struct.urb, %struct.urb* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @GFP_ATOMIC, align 4
  %42 = call %struct.sk_buff* @nci_skb_alloc(i32 %37, i32 %40, i32 %41)
  store %struct.sk_buff* %42, %struct.sk_buff** %4, align 8
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = icmp ne %struct.sk_buff* %43, null
  br i1 %44, label %51, label %45

45:                                               ; preds = %32
  %46 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %3, align 8
  %47 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %46, i32 0, i32 0
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = call i32 (i32*, i8*, ...) @nfc_err(i32* %49, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %73

51:                                               ; preds = %32
  %52 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %53 = load %struct.urb*, %struct.urb** %2, align 8
  %54 = getelementptr inbounds %struct.urb, %struct.urb* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.urb*, %struct.urb** %2, align 8
  %57 = getelementptr inbounds %struct.urb, %struct.urb* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @skb_put_data(%struct.sk_buff* %52, i32 %55, i32 %58)
  %60 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %3, align 8
  %61 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %60, i32 0, i32 3
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %64 = call i64 @nfcmrvl_nci_recv_frame(%struct.TYPE_4__* %62, %struct.sk_buff* %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %51
  %67 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %3, align 8
  %68 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %67, i32 0, i32 0
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = call i32 (i32*, i8*, ...) @nfc_err(i32* %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  br label %72

72:                                               ; preds = %66, %51
  br label %73

73:                                               ; preds = %72, %45
  br label %74

74:                                               ; preds = %73, %27
  %75 = load i32, i32* @NFCMRVL_USB_BULK_RUNNING, align 4
  %76 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %3, align 8
  %77 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %76, i32 0, i32 2
  %78 = call i32 @test_bit(i32 %75, i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %74
  br label %117

81:                                               ; preds = %74
  %82 = load %struct.urb*, %struct.urb** %2, align 8
  %83 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %3, align 8
  %84 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %83, i32 0, i32 1
  %85 = call i32 @usb_anchor_urb(%struct.urb* %82, i32* %84)
  %86 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %3, align 8
  %87 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %86, i32 0, i32 0
  %88 = load %struct.TYPE_3__*, %struct.TYPE_3__** %87, align 8
  %89 = call i32 @usb_mark_last_busy(%struct.TYPE_3__* %88)
  %90 = load %struct.urb*, %struct.urb** %2, align 8
  %91 = load i32, i32* @GFP_ATOMIC, align 4
  %92 = call i32 @usb_submit_urb(%struct.urb* %90, i32 %91)
  store i32 %92, i32* %5, align 4
  %93 = load i32, i32* %5, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %117

95:                                               ; preds = %81
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @EPERM, align 4
  %98 = sub nsw i32 0, %97
  %99 = icmp ne i32 %96, %98
  br i1 %99, label %100, label %114

100:                                              ; preds = %95
  %101 = load i32, i32* %5, align 4
  %102 = load i32, i32* @ENODEV, align 4
  %103 = sub nsw i32 0, %102
  %104 = icmp ne i32 %101, %103
  br i1 %104, label %105, label %114

105:                                              ; preds = %100
  %106 = load %struct.nfcmrvl_usb_drv_data*, %struct.nfcmrvl_usb_drv_data** %3, align 8
  %107 = getelementptr inbounds %struct.nfcmrvl_usb_drv_data, %struct.nfcmrvl_usb_drv_data* %106, i32 0, i32 0
  %108 = load %struct.TYPE_3__*, %struct.TYPE_3__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  %110 = load %struct.urb*, %struct.urb** %2, align 8
  %111 = load i32, i32* %5, align 4
  %112 = sub nsw i32 0, %111
  %113 = call i32 (i32*, i8*, ...) @nfc_err(i32* %109, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0), %struct.urb* %110, i32 %112)
  br label %114

114:                                              ; preds = %105, %100, %95
  %115 = load %struct.urb*, %struct.urb** %2, align 8
  %116 = call i32 @usb_unanchor_urb(%struct.urb* %115)
  br label %117

117:                                              ; preds = %26, %80, %114, %81
  ret void
}

declare dso_local i32 @dev_dbg(i32*, i8*, %struct.urb*, i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.sk_buff* @nci_skb_alloc(i32, i32, i32) #1

declare dso_local i32 @nfc_err(i32*, i8*, ...) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nfcmrvl_nci_recv_frame(%struct.TYPE_4__*, %struct.sk_buff*) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_mark_last_busy(%struct.TYPE_3__*) #1

declare dso_local i32 @usb_submit_urb(%struct.urb*, i32) #1

declare dso_local i32 @usb_unanchor_urb(%struct.urb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
