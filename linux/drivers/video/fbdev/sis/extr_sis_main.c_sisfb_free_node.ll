; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_sisfb_free_node.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/sis/extr_sis_main.c_sisfb_free_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.SIS_HEAP = type { %struct.SIS_OH* }
%struct.SIS_OH = type { %struct.SIS_OH* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.SIS_HEAP*, %struct.SIS_OH*)* @sisfb_free_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sisfb_free_node(%struct.SIS_HEAP* %0, %struct.SIS_OH* %1) #0 {
  %3 = alloca %struct.SIS_HEAP*, align 8
  %4 = alloca %struct.SIS_OH*, align 8
  store %struct.SIS_HEAP* %0, %struct.SIS_HEAP** %3, align 8
  store %struct.SIS_OH* %1, %struct.SIS_OH** %4, align 8
  %5 = load %struct.SIS_OH*, %struct.SIS_OH** %4, align 8
  %6 = icmp eq %struct.SIS_OH* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %17

8:                                                ; preds = %2
  %9 = load %struct.SIS_HEAP*, %struct.SIS_HEAP** %3, align 8
  %10 = getelementptr inbounds %struct.SIS_HEAP, %struct.SIS_HEAP* %9, i32 0, i32 0
  %11 = load %struct.SIS_OH*, %struct.SIS_OH** %10, align 8
  %12 = load %struct.SIS_OH*, %struct.SIS_OH** %4, align 8
  %13 = getelementptr inbounds %struct.SIS_OH, %struct.SIS_OH* %12, i32 0, i32 0
  store %struct.SIS_OH* %11, %struct.SIS_OH** %13, align 8
  %14 = load %struct.SIS_OH*, %struct.SIS_OH** %4, align 8
  %15 = load %struct.SIS_HEAP*, %struct.SIS_HEAP** %3, align 8
  %16 = getelementptr inbounds %struct.SIS_HEAP, %struct.SIS_HEAP* %15, i32 0, i32 0
  store %struct.SIS_OH* %14, %struct.SIS_OH** %16, align 8
  br label %17

17:                                               ; preds = %8, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
