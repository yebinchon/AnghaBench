; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_imx21-hcd.c_setup_etd_dword0.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_imx21-hcd.c_setup_etd_dword0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx21 = type { i32 }
%struct.urb = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@DW0_ADDRESS = common dso_local global i32 0, align 4
@DW0_ENDPNT = common dso_local global i32 0, align 4
@DW0_DIRECT = common dso_local global i32 0, align 4
@USB_SPEED_LOW = common dso_local global i64 0, align 8
@DW0_SPEED = common dso_local global i32 0, align 4
@fmt_urb_to_etd = common dso_local global i64* null, align 8
@DW0_FORMAT = common dso_local global i32 0, align 4
@DW0_MAXPKTSIZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.imx21*, i32, %struct.urb*, i64, i64)* @setup_etd_dword0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setup_etd_dword0(%struct.imx21* %0, i32 %1, %struct.urb* %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.imx21*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.urb*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.imx21* %0, %struct.imx21** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.urb* %2, %struct.urb** %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 %4, i64* %10, align 8
  %11 = load %struct.imx21*, %struct.imx21** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.urb*, %struct.urb** %8, align 8
  %14 = getelementptr inbounds %struct.urb, %struct.urb* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = call i64 @usb_pipedevice(i32 %15)
  %17 = trunc i64 %16 to i32
  %18 = load i32, i32* @DW0_ADDRESS, align 4
  %19 = shl i32 %17, %18
  %20 = load %struct.urb*, %struct.urb** %8, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i64 @usb_pipeendpoint(i32 %22)
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @DW0_ENDPNT, align 4
  %26 = shl i32 %24, %25
  %27 = or i32 %19, %26
  %28 = load i64, i64* %9, align 8
  %29 = trunc i64 %28 to i32
  %30 = load i32, i32* @DW0_DIRECT, align 4
  %31 = shl i32 %29, %30
  %32 = or i32 %27, %31
  %33 = load %struct.urb*, %struct.urb** %8, align 8
  %34 = getelementptr inbounds %struct.urb, %struct.urb* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @USB_SPEED_LOW, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i64
  %41 = select i1 %39, i32 1, i32 0
  %42 = load i32, i32* @DW0_SPEED, align 4
  %43 = shl i32 %41, %42
  %44 = or i32 %32, %43
  %45 = load i64*, i64** @fmt_urb_to_etd, align 8
  %46 = load %struct.urb*, %struct.urb** %8, align 8
  %47 = getelementptr inbounds %struct.urb, %struct.urb* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i64 @usb_pipetype(i32 %48)
  %50 = getelementptr inbounds i64, i64* %45, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = trunc i64 %51 to i32
  %53 = load i32, i32* @DW0_FORMAT, align 4
  %54 = shl i32 %52, %53
  %55 = or i32 %44, %54
  %56 = load i64, i64* %10, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i32, i32* @DW0_MAXPKTSIZ, align 4
  %59 = shl i32 %57, %58
  %60 = or i32 %55, %59
  %61 = call i32 @etd_writel(%struct.imx21* %11, i32 %12, i32 0, i32 %60)
  ret void
}

declare dso_local i32 @etd_writel(%struct.imx21*, i32, i32, i32) #1

declare dso_local i64 @usb_pipedevice(i32) #1

declare dso_local i64 @usb_pipeendpoint(i32) #1

declare dso_local i64 @usb_pipetype(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
