; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_hc_init_split.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd.c_dwc2_hc_init_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dwc2_hsotg = type { i32 }
%struct.dwc2_host_chan = type { i32, i8*, i8*, i32, i32 }
%struct.dwc2_qtd = type { i32, i32 }
%struct.dwc2_hcd_urb = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dwc2_hsotg*, %struct.dwc2_host_chan*, %struct.dwc2_qtd*, %struct.dwc2_hcd_urb*)* @dwc2_hc_init_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dwc2_hc_init_split(%struct.dwc2_hsotg* %0, %struct.dwc2_host_chan* %1, %struct.dwc2_qtd* %2, %struct.dwc2_hcd_urb* %3) #0 {
  %5 = alloca %struct.dwc2_hsotg*, align 8
  %6 = alloca %struct.dwc2_host_chan*, align 8
  %7 = alloca %struct.dwc2_qtd*, align 8
  %8 = alloca %struct.dwc2_hcd_urb*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dwc2_hsotg* %0, %struct.dwc2_hsotg** %5, align 8
  store %struct.dwc2_host_chan* %1, %struct.dwc2_host_chan** %6, align 8
  store %struct.dwc2_qtd* %2, %struct.dwc2_qtd** %7, align 8
  store %struct.dwc2_hcd_urb* %3, %struct.dwc2_hcd_urb** %8, align 8
  %11 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %12 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %7, align 8
  %14 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %17 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load %struct.dwc2_qtd*, %struct.dwc2_qtd** %7, align 8
  %19 = getelementptr inbounds %struct.dwc2_qtd, %struct.dwc2_qtd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %22 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %21, i32 0, i32 3
  store i32 %20, i32* %22, align 8
  %23 = load %struct.dwc2_hsotg*, %struct.dwc2_hsotg** %5, align 8
  %24 = load %struct.dwc2_hcd_urb*, %struct.dwc2_hcd_urb** %8, align 8
  %25 = getelementptr inbounds %struct.dwc2_hcd_urb, %struct.dwc2_hcd_urb* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @dwc2_host_hub_info(%struct.dwc2_hsotg* %23, i32 %26, i32* %9, i32* %10)
  %28 = load i32, i32* %9, align 4
  %29 = sext i32 %28 to i64
  %30 = inttoptr i64 %29 to i8*
  %31 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %32 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* %10, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = load %struct.dwc2_host_chan*, %struct.dwc2_host_chan** %6, align 8
  %37 = getelementptr inbounds %struct.dwc2_host_chan, %struct.dwc2_host_chan* %36, i32 0, i32 1
  store i8* %35, i8** %37, align 8
  ret void
}

declare dso_local i32 @dwc2_host_hub_info(%struct.dwc2_hsotg*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
