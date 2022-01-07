; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-q.c_uhci_alloc_urb_priv.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_uhci-q.c_uhci_alloc_urb_priv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb_priv = type { i32, i32, %struct.urb* }
%struct.uhci_hcd = type { i32 }
%struct.urb = type { %struct.urb_priv* }

@uhci_up_cachep = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.urb_priv* (%struct.uhci_hcd*, %struct.urb*)* @uhci_alloc_urb_priv to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.urb_priv* @uhci_alloc_urb_priv(%struct.uhci_hcd* %0, %struct.urb* %1) #0 {
  %3 = alloca %struct.urb_priv*, align 8
  %4 = alloca %struct.uhci_hcd*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.urb_priv*, align 8
  store %struct.uhci_hcd* %0, %struct.uhci_hcd** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  %7 = load i32, i32* @uhci_up_cachep, align 4
  %8 = load i32, i32* @GFP_ATOMIC, align 4
  %9 = call %struct.urb_priv* @kmem_cache_zalloc(i32 %7, i32 %8)
  store %struct.urb_priv* %9, %struct.urb_priv** %6, align 8
  %10 = load %struct.urb_priv*, %struct.urb_priv** %6, align 8
  %11 = icmp ne %struct.urb_priv* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.urb_priv* null, %struct.urb_priv** %3, align 8
  br label %27

13:                                               ; preds = %2
  %14 = load %struct.urb*, %struct.urb** %5, align 8
  %15 = load %struct.urb_priv*, %struct.urb_priv** %6, align 8
  %16 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %15, i32 0, i32 2
  store %struct.urb* %14, %struct.urb** %16, align 8
  %17 = load %struct.urb_priv*, %struct.urb_priv** %6, align 8
  %18 = load %struct.urb*, %struct.urb** %5, align 8
  %19 = getelementptr inbounds %struct.urb, %struct.urb* %18, i32 0, i32 0
  store %struct.urb_priv* %17, %struct.urb_priv** %19, align 8
  %20 = load %struct.urb_priv*, %struct.urb_priv** %6, align 8
  %21 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %20, i32 0, i32 1
  %22 = call i32 @INIT_LIST_HEAD(i32* %21)
  %23 = load %struct.urb_priv*, %struct.urb_priv** %6, align 8
  %24 = getelementptr inbounds %struct.urb_priv, %struct.urb_priv* %23, i32 0, i32 0
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.urb_priv*, %struct.urb_priv** %6, align 8
  store %struct.urb_priv* %26, %struct.urb_priv** %3, align 8
  br label %27

27:                                               ; preds = %13, %12
  %28 = load %struct.urb_priv*, %struct.urb_priv** %3, align 8
  ret %struct.urb_priv* %28
}

declare dso_local %struct.urb_priv* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
