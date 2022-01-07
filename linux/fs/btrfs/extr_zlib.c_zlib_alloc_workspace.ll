; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_zlib.c_zlib_alloc_workspace.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_zlib.c_zlib_alloc_workspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.workspace = type { i32, %struct.list_head, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_WBITS = common dso_local global i32 0, align 4
@MAX_MEM_LEVEL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.list_head* (i32)* @zlib_alloc_workspace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.list_head* @zlib_alloc_workspace(i32 %0) #0 {
  %2 = alloca %struct.list_head*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.workspace*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.workspace* @kzalloc(i32 16, i32 %6)
  store %struct.workspace* %7, %struct.workspace** %4, align 8
  %8 = load %struct.workspace*, %struct.workspace** %4, align 8
  %9 = icmp ne %struct.workspace* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.list_head* @ERR_PTR(i32 %12)
  store %struct.list_head* %13, %struct.list_head** %2, align 8
  br label %58

14:                                               ; preds = %1
  %15 = load i32, i32* @MAX_WBITS, align 4
  %16 = load i32, i32* @MAX_MEM_LEVEL, align 4
  %17 = call i32 @zlib_deflate_workspacesize(i32 %15, i32 %16)
  %18 = call i32 (...) @zlib_inflate_workspacesize()
  %19 = call i32 @max(i32 %17, i32 %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i32 @kvmalloc(i32 %20, i32 %21)
  %23 = load %struct.workspace*, %struct.workspace** %4, align 8
  %24 = getelementptr inbounds %struct.workspace, %struct.workspace* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  store i32 %22, i32* %25, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load %struct.workspace*, %struct.workspace** %4, align 8
  %28 = getelementptr inbounds %struct.workspace, %struct.workspace* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @PAGE_SIZE, align 4
  %30 = load i32, i32* @GFP_KERNEL, align 4
  %31 = call i32 @kmalloc(i32 %29, i32 %30)
  %32 = load %struct.workspace*, %struct.workspace** %4, align 8
  %33 = getelementptr inbounds %struct.workspace, %struct.workspace* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.workspace*, %struct.workspace** %4, align 8
  %35 = getelementptr inbounds %struct.workspace, %struct.workspace* %34, i32 0, i32 3
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %14
  %40 = load %struct.workspace*, %struct.workspace** %4, align 8
  %41 = getelementptr inbounds %struct.workspace, %struct.workspace* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %45, label %44

44:                                               ; preds = %39, %14
  br label %51

45:                                               ; preds = %39
  %46 = load %struct.workspace*, %struct.workspace** %4, align 8
  %47 = getelementptr inbounds %struct.workspace, %struct.workspace* %46, i32 0, i32 1
  %48 = call i32 @INIT_LIST_HEAD(%struct.list_head* %47)
  %49 = load %struct.workspace*, %struct.workspace** %4, align 8
  %50 = getelementptr inbounds %struct.workspace, %struct.workspace* %49, i32 0, i32 1
  store %struct.list_head* %50, %struct.list_head** %2, align 8
  br label %58

51:                                               ; preds = %44
  %52 = load %struct.workspace*, %struct.workspace** %4, align 8
  %53 = getelementptr inbounds %struct.workspace, %struct.workspace* %52, i32 0, i32 1
  %54 = call i32 @zlib_free_workspace(%struct.list_head* %53)
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  %57 = call %struct.list_head* @ERR_PTR(i32 %56)
  store %struct.list_head* %57, %struct.list_head** %2, align 8
  br label %58

58:                                               ; preds = %51, %45, %10
  %59 = load %struct.list_head*, %struct.list_head** %2, align 8
  ret %struct.list_head* %59
}

declare dso_local %struct.workspace* @kzalloc(i32, i32) #1

declare dso_local %struct.list_head* @ERR_PTR(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @zlib_deflate_workspacesize(i32, i32) #1

declare dso_local i32 @zlib_inflate_workspacesize(...) #1

declare dso_local i32 @kvmalloc(i32, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @zlib_free_workspace(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
