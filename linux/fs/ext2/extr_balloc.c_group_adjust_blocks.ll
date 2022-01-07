; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_balloc.c_group_adjust_blocks.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_balloc.c_group_adjust_blocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext2_group_desc = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ext2_sb_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, i32, %struct.ext2_group_desc*, %struct.buffer_head*, i32)* @group_adjust_blocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @group_adjust_blocks(%struct.super_block* %0, i32 %1, %struct.ext2_group_desc* %2, %struct.buffer_head* %3, i32 %4) #0 {
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ext2_group_desc*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ext2_sb_info*, align 8
  %12 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ext2_group_desc* %2, %struct.ext2_group_desc** %8, align 8
  store %struct.buffer_head* %3, %struct.buffer_head** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* %10, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %38

15:                                               ; preds = %5
  %16 = load %struct.super_block*, %struct.super_block** %6, align 8
  %17 = call %struct.ext2_sb_info* @EXT2_SB(%struct.super_block* %16)
  store %struct.ext2_sb_info* %17, %struct.ext2_sb_info** %11, align 8
  %18 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %11, align 8
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @sb_bgl_lock(%struct.ext2_sb_info* %18, i32 %19)
  %21 = call i32 @spin_lock(i32 %20)
  %22 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %8, align 8
  %23 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @le16_to_cpu(i32 %24)
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load i32, i32* %10, align 4
  %28 = add i32 %26, %27
  %29 = call i32 @cpu_to_le16(i32 %28)
  %30 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %8, align 8
  %31 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ext2_sb_info*, %struct.ext2_sb_info** %11, align 8
  %33 = load i32, i32* %7, align 4
  %34 = call i32 @sb_bgl_lock(%struct.ext2_sb_info* %32, i32 %33)
  %35 = call i32 @spin_unlock(i32 %34)
  %36 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %37 = call i32 @mark_buffer_dirty(%struct.buffer_head* %36)
  br label %38

38:                                               ; preds = %15, %5
  ret void
}

declare dso_local %struct.ext2_sb_info* @EXT2_SB(%struct.super_block*) #1

declare dso_local i32 @spin_lock(i32) #1

declare dso_local i32 @sb_bgl_lock(%struct.ext2_sb_info*, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @spin_unlock(i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
