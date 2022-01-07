; ModuleID = '/home/carl/AnghaBench/linux/fs/affs/extr_inode.c_affs_new_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/affs/extr_inode.c_affs_new_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i64, i64, i32*, i32*, i64, i64, i64, i32*, i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @affs_new_inode(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.buffer_head*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %8 = load %struct.inode*, %struct.inode** %3, align 8
  %9 = getelementptr inbounds %struct.inode, %struct.inode* %8, i32 0, i32 6
  %10 = load %struct.super_block*, %struct.super_block** %9, align 8
  store %struct.super_block* %10, %struct.super_block** %4, align 8
  %11 = load %struct.super_block*, %struct.super_block** %4, align 8
  %12 = call %struct.inode* @new_inode(%struct.super_block* %11)
  store %struct.inode* %12, %struct.inode** %5, align 8
  %13 = icmp ne %struct.inode* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %1
  br label %108

15:                                               ; preds = %1
  %16 = load %struct.inode*, %struct.inode** %3, align 8
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @affs_alloc_block(%struct.inode* %16, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15
  br label %105

23:                                               ; preds = %15
  %24 = load %struct.super_block*, %struct.super_block** %4, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call %struct.buffer_head* @affs_getzeroblk(%struct.super_block* %24, i32 %25)
  store %struct.buffer_head* %26, %struct.buffer_head** %7, align 8
  %27 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %28 = icmp ne %struct.buffer_head* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  br label %101

30:                                               ; preds = %23
  %31 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %32 = load %struct.inode*, %struct.inode** %5, align 8
  %33 = call i32 @mark_buffer_dirty_inode(%struct.buffer_head* %31, %struct.inode* %32)
  %34 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %35 = call i32 @affs_brelse(%struct.buffer_head* %34)
  %36 = call i32 (...) @current_fsuid()
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = getelementptr inbounds %struct.inode, %struct.inode* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 4
  %39 = call i32 (...) @current_fsgid()
  %40 = load %struct.inode*, %struct.inode** %5, align 8
  %41 = getelementptr inbounds %struct.inode, %struct.inode* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %6, align 4
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load %struct.inode*, %struct.inode** %5, align 8
  %46 = call i32 @set_nlink(%struct.inode* %45, i32 1)
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = call i32 @current_time(%struct.inode* %47)
  %49 = load %struct.inode*, %struct.inode** %5, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.inode*, %struct.inode** %5, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 1
  store i32 %48, i32* %52, align 4
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 2
  store i32 %48, i32* %54, align 8
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %55)
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 13
  %58 = call i32 @atomic_set(i32* %57, i32 0)
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %59)
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 12
  store i64 0, i64* %61, align 8
  %62 = load %struct.inode*, %struct.inode** %5, align 8
  %63 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %62)
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 11
  store i32* null, i32** %64, align 8
  %65 = load %struct.inode*, %struct.inode** %5, align 8
  %66 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %65)
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 10
  store i64 0, i64* %67, align 8
  %68 = load %struct.inode*, %struct.inode** %5, align 8
  %69 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %68)
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 9
  store i64 0, i64* %70, align 8
  %71 = load %struct.inode*, %struct.inode** %5, align 8
  %72 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %71)
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 8
  store i64 0, i64* %73, align 8
  %74 = load %struct.inode*, %struct.inode** %5, align 8
  %75 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %74)
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 7
  store i32* null, i32** %76, align 8
  %77 = load %struct.inode*, %struct.inode** %5, align 8
  %78 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %77)
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 6
  store i32* null, i32** %79, align 8
  %80 = load %struct.inode*, %struct.inode** %5, align 8
  %81 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %80)
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 5
  store i64 0, i64* %82, align 8
  %83 = load %struct.inode*, %struct.inode** %5, align 8
  %84 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %83)
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 4
  store i64 0, i64* %85, align 8
  %86 = load %struct.inode*, %struct.inode** %5, align 8
  %87 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %86)
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 3
  store i64 0, i64* %88, align 8
  %89 = load %struct.inode*, %struct.inode** %5, align 8
  %90 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %89)
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 2
  store i64 0, i64* %91, align 8
  %92 = load %struct.inode*, %struct.inode** %5, align 8
  %93 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %92)
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  %95 = load %struct.inode*, %struct.inode** %5, align 8
  %96 = call %struct.TYPE_2__* @AFFS_I(%struct.inode* %95)
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  store i32 -2, i32* %97, align 4
  %98 = load %struct.inode*, %struct.inode** %5, align 8
  %99 = call i32 @insert_inode_hash(%struct.inode* %98)
  %100 = load %struct.inode*, %struct.inode** %5, align 8
  store %struct.inode* %100, %struct.inode** %2, align 8
  br label %109

101:                                              ; preds = %29
  %102 = load %struct.super_block*, %struct.super_block** %4, align 8
  %103 = load i32, i32* %6, align 4
  %104 = call i32 @affs_free_block(%struct.super_block* %102, i32 %103)
  br label %105

105:                                              ; preds = %101, %22
  %106 = load %struct.inode*, %struct.inode** %5, align 8
  %107 = call i32 @iput(%struct.inode* %106)
  br label %108

108:                                              ; preds = %105, %14
  store %struct.inode* null, %struct.inode** %2, align 8
  br label %109

109:                                              ; preds = %108, %30
  %110 = load %struct.inode*, %struct.inode** %2, align 8
  ret %struct.inode* %110
}

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local i32 @affs_alloc_block(%struct.inode*, i32) #1

declare dso_local %struct.buffer_head* @affs_getzeroblk(%struct.super_block*, i32) #1

declare dso_local i32 @mark_buffer_dirty_inode(%struct.buffer_head*, %struct.inode*) #1

declare dso_local i32 @affs_brelse(%struct.buffer_head*) #1

declare dso_local i32 @current_fsuid(...) #1

declare dso_local i32 @current_fsgid(...) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @AFFS_I(%struct.inode*) #1

declare dso_local i32 @insert_inode_hash(%struct.inode*) #1

declare dso_local i32 @affs_free_block(%struct.super_block*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
