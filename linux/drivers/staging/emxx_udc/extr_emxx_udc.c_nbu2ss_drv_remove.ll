; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c_nbu2ss_drv_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/emxx_udc/extr_emxx_udc.c_nbu2ss_drv_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nbu2ss_udc = type { %struct.nbu2ss_ep* }
%struct.nbu2ss_ep = type { i32, i64 }
%struct.platform_device = type { i32 }

@udc_controller = common dso_local global %struct.nbu2ss_udc zeroinitializer, align 8
@NUM_ENDPOINTS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@vbus_irq = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @nbu2ss_drv_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nbu2ss_drv_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.nbu2ss_udc*, align 8
  %4 = alloca %struct.nbu2ss_ep*, align 8
  %5 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  store %struct.nbu2ss_udc* @udc_controller, %struct.nbu2ss_udc** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %32, %1
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @NUM_ENDPOINTS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %35

10:                                               ; preds = %6
  %11 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %12 = getelementptr inbounds %struct.nbu2ss_udc, %struct.nbu2ss_udc* %11, i32 0, i32 0
  %13 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %12, align 8
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %13, i64 %15
  store %struct.nbu2ss_ep* %16, %struct.nbu2ss_ep** %4, align 8
  %17 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %4, align 8
  %18 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %10
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %4, align 8
  %24 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to i8*
  %27 = load %struct.nbu2ss_ep*, %struct.nbu2ss_ep** %4, align 8
  %28 = getelementptr inbounds %struct.nbu2ss_ep, %struct.nbu2ss_ep* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dma_free_coherent(i32* null, i32 %22, i8* %26, i32 %29)
  br label %31

31:                                               ; preds = %21, %10
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %5, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %5, align 4
  br label %6

35:                                               ; preds = %6
  %36 = load i32, i32* @vbus_irq, align 4
  %37 = load %struct.nbu2ss_udc*, %struct.nbu2ss_udc** %3, align 8
  %38 = call i32 @free_irq(i32 %36, %struct.nbu2ss_udc* %37)
  ret i32 0
}

declare dso_local i32 @dma_free_coherent(i32*, i32, i8*, i32) #1

declare dso_local i32 @free_irq(i32, %struct.nbu2ss_udc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
