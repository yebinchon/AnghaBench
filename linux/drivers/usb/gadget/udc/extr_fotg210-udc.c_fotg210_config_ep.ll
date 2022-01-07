; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fotg210-udc.c_fotg210_config_ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_fotg210-udc.c_fotg210_config_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fotg210_ep = type { i64, i32, %struct.TYPE_2__, i32, %struct.fotg210_udc* }
%struct.TYPE_2__ = type { i32 }
%struct.fotg210_udc = type { %struct.fotg210_ep** }
%struct.usb_endpoint_descriptor = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fotg210_ep*, %struct.usb_endpoint_descriptor*)* @fotg210_config_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fotg210_config_ep(%struct.fotg210_ep* %0, %struct.usb_endpoint_descriptor* %1) #0 {
  %3 = alloca %struct.fotg210_ep*, align 8
  %4 = alloca %struct.usb_endpoint_descriptor*, align 8
  %5 = alloca %struct.fotg210_udc*, align 8
  store %struct.fotg210_ep* %0, %struct.fotg210_ep** %3, align 8
  store %struct.usb_endpoint_descriptor* %1, %struct.usb_endpoint_descriptor** %4, align 8
  %6 = load %struct.fotg210_ep*, %struct.fotg210_ep** %3, align 8
  %7 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %6, i32 0, i32 4
  %8 = load %struct.fotg210_udc*, %struct.fotg210_udc** %7, align 8
  store %struct.fotg210_udc* %8, %struct.fotg210_udc** %5, align 8
  %9 = load %struct.fotg210_ep*, %struct.fotg210_ep** %3, align 8
  %10 = load %struct.fotg210_ep*, %struct.fotg210_ep** %3, align 8
  %11 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load %struct.fotg210_ep*, %struct.fotg210_ep** %3, align 8
  %14 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @fotg210_set_fifo_dir(%struct.fotg210_ep* %9, i64 %12, i32 %15)
  %17 = load %struct.fotg210_ep*, %struct.fotg210_ep** %3, align 8
  %18 = load %struct.fotg210_ep*, %struct.fotg210_ep** %3, align 8
  %19 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.fotg210_ep*, %struct.fotg210_ep** %3, align 8
  %22 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @fotg210_set_tfrtype(%struct.fotg210_ep* %17, i64 %20, i32 %23)
  %25 = load %struct.fotg210_ep*, %struct.fotg210_ep** %3, align 8
  %26 = load %struct.fotg210_ep*, %struct.fotg210_ep** %3, align 8
  %27 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.fotg210_ep*, %struct.fotg210_ep** %3, align 8
  %30 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.fotg210_ep*, %struct.fotg210_ep** %3, align 8
  %34 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @fotg210_set_mps(%struct.fotg210_ep* %25, i64 %28, i32 %32, i32 %35)
  %37 = load %struct.fotg210_ep*, %struct.fotg210_ep** %3, align 8
  %38 = load %struct.fotg210_ep*, %struct.fotg210_ep** %3, align 8
  %39 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.fotg210_ep*, %struct.fotg210_ep** %3, align 8
  %42 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @fotg210_fifo_ep_mapping(%struct.fotg210_ep* %37, i64 %40, i32 %43)
  %45 = load %struct.fotg210_ep*, %struct.fotg210_ep** %3, align 8
  %46 = load %struct.fotg210_udc*, %struct.fotg210_udc** %5, align 8
  %47 = getelementptr inbounds %struct.fotg210_udc, %struct.fotg210_udc* %46, i32 0, i32 0
  %48 = load %struct.fotg210_ep**, %struct.fotg210_ep*** %47, align 8
  %49 = load %struct.fotg210_ep*, %struct.fotg210_ep** %3, align 8
  %50 = getelementptr inbounds %struct.fotg210_ep, %struct.fotg210_ep* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds %struct.fotg210_ep*, %struct.fotg210_ep** %48, i64 %51
  store %struct.fotg210_ep* %45, %struct.fotg210_ep** %52, align 8
  ret i32 0
}

declare dso_local i32 @fotg210_set_fifo_dir(%struct.fotg210_ep*, i64, i32) #1

declare dso_local i32 @fotg210_set_tfrtype(%struct.fotg210_ep*, i64, i32) #1

declare dso_local i32 @fotg210_set_mps(%struct.fotg210_ep*, i64, i32, i32) #1

declare dso_local i32 @fotg210_fifo_ep_mapping(%struct.fotg210_ep*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
