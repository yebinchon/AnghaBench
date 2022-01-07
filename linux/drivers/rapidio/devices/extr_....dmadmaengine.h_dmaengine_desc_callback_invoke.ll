; ModuleID = '/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_....dmadmaengine.h_dmaengine_desc_callback_invoke.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/rapidio/devices/extr_....dmadmaengine.h_dmaengine_desc_callback_invoke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmaengine_desc_callback = type { i32, i32 (i32)*, i32 (i32, %struct.dmaengine_result*)* }
%struct.dmaengine_result = type { i32, i32 }

@DMA_TRANS_NOERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmaengine_desc_callback*, %struct.dmaengine_result*)* @dmaengine_desc_callback_invoke to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dmaengine_desc_callback_invoke(%struct.dmaengine_desc_callback* %0, %struct.dmaengine_result* %1) #0 {
  %3 = alloca %struct.dmaengine_desc_callback*, align 8
  %4 = alloca %struct.dmaengine_result*, align 8
  %5 = alloca %struct.dmaengine_result, align 4
  store %struct.dmaengine_desc_callback* %0, %struct.dmaengine_desc_callback** %3, align 8
  store %struct.dmaengine_result* %1, %struct.dmaengine_result** %4, align 8
  %6 = getelementptr inbounds %struct.dmaengine_result, %struct.dmaengine_result* %5, i32 0, i32 0
  store i32 0, i32* %6, align 4
  %7 = getelementptr inbounds %struct.dmaengine_result, %struct.dmaengine_result* %5, i32 0, i32 1
  %8 = load i32, i32* @DMA_TRANS_NOERROR, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.dmaengine_desc_callback*, %struct.dmaengine_desc_callback** %3, align 8
  %10 = getelementptr inbounds %struct.dmaengine_desc_callback, %struct.dmaengine_desc_callback* %9, i32 0, i32 2
  %11 = load i32 (i32, %struct.dmaengine_result*)*, i32 (i32, %struct.dmaengine_result*)** %10, align 8
  %12 = icmp ne i32 (i32, %struct.dmaengine_result*)* %11, null
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = load %struct.dmaengine_result*, %struct.dmaengine_result** %4, align 8
  %15 = icmp ne %struct.dmaengine_result* %14, null
  br i1 %15, label %17, label %16

16:                                               ; preds = %13
  store %struct.dmaengine_result* %5, %struct.dmaengine_result** %4, align 8
  br label %17

17:                                               ; preds = %16, %13
  %18 = load %struct.dmaengine_desc_callback*, %struct.dmaengine_desc_callback** %3, align 8
  %19 = getelementptr inbounds %struct.dmaengine_desc_callback, %struct.dmaengine_desc_callback* %18, i32 0, i32 2
  %20 = load i32 (i32, %struct.dmaengine_result*)*, i32 (i32, %struct.dmaengine_result*)** %19, align 8
  %21 = load %struct.dmaengine_desc_callback*, %struct.dmaengine_desc_callback** %3, align 8
  %22 = getelementptr inbounds %struct.dmaengine_desc_callback, %struct.dmaengine_desc_callback* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.dmaengine_result*, %struct.dmaengine_result** %4, align 8
  %25 = call i32 %20(i32 %23, %struct.dmaengine_result* %24)
  br label %40

26:                                               ; preds = %2
  %27 = load %struct.dmaengine_desc_callback*, %struct.dmaengine_desc_callback** %3, align 8
  %28 = getelementptr inbounds %struct.dmaengine_desc_callback, %struct.dmaengine_desc_callback* %27, i32 0, i32 1
  %29 = load i32 (i32)*, i32 (i32)** %28, align 8
  %30 = icmp ne i32 (i32)* %29, null
  br i1 %30, label %31, label %39

31:                                               ; preds = %26
  %32 = load %struct.dmaengine_desc_callback*, %struct.dmaengine_desc_callback** %3, align 8
  %33 = getelementptr inbounds %struct.dmaengine_desc_callback, %struct.dmaengine_desc_callback* %32, i32 0, i32 1
  %34 = load i32 (i32)*, i32 (i32)** %33, align 8
  %35 = load %struct.dmaengine_desc_callback*, %struct.dmaengine_desc_callback** %3, align 8
  %36 = getelementptr inbounds %struct.dmaengine_desc_callback, %struct.dmaengine_desc_callback* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 %34(i32 %37)
  br label %39

39:                                               ; preds = %31, %26
  br label %40

40:                                               ; preds = %39, %17
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
