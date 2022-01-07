; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_fotg210_hub_descriptor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_fotg210-hcd.c_fotg210_hub_descriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_hcd = type { i32 }
%struct.usb_hub_descriptor = type { i32, i32, i32, i32, %struct.TYPE_4__, i64, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@USB_DT_HUB = common dso_local global i32 0, align 4
@HUB_CHAR_INDV_PORT_OCPM = common dso_local global i32 0, align 4
@HUB_CHAR_NO_LPSM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fotg210_hcd*, %struct.usb_hub_descriptor*)* @fotg210_hub_descriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fotg210_hub_descriptor(%struct.fotg210_hcd* %0, %struct.usb_hub_descriptor* %1) #0 {
  %3 = alloca %struct.fotg210_hcd*, align 8
  %4 = alloca %struct.usb_hub_descriptor*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fotg210_hcd* %0, %struct.fotg210_hcd** %3, align 8
  store %struct.usb_hub_descriptor* %1, %struct.usb_hub_descriptor** %4, align 8
  %7 = load %struct.fotg210_hcd*, %struct.fotg210_hcd** %3, align 8
  %8 = getelementptr inbounds %struct.fotg210_hcd, %struct.fotg210_hcd* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @HCS_N_PORTS(i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* @USB_DT_HUB, align 4
  %12 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %4, align 8
  %13 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %12, i32 0, i32 6
  store i32 %11, i32* %13, align 8
  %14 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %4, align 8
  %15 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %14, i32 0, i32 0
  store i32 10, i32* %15, align 8
  %16 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %4, align 8
  %17 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %16, i32 0, i32 5
  store i64 0, i64* %17, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %4, align 8
  %20 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* %5, align 4
  %22 = sdiv i32 %21, 8
  %23 = add nsw i32 1, %22
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = mul nsw i32 2, %24
  %26 = add nsw i32 7, %25
  %27 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %4, align 8
  %28 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %4, align 8
  %30 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 0
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @memset(i32* %34, i32 0, i32 %35)
  %37 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %4, align 8
  %38 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %37, i32 0, i32 4
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %6, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @memset(i32* %44, i32 255, i32 %45)
  %47 = load i32, i32* @HUB_CHAR_INDV_PORT_OCPM, align 4
  store i32 %47, i32* %6, align 4
  %48 = load i32, i32* @HUB_CHAR_NO_LPSM, align 4
  %49 = load i32, i32* %6, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @cpu_to_le16(i32 %51)
  %53 = load %struct.usb_hub_descriptor*, %struct.usb_hub_descriptor** %4, align 8
  %54 = getelementptr inbounds %struct.usb_hub_descriptor, %struct.usb_hub_descriptor* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  ret void
}

declare dso_local i32 @HCS_N_PORTS(i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
