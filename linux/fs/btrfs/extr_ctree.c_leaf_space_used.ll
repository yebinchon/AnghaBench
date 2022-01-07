; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_leaf_space_used.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_leaf_space_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32 }
%struct.btrfs_item = type { i32 }
%struct.btrfs_map_token = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.extent_buffer*, i32, i32)* @leaf_space_used to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @leaf_space_used(%struct.extent_buffer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.extent_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.btrfs_item*, align 8
  %9 = alloca %struct.btrfs_item*, align 8
  %10 = alloca %struct.btrfs_map_token, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.extent_buffer* %0, %struct.extent_buffer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %15 = call i32 @btrfs_header_nritems(%struct.extent_buffer* %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load i32, i32* %7, align 4
  %19 = add nsw i32 %17, %18
  %20 = call i32 @min(i32 %16, i32 %19)
  %21 = sub nsw i32 %20, 1
  store i32 %21, i32* %13, align 4
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %56

25:                                               ; preds = %3
  %26 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %27 = call i32 @btrfs_init_map_token(%struct.btrfs_map_token* %10, %struct.extent_buffer* %26)
  %28 = load i32, i32* %6, align 4
  %29 = call %struct.btrfs_item* @btrfs_item_nr(i32 %28)
  store %struct.btrfs_item* %29, %struct.btrfs_item** %8, align 8
  %30 = load i32, i32* %13, align 4
  %31 = call %struct.btrfs_item* @btrfs_item_nr(i32 %30)
  store %struct.btrfs_item* %31, %struct.btrfs_item** %9, align 8
  %32 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %33 = load %struct.btrfs_item*, %struct.btrfs_item** %8, align 8
  %34 = call i32 @btrfs_token_item_offset(%struct.extent_buffer* %32, %struct.btrfs_item* %33, %struct.btrfs_map_token* %10)
  %35 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %36 = load %struct.btrfs_item*, %struct.btrfs_item** %8, align 8
  %37 = call i32 @btrfs_token_item_size(%struct.extent_buffer* %35, %struct.btrfs_item* %36, %struct.btrfs_map_token* %10)
  %38 = add nsw i32 %34, %37
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %11, align 4
  %40 = load %struct.extent_buffer*, %struct.extent_buffer** %5, align 8
  %41 = load %struct.btrfs_item*, %struct.btrfs_item** %9, align 8
  %42 = call i32 @btrfs_token_item_offset(%struct.extent_buffer* %40, %struct.btrfs_item* %41, %struct.btrfs_map_token* %10)
  %43 = sub nsw i32 %39, %42
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = mul i64 4, %45
  %47 = load i32, i32* %11, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 %48, %46
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp slt i32 %51, 0
  %53 = zext i1 %52 to i32
  %54 = call i32 @WARN_ON(i32 %53)
  %55 = load i32, i32* %11, align 4
  store i32 %55, i32* %4, align 4
  br label %56

56:                                               ; preds = %25, %24
  %57 = load i32, i32* %4, align 4
  ret i32 %57
}

declare dso_local i32 @btrfs_header_nritems(%struct.extent_buffer*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @btrfs_init_map_token(%struct.btrfs_map_token*, %struct.extent_buffer*) #1

declare dso_local %struct.btrfs_item* @btrfs_item_nr(i32) #1

declare dso_local i32 @btrfs_token_item_offset(%struct.extent_buffer*, %struct.btrfs_item*, %struct.btrfs_map_token*) #1

declare dso_local i32 @btrfs_token_item_size(%struct.extent_buffer*, %struct.btrfs_item*, %struct.btrfs_map_token*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
