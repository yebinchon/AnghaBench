; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-hcd.c_ehci_endpoint_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_ehci-hcd.c_ehci_endpoint_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32 }
%struct.usb_host_endpoint = type { %struct.ehci_qh*, %struct.TYPE_4__ }
%struct.ehci_qh = type { i32, i32, %struct.TYPE_3__, i32, i32, i32, i32* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.ehci_hcd = type { i32 }
%struct.ehci_iso_stream = type { i32, i32, %struct.TYPE_3__, i32, i32, i32, i32* }

@QH_UNLINK_REQUESTED = common dso_local global i32 0, align 4
@QH_UNLINK_QUEUE_EMPTY = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_INT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"qh %p (#%02x) state %d%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"(has tds)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_hcd*, %struct.usb_host_endpoint*)* @ehci_endpoint_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehci_endpoint_disable(%struct.usb_hcd* %0, %struct.usb_host_endpoint* %1) #0 {
  %3 = alloca %struct.usb_hcd*, align 8
  %4 = alloca %struct.usb_host_endpoint*, align 8
  %5 = alloca %struct.ehci_hcd*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ehci_qh*, align 8
  %8 = alloca %struct.ehci_iso_stream*, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %3, align 8
  store %struct.usb_host_endpoint* %1, %struct.usb_host_endpoint** %4, align 8
  %9 = load %struct.usb_hcd*, %struct.usb_hcd** %3, align 8
  %10 = call %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd* %9)
  store %struct.ehci_hcd* %10, %struct.ehci_hcd** %5, align 8
  br label %11

11:                                               ; preds = %83, %2
  %12 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %13 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %12, i32 0, i32 0
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %17 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %16, i32 0, i32 0
  %18 = load %struct.ehci_qh*, %struct.ehci_qh** %17, align 8
  store %struct.ehci_qh* %18, %struct.ehci_qh** %7, align 8
  %19 = load %struct.ehci_qh*, %struct.ehci_qh** %7, align 8
  %20 = icmp ne %struct.ehci_qh* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %11
  br label %133

22:                                               ; preds = %11
  %23 = load %struct.ehci_qh*, %struct.ehci_qh** %7, align 8
  %24 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %23, i32 0, i32 6
  %25 = load i32*, i32** %24, align 8
  %26 = icmp eq i32* %25, null
  br i1 %26, label %27, label %45

