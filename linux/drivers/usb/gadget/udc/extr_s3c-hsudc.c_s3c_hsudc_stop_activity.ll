; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c-hsudc.c_s3c_hsudc_stop_activity.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_s3c-hsudc.c_s3c_hsudc_stop_activity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3c_hsudc = type { %struct.s3c_hsudc_ep*, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.s3c_hsudc_ep = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@USB_SPEED_UNKNOWN = common dso_local global i32 0, align 4
@ESHUTDOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.s3c_hsudc*)* @s3c_hsudc_stop_activity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s3c_hsudc_stop_activity(%struct.s3c_hsudc* %0) #0 {
  %2 = alloca %struct.s3c_hsudc*, align 8
  %3 = alloca %struct.s3c_hsudc_ep*, align 8
  %4 = alloca i32, align 4
  store %struct.s3c_hsudc* %0, %struct.s3c_hsudc** %2, align 8
  %5 = load i32, i32* @USB_SPEED_UNKNOWN, align 4
  %6 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %2, align 8
  %7 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %6, i32 0, i32 2
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i32 %5, i32* %8, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %30, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %2, align 8
  %12 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp slt i32 %10, %15
  br i1 %16, label %17, label %33

17:                                               ; preds = %9
  %18 = load %struct.s3c_hsudc*, %struct.s3c_hsudc** %2, align 8
  %19 = getelementptr inbounds %struct.s3c_hsudc, %struct.s3c_hsudc* %18, i32 0, i32 0
  %20 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %20, i64 %22
  store %struct.s3c_hsudc_ep* %23, %struct.s3c_hsudc_ep** %3, align 8
  %24 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %3, align 8
  %25 = getelementptr inbounds %struct.s3c_hsudc_ep, %struct.s3c_hsudc_ep* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  %26 = load %struct.s3c_hsudc_ep*, %struct.s3c_hsudc_ep** %3, align 8
  %27 = load i32, i32* @ESHUTDOWN, align 4
  %28 = sub nsw i32 0, %27
  %29 = call i32 @s3c_hsudc_nuke_ep(%struct.s3c_hsudc_ep* %26, i32 %28)
  br label %30

30:                                               ; preds = %17
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %9

33:                                               ; preds = %9
  ret void
}

declare dso_local i32 @s3c_hsudc_nuke_ep(%struct.s3c_hsudc_ep*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
