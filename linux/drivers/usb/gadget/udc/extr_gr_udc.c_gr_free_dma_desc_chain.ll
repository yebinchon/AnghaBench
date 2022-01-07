; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_gr_udc.c_gr_free_dma_desc_chain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_gr_udc.c_gr_free_dma_desc_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gr_udc = type { i32 }
%struct.gr_request = type { %struct.gr_dma_desc*, i32*, %struct.gr_dma_desc* }
%struct.gr_dma_desc = type { %struct.gr_dma_desc* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gr_udc*, %struct.gr_request*)* @gr_free_dma_desc_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gr_free_dma_desc_chain(%struct.gr_udc* %0, %struct.gr_request* %1) #0 {
  %3 = alloca %struct.gr_udc*, align 8
  %4 = alloca %struct.gr_request*, align 8
  %5 = alloca %struct.gr_dma_desc*, align 8
  %6 = alloca %struct.gr_dma_desc*, align 8
  store %struct.gr_udc* %0, %struct.gr_udc** %3, align 8
  store %struct.gr_request* %1, %struct.gr_request** %4, align 8
  %7 = load %struct.gr_request*, %struct.gr_request** %4, align 8
  %8 = getelementptr inbounds %struct.gr_request, %struct.gr_request* %7, i32 0, i32 2
  %9 = load %struct.gr_dma_desc*, %struct.gr_dma_desc** %8, align 8
  store %struct.gr_dma_desc* %9, %struct.gr_dma_desc** %6, align 8
  %10 = load %struct.gr_dma_desc*, %struct.gr_dma_desc** %6, align 8
  %11 = icmp ne %struct.gr_dma_desc* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %35

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %22, %13
  %15 = load %struct.gr_dma_desc*, %struct.gr_dma_desc** %6, align 8
  store %struct.gr_dma_desc* %15, %struct.gr_dma_desc** %5, align 8
  %16 = load %struct.gr_dma_desc*, %struct.gr_dma_desc** %5, align 8
  %17 = getelementptr inbounds %struct.gr_dma_desc, %struct.gr_dma_desc* %16, i32 0, i32 0
  %18 = load %struct.gr_dma_desc*, %struct.gr_dma_desc** %17, align 8
  store %struct.gr_dma_desc* %18, %struct.gr_dma_desc** %6, align 8
  %19 = load %struct.gr_udc*, %struct.gr_udc** %3, align 8
  %20 = load %struct.gr_dma_desc*, %struct.gr_dma_desc** %5, align 8
  %21 = call i32 @gr_free_dma_desc(%struct.gr_udc* %19, %struct.gr_dma_desc* %20)
  br label %22

22:                                               ; preds = %14
  %23 = load %struct.gr_dma_desc*, %struct.gr_dma_desc** %5, align 8
  %24 = load %struct.gr_request*, %struct.gr_request** %4, align 8
  %25 = getelementptr inbounds %struct.gr_request, %struct.gr_request* %24, i32 0, i32 0
  %26 = load %struct.gr_dma_desc*, %struct.gr_dma_desc** %25, align 8
  %27 = icmp ne %struct.gr_dma_desc* %23, %26
  br i1 %27, label %14, label %28

28:                                               ; preds = %22
  %29 = load %struct.gr_request*, %struct.gr_request** %4, align 8
  %30 = getelementptr inbounds %struct.gr_request, %struct.gr_request* %29, i32 0, i32 2
  store %struct.gr_dma_desc* null, %struct.gr_dma_desc** %30, align 8
  %31 = load %struct.gr_request*, %struct.gr_request** %4, align 8
  %32 = getelementptr inbounds %struct.gr_request, %struct.gr_request* %31, i32 0, i32 1
  store i32* null, i32** %32, align 8
  %33 = load %struct.gr_request*, %struct.gr_request** %4, align 8
  %34 = getelementptr inbounds %struct.gr_request, %struct.gr_request* %33, i32 0, i32 0
  store %struct.gr_dma_desc* null, %struct.gr_dma_desc** %34, align 8
  br label %35

35:                                               ; preds = %28, %12
  ret void
}

declare dso_local i32 @gr_free_dma_desc(%struct.gr_udc*, %struct.gr_dma_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
