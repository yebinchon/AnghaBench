; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_hash.c_xenvif_set_hash_alg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/xen-netback/extr_hash.c_xenvif_set_hash_alg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xenvif = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@XEN_NETIF_CTRL_STATUS_INVALID_PARAMETER = common dso_local global i32 0, align 4
@XEN_NETIF_CTRL_STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xenvif_set_hash_alg(%struct.xenvif* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xenvif*, align 8
  %5 = alloca i32, align 4
  store %struct.xenvif* %0, %struct.xenvif** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %8 [
    i32 129, label %7
    i32 128, label %7
  ]

7:                                                ; preds = %2, %2
  br label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @XEN_NETIF_CTRL_STATUS_INVALID_PARAMETER, align 4
  store i32 %9, i32* %3, align 4
  br label %16

10:                                               ; preds = %7
  %11 = load i32, i32* %5, align 4
  %12 = load %struct.xenvif*, %struct.xenvif** %4, align 8
  %13 = getelementptr inbounds %struct.xenvif, %struct.xenvif* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 %11, i32* %14, align 4
  %15 = load i32, i32* @XEN_NETIF_CTRL_STATUS_SUCCESS, align 4
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %10, %8
  %17 = load i32, i32* %3, align 4
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
