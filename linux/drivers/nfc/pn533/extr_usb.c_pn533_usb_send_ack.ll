; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_usb.c_pn533_usb_send_ack.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_usb.c_pn533_usb_send_ack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn533 = type { %struct.pn533_usb_phy* }
%struct.pn533_usb_phy = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i64 }

@pn533_usb_send_ack.ack = internal constant [6 x i32] [i32 0, i32 0, i32 255, i32 0, i32 255, i32 0], align 16
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pn533*, i32)* @pn533_usb_send_ack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn533_usb_send_ack(%struct.pn533* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pn533*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pn533_usb_phy*, align 8
  store %struct.pn533* %0, %struct.pn533** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pn533*, %struct.pn533** %4, align 8
  %8 = getelementptr inbounds %struct.pn533, %struct.pn533* %7, i32 0, i32 0
  %9 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %8, align 8
  store %struct.pn533_usb_phy* %9, %struct.pn533_usb_phy** %6, align 8
  %10 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %6, align 8
  %11 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %10, i32 0, i32 1
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %27, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = call i64 @kmemdup(i32* getelementptr inbounds ([6 x i32], [6 x i32]* @pn533_usb_send_ack.ack, i64 0, i64 0), i32 24, i32 %15)
  %17 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %6, align 8
  %18 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %17, i32 0, i32 1
  store i64 %16, i64* %18, align 8
  %19 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %6, align 8
  %20 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %14
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %44

26:                                               ; preds = %14
  br label %27

27:                                               ; preds = %26, %2
  %28 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %6, align 8
  %29 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %6, align 8
  %32 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  store i64 %30, i64* %34, align 8
  %35 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %6, align 8
  %36 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %35, i32 0, i32 0
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  store i32 24, i32* %38, align 8
  %39 = load %struct.pn533_usb_phy*, %struct.pn533_usb_phy** %6, align 8
  %40 = getelementptr inbounds %struct.pn533_usb_phy, %struct.pn533_usb_phy* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @usb_submit_urb(%struct.TYPE_2__* %41, i32 %42)
  store i32 %43, i32* %3, align 4
  br label %44

44:                                               ; preds = %27, %23
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i64 @kmemdup(i32*, i32, i32) #1

declare dso_local i32 @usb_submit_urb(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
