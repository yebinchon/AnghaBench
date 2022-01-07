; ModuleID = '/home/carl/AnghaBench/linux/fs/ext2/extr_ialloc.c_ext2_free_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext2/extr_ialloc.c_ext2_free_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i64 }
%struct.ext2_super_block = type { i32 }
%struct.TYPE_3__ = type { %struct.ext2_super_block* }

@.str = private unnamed_addr constant [19 x i8] c"freeing inode %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"ext2_free_inode\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"reserved or nonexistent inode %lu\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"bit already cleared for inode %lu\00", align 1
@SB_SYNCHRONOUS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ext2_free_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ext2_super_block*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %10 = load %struct.inode*, %struct.inode** %2, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 2
  %12 = load %struct.super_block*, %struct.super_block** %11, align 8
  store %struct.super_block* %12, %struct.super_block** %3, align 8
  %13 = load %struct.inode*, %struct.inode** %2, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  store i64 %15, i64* %5, align 8
  %16 = load i64, i64* %5, align 8
  %17 = call i32 @ext2_debug(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = load %struct.inode*, %struct.inode** %2, align 8
  %19 = call i32 @dquot_free_inode(%struct.inode* %18)
  %20 = load %struct.inode*, %struct.inode** %2, align 8
  %21 = call i32 @dquot_drop(%struct.inode* %20)
  %22 = load %struct.super_block*, %struct.super_block** %3, align 8
  %23 = call %struct.TYPE_3__* @EXT2_SB(%struct.super_block* %22)
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.ext2_super_block*, %struct.ext2_super_block** %24, align 8
  store %struct.ext2_super_block* %25, %struct.ext2_super_block** %9, align 8
  %26 = load %struct.inode*, %struct.inode** %2, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @S_ISDIR(i32 %28)
  store i32 %29, i32* %4, align 4
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.super_block*, %struct.super_block** %3, align 8
  %32 = call i64 @EXT2_FIRST_INO(%struct.super_block* %31)
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %41, label %34

34:                                               ; preds = %1
  %35 = load i64, i64* %5, align 8
  %36 = load %struct.ext2_super_block*, %struct.ext2_super_block** %9, align 8
  %37 = getelementptr inbounds %struct.ext2_super_block, %struct.ext2_super_block* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @le32_to_cpu(i32 %38)
  %40 = icmp ugt i64 %35, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %34, %1
  %42 = load %struct.super_block*, %struct.super_block** %3, align 8
  %43 = load i64, i64* %5, align 8
  %44 = call i32 @ext2_error(%struct.super_block* %42, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %43)
  br label %98

45:                                               ; preds = %34
  %46 = load i64, i64* %5, align 8
  %47 = sub i64 %46, 1
  %48 = load %struct.super_block*, %struct.super_block** %3, align 8
  %49 = call i64 @EXT2_INODES_PER_GROUP(%struct.super_block* %48)
  %50 = udiv i64 %47, %49
  store i64 %50, i64* %7, align 8
  %51 = load i64, i64* %5, align 8
  %52 = sub i64 %51, 1
  %53 = load %struct.super_block*, %struct.super_block** %3, align 8
  %54 = call i64 @EXT2_INODES_PER_GROUP(%struct.super_block* %53)
  %55 = urem i64 %52, %54
  store i64 %55, i64* %8, align 8
  %56 = load %struct.super_block*, %struct.super_block** %3, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call %struct.buffer_head* @read_inode_bitmap(%struct.super_block* %56, i64 %57)
  store %struct.buffer_head* %58, %struct.buffer_head** %6, align 8
  %59 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %60 = icmp ne %struct.buffer_head* %59, null
  br i1 %60, label %62, label %61

61:                                               ; preds = %45
  br label %98

62:                                               ; preds = %45
  %63 = load %struct.super_block*, %struct.super_block** %3, align 8
  %64 = call %struct.TYPE_3__* @EXT2_SB(%struct.super_block* %63)
  %65 = load i64, i64* %7, align 8
  %66 = call i32 @sb_bgl_lock(%struct.TYPE_3__* %64, i64 %65)
  %67 = load i64, i64* %8, align 8
  %68 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %69 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = call i32 @ext2_clear_bit_atomic(i32 %66, i64 %67, i8* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %62
  %75 = load %struct.super_block*, %struct.super_block** %3, align 8
  %76 = load i64, i64* %5, align 8
  %77 = call i32 @ext2_error(%struct.super_block* %75, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i64 %76)
  br label %83

78:                                               ; preds = %62
  %79 = load %struct.super_block*, %struct.super_block** %3, align 8
  %80 = load i64, i64* %7, align 8
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @ext2_release_inode(%struct.super_block* %79, i64 %80, i32 %81)
  br label %83

83:                                               ; preds = %78, %74
  %84 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %85 = call i32 @mark_buffer_dirty(%struct.buffer_head* %84)
  %86 = load %struct.super_block*, %struct.super_block** %3, align 8
  %87 = getelementptr inbounds %struct.super_block, %struct.super_block* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @SB_SYNCHRONOUS, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %83
  %93 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %94 = call i32 @sync_dirty_buffer(%struct.buffer_head* %93)
  br label %95

95:                                               ; preds = %92, %83
  %96 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %97 = call i32 @brelse(%struct.buffer_head* %96)
  br label %98

98:                                               ; preds = %95, %61, %41
  ret void
}

declare dso_local i32 @ext2_debug(i8*, i64) #1

declare dso_local i32 @dquot_free_inode(%struct.inode*) #1

declare dso_local i32 @dquot_drop(%struct.inode*) #1

declare dso_local %struct.TYPE_3__* @EXT2_SB(%struct.super_block*) #1

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local i64 @EXT2_FIRST_INO(%struct.super_block*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ext2_error(%struct.super_block*, i8*, i8*, i64) #1

declare dso_local i64 @EXT2_INODES_PER_GROUP(%struct.super_block*) #1

declare dso_local %struct.buffer_head* @read_inode_bitmap(%struct.super_block*, i64) #1

declare dso_local i32 @ext2_clear_bit_atomic(i32, i64, i8*) #1

declare dso_local i32 @sb_bgl_lock(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @ext2_release_inode(%struct.super_block*, i64, i32) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @sync_dirty_buffer(%struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
