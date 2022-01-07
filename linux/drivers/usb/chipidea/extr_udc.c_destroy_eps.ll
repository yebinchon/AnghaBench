; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_udc.c_destroy_eps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_udc.c_destroy_eps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { i32, i32, %struct.ci_hw_ep* }
%struct.ci_hw_ep = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ci_hdrc*)* @destroy_eps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_eps(%struct.ci_hdrc* %0) #0 {
  %2 = alloca %struct.ci_hdrc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ci_hw_ep*, align 8
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %38, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %8 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %41

11:                                               ; preds = %5
  %12 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %13 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %12, i32 0, i32 2
  %14 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %14, i64 %16
  store %struct.ci_hw_ep* %17, %struct.ci_hw_ep** %4, align 8
  %18 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %4, align 8
  %19 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %11
  %23 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %4, align 8
  %24 = call i32 @free_pending_td(%struct.ci_hw_ep* %23)
  br label %25

25:                                               ; preds = %22, %11
  %26 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %27 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %4, align 8
  %30 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %4, align 8
  %34 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dma_pool_free(i32 %28, i32 %32, i32 %36)
  br label %38

38:                                               ; preds = %25
  %39 = load i32, i32* %3, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %3, align 4
  br label %5

41:                                               ; preds = %5
  ret void
}

declare dso_local i32 @free_pending_td(%struct.ci_hw_ep*) #1

declare dso_local i32 @dma_pool_free(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
