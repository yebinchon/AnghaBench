; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_write.c_afs_page_mkwrite.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_write.c_afs_page_mkwrite.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_fault = type { %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_10__ = type { %struct.file* }
%struct.file = type { i32 }
%struct.inode = type { i32 }
%struct.afs_vnode = type { i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"{{%llx:%llu}},{%lx}\00", align 1
@PG_writeback = common dso_local global i32 0, align 4
@VM_FAULT_RETRY = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i64 0, align 8
@AFS_PRIV_SHIFT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c"mkwrite\00", align 1
@VM_FAULT_LOCKED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_page_mkwrite(%struct.vm_fault* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vm_fault*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.afs_vnode*, align 8
  %7 = alloca i64, align 8
  store %struct.vm_fault* %0, %struct.vm_fault** %3, align 8
  %8 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %9 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %8, i32 0, i32 1
  %10 = load %struct.TYPE_10__*, %struct.TYPE_10__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %10, i32 0, i32 0
  %12 = load %struct.file*, %struct.file** %11, align 8
  store %struct.file* %12, %struct.file** %4, align 8
  %13 = load %struct.file*, %struct.file** %4, align 8
  %14 = call %struct.inode* @file_inode(%struct.file* %13)
  store %struct.inode* %14, %struct.inode** %5, align 8
  %15 = load %struct.inode*, %struct.inode** %5, align 8
  %16 = call %struct.afs_vnode* @AFS_FS_I(%struct.inode* %15)
  store %struct.afs_vnode* %16, %struct.afs_vnode** %6, align 8
  %17 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %18 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %22 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %26 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %25, i32 0, i32 0
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @_enter(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %24, i32 %29)
  %31 = load %struct.inode*, %struct.inode** %5, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @sb_start_pagefault(i32 %33)
  %35 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %36 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %35, i32 0, i32 0
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %36, align 8
  %38 = call i64 @PageWriteback(%struct.TYPE_12__* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %1
  %41 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %42 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %41, i32 0, i32 0
  %43 = load %struct.TYPE_12__*, %struct.TYPE_12__** %42, align 8
  %44 = load i32, i32* @PG_writeback, align 4
  %45 = call i64 @wait_on_page_bit_killable(%struct.TYPE_12__* %43, i32 %44)
  %46 = icmp slt i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %40
  %48 = load i32, i32* @VM_FAULT_RETRY, align 4
  store i32 %48, i32* %2, align 4
  br label %89

49:                                               ; preds = %40, %1
  %50 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %51 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %50, i32 0, i32 0
  %52 = load %struct.TYPE_12__*, %struct.TYPE_12__** %51, align 8
  %53 = call i64 @lock_page_killable(%struct.TYPE_12__* %52)
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %49
  %56 = load i32, i32* @VM_FAULT_RETRY, align 4
  store i32 %56, i32* %2, align 4
  br label %89

57:                                               ; preds = %49
  %58 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %59 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %58, i32 0, i32 0
  %60 = load %struct.TYPE_12__*, %struct.TYPE_12__** %59, align 8
  %61 = call i32 @wait_on_page_writeback(%struct.TYPE_12__* %60)
  %62 = load i64, i64* @PAGE_SIZE, align 8
  %63 = load i64, i64* @AFS_PRIV_SHIFT, align 8
  %64 = shl i64 %62, %63
  store i64 %64, i64* %7, align 8
  %65 = load i64, i64* %7, align 8
  store i64 %65, i64* %7, align 8
  %66 = load %struct.afs_vnode*, %struct.afs_vnode** %6, align 8
  %67 = call i32 @tracepoint_string(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %68 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %69 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %68, i32 0, i32 0
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i64, i64* %7, align 8
  %74 = call i32 @trace_afs_page_dirty(%struct.afs_vnode* %66, i32 %67, i32 %72, i64 %73)
  %75 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %76 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %75, i32 0, i32 0
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %76, align 8
  %78 = call i32 @SetPagePrivate(%struct.TYPE_12__* %77)
  %79 = load %struct.vm_fault*, %struct.vm_fault** %3, align 8
  %80 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %79, i32 0, i32 0
  %81 = load %struct.TYPE_12__*, %struct.TYPE_12__** %80, align 8
  %82 = load i64, i64* %7, align 8
  %83 = call i32 @set_page_private(%struct.TYPE_12__* %81, i64 %82)
  %84 = load %struct.inode*, %struct.inode** %5, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @sb_end_pagefault(i32 %86)
  %88 = load i32, i32* @VM_FAULT_LOCKED, align 4
  store i32 %88, i32* %2, align 4
  br label %89

89:                                               ; preds = %57, %55, %47
  %90 = load i32, i32* %2, align 4
  ret i32 %90
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.afs_vnode* @AFS_FS_I(%struct.inode*) #1

declare dso_local i32 @_enter(i8*, i32, i32, i32) #1

declare dso_local i32 @sb_start_pagefault(i32) #1

declare dso_local i64 @PageWriteback(%struct.TYPE_12__*) #1

declare dso_local i64 @wait_on_page_bit_killable(%struct.TYPE_12__*, i32) #1

declare dso_local i64 @lock_page_killable(%struct.TYPE_12__*) #1

declare dso_local i32 @wait_on_page_writeback(%struct.TYPE_12__*) #1

declare dso_local i32 @trace_afs_page_dirty(%struct.afs_vnode*, i32, i32, i64) #1

declare dso_local i32 @tracepoint_string(i8*) #1

declare dso_local i32 @SetPagePrivate(%struct.TYPE_12__*) #1

declare dso_local i32 @set_page_private(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @sb_end_pagefault(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