27:                                               ; preds = %22
  %28 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %29 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %28, i32 0, i32 0
  %30 = load %struct.ehci_qh*, %struct.ehci_qh** %29, align 8
  %31 = bitcast %struct.ehci_qh* %30 to %struct.ehci_iso_stream*
  store %struct.ehci_iso_stream* %31, %struct.ehci_iso_stream** %8, align 8
  %32 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %8, align 8
  %33 = getelementptr inbounds %struct.ehci_iso_stream, %struct.ehci_iso_stream* %32, i32 0, i32 5
  %34 = call i32 @list_empty(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %27
  br label %83

37:                                               ; preds = %27
  %38 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %39 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %8, align 8
  %40 = bitcast %struct.ehci_iso_stream* %39 to %struct.ehci_qh*
  %41 = call i32 @reserve_release_iso_bandwidth(%struct.ehci_hcd* %38, %struct.ehci_qh* %40, i32 -1)
  %42 = load %struct.ehci_iso_stream*, %struct.ehci_iso_stream** %8, align 8
  %43 = bitcast %struct.ehci_iso_stream* %42 to %struct.ehci_qh*
  %44 = call i32 @kfree(%struct.ehci_qh* %43)
  br label %133

45:                                               ; preds = %22
  %46 = load i32, i32* @QH_UNLINK_REQUESTED, align 4
  %47 = load %struct.ehci_qh*, %struct.ehci_qh** %7, align 8
  %48 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = or i32 %49, %46
  store i32 %50, i32* %48, align 8
  %51 = load %struct.ehci_qh*, %struct.ehci_qh** %7, align 8
  %52 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %115 [
    i32 130, label %54
    i32 132, label %82
    i32 129, label %82
    i32 128, label %82
    i32 131, label %89
  ]

54:                                               ; preds = %45
  %55 = load %struct.ehci_qh*, %struct.ehci_qh** %7, align 8
  %56 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %55, i32 0, i32 1
  %57 = call i32 @list_empty(i32* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %54
  %60 = load i32, i32* @QH_UNLINK_QUEUE_EMPTY, align 4
  %61 = load %struct.ehci_qh*, %struct.ehci_qh** %7, align 8
  %62 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 8
  br label %67

65:                                               ; preds = %54
  %66 = call i32 @WARN_ON(i32 1)
  br label %67

67:                                               ; preds = %65, %59
  %68 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %69 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %68, i32 0, i32 1
  %70 = call i32 @usb_endpoint_type(%struct.TYPE_4__* %69)
  %71 = load i32, i32* @USB_ENDPOINT_XFER_INT, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %67
  %74 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %75 = load %struct.ehci_qh*, %struct.ehci_qh** %7, align 8
  %76 = call i32 @start_unlink_async(%struct.ehci_hcd* %74, %struct.ehci_qh* %75)
  br label %81

77:                                               ; preds = %67
  %78 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %79 = load %struct.ehci_qh*, %struct.ehci_qh** %7, align 8
  %80 = call i32 @start_unlink_intr(%struct.ehci_hcd* %78, %struct.ehci_qh* %79)
  br label %81

81:                                               ; preds = %77, %73
  br label %82

82:                                               ; preds = %45, %45, %45, %81
  br label %83

83:                                               ; preds = %94, %82, %36
  %84 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %85 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %84, i32 0, i32 0
  %86 = load i64, i64* %6, align 8
  %87 = call i32 @spin_unlock_irqrestore(i32* %85, i64 %86)
  %88 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %11

89:                                               ; preds = %45
  %90 = load %struct.ehci_qh*, %struct.ehci_qh** %7, align 8
  %91 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %90, i32 0, i32 3
  %92 = load i32, i32* %91, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %89
  br label %83

95:                                               ; preds = %89
  %96 = load %struct.ehci_qh*, %struct.ehci_qh** %7, align 8
  %97 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %96, i32 0, i32 1
  %98 = call i32 @list_empty(i32* %97)
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %114

100:                                              ; preds = %95
  %101 = load %struct.ehci_qh*, %struct.ehci_qh** %7, align 8
  %102 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %110

106:                                              ; preds = %100
  %107 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %108 = load %struct.ehci_qh*, %struct.ehci_qh** %7, align 8
  %109 = call i32 @reserve_release_intr_bandwidth(%struct.ehci_hcd* %107, %struct.ehci_qh* %108, i32 -1)
  br label %110

110:                                              ; preds = %106, %100
  %111 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %112 = load %struct.ehci_qh*, %struct.ehci_qh** %7, align 8
  %113 = call i32 @qh_destroy(%struct.ehci_hcd* %111, %struct.ehci_qh* %112)
  br label %132

114:                                              ; preds = %95
  br label %115

115:                                              ; preds = %45, %114
  %116 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %117 = load %struct.ehci_qh*, %struct.ehci_qh** %7, align 8
  %118 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %119 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.ehci_qh*, %struct.ehci_qh** %7, align 8
  %123 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.ehci_qh*, %struct.ehci_qh** %7, align 8
  %126 = getelementptr inbounds %struct.ehci_qh, %struct.ehci_qh* %125, i32 0, i32 1
  %127 = call i32 @list_empty(i32* %126)
  %128 = icmp ne i32 %127, 0
  %129 = zext i1 %128 to i64
  %130 = select i1 %128, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0)
  %131 = call i32 @ehci_err(%struct.ehci_hcd* %116, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.ehci_qh* %117, i32 %121, i32 %124, i8* %130)
  br label %132

132:                                              ; preds = %115, %110
  br label %133

133:                                              ; preds = %132, %37, %21
  %134 = load %struct.usb_host_endpoint*, %struct.usb_host_endpoint** %4, align 8
  %135 = getelementptr inbounds %struct.usb_host_endpoint, %struct.usb_host_endpoint* %134, i32 0, i32 0
  store %struct.ehci_qh* null, %struct.ehci_qh** %135, align 8
  %136 = load %struct.ehci_hcd*, %struct.ehci_hcd** %5, align 8
  %137 = getelementptr inbounds %struct.ehci_hcd, %struct.ehci_hcd* %136, i32 0, i32 0
  %138 = load i64, i64* %6, align 8
  %139 = call i32 @spin_unlock_irqrestore(i32* %137, i64 %138)
  ret void
}

declare dso_local %struct.ehci_hcd* @hcd_to_ehci(%struct.usb_hcd*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @reserve_release_iso_bandwidth(%struct.ehci_hcd*, %struct.ehci_qh*, i32) #1

declare dso_local i32 @kfree(%struct.ehci_qh*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @usb_endpoint_type(%struct.TYPE_4__*) #1

declare dso_local i32 @start_unlink_async(%struct.ehci_hcd*, %struct.ehci_qh*) #1

declare dso_local i32 @start_unlink_intr(%struct.ehci_hcd*, %struct.ehci_qh*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i32 @reserve_release_intr_bandwidth(%struct.ehci_hcd*, %struct.ehci_qh*, i32) #1

declare dso_local i32 @qh_destroy(%struct.ehci_hcd*, %struct.ehci_qh*) #1

declare dso_local i32 @ehci_err(%struct.ehci_hcd*, i8*, %struct.ehci_qh*, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
