; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_balloc.c_goal_in_my_reservation.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_balloc.c_goal_in_my_reservation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_reserve_window = type { i64, i64 }
%struct.super_block = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ext2_reserve_window*, i64, i32, %struct.super_block*)* @goal_in_my_reservation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @goal_in_my_reservation(%struct.ext2_reserve_window* %0, i64 %1, i32 %2, %struct.super_block* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ext2_reserve_window*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.ext2_reserve_window* %0, %struct.ext2_reserve_window** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.super_block* %3, %struct.super_block** %9, align 8
  %12 = load %struct.super_block*, %struct.super_block** %9, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i64 @ext2_group_first_block_no(%struct.super_block* %12, i32 %13)
  store i64 %14, i64* %10, align 8
  %15 = load i64, i64* %10, align 8
  %16 = load %struct.super_block*, %struct.super_block** %9, align 8
  %17 = call i64 @EXT2_BLOCKS_PER_GROUP(%struct.super_block* %16)
  %18 = add nsw i64 %15, %17
  %19 = sub nsw i64 %18, 1
  store i64 %19, i64* %11, align 8
  %20 = load %struct.ext2_reserve_window*, %struct.ext2_reserve_window** %6, align 8
  %21 = getelementptr inbounds %struct.ext2_reserve_window, %struct.ext2_reserve_window* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %11, align 8
  %24 = icmp sgt i64 %22, %23
  br i1 %24, label %31, label %25

25:                                               ; preds = %4
  %26 = load %struct.ext2_reserve_window*, %struct.ext2_reserve_window** %6, align 8
  %27 = getelementptr inbounds %struct.ext2_reserve_window, %struct.ext2_reserve_window* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %10, align 8
  %30 = icmp slt i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %25, %4
  store i32 0, i32* %5, align 4
  br label %53

32:                                               ; preds = %25
  %33 = load i64, i64* %7, align 8
  %34 = icmp sge i64 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %32
  %36 = load i64, i64* %7, align 8
  %37 = load i64, i64* %10, align 8
  %38 = add nsw i64 %36, %37
  %39 = load %struct.ext2_reserve_window*, %struct.ext2_reserve_window** %6, align 8
  %40 = getelementptr inbounds %struct.ext2_reserve_window, %struct.ext2_reserve_window* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp slt i64 %38, %41
  br i1 %42, label %51, label %43

43:                                               ; preds = %35
  %44 = load i64, i64* %7, align 8
  %45 = load i64, i64* %10, align 8
  %46 = add nsw i64 %44, %45
  %47 = load %struct.ext2_reserve_window*, %struct.ext2_reserve_window** %6, align 8
  %48 = getelementptr inbounds %struct.ext2_reserve_window, %struct.ext2_reserve_window* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sgt i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %43, %35
  store i32 0, i32* %5, align 4
  br label %53

52:                                               ; preds = %43, %32
  store i32 1, i32* %5, align 4
  br label %53

53:                                               ; preds = %52, %51, %31
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i64 @ext2_group_first_block_no(%struct.super_block*, i32) #1

declare dso_local i64 @EXT2_BLOCKS_PER_GROUP(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
