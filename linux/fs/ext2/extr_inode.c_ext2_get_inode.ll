; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_inode.c_ext2_get_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_inode.c_ext2_get_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext2_inode = type { i32 }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ext2_group_desc = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EXT2_ROOT_INO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"ext2_get_inode\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"bad inode number: %lu\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [50 x i8] c"unable to read inode block - inode=%lu, block=%lu\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ext2_inode* (%struct.super_block*, i32, %struct.buffer_head**)* @ext2_get_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ext2_inode* @ext2_get_inode(%struct.super_block* %0, i32 %1, %struct.buffer_head** %2) #0 {
  %4 = alloca %struct.ext2_inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head**, align 8
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ext2_group_desc*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.buffer_head** %2, %struct.buffer_head*** %7, align 8
  %13 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %13, align 8
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @EXT2_ROOT_INO, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %3
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.super_block*, %struct.super_block** %5, align 8
  %20 = call i32 @EXT2_FIRST_INO(%struct.super_block* %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %33, label %22

22:                                               ; preds = %17, %3
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = load %struct.super_block*, %struct.super_block** %5, align 8
  %26 = call %struct.TYPE_4__* @EXT2_SB(%struct.super_block* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @le32_to_cpu(i32 %30)
  %32 = icmp ugt i64 %24, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %22, %17
  br label %86

34:                                               ; preds = %22
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 %35, 1
  %37 = load %struct.super_block*, %struct.super_block** %5, align 8
  %38 = call i32 @EXT2_INODES_PER_GROUP(%struct.super_block* %37)
  %39 = sdiv i32 %36, %38
  %40 = sext i32 %39 to i64
  store i64 %40, i64* %9, align 8
  %41 = load %struct.super_block*, %struct.super_block** %5, align 8
  %42 = load i64, i64* %9, align 8
  %43 = call %struct.ext2_group_desc* @ext2_get_group_desc(%struct.super_block* %41, i64 %42, i32* null)
  store %struct.ext2_group_desc* %43, %struct.ext2_group_desc** %12, align 8
  %44 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %12, align 8
  %45 = icmp ne %struct.ext2_group_desc* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %34
  br label %100

47:                                               ; preds = %34
  %48 = load i32, i32* %6, align 4
  %49 = sub nsw i32 %48, 1
  %50 = load %struct.super_block*, %struct.super_block** %5, align 8
  %51 = call i32 @EXT2_INODES_PER_GROUP(%struct.super_block* %50)
  %52 = srem i32 %49, %51
  %53 = load %struct.super_block*, %struct.super_block** %5, align 8
  %54 = call i32 @EXT2_INODE_SIZE(%struct.super_block* %53)
  %55 = mul nsw i32 %52, %54
  %56 = sext i32 %55 to i64
  store i64 %56, i64* %11, align 8
  %57 = load %struct.ext2_group_desc*, %struct.ext2_group_desc** %12, align 8
  %58 = getelementptr inbounds %struct.ext2_group_desc, %struct.ext2_group_desc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i64 @le32_to_cpu(i32 %59)
  %61 = load i64, i64* %11, align 8
  %62 = load %struct.super_block*, %struct.super_block** %5, align 8
  %63 = call i64 @EXT2_BLOCK_SIZE_BITS(%struct.super_block* %62)
  %64 = lshr i64 %61, %63
  %65 = add i64 %60, %64
  store i64 %65, i64* %10, align 8
  %66 = load %struct.super_block*, %struct.super_block** %5, align 8
  %67 = load i64, i64* %10, align 8
  %68 = call %struct.buffer_head* @sb_bread(%struct.super_block* %66, i64 %67)
  store %struct.buffer_head* %68, %struct.buffer_head** %8, align 8
  %69 = icmp ne %struct.buffer_head* %68, null
  br i1 %69, label %71, label %70

70:                                               ; preds = %47
  br label %94

71:                                               ; preds = %47
  %72 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %73 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  store %struct.buffer_head* %72, %struct.buffer_head** %73, align 8
  %74 = load %struct.super_block*, %struct.super_block** %5, align 8
  %75 = call i32 @EXT2_BLOCK_SIZE(%struct.super_block* %74)
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = load i64, i64* %11, align 8
  %79 = and i64 %78, %77
  store i64 %79, i64* %11, align 8
  %80 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %81 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* %11, align 8
  %84 = add i64 %82, %83
  %85 = inttoptr i64 %84 to %struct.ext2_inode*
  store %struct.ext2_inode* %85, %struct.ext2_inode** %4, align 8
  br label %104

86:                                               ; preds = %33
  %87 = load %struct.super_block*, %struct.super_block** %5, align 8
  %88 = load i32, i32* %6, align 4
  %89 = sext i32 %88 to i64
  %90 = call i32 (%struct.super_block*, i8*, i8*, i64, ...) @ext2_error(%struct.super_block* %87, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i64 %89)
  %91 = load i32, i32* @EINVAL, align 4
  %92 = sub nsw i32 0, %91
  %93 = call %struct.ext2_inode* @ERR_PTR(i32 %92)
  store %struct.ext2_inode* %93, %struct.ext2_inode** %4, align 8
  br label %104

94:                                               ; preds = %70
  %95 = load %struct.super_block*, %struct.super_block** %5, align 8
  %96 = load i32, i32* %6, align 4
  %97 = sext i32 %96 to i64
  %98 = load i64, i64* %10, align 8
  %99 = call i32 (%struct.super_block*, i8*, i8*, i64, ...) @ext2_error(%struct.super_block* %95, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.2, i64 0, i64 0), i64 %97, i64 %98)
  br label %100

100:                                              ; preds = %94, %46
  %101 = load i32, i32* @EIO, align 4
  %102 = sub nsw i32 0, %101
  %103 = call %struct.ext2_inode* @ERR_PTR(i32 %102)
  store %struct.ext2_inode* %103, %struct.ext2_inode** %4, align 8
  br label %104

104:                                              ; preds = %100, %86, %71
  %105 = load %struct.ext2_inode*, %struct.ext2_inode** %4, align 8
  ret %struct.ext2_inode* %105
}

declare dso_local i32 @EXT2_FIRST_INO(%struct.super_block*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local %struct.TYPE_4__* @EXT2_SB(%struct.super_block*) #1

declare dso_local i32 @EXT2_INODES_PER_GROUP(%struct.super_block*) #1

declare dso_local %struct.ext2_group_desc* @ext2_get_group_desc(%struct.super_block*, i64, i32*) #1

declare dso_local i32 @EXT2_INODE_SIZE(%struct.super_block*) #1

declare dso_local i64 @EXT2_BLOCK_SIZE_BITS(%struct.super_block*) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i64) #1

declare dso_local i32 @EXT2_BLOCK_SIZE(%struct.super_block*) #1

declare dso_local i32 @ext2_error(%struct.super_block*, i8*, i8*, i64, ...) #1

declare dso_local %struct.ext2_inode* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
