; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_zstd.c_zstd_alloc_workspace.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_zstd.c_zstd_alloc_workspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.workspace = type { i32, i32, %struct.list_head, %struct.list_head, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@zstd_ws_mem_sizes = common dso_local global i32* null, align 8
@jiffies = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.list_head* (i32)* @zstd_alloc_workspace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.list_head* @zstd_alloc_workspace(i32 %0) #0 {
  %2 = alloca %struct.list_head*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.workspace*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.workspace* @kzalloc(i32 32, i32 %5)
  store %struct.workspace* %6, %struct.workspace** %4, align 8
  %7 = load %struct.workspace*, %struct.workspace** %4, align 8
  %8 = icmp ne %struct.workspace* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.list_head* @ERR_PTR(i32 %11)
  store %struct.list_head* %12, %struct.list_head** %2, align 8
  br label %69

13:                                               ; preds = %1
  %14 = load i32*, i32** @zstd_ws_mem_sizes, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sub i32 %15, 1
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %14, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.workspace*, %struct.workspace** %4, align 8
  %21 = getelementptr inbounds %struct.workspace, %struct.workspace* %20, i32 0, i32 6
  store i32 %19, i32* %21, align 4
  %22 = load i32, i32* %3, align 4
  %23 = load %struct.workspace*, %struct.workspace** %4, align 8
  %24 = getelementptr inbounds %struct.workspace, %struct.workspace* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load %struct.workspace*, %struct.workspace** %4, align 8
  %27 = getelementptr inbounds %struct.workspace, %struct.workspace* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* @jiffies, align 4
  %29 = load %struct.workspace*, %struct.workspace** %4, align 8
  %30 = getelementptr inbounds %struct.workspace, %struct.workspace* %29, i32 0, i32 7
  store i32 %28, i32* %30, align 4
  %31 = load %struct.workspace*, %struct.workspace** %4, align 8
  %32 = getelementptr inbounds %struct.workspace, %struct.workspace* %31, i32 0, i32 6
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i32 @kvmalloc(i32 %33, i32 %34)
  %36 = load %struct.workspace*, %struct.workspace** %4, align 8
  %37 = getelementptr inbounds %struct.workspace, %struct.workspace* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @PAGE_SIZE, align 4
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i32 @kmalloc(i32 %38, i32 %39)
  %41 = load %struct.workspace*, %struct.workspace** %4, align 8
  %42 = getelementptr inbounds %struct.workspace, %struct.workspace* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 4
  %43 = load %struct.workspace*, %struct.workspace** %4, align 8
  %44 = getelementptr inbounds %struct.workspace, %struct.workspace* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %52

47:                                               ; preds = %13
  %48 = load %struct.workspace*, %struct.workspace** %4, align 8
  %49 = getelementptr inbounds %struct.workspace, %struct.workspace* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47, %13
  br label %62

53:                                               ; preds = %47
  %54 = load %struct.workspace*, %struct.workspace** %4, align 8
  %55 = getelementptr inbounds %struct.workspace, %struct.workspace* %54, i32 0, i32 2
  %56 = call i32 @INIT_LIST_HEAD(%struct.list_head* %55)
  %57 = load %struct.workspace*, %struct.workspace** %4, align 8
  %58 = getelementptr inbounds %struct.workspace, %struct.workspace* %57, i32 0, i32 3
  %59 = call i32 @INIT_LIST_HEAD(%struct.list_head* %58)
  %60 = load %struct.workspace*, %struct.workspace** %4, align 8
  %61 = getelementptr inbounds %struct.workspace, %struct.workspace* %60, i32 0, i32 2
  store %struct.list_head* %61, %struct.list_head** %2, align 8
  br label %69

62:                                               ; preds = %52
  %63 = load %struct.workspace*, %struct.workspace** %4, align 8
  %64 = getelementptr inbounds %struct.workspace, %struct.workspace* %63, i32 0, i32 2
  %65 = call i32 @zstd_free_workspace(%struct.list_head* %64)
  %66 = load i32, i32* @ENOMEM, align 4
  %67 = sub nsw i32 0, %66
  %68 = call %struct.list_head* @ERR_PTR(i32 %67)
  store %struct.list_head* %68, %struct.list_head** %2, align 8
  br label %69

69:                                               ; preds = %62, %53, %9
  %70 = load %struct.list_head*, %struct.list_head** %2, align 8
  ret %struct.list_head* %70
}

declare dso_local %struct.workspace* @kzalloc(i32, i32) #1

declare dso_local %struct.list_head* @ERR_PTR(i32) #1

declare dso_local i32 @kvmalloc(i32, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @zstd_free_workspace(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
