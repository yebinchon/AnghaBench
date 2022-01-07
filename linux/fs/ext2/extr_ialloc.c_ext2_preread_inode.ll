; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_ialloc.c_ext2_preread_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_ialloc.c_ext2_preread_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32 }
%struct.ext2_group_desc = type { i32 }
%struct.backing_dev_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @ext2_preread_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext2_preread_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ext2_group_desc*, align 8
  %7 = alloca %struct.backing_dev_info*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %8 = load %struct.inode*, %struct.inode** %2, align 8
  %9 = call %struct.backing_dev_info* @inode_to_bdi(%struct.inode* %8)
  store %struct.backing_dev_info* %9, %struct.backing_dev_info** %7, align 8
  %10 = load %struct.backing_dev_info*, %struct.backing_dev_info** %7, align 8
  %11 = call i64 @bdi_rw_congested(%struct.backing_dev_info* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %65

14:                                               ; preds = %1
  %15 = load %struct.inode*, %struct.inode** %2, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sub nsw i32 %17, 1
  %19 = load %struct.inode*, %struct.inode** %2, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @EXT2_INODES_PER_GROUP(i32 %21)
  %23 = sdiv i32 %18, %22
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %3, align 8
  %25 = load %struct.inode*, %struct.inode** %2, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %3, align 8
  %29 = call %struct.ext2_group_desc* @ext2_get_group_desc(i32 %27, i64 %28, i32* null)
  store %struct.ext2_group_desc* %29, %struct.ext2_group_desc** %6, align 8
  %30 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %6, align 8
  %31 = icmp eq %struct.ext2_group_desc* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %14
  br label %65

33:                                               ; preds = %14
  %34 = load %struct.inode*, %struct.inode** %2, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %36, 1
  %38 = load %struct.inode*, %struct.inode** %2, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @EXT2_INODES_PER_GROUP(i32 %40)
  %42 = srem i32 %37, %41
  %43 = load %struct.inode*, %struct.inode** %2, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @EXT2_INODE_SIZE(i32 %45)
  %47 = mul nsw i32 %42, %46
  %48 = sext i32 %47 to i64
  store i64 %48, i64* %4, align 8
  %49 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %6, align 8
  %50 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @le32_to_cpu(i32 %51)
  %53 = load i64, i64* %4, align 8
  %54 = load %struct.inode*, %struct.inode** %2, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @EXT2_BLOCK_SIZE_BITS(i32 %56)
  %58 = lshr i64 %53, %57
  %59 = add i64 %52, %58
  store i64 %59, i64* %5, align 8
  %60 = load %struct.inode*, %struct.inode** %2, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load i64, i64* %5, align 8
  %64 = call i32 @sb_breadahead(i32 %62, i64 %63)
  br label %65

65:                                               ; preds = %33, %32, %13
  ret void
}

declare dso_local %struct.backing_dev_info* @inode_to_bdi(%struct.inode*) #1

declare dso_local i64 @bdi_rw_congested(%struct.backing_dev_info*) #1

declare dso_local i32 @EXT2_INODES_PER_GROUP(i32) #1

declare dso_local %struct.ext2_group_desc* @ext2_get_group_desc(i32, i64, i32*) #1

declare dso_local i32 @EXT2_INODE_SIZE(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @EXT2_BLOCK_SIZE_BITS(i32) #1

declare dso_local i32 @sb_breadahead(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
