; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_..extent_map.h_extent_map_end.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/tests/extr_..extent_map.h_extent_map_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_map = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.extent_map*)* @extent_map_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @extent_map_end(%struct.extent_map* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.extent_map*, align 8
  store %struct.extent_map* %0, %struct.extent_map** %3, align 8
  %4 = load %struct.extent_map*, %struct.extent_map** %3, align 8
  %5 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.extent_map*, %struct.extent_map** %3, align 8
  %8 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %6, %9
  %11 = load %struct.extent_map*, %struct.extent_map** %3, align 8
  %12 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i64 -1, i64* %2, align 8
  br label %24

16:                                               ; preds = %1
  %17 = load %struct.extent_map*, %struct.extent_map** %3, align 8
  %18 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.extent_map*, %struct.extent_map** %3, align 8
  %21 = getelementptr inbounds %struct.extent_map, %struct.extent_map* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  store i64 %23, i64* %2, align 8
  br label %24

24:                                               ; preds = %16, %15
  %25 = load i64, i64* %2, align 8
  ret i64 %25
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
