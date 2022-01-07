; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_free_trb_pool.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/cdns3/extr_gadget.c_cdns3_free_trb_pool.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdns3_endpoint = type { i32*, i32, %struct.cdns3_device* }
%struct.cdns3_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cdns3_endpoint*)* @cdns3_free_trb_pool to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cdns3_free_trb_pool(%struct.cdns3_endpoint* %0) #0 {
  %2 = alloca %struct.cdns3_endpoint*, align 8
  %3 = alloca %struct.cdns3_device*, align 8
  store %struct.cdns3_endpoint* %0, %struct.cdns3_endpoint** %2, align 8
  %4 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %5 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %4, i32 0, i32 2
  %6 = load %struct.cdns3_device*, %struct.cdns3_device** %5, align 8
  store %struct.cdns3_device* %6, %struct.cdns3_device** %3, align 8
  %7 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %8 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %26

11:                                               ; preds = %1
  %12 = load %struct.cdns3_device*, %struct.cdns3_device** %3, align 8
  %13 = getelementptr inbounds %struct.cdns3_device, %struct.cdns3_device* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %16 = call i32 @cdns3_ring_size(%struct.cdns3_endpoint* %15)
  %17 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %18 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %21 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @dma_free_coherent(i32 %14, i32 %16, i32* %19, i32 %22)
  %24 = load %struct.cdns3_endpoint*, %struct.cdns3_endpoint** %2, align 8
  %25 = getelementptr inbounds %struct.cdns3_endpoint, %struct.cdns3_endpoint* %24, i32 0, i32 0
  store i32* null, i32** %25, align 8
  br label %26

26:                                               ; preds = %11, %1
  ret void
}

declare dso_local i32 @dma_free_coherent(i32, i32, i32*, i32) #1

declare dso_local i32 @cdns3_ring_size(%struct.cdns3_endpoint*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
