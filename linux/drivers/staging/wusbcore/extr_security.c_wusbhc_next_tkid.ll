; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_security.c_wusbhc_next_tkid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_security.c_wusbhc_next_tkid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wusbhc = type { i32 }
%struct.wusb_dev = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wusbhc*, %struct.wusb_dev*)* @wusbhc_next_tkid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wusbhc_next_tkid(%struct.wusbhc* %0, %struct.wusb_dev* %1) #0 {
  %3 = alloca %struct.wusbhc*, align 8
  %4 = alloca %struct.wusb_dev*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.wusbhc* %0, %struct.wusbhc** %3, align 8
  store %struct.wusb_dev* %1, %struct.wusb_dev** %4, align 8
  %7 = load %struct.wusb_dev*, %struct.wusb_dev** %4, align 8
  %8 = icmp eq %struct.wusb_dev* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %11 = getelementptr inbounds %struct.wusbhc, %struct.wusbhc* %10, i32 0, i32 0
  store i32* %11, i32** %5, align 8
  store i32 0, i32* %6, align 4
  br label %23

12:                                               ; preds = %2
  %13 = load %struct.wusbhc*, %struct.wusbhc** %3, align 8
  %14 = load %struct.wusb_dev*, %struct.wusb_dev** %4, align 8
  %15 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.TYPE_2__* @wusb_port_by_idx(%struct.wusbhc* %13, i32 %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store i32* %18, i32** %5, align 8
  %19 = load %struct.wusb_dev*, %struct.wusb_dev** %4, align 8
  %20 = getelementptr inbounds %struct.wusb_dev, %struct.wusb_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 127
  store i32 %22, i32* %6, align 4
  br label %23

23:                                               ; preds = %12, %9
  %24 = load i32, i32* %6, align 4
  %25 = shl i32 %24, 8
  %26 = load i32*, i32** %5, align 8
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  %29 = and i32 %28, 255
  %30 = or i32 %25, %29
  %31 = load i32*, i32** %5, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32*, i32** %5, align 8
  %33 = load i32, i32* %32, align 4
  ret i32 %33
}

declare dso_local %struct.TYPE_2__* @wusb_port_by_idx(%struct.wusbhc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
