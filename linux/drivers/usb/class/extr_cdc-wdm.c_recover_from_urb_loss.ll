; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-wdm.c_recover_from_urb_loss.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-wdm.c_recover_from_urb_loss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wdm_device = type { %struct.TYPE_2__*, i32, i64 }
%struct.TYPE_2__ = type { i32 }

@GFP_NOIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Error resume submitting int urb - %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wdm_device*)* @recover_from_urb_loss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recover_from_urb_loss(%struct.wdm_device* %0) #0 {
  %2 = alloca %struct.wdm_device*, align 8
  %3 = alloca i32, align 4
  store %struct.wdm_device* %0, %struct.wdm_device** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.wdm_device*, %struct.wdm_device** %2, align 8
  %5 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %4, i32 0, i32 2
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load %struct.wdm_device*, %struct.wdm_device** %2, align 8
  %10 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @GFP_NOIO, align 4
  %13 = call i32 @usb_submit_urb(i32 %11, i32 %12)
  store i32 %13, i32* %3, align 4
  %14 = load i32, i32* %3, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %8
  %17 = load %struct.wdm_device*, %struct.wdm_device** %2, align 8
  %18 = getelementptr inbounds %struct.wdm_device, %struct.wdm_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %3, align 4
  %22 = call i32 @dev_err(i32* %20, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %21)
  br label %23

23:                                               ; preds = %16, %8
  br label %24

24:                                               ; preds = %23, %1
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @usb_submit_urb(i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
