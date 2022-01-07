; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_udc.c_free_pending_td.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/chipidea/extr_udc.c_free_pending_td.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ci_hw_ep = type { %struct.td_node*, i32 }
%struct.td_node = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ci_hw_ep*)* @free_pending_td to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_pending_td(%struct.ci_hw_ep* %0) #0 {
  %2 = alloca %struct.ci_hw_ep*, align 8
  %3 = alloca %struct.td_node*, align 8
  store %struct.ci_hw_ep* %0, %struct.ci_hw_ep** %2, align 8
  %4 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %2, align 8
  %5 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %4, i32 0, i32 0
  %6 = load %struct.td_node*, %struct.td_node** %5, align 8
  store %struct.td_node* %6, %struct.td_node** %3, align 8
  %7 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %2, align 8
  %8 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.td_node*, %struct.td_node** %3, align 8
  %11 = getelementptr inbounds %struct.td_node, %struct.td_node* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.td_node*, %struct.td_node** %3, align 8
  %14 = getelementptr inbounds %struct.td_node, %struct.td_node* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @dma_pool_free(i32 %9, i32 %12, i32 %15)
  %17 = load %struct.ci_hw_ep*, %struct.ci_hw_ep** %2, align 8
  %18 = getelementptr inbounds %struct.ci_hw_ep, %struct.ci_hw_ep* %17, i32 0, i32 0
  store %struct.td_node* null, %struct.td_node** %18, align 8
  %19 = load %struct.td_node*, %struct.td_node** %3, align 8
  %20 = call i32 @kfree(%struct.td_node* %19)
  ret void
}

declare dso_local i32 @dma_pool_free(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.td_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
