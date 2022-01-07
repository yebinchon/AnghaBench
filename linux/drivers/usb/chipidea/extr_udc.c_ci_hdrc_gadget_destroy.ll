; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_udc.c_ci_hdrc_gadget_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_udc.c_ci_hdrc_gadget_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hdrc = type { i32, i32, i32, i32* }

@CI_ROLE_GADGET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ci_hdrc_gadget_destroy(%struct.ci_hdrc* %0) #0 {
  %2 = alloca %struct.ci_hdrc*, align 8
  store %struct.ci_hdrc* %0, %struct.ci_hdrc** %2, align 8
  %3 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %4 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %3, i32 0, i32 3
  %5 = load i32*, i32** %4, align 8
  %6 = load i64, i64* @CI_ROLE_GADGET, align 8
  %7 = getelementptr inbounds i32, i32* %5, i64 %6
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %25

11:                                               ; preds = %1
  %12 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %13 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %12, i32 0, i32 2
  %14 = call i32 @usb_del_gadget_udc(i32* %13)
  %15 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %16 = call i32 @destroy_eps(%struct.ci_hdrc* %15)
  %17 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %18 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dma_pool_destroy(i32 %19)
  %21 = load %struct.ci_hdrc*, %struct.ci_hdrc** %2, align 8
  %22 = getelementptr inbounds %struct.ci_hdrc, %struct.ci_hdrc* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @dma_pool_destroy(i32 %23)
  br label %25

25:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @usb_del_gadget_udc(i32*) #1

declare dso_local i32 @destroy_eps(%struct.ci_hdrc*) #1

declare dso_local i32 @dma_pool_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
