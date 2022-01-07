; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_ialloc.c_find_group_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_ialloc.c_find_group_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.inode = type { i32 }
%struct.ext2_group_desc = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.inode*)* @find_group_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_group_dir(%struct.super_block* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ext2_group_desc*, align 8
  %8 = alloca %struct.ext2_group_desc*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %11 = load %struct.super_block*, %struct.super_block** %3, align 8
  %12 = call %struct.TYPE_2__* @EXT2_SB(%struct.super_block* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %5, align 4
  %15 = load %struct.super_block*, %struct.super_block** %3, align 8
  %16 = call i32 @ext2_count_free_inodes(%struct.super_block* %15)
  %17 = load i32, i32* %5, align 4
  %18 = sdiv i32 %16, %17
  store i32 %18, i32* %6, align 4
  store %struct.ext2_group_desc* null, %struct.ext2_group_desc** %8, align 8
  store i32 -1, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %19

19:                                               ; preds = %60, %2
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %5, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %63

23:                                               ; preds = %19
  %24 = load %struct.super_block*, %struct.super_block** %3, align 8
  %25 = load i32, i32* %9, align 4
  %26 = call %struct.ext2_group_desc* @ext2_get_group_desc(%struct.super_block* %24, i32 %25, i32* null)
  store %struct.ext2_group_desc* %26, %struct.ext2_group_desc** %7, align 8
  %27 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %7, align 8
  %28 = icmp ne %struct.ext2_group_desc* %27, null
  br i1 %28, label %29, label %34

29:                                               ; preds = %23
  %30 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %7, align 8
  %31 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %29, %23
  br label %60

35:                                               ; preds = %29
  %36 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %7, align 8
  %37 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @le16_to_cpu(i32 %38)
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %35
  br label %60

43:                                               ; preds = %35
  %44 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %8, align 8
  %45 = icmp ne %struct.ext2_group_desc* %44, null
  br i1 %45, label %46, label %56

46:                                               ; preds = %43
  %47 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %7, align 8
  %48 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @le16_to_cpu(i32 %49)
  %51 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %8, align 8
  %52 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @le16_to_cpu(i32 %53)
  %55 = icmp sgt i32 %50, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %46, %43
  %57 = load i32, i32* %9, align 4
  store i32 %57, i32* %10, align 4
  %58 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %7, align 8
  store %struct.ext2_group_desc* %58, %struct.ext2_group_desc** %8, align 8
  br label %59

59:                                               ; preds = %56, %46
  br label %60

60:                                               ; preds = %59, %42, %34
  %61 = load i32, i32* %9, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %9, align 4
  br label %19

63:                                               ; preds = %19
  %64 = load i32, i32* %10, align 4
  ret i32 %64
}

declare dso_local %struct.TYPE_2__* @EXT2_SB(%struct.super_block*) #1

declare dso_local i32 @ext2_count_free_inodes(%struct.super_block*) #1

declare dso_local %struct.ext2_group_desc* @ext2_get_group_desc(%struct.super_block*, i32, i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
