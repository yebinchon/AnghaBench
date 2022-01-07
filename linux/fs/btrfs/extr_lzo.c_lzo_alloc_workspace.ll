; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_lzo.c_lzo_alloc_workspace.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_lzo.c_lzo_alloc_workspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.workspace = type { %struct.list_head, i8*, i8*, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@LZO1X_MEM_COMPRESS = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.list_head* (i32)* @lzo_alloc_workspace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.list_head* @lzo_alloc_workspace(i32 %0) #0 {
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
  br label %59

13:                                               ; preds = %1
  %14 = load i32, i32* @LZO1X_MEM_COMPRESS, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i8* @kvmalloc(i32 %14, i32 %15)
  %17 = load %struct.workspace*, %struct.workspace** %4, align 8
  %18 = getelementptr inbounds %struct.workspace, %struct.workspace* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load i32, i32* @PAGE_SIZE, align 4
  %20 = call i32 @lzo1x_worst_compress(i32 %19)
  %21 = load i32, i32* @GFP_KERNEL, align 4
  %22 = call i8* @kvmalloc(i32 %20, i32 %21)
  %23 = load %struct.workspace*, %struct.workspace** %4, align 8
  %24 = getelementptr inbounds %struct.workspace, %struct.workspace* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* @PAGE_SIZE, align 4
  %26 = call i32 @lzo1x_worst_compress(i32 %25)
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i8* @kvmalloc(i32 %26, i32 %27)
  %29 = load %struct.workspace*, %struct.workspace** %4, align 8
  %30 = getelementptr inbounds %struct.workspace, %struct.workspace* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load %struct.workspace*, %struct.workspace** %4, align 8
  %32 = getelementptr inbounds %struct.workspace, %struct.workspace* %31, i32 0, i32 3
  %33 = load i8*, i8** %32, align 8
  %34 = icmp ne i8* %33, null
  br i1 %34, label %35, label %45

35:                                               ; preds = %13
  %36 = load %struct.workspace*, %struct.workspace** %4, align 8
  %37 = getelementptr inbounds %struct.workspace, %struct.workspace* %36, i32 0, i32 2
  %38 = load i8*, i8** %37, align 8
  %39 = icmp ne i8* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.workspace*, %struct.workspace** %4, align 8
  %42 = getelementptr inbounds %struct.workspace, %struct.workspace* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %40, %35, %13
  br label %52

46:                                               ; preds = %40
  %47 = load %struct.workspace*, %struct.workspace** %4, align 8
  %48 = getelementptr inbounds %struct.workspace, %struct.workspace* %47, i32 0, i32 0
  %49 = call i32 @INIT_LIST_HEAD(%struct.list_head* %48)
  %50 = load %struct.workspace*, %struct.workspace** %4, align 8
  %51 = getelementptr inbounds %struct.workspace, %struct.workspace* %50, i32 0, i32 0
  store %struct.list_head* %51, %struct.list_head** %2, align 8
  br label %59

52:                                               ; preds = %45
  %53 = load %struct.workspace*, %struct.workspace** %4, align 8
  %54 = getelementptr inbounds %struct.workspace, %struct.workspace* %53, i32 0, i32 0
  %55 = call i32 @lzo_free_workspace(%struct.list_head* %54)
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  %58 = call %struct.list_head* @ERR_PTR(i32 %57)
  store %struct.list_head* %58, %struct.list_head** %2, align 8
  br label %59

59:                                               ; preds = %52, %46, %9
  %60 = load %struct.list_head*, %struct.list_head** %2, align 8
  ret %struct.list_head* %60
}

declare dso_local %struct.workspace* @kzalloc(i32, i32) #1

declare dso_local %struct.list_head* @ERR_PTR(i32) #1

declare dso_local i8* @kvmalloc(i32, i32) #1

declare dso_local i32 @lzo1x_worst_compress(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @lzo_free_workspace(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
