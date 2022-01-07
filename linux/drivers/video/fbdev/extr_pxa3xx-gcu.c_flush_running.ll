; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa3xx-gcu.c_flush_running.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_pxa3xx-gcu.c_flush_running.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pxa3xx_gcu_priv = type { %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch* }
%struct.pxa3xx_gcu_batch = type { %struct.pxa3xx_gcu_batch* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pxa3xx_gcu_priv*)* @flush_running to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flush_running(%struct.pxa3xx_gcu_priv* %0) #0 {
  %2 = alloca %struct.pxa3xx_gcu_priv*, align 8
  %3 = alloca %struct.pxa3xx_gcu_batch*, align 8
  %4 = alloca %struct.pxa3xx_gcu_batch*, align 8
  store %struct.pxa3xx_gcu_priv* %0, %struct.pxa3xx_gcu_priv** %2, align 8
  %5 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %2, align 8
  %6 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %5, i32 0, i32 0
  %7 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %6, align 8
  store %struct.pxa3xx_gcu_batch* %7, %struct.pxa3xx_gcu_batch** %3, align 8
  br label %8

8:                                                ; preds = %11, %1
  %9 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %3, align 8
  %10 = icmp ne %struct.pxa3xx_gcu_batch* %9, null
  br i1 %10, label %11, label %24

11:                                               ; preds = %8
  %12 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %3, align 8
  %13 = getelementptr inbounds %struct.pxa3xx_gcu_batch, %struct.pxa3xx_gcu_batch* %12, i32 0, i32 0
  %14 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %13, align 8
  store %struct.pxa3xx_gcu_batch* %14, %struct.pxa3xx_gcu_batch** %4, align 8
  %15 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %2, align 8
  %16 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %15, i32 0, i32 1
  %17 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %16, align 8
  %18 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %3, align 8
  %19 = getelementptr inbounds %struct.pxa3xx_gcu_batch, %struct.pxa3xx_gcu_batch* %18, i32 0, i32 0
  store %struct.pxa3xx_gcu_batch* %17, %struct.pxa3xx_gcu_batch** %19, align 8
  %20 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %3, align 8
  %21 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %2, align 8
  %22 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %21, i32 0, i32 1
  store %struct.pxa3xx_gcu_batch* %20, %struct.pxa3xx_gcu_batch** %22, align 8
  %23 = load %struct.pxa3xx_gcu_batch*, %struct.pxa3xx_gcu_batch** %4, align 8
  store %struct.pxa3xx_gcu_batch* %23, %struct.pxa3xx_gcu_batch** %3, align 8
  br label %8

24:                                               ; preds = %8
  %25 = load %struct.pxa3xx_gcu_priv*, %struct.pxa3xx_gcu_priv** %2, align 8
  %26 = getelementptr inbounds %struct.pxa3xx_gcu_priv, %struct.pxa3xx_gcu_priv* %25, i32 0, i32 0
  store %struct.pxa3xx_gcu_batch* null, %struct.pxa3xx_gcu_batch** %26, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
