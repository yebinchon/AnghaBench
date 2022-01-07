; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_steal_from_bitmap_to_end.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_steal_from_bitmap_to_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_free_space_ctl = type { i64 }
%struct.btrfs_free_space = type { i64, i64, i32 }

@BITS_PER_BITMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_free_space_ctl*, %struct.btrfs_free_space*, i32)* @steal_from_bitmap_to_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @steal_from_bitmap_to_end(%struct.btrfs_free_space_ctl* %0, %struct.btrfs_free_space* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_free_space_ctl*, align 8
  %6 = alloca %struct.btrfs_free_space*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_free_space*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.btrfs_free_space_ctl* %0, %struct.btrfs_free_space_ctl** %5, align 8
  store %struct.btrfs_free_space* %1, %struct.btrfs_free_space** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %6, align 8
  %15 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %6, align 8
  %18 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = add i64 %16, %19
  store i64 %20, i64* %11, align 8
  %21 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %5, align 8
  %22 = load i64, i64* %11, align 8
  %23 = call i64 @offset_to_bitmap(%struct.btrfs_free_space_ctl* %21, i64 %22)
  store i64 %23, i64* %12, align 8
  %24 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %5, align 8
  %25 = load i64, i64* %12, align 8
  %26 = call %struct.btrfs_free_space* @tree_search_offset(%struct.btrfs_free_space_ctl* %24, i64 %25, i32 1, i32 0)
  store %struct.btrfs_free_space* %26, %struct.btrfs_free_space** %8, align 8
  %27 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %28 = icmp ne %struct.btrfs_free_space* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %86

30:                                               ; preds = %3
  %31 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %32 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %5, align 8
  %35 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %11, align 8
  %38 = call i64 @offset_to_bit(i64 %33, i64 %36, i64 %37)
  store i64 %38, i64* %9, align 8
  %39 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %40 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @BITS_PER_BITMAP, align 4
  %43 = load i64, i64* %9, align 8
  %44 = call i64 @find_next_zero_bit(i32 %41, i32 %42, i64 %43)
  store i64 %44, i64* %10, align 8
  %45 = load i64, i64* %10, align 8
  %46 = load i64, i64* %9, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %86

49:                                               ; preds = %30
  %50 = load i64, i64* %10, align 8
  %51 = load i64, i64* %9, align 8
  %52 = sub i64 %50, %51
  %53 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %5, align 8
  %54 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = mul i64 %52, %55
  store i64 %56, i64* %13, align 8
  %57 = load i64, i64* %13, align 8
  %58 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %6, align 8
  %59 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = add i64 %60, %57
  store i64 %61, i64* %59, align 8
  %62 = load i32, i32* %7, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %49
  %65 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %5, align 8
  %66 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %67 = load i64, i64* %11, align 8
  %68 = load i64, i64* %13, align 8
  %69 = call i32 @bitmap_clear_bits(%struct.btrfs_free_space_ctl* %65, %struct.btrfs_free_space* %66, i64 %67, i64 %68)
  br label %76

70:                                               ; preds = %49
  %71 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %5, align 8
  %72 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %73 = load i64, i64* %11, align 8
  %74 = load i64, i64* %13, align 8
  %75 = call i32 @__bitmap_clear_bits(%struct.btrfs_free_space_ctl* %71, %struct.btrfs_free_space* %72, i64 %73, i64 %74)
  br label %76

76:                                               ; preds = %70, %64
  %77 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %78 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %76
  %82 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %5, align 8
  %83 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %8, align 8
  %84 = call i32 @free_bitmap(%struct.btrfs_free_space_ctl* %82, %struct.btrfs_free_space* %83)
  br label %85

85:                                               ; preds = %81, %76
  store i32 1, i32* %4, align 4
  br label %86

86:                                               ; preds = %85, %48, %29
  %87 = load i32, i32* %4, align 4
  ret i32 %87
}

declare dso_local i64 @offset_to_bitmap(%struct.btrfs_free_space_ctl*, i64) #1

declare dso_local %struct.btrfs_free_space* @tree_search_offset(%struct.btrfs_free_space_ctl*, i64, i32, i32) #1

declare dso_local i64 @offset_to_bit(i64, i64, i64) #1

declare dso_local i64 @find_next_zero_bit(i32, i32, i64) #1

declare dso_local i32 @bitmap_clear_bits(%struct.btrfs_free_space_ctl*, %struct.btrfs_free_space*, i64, i64) #1

declare dso_local i32 @__bitmap_clear_bits(%struct.btrfs_free_space_ctl*, %struct.btrfs_free_space*, i64, i64) #1

declare dso_local i32 @free_bitmap(%struct.btrfs_free_space_ctl*, %struct.btrfs_free_space*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
