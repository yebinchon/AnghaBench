; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_emit_last_fiemap_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_extent_io.c_emit_last_fiemap_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fiemap_extent_info = type { i32 }
%struct.fiemap_cache = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fiemap_extent_info*, %struct.fiemap_cache*)* @emit_last_fiemap_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @emit_last_fiemap_cache(%struct.fiemap_extent_info* %0, %struct.fiemap_cache* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fiemap_extent_info*, align 8
  %5 = alloca %struct.fiemap_cache*, align 8
  %6 = alloca i32, align 4
  store %struct.fiemap_extent_info* %0, %struct.fiemap_extent_info** %4, align 8
  store %struct.fiemap_cache* %1, %struct.fiemap_cache** %5, align 8
  %7 = load %struct.fiemap_cache*, %struct.fiemap_cache** %5, align 8
  %8 = getelementptr inbounds %struct.fiemap_cache, %struct.fiemap_cache* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

12:                                               ; preds = %2
  %13 = load %struct.fiemap_extent_info*, %struct.fiemap_extent_info** %4, align 8
  %14 = load %struct.fiemap_cache*, %struct.fiemap_cache** %5, align 8
  %15 = getelementptr inbounds %struct.fiemap_cache, %struct.fiemap_cache* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.fiemap_cache*, %struct.fiemap_cache** %5, align 8
  %18 = getelementptr inbounds %struct.fiemap_cache, %struct.fiemap_cache* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.fiemap_cache*, %struct.fiemap_cache** %5, align 8
  %21 = getelementptr inbounds %struct.fiemap_cache, %struct.fiemap_cache* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.fiemap_cache*, %struct.fiemap_cache** %5, align 8
  %24 = getelementptr inbounds %struct.fiemap_cache, %struct.fiemap_cache* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @fiemap_fill_next_extent(%struct.fiemap_extent_info* %13, i32 %16, i32 %19, i32 %22, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.fiemap_cache*, %struct.fiemap_cache** %5, align 8
  %28 = getelementptr inbounds %struct.fiemap_cache, %struct.fiemap_cache* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp sgt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %12
  store i32 0, i32* %6, align 4
  br label %32

32:                                               ; preds = %31, %12
  %33 = load i32, i32* %6, align 4
  store i32 %33, i32* %3, align 4
  br label %34

34:                                               ; preds = %32, %11
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32 @fiemap_fill_next_extent(%struct.fiemap_extent_info*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
