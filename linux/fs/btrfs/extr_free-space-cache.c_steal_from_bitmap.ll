; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_steal_from_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_steal_from_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_free_space_ctl = type { i64 }
%struct.btrfs_free_space = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_free_space_ctl*, %struct.btrfs_free_space*, i32)* @steal_from_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @steal_from_bitmap(%struct.btrfs_free_space_ctl* %0, %struct.btrfs_free_space* %1, i32 %2) #0 {
  %4 = alloca %struct.btrfs_free_space_ctl*, align 8
  %5 = alloca %struct.btrfs_free_space*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.btrfs_free_space_ctl* %0, %struct.btrfs_free_space_ctl** %4, align 8
  store %struct.btrfs_free_space* %1, %struct.btrfs_free_space** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %5, align 8
  %10 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @ASSERT(i32 %14)
  %16 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %5, align 8
  %17 = getelementptr inbounds %struct.btrfs_free_space, %struct.btrfs_free_space* %16, i32 0, i32 0
  %18 = call i32 @RB_EMPTY_NODE(i32* %17)
  %19 = call i32 @ASSERT(i32 %18)
  %20 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %4, align 8
  %21 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sgt i64 %22, 0
  br i1 %23, label %24, label %50

24:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  %25 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %4, align 8
  %26 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @steal_from_bitmap_to_end(%struct.btrfs_free_space_ctl* %25, %struct.btrfs_free_space* %26, i32 %27)
  store i32 %28, i32* %7, align 4
  %29 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %4, align 8
  %30 = getelementptr inbounds %struct.btrfs_free_space_ctl, %struct.btrfs_free_space_ctl* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %4, align 8
  %35 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @steal_from_bitmap_to_front(%struct.btrfs_free_space_ctl* %34, %struct.btrfs_free_space* %35, i32 %36)
  store i32 %37, i32* %8, align 4
  br label %38

38:                                               ; preds = %33, %24
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %41, %38
  %45 = load %struct.btrfs_free_space_ctl*, %struct.btrfs_free_space_ctl** %4, align 8
  %46 = load %struct.btrfs_free_space*, %struct.btrfs_free_space** %5, align 8
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @try_merge_free_space(%struct.btrfs_free_space_ctl* %45, %struct.btrfs_free_space* %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %41
  br label %50

50:                                               ; preds = %49, %3
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @RB_EMPTY_NODE(i32*) #1

declare dso_local i32 @steal_from_bitmap_to_end(%struct.btrfs_free_space_ctl*, %struct.btrfs_free_space*, i32) #1

declare dso_local i32 @steal_from_bitmap_to_front(%struct.btrfs_free_space_ctl*, %struct.btrfs_free_space*, i32) #1

declare dso_local i32 @try_merge_free_space(%struct.btrfs_free_space_ctl*, %struct.btrfs_free_space*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
