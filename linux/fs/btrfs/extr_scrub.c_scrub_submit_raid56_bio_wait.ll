; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_scrub_submit_raid56_bio_wait.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_scrub_submit_raid56_bio_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.bio = type { i32, i32, i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.scrub_page = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__** }
%struct.TYPE_5__ = type { i32 }

@done = common dso_local global i32 0, align 4
@scrub_bio_wait_endio = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_fs_info*, %struct.bio*, %struct.scrub_page*)* @scrub_submit_raid56_bio_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scrub_submit_raid56_bio_wait(%struct.btrfs_fs_info* %0, %struct.bio* %1, %struct.scrub_page* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca %struct.scrub_page*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %5, align 8
  store %struct.bio* %1, %struct.bio** %6, align 8
  store %struct.scrub_page* %2, %struct.scrub_page** %7, align 8
  %10 = load i32, i32* @done, align 4
  %11 = call i32 @DECLARE_COMPLETION_ONSTACK(i32 %10)
  %12 = load %struct.scrub_page*, %struct.scrub_page** %7, align 8
  %13 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = ashr i32 %14, 9
  %16 = load %struct.bio*, %struct.bio** %6, align 8
  %17 = getelementptr inbounds %struct.bio, %struct.bio* %16, i32 0, i32 3
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 8
  %19 = load %struct.bio*, %struct.bio** %6, align 8
  %20 = getelementptr inbounds %struct.bio, %struct.bio* %19, i32 0, i32 2
  store i32* @done, i32** %20, align 8
  %21 = load i32, i32* @scrub_bio_wait_endio, align 4
  %22 = load %struct.bio*, %struct.bio** %6, align 8
  %23 = getelementptr inbounds %struct.bio, %struct.bio* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.scrub_page*, %struct.scrub_page** %7, align 8
  %25 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %24, i32 0, i32 2
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__**, %struct.TYPE_5__*** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__*, %struct.TYPE_5__** %28, i64 0
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %9, align 4
  %33 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %34 = load %struct.bio*, %struct.bio** %6, align 8
  %35 = load %struct.scrub_page*, %struct.scrub_page** %7, align 8
  %36 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.scrub_page*, %struct.scrub_page** %7, align 8
  %41 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %40, i32 0, i32 1
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @raid56_parity_recover(%struct.btrfs_fs_info* %33, %struct.bio* %34, i32 %39, i32 %44, i32 %45, i32 0)
  store i32 %46, i32* %8, align 4
  %47 = load i32, i32* %8, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %3
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %57

51:                                               ; preds = %3
  %52 = call i32 @wait_for_completion_io(i32* @done)
  %53 = load %struct.bio*, %struct.bio** %6, align 8
  %54 = getelementptr inbounds %struct.bio, %struct.bio* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @blk_status_to_errno(i32 %55)
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %51, %49
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @DECLARE_COMPLETION_ONSTACK(i32) #1

declare dso_local i32 @raid56_parity_recover(%struct.btrfs_fs_info*, %struct.bio*, i32, i32, i32, i32) #1

declare dso_local i32 @wait_for_completion_io(i32*) #1

declare dso_local i32 @blk_status_to_errno(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
