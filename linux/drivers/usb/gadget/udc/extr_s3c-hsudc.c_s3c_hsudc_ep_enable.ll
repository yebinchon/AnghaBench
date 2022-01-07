; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c-hsudc.c_s3c_hsudc_ep_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c-hsudc.c_s3c_hsudc_ep_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { i64 }
%struct.usb_endpoint_descriptor = type { i64, i64, i64, i32 }
%struct.s3c_hsudc_ep = type { i64, %struct.TYPE_4__, i64, i64, %struct.s3c_hsudc* }
%struct.TYPE_4__ = type { i64, %struct.usb_endpoint_descriptor* }
%struct.s3c_hsudc = type { i32, i64, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i64 }

@ep0name = common dso_local global i64 0, align 8
@USB_DT_ENDPOINT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_BULK = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@USB_SPEED_UNKNOWN = common dso_local global i64 0, align 8
@ESHUTDOWN = common dso_local global i32 0, align 4
@S3C_ECR_IEMS = common dso_local global i32 0, align 4
@S3C_ECR_DUEN = common dso_local global i32 0, align 4
@S3C_ECR = common dso_local global i64 0, align 8
@S3C_EIER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*, %struct.usb_endpoint_descriptor*)* @s3c_hsudc_ep_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3c_hsudc_ep_enable(%struct.usb_ep* %0, %struct.usb_endpoint_descriptor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_ep*, align 8
  %5 = alloca %struct.usb_endpoint_descriptor*, align 8
  %6 = alloca %struct.s3c_hsudc_ep*, align 8
  %7 = alloca %struct.s3c_hsudc*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.usb_ep* %0, %struct.usb_ep** %4, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %5, align 8
  store i32 0, i32* %9, align 4
  %10 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %11 = call %struct.s3c_hsudc_ep* @our_ep(%struct.usb_ep* %10)
  store %struct.s3c_hsudc_ep* %11, %struct.s3c_hsudc_ep** %6, align 8
  %12 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %13 = icmp ne %struct.usb_ep* %12, null
  br i1 %13, label %14, label %43

14:                                               ; preds = %2
  %15 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %16 = icmp ne %struct.usb_endpoint_descriptor* %15, null
  br i1 %16, label %17, label %43

17:                                               ; preds = %14
  %18 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %19 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @ep0name, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %43, label %23

23:                                               ; preds = %17
  %24 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %25 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @USB_DT_ENDPOINT, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %43, label %29

29:                                               ; preds = %23
  %30 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %6, align 8
  %31 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %34 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %32, %35
  br i1 %36, label %43, label %37

37:                                               ; preds = %29
  %38 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %6, align 8
  %39 = call i64 @ep_maxpacket(%struct.s3c_hsudc_ep* %38)
  %40 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %41 = call i64 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %40)
  %42 = icmp slt i64 %39, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %37, %29, %23, %17, %14, %2
  %44 = load i32, i32* @EINVAL, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %3, align 4
  br label %139

46:                                               ; preds = %37
  %47 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %48 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @USB_ENDPOINT_XFER_BULK, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %54 = call i64 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %53)
  %55 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %6, align 8
  %56 = call i64 @ep_maxpacket(%struct.s3c_hsudc_ep* %55)
  %57 = icmp ne i64 %54, %56
  br i1 %57, label %63, label %58

58:                                               ; preds = %52, %46
  %59 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %60 = getelementptr inbounds %struct.usb_endpoint_descriptor, %struct.usb_endpoint_descriptor* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %66, label %63

63:                                               ; preds = %58, %52
  %64 = load i32, i32* @ERANGE, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %139

66:                                               ; preds = %58
  %67 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %6, align 8
  %68 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %67, i32 0, i32 4
  %69 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %68, align 8
  store %struct.s3c_hsudc* %69, %struct.s3c_hsudc** %7, align 8
  %70 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %7, align 8
  %71 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %66
  %75 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %7, align 8
  %76 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %75, i32 0, i32 2
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @USB_SPEED_UNKNOWN, align 8
  %80 = icmp eq i64 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %74, %66
  %82 = load i32, i32* @ESHUTDOWN, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %3, align 4
  br label %139

84:                                               ; preds = %74
  %85 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %7, align 8
  %86 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %85, i32 0, i32 0
  %87 = load i64, i64* %8, align 8
  %88 = call i32 @spin_lock_irqsave(i32* %86, i64 %87)
  %89 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %7, align 8
  %90 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %6, align 8
  %91 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = call i32 @set_index(%struct.s3c_hsudc* %89, i64 %92)
  %94 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %95 = call i64 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %84
  %98 = load i32, i32* @S3C_ECR_IEMS, align 4
  br label %101

99:                                               ; preds = %84
  %100 = load i32, i32* @S3C_ECR_DUEN, align 4
  br label %101

101:                                              ; preds = %99, %97
  %102 = phi i32 [ %98, %97 ], [ %100, %99 ]
  %103 = load i32, i32* %9, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %7, align 8
  %107 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @S3C_ECR, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @writel(i32 %105, i64 %110)
  %112 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %6, align 8
  %113 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %112, i32 0, i32 2
  store i64 0, i64* %113, align 8
  %114 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %6, align 8
  %115 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %114, i32 0, i32 3
  store i64 0, i64* %115, align 8
  %116 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %117 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %6, align 8
  %118 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  store %struct.usb_endpoint_descriptor* %116, %struct.usb_endpoint_descriptor** %119, align 8
  %120 = load %struct.usb_endpoint_descriptor*, %struct.usb_endpoint_descriptor** %5, align 8
  %121 = call i64 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor* %120)
  %122 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %6, align 8
  %123 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  store i64 %121, i64* %124, align 8
  %125 = load %struct.usb_ep*, %struct.usb_ep** %4, align 8
  %126 = call i32 @s3c_hsudc_set_halt(%struct.usb_ep* %125, i32 0)
  %127 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %6, align 8
  %128 = call i32 @ep_index(%struct.s3c_hsudc_ep* %127)
  %129 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %7, align 8
  %130 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %129, i32 0, i32 1
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @S3C_EIER, align 8
  %133 = add nsw i64 %131, %132
  %134 = call i32 @__set_bit(i32 %128, i64 %133)
  %135 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %7, align 8
  %136 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %135, i32 0, i32 0
  %137 = load i64, i64* %8, align 8
  %138 = call i32 @spin_unlock_irqrestore(i32* %136, i64 %137)
  store i32 0, i32* %3, align 4
  br label %139

139:                                              ; preds = %101, %81, %63, %43
  %140 = load i32, i32* %3, align 4
  ret i32 %140
}

declare dso_local %struct.s3c_hsudc_ep* @our_ep(%struct.usb_ep*) #1

declare dso_local i64 @ep_maxpacket(%struct.s3c_hsudc_ep*) #1

declare dso_local i64 @usb_endpoint_maxp(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @set_index(%struct.s3c_hsudc*, i64) #1

declare dso_local i64 @usb_endpoint_xfer_int(%struct.usb_endpoint_descriptor*) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @s3c_hsudc_set_halt(%struct.usb_ep*, i32) #1

declare dso_local i32 @__set_bit(i32, i64) #1

declare dso_local i32 @ep_index(%struct.s3c_hsudc_ep*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
