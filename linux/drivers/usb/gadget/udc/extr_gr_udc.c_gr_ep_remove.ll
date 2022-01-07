; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_gr_udc.c_gr_ep_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_gr_udc.c_gr_ep_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gr_udc = type { i32, %struct.gr_ep*, %struct.gr_ep* }
%struct.gr_ep = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gr_udc*, i32, i32)* @gr_ep_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gr_ep_remove(%struct.gr_udc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gr_udc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.gr_ep*, align 8
  store %struct.gr_udc* %0, %struct.gr_udc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %3
  %11 = load %struct.gr_udc*, %struct.gr_udc** %4, align 8
  %12 = getelementptr inbounds %struct.gr_udc, %struct.gr_udc* %11, i32 0, i32 2
  %13 = load %struct.gr_ep*, %struct.gr_ep** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.gr_ep, %struct.gr_ep* %13, i64 %15
  store %struct.gr_ep* %16, %struct.gr_ep** %7, align 8
  br label %24

17:                                               ; preds = %3
  %18 = load %struct.gr_udc*, %struct.gr_udc** %4, align 8
  %19 = getelementptr inbounds %struct.gr_udc, %struct.gr_udc* %18, i32 0, i32 1
  %20 = load %struct.gr_ep*, %struct.gr_ep** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.gr_ep, %struct.gr_ep* %20, i64 %22
  store %struct.gr_ep* %23, %struct.gr_ep** %7, align 8
  br label %24

24:                                               ; preds = %17, %10
  %25 = load %struct.gr_ep*, %struct.gr_ep** %7, align 8
  %26 = getelementptr inbounds %struct.gr_ep, %struct.gr_ep* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %44

29:                                               ; preds = %24
  %30 = load %struct.gr_udc*, %struct.gr_udc** %4, align 8
  %31 = getelementptr inbounds %struct.gr_udc, %struct.gr_udc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.gr_ep*, %struct.gr_ep** %7, align 8
  %34 = getelementptr inbounds %struct.gr_ep, %struct.gr_ep* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.gr_ep*, %struct.gr_ep** %7, align 8
  %38 = getelementptr inbounds %struct.gr_ep, %struct.gr_ep* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load %struct.gr_ep*, %struct.gr_ep** %7, align 8
  %41 = getelementptr inbounds %struct.gr_ep, %struct.gr_ep* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @dma_free_coherent(i32 %32, i32 %36, i64 %39, i32 %42)
  br label %44

44:                                               ; preds = %29, %24
  ret void
}

declare dso_local i32 @dma_free_coherent(i32, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
