; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_zstd.c_zstd_get_workspace.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_zstd.c_zstd_get_workspace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.list_head = type { i32 }

@wait = common dso_local global i32 0, align 4
@wsm = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@TASK_UNINTERRUPTIBLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.list_head* (i32)* @zstd_get_workspace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.list_head* @zstd_get_workspace(i32 %0) #0 {
  %2 = alloca %struct.list_head*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  store i32 1, i32* %3, align 4
  br label %9

9:                                                ; preds = %8, %1
  br label %10

10:                                               ; preds = %26, %9
  %11 = load i32, i32* %3, align 4
  %12 = call %struct.list_head* @zstd_find_workspace(i32 %11)
  store %struct.list_head* %12, %struct.list_head** %4, align 8
  %13 = load %struct.list_head*, %struct.list_head** %4, align 8
  %14 = icmp ne %struct.list_head* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %10
  %16 = load %struct.list_head*, %struct.list_head** %4, align 8
  store %struct.list_head* %16, %struct.list_head** %2, align 8
  br label %35

17:                                               ; preds = %10
  %18 = call i32 (...) @memalloc_nofs_save()
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %3, align 4
  %20 = call %struct.list_head* @zstd_alloc_workspace(i32 %19)
  store %struct.list_head* %20, %struct.list_head** %4, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @memalloc_nofs_restore(i32 %21)
  %23 = load %struct.list_head*, %struct.list_head** %4, align 8
  %24 = call i64 @IS_ERR(%struct.list_head* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %17
  %27 = load i32, i32* @wait, align 4
  %28 = call i32 @DEFINE_WAIT(i32 %27)
  %29 = load i32, i32* @TASK_UNINTERRUPTIBLE, align 4
  %30 = call i32 @prepare_to_wait(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wsm, i32 0, i32 0), i32* @wait, i32 %29)
  %31 = call i32 (...) @schedule()
  %32 = call i32 @finish_wait(i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @wsm, i32 0, i32 0), i32* @wait)
  br label %10

33:                                               ; preds = %17
  %34 = load %struct.list_head*, %struct.list_head** %4, align 8
  store %struct.list_head* %34, %struct.list_head** %2, align 8
  br label %35

35:                                               ; preds = %33, %15
  %36 = load %struct.list_head*, %struct.list_head** %2, align 8
  ret %struct.list_head* %36
}

declare dso_local %struct.list_head* @zstd_find_workspace(i32) #1

declare dso_local i32 @memalloc_nofs_save(...) #1

declare dso_local %struct.list_head* @zstd_alloc_workspace(i32) #1

declare dso_local i32 @memalloc_nofs_restore(i32) #1

declare dso_local i64 @IS_ERR(%struct.list_head*) #1

declare dso_local i32 @DEFINE_WAIT(i32) #1

declare dso_local i32 @prepare_to_wait(i32*, i32*, i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @finish_wait(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
