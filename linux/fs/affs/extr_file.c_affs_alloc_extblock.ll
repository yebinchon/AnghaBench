; ModuleID = '/home/carl/AnghaBench/linux/fs/affs/extr_file.c_affs_alloc_extblock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/affs/extr_file.c_affs_alloc_extblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_6__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i8*, i8*, i8* }
%struct.TYPE_5__ = type { i32 }

@ENOSPC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@T_LIST = common dso_local global i64 0, align 8
@ST_FILE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"alloc_ext\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"previous extension set (%x)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.buffer_head* (%struct.inode*, %struct.buffer_head*, i64)* @affs_alloc_extblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.buffer_head* @affs_alloc_extblock(%struct.inode* %0, %struct.buffer_head* %1, i64 %2) #0 {
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %6, align 8
  store i64 %2, i64* %7, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 1
  %14 = load %struct.super_block*, %struct.super_block** %13, align 8
  store %struct.super_block* %14, %struct.super_block** %8, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %17 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @affs_alloc_block(%struct.inode* %15, i32 %18)
  store i64 %19, i64* %10, align 8
  %20 = load i64, i64* %10, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @ENOSPC, align 4
  %24 = sub nsw i32 0, %23
  %25 = call %struct.buffer_head* @ERR_PTR(i32 %24)
  store %struct.buffer_head* %25, %struct.buffer_head** %4, align 8
  br label %105

26:                                               ; preds = %3
  %27 = load %struct.super_block*, %struct.super_block** %8, align 8
  %28 = load i64, i64* %10, align 8
  %29 = call %struct.buffer_head* @affs_getzeroblk(%struct.super_block* %27, i64 %28)
  store %struct.buffer_head* %29, %struct.buffer_head** %9, align 8
  %30 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %31 = icmp ne %struct.buffer_head* %30, null
  br i1 %31, label %39, label %32

32:                                               ; preds = %26
  %33 = load %struct.super_block*, %struct.super_block** %8, align 8
  %34 = load i64, i64* %10, align 8
  %35 = call i32 @affs_free_block(%struct.super_block* %33, i64 %34)
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  %38 = call %struct.buffer_head* @ERR_PTR(i32 %37)
  store %struct.buffer_head* %38, %struct.buffer_head** %4, align 8
  br label %105

39:                                               ; preds = %26
  %40 = load i64, i64* @T_LIST, align 8
  %41 = call i8* @cpu_to_be32(i64 %40)
  %42 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %43 = call %struct.TYPE_6__* @AFFS_HEAD(%struct.buffer_head* %42)
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  store i8* %41, i8** %44, align 8
  %45 = load i64, i64* %10, align 8
  %46 = call i8* @cpu_to_be32(i64 %45)
  %47 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %48 = call %struct.TYPE_6__* @AFFS_HEAD(%struct.buffer_head* %47)
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  store i8* %46, i8** %49, align 8
  %50 = load i64, i64* @ST_FILE, align 8
  %51 = call i8* @cpu_to_be32(i64 %50)
  %52 = load %struct.super_block*, %struct.super_block** %8, align 8
  %53 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %54 = call %struct.TYPE_4__* @AFFS_TAIL(%struct.super_block* %52, %struct.buffer_head* %53)
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 2
  store i8* %51, i8** %55, align 8
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i8* @cpu_to_be32(i64 %58)
  %60 = load %struct.super_block*, %struct.super_block** %8, align 8
  %61 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %62 = call %struct.TYPE_4__* @AFFS_TAIL(%struct.super_block* %60, %struct.buffer_head* %61)
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 1
  store i8* %59, i8** %63, align 8
  %64 = load %struct.super_block*, %struct.super_block** %8, align 8
  %65 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %66 = call i32 @affs_fix_checksum(%struct.super_block* %64, %struct.buffer_head* %65)
  %67 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %68 = load %struct.inode*, %struct.inode** %5, align 8
  %69 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %67, %struct.inode* %68)
  %70 = load %struct.super_block*, %struct.super_block** %8, align 8
  %71 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %72 = call %struct.TYPE_4__* @AFFS_TAIL(%struct.super_block* %70, %struct.buffer_head* %71)
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = call i64 @be32_to_cpu(i8* %74)
  store i64 %75, i64* %11, align 8
  %76 = load i64, i64* %11, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %39
  %79 = load %struct.super_block*, %struct.super_block** %8, align 8
  %80 = load i64, i64* %11, align 8
  %81 = call i32 @affs_warning(%struct.super_block* %79, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i64 %80)
  br label %82

82:                                               ; preds = %78, %39
  %83 = load i64, i64* %10, align 8
  %84 = call i8* @cpu_to_be32(i64 %83)
  %85 = load %struct.super_block*, %struct.super_block** %8, align 8
  %86 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %87 = call %struct.TYPE_4__* @AFFS_TAIL(%struct.super_block* %85, %struct.buffer_head* %86)
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  store i8* %84, i8** %88, align 8
  %89 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %90 = load i64, i64* %10, align 8
  %91 = load i64, i64* %11, align 8
  %92 = sub nsw i64 %90, %91
  %93 = call i32 @affs_adjust_checksum(%struct.buffer_head* %89, i64 %92)
  %94 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %95 = load %struct.inode*, %struct.inode** %5, align 8
  %96 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %94, %struct.inode* %95)
  %97 = load %struct.inode*, %struct.inode** %5, align 8
  %98 = call %struct.TYPE_5__* @AFFS_I(%struct.inode* %97)
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %99, align 4
  %102 = load %struct.inode*, %struct.inode** %5, align 8
  %103 = call i32 @mark_inode_dirty(%struct.inode* %102)
  %104 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  store %struct.buffer_head* %104, %struct.buffer_head** %4, align 8
  br label %105

105:                                              ; preds = %82, %32, %22
  %106 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  ret %struct.buffer_head* %106
}

declare dso_local i64 @affs_alloc_block(%struct.inode*, i32) #1

declare dso_local %struct.buffer_head* @ERR_PTR(i32) #1

declare dso_local %struct.buffer_head* @affs_getzeroblk(%struct.super_block*, i64) #1

declare dso_local i32 @affs_free_block(%struct.super_block*, i64) #1

declare dso_local i8* @cpu_to_be32(i64) #1

declare dso_local %struct.TYPE_6__* @AFFS_HEAD(%struct.buffer_head*) #1

declare dso_local %struct.TYPE_4__* @AFFS_TAIL(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @affs_fix_checksum(%struct.super_block*, %struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i64 @be32_to_cpu(i8*) #1

declare dso_local i32 @affs_warning(%struct.super_block*, i8*, i8*, i64) #1

declare dso_local i32 @affs_adjust_checksum(%struct.buffer_head*, i64) #1

declare dso_local %struct.TYPE_5__* @AFFS_I(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
