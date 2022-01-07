; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_std_req_feature_device.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_renesas_usb3.c_usb3_std_req_feature_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.renesas_usb3 = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.usb_ctrlrequest = type { i32, i32 }

@USB_SPEED_SUPER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.renesas_usb3*, %struct.usb_ctrlrequest*, i32)* @usb3_std_req_feature_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb3_std_req_feature_device(%struct.renesas_usb3* %0, %struct.usb_ctrlrequest* %1, i32 %2) #0 {
  %4 = alloca %struct.renesas_usb3*, align 8
  %5 = alloca %struct.usb_ctrlrequest*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.renesas_usb3* %0, %struct.renesas_usb3** %4, align 8
  store %struct.usb_ctrlrequest* %1, %struct.usb_ctrlrequest** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %7, align 4
  %9 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %10 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @le16_to_cpu(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  switch i32 %13, label %49 [
    i32 130, label %14
    i32 129, label %26
    i32 128, label %26
  ]

14:                                               ; preds = %3
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  br label %50

18:                                               ; preds = %14
  %19 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %5, align 8
  %20 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le16_to_cpu(i32 %21)
  %23 = ashr i32 %22, 8
  %24 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %25 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  store i32 0, i32* %7, align 4
  br label %50

26:                                               ; preds = %3, %3
  %27 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %28 = getelementptr inbounds %struct.renesas_usb3, %struct.renesas_usb3* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @USB_SPEED_SUPER, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %50

34:                                               ; preds = %26
  %35 = load i32, i32* %8, align 4
  %36 = icmp eq i32 %35, 129
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %39 = load i32, i32* %6, align 4
  %40 = call i32 @usb3_feature_u1_enable(%struct.renesas_usb3* %38, i32 %39)
  br label %41

41:                                               ; preds = %37, %34
  %42 = load i32, i32* %8, align 4
  %43 = icmp eq i32 %42, 128
  br i1 %43, label %44, label %48

44:                                               ; preds = %41
  %45 = load %struct.renesas_usb3*, %struct.renesas_usb3** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @usb3_feature_u2_enable(%struct.renesas_usb3* %45, i32 %46)
  br label %48

48:                                               ; preds = %44, %41
  store i32 0, i32* %7, align 4
  br label %50

49:                                               ; preds = %3
  br label %50

50:                                               ; preds = %49, %48, %33, %18, %17
  %51 = load i32, i32* %7, align 4
  ret i32 %51
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @usb3_feature_u1_enable(%struct.renesas_usb3*, i32) #1

declare dso_local i32 @usb3_feature_u2_enable(%struct.renesas_usb3*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
