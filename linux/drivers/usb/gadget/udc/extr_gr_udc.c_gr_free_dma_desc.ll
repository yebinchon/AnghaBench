; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_gr_udc.c_gr_free_dma_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_gr_udc.c_gr_free_dma_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gr_udc = type { i32 }
%struct.gr_dma_desc = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gr_udc*, %struct.gr_dma_desc*)* @gr_free_dma_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gr_free_dma_desc(%struct.gr_udc* %0, %struct.gr_dma_desc* %1) #0 {
  %3 = alloca %struct.gr_udc*, align 8
  %4 = alloca %struct.gr_dma_desc*, align 8
  store %struct.gr_udc* %0, %struct.gr_udc** %3, align 8
  store %struct.gr_dma_desc* %1, %struct.gr_dma_desc** %4, align 8
  %5 = load %struct.gr_udc*, %struct.gr_udc** %3, align 8
  %6 = getelementptr inbounds %struct.gr_udc, %struct.gr_udc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.gr_dma_desc*, %struct.gr_dma_desc** %4, align 8
  %9 = load %struct.gr_dma_desc*, %struct.gr_dma_desc** %4, align 8
  %10 = getelementptr inbounds %struct.gr_dma_desc, %struct.gr_dma_desc* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = trunc i64 %11 to i32
  %13 = call i32 @dma_pool_free(i32 %7, %struct.gr_dma_desc* %8, i32 %12)
  ret void
}

declare dso_local i32 @dma_pool_free(i32, %struct.gr_dma_desc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
