; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_dev.c_vep_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_vudc_dev.c_vep_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ep = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.vep = type { i32* }
%struct.vudc = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ep*)* @vep_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vep_disable(%struct.usb_ep* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_ep*, align 8
  %4 = alloca %struct.vep*, align 8
  %5 = alloca %struct.vudc*, align 8
  %6 = alloca i64, align 8
  store %struct.usb_ep* %0, %struct.usb_ep** %3, align 8
  %7 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %8 = call %struct.vep* @to_vep(%struct.usb_ep* %7)
  store %struct.vep* %8, %struct.vep** %4, align 8
  %9 = load %struct.vep*, %struct.vep** %4, align 8
  %10 = call %struct.vudc* @ep_to_vudc(%struct.vep* %9)
  store %struct.vudc* %10, %struct.vudc** %5, align 8
  %11 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %12 = icmp ne %struct.usb_ep* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %1
  %14 = load %struct.vep*, %struct.vep** %4, align 8
  %15 = getelementptr inbounds %struct.vep, %struct.vep* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.usb_ep*, %struct.usb_ep** %3, align 8
  %20 = getelementptr inbounds %struct.usb_ep, %struct.usb_ep* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %18, %13, %1
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %41

27:                                               ; preds = %18
  %28 = load %struct.vudc*, %struct.vudc** %5, align 8
  %29 = getelementptr inbounds %struct.vudc, %struct.vudc* %28, i32 0, i32 0
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @spin_lock_irqsave(i32* %29, i64 %30)
  %32 = load %struct.vep*, %struct.vep** %4, align 8
  %33 = getelementptr inbounds %struct.vep, %struct.vep* %32, i32 0, i32 0
  store i32* null, i32** %33, align 8
  %34 = load %struct.vudc*, %struct.vudc** %5, align 8
  %35 = load %struct.vep*, %struct.vep** %4, align 8
  %36 = call i32 @nuke(%struct.vudc* %34, %struct.vep* %35)
  %37 = load %struct.vudc*, %struct.vudc** %5, align 8
  %38 = getelementptr inbounds %struct.vudc, %struct.vudc* %37, i32 0, i32 0
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @spin_unlock_irqrestore(i32* %38, i64 %39)
  store i32 0, i32* %2, align 4
  br label %41

41:                                               ; preds = %27, %24
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local %struct.vep* @to_vep(%struct.usb_ep*) #1

declare dso_local %struct.vudc* @ep_to_vudc(%struct.vep*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @nuke(%struct.vudc*, %struct.vep*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
