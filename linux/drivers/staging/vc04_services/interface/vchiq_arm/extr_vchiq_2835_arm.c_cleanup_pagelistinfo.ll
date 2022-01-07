; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_2835_arm.c_cleanup_pagelistinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_2835_arm.c_cleanup_pagelistinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_pagelist_info = type { i32, i32, i32, i32, i32*, i64, i32, i32, i64 }

@g_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vchiq_pagelist_info*)* @cleanup_pagelistinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_pagelistinfo(%struct.vchiq_pagelist_info* %0) #0 {
  %2 = alloca %struct.vchiq_pagelist_info*, align 8
  %3 = alloca i32, align 4
  store %struct.vchiq_pagelist_info* %0, %struct.vchiq_pagelist_info** %2, align 8
  %4 = load %struct.vchiq_pagelist_info*, %struct.vchiq_pagelist_info** %2, align 8
  %5 = getelementptr inbounds %struct.vchiq_pagelist_info, %struct.vchiq_pagelist_info* %4, i32 0, i32 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %1
  %9 = load i32, i32* @g_dev, align 4
  %10 = load %struct.vchiq_pagelist_info*, %struct.vchiq_pagelist_info** %2, align 8
  %11 = getelementptr inbounds %struct.vchiq_pagelist_info, %struct.vchiq_pagelist_info* %10, i32 0, i32 7
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.vchiq_pagelist_info*, %struct.vchiq_pagelist_info** %2, align 8
  %14 = getelementptr inbounds %struct.vchiq_pagelist_info, %struct.vchiq_pagelist_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.vchiq_pagelist_info*, %struct.vchiq_pagelist_info** %2, align 8
  %17 = getelementptr inbounds %struct.vchiq_pagelist_info, %struct.vchiq_pagelist_info* %16, i32 0, i32 6
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @dma_unmap_sg(i32 %9, i32 %12, i32 %15, i32 %18)
  br label %20

20:                                               ; preds = %8, %1
  %21 = load %struct.vchiq_pagelist_info*, %struct.vchiq_pagelist_info** %2, align 8
  %22 = getelementptr inbounds %struct.vchiq_pagelist_info, %struct.vchiq_pagelist_info* %21, i32 0, i32 5
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %41, %25
  %27 = load i32, i32* %3, align 4
  %28 = load %struct.vchiq_pagelist_info*, %struct.vchiq_pagelist_info** %2, align 8
  %29 = getelementptr inbounds %struct.vchiq_pagelist_info, %struct.vchiq_pagelist_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ult i32 %27, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %26
  %33 = load %struct.vchiq_pagelist_info*, %struct.vchiq_pagelist_info** %2, align 8
  %34 = getelementptr inbounds %struct.vchiq_pagelist_info, %struct.vchiq_pagelist_info* %33, i32 0, i32 4
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %3, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @put_page(i32 %39)
  br label %41

41:                                               ; preds = %32
  %42 = load i32, i32* %3, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %26

44:                                               ; preds = %26
  br label %45

45:                                               ; preds = %44, %20
  %46 = load i32, i32* @g_dev, align 4
  %47 = load %struct.vchiq_pagelist_info*, %struct.vchiq_pagelist_info** %2, align 8
  %48 = getelementptr inbounds %struct.vchiq_pagelist_info, %struct.vchiq_pagelist_info* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.vchiq_pagelist_info*, %struct.vchiq_pagelist_info** %2, align 8
  %51 = getelementptr inbounds %struct.vchiq_pagelist_info, %struct.vchiq_pagelist_info* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.vchiq_pagelist_info*, %struct.vchiq_pagelist_info** %2, align 8
  %54 = getelementptr inbounds %struct.vchiq_pagelist_info, %struct.vchiq_pagelist_info* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dma_free_coherent(i32 %46, i32 %49, i32 %52, i32 %55)
  ret void
}

declare dso_local i32 @dma_unmap_sg(i32, i32, i32, i32) #1

declare dso_local i32 @put_page(i32) #1

declare dso_local i32 @dma_free_coherent(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
