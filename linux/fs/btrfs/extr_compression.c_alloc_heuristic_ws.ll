; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_compression.c_alloc_heuristic_ws.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_compression.c_alloc_heuristic_ws.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { i32 }
%struct.heuristic_ws = type { %struct.list_head, i8*, i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@MAX_SAMPLE_SIZE = common dso_local global i32 0, align 4
@BUCKET_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.list_head* (i32)* @alloc_heuristic_ws to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.list_head* @alloc_heuristic_ws(i32 %0) #0 {
  %2 = alloca %struct.list_head*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.heuristic_ws*, align 8
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.heuristic_ws* @kzalloc(i32 32, i32 %5)
  store %struct.heuristic_ws* %6, %struct.heuristic_ws** %4, align 8
  %7 = load %struct.heuristic_ws*, %struct.heuristic_ws** %4, align 8
  %8 = icmp ne %struct.heuristic_ws* %7, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  %12 = call %struct.list_head* @ERR_PTR(i32 %11)
  store %struct.list_head* %12, %struct.list_head** %2, align 8
  br label %59

13:                                               ; preds = %1
  %14 = load i32, i32* @MAX_SAMPLE_SIZE, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call i32 @kvmalloc(i32 %14, i32 %15)
  %17 = load %struct.heuristic_ws*, %struct.heuristic_ws** %4, align 8
  %18 = getelementptr inbounds %struct.heuristic_ws, %struct.heuristic_ws* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 8
  %19 = load %struct.heuristic_ws*, %struct.heuristic_ws** %4, align 8
  %20 = getelementptr inbounds %struct.heuristic_ws, %struct.heuristic_ws* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %13
  br label %52

24:                                               ; preds = %13
  %25 = load i32, i32* @BUCKET_SIZE, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i8* @kcalloc(i32 %25, i32 1, i32 %26)
  %28 = load %struct.heuristic_ws*, %struct.heuristic_ws** %4, align 8
  %29 = getelementptr inbounds %struct.heuristic_ws, %struct.heuristic_ws* %28, i32 0, i32 2
  store i8* %27, i8** %29, align 8
  %30 = load %struct.heuristic_ws*, %struct.heuristic_ws** %4, align 8
  %31 = getelementptr inbounds %struct.heuristic_ws, %struct.heuristic_ws* %30, i32 0, i32 2
  %32 = load i8*, i8** %31, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %24
  br label %52

35:                                               ; preds = %24
  %36 = load i32, i32* @BUCKET_SIZE, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i8* @kcalloc(i32 %36, i32 1, i32 %37)
  %39 = load %struct.heuristic_ws*, %struct.heuristic_ws** %4, align 8
  %40 = getelementptr inbounds %struct.heuristic_ws, %struct.heuristic_ws* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load %struct.heuristic_ws*, %struct.heuristic_ws** %4, align 8
  %42 = getelementptr inbounds %struct.heuristic_ws, %struct.heuristic_ws* %41, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = icmp ne i8* %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %35
  br label %52

46:                                               ; preds = %35
  %47 = load %struct.heuristic_ws*, %struct.heuristic_ws** %4, align 8
  %48 = getelementptr inbounds %struct.heuristic_ws, %struct.heuristic_ws* %47, i32 0, i32 0
  %49 = call i32 @INIT_LIST_HEAD(%struct.list_head* %48)
  %50 = load %struct.heuristic_ws*, %struct.heuristic_ws** %4, align 8
  %51 = getelementptr inbounds %struct.heuristic_ws, %struct.heuristic_ws* %50, i32 0, i32 0
  store %struct.list_head* %51, %struct.list_head** %2, align 8
  br label %59

52:                                               ; preds = %45, %34, %23
  %53 = load %struct.heuristic_ws*, %struct.heuristic_ws** %4, align 8
  %54 = getelementptr inbounds %struct.heuristic_ws, %struct.heuristic_ws* %53, i32 0, i32 0
  %55 = call i32 @free_heuristic_ws(%struct.list_head* %54)
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  %58 = call %struct.list_head* @ERR_PTR(i32 %57)
  store %struct.list_head* %58, %struct.list_head** %2, align 8
  br label %59

59:                                               ; preds = %52, %46, %9
  %60 = load %struct.list_head*, %struct.list_head** %2, align 8
  ret %struct.list_head* %60
}

declare dso_local %struct.heuristic_ws* @kzalloc(i32, i32) #1

declare dso_local %struct.list_head* @ERR_PTR(i32) #1

declare dso_local i32 @kvmalloc(i32, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(%struct.list_head*) #1

declare dso_local i32 @free_heuristic_ws(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
