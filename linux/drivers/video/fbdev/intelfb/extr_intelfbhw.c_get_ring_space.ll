; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbhw.c_get_ring_space.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/intelfb/extr_intelfbhw.c_get_ring_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intelfb_info = type { i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@RING_MIN_FREE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.intelfb_info*)* @get_ring_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_ring_space(%struct.intelfb_info* %0) #0 {
  %2 = alloca %struct.intelfb_info*, align 8
  %3 = alloca i64, align 8
  store %struct.intelfb_info* %0, %struct.intelfb_info** %2, align 8
  %4 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %5 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %8 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp sge i64 %6, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %1
  %12 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %13 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %12, i32 0, i32 2
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %17 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %20 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = sub nsw i64 %18, %21
  %23 = sub nsw i64 %15, %22
  store i64 %23, i64* %3, align 8
  br label %32

24:                                               ; preds = %1
  %25 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %26 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.intelfb_info*, %struct.intelfb_info** %2, align 8
  %29 = getelementptr inbounds %struct.intelfb_info, %struct.intelfb_info* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = sub nsw i64 %27, %30
  store i64 %31, i64* %3, align 8
  br label %32

32:                                               ; preds = %24, %11
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* @RING_MIN_FREE, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load i64, i64* @RING_MIN_FREE, align 8
  %38 = load i64, i64* %3, align 8
  %39 = sub nsw i64 %38, %37
  store i64 %39, i64* %3, align 8
  br label %41

40:                                               ; preds = %32
  store i64 0, i64* %3, align 8
  br label %41

41:                                               ; preds = %40, %36
  %42 = load i64, i64* %3, align 8
  ret i64 %42
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
