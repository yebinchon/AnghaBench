; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_scrub_recheck_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_scrub_recheck_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.scrub_block = type { i32, i32, %struct.scrub_page** }
%struct.scrub_page = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }
%struct.bio = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@REQ_OP_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_fs_info*, %struct.scrub_block*, i32)* @scrub_recheck_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scrub_recheck_block(%struct.btrfs_fs_info* %0, %struct.scrub_block* %1, i32 %2) #0 {
  %4 = alloca %struct.btrfs_fs_info*, align 8
  %5 = alloca %struct.scrub_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.bio*, align 8
  %9 = alloca %struct.scrub_page*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %4, align 8
  store %struct.scrub_block* %1, %struct.scrub_block** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.scrub_block*, %struct.scrub_block** %5, align 8
  %11 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %3
  %15 = load %struct.scrub_block*, %struct.scrub_block** %5, align 8
  %16 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %15, i32 0, i32 2
  %17 = load %struct.scrub_page**, %struct.scrub_page*** %16, align 8
  %18 = getelementptr inbounds %struct.scrub_page*, %struct.scrub_page** %17, i64 0
  %19 = load %struct.scrub_page*, %struct.scrub_page** %18, align 8
  %20 = call i64 @scrub_is_page_on_raid56(%struct.scrub_page* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %14
  %23 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %4, align 8
  %24 = load %struct.scrub_block*, %struct.scrub_block** %5, align 8
  call void @scrub_recheck_block_on_raid56(%struct.btrfs_fs_info* %23, %struct.scrub_block* %24)
  br label %105

25:                                               ; preds = %14, %3
  store i32 0, i32* %7, align 4
  br label %26

26:                                               ; preds = %94, %25
  %27 = load i32, i32* %7, align 4
  %28 = load %struct.scrub_block*, %struct.scrub_block** %5, align 8
  %29 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %97

32:                                               ; preds = %26
  %33 = load %struct.scrub_block*, %struct.scrub_block** %5, align 8
  %34 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %33, i32 0, i32 2
  %35 = load %struct.scrub_page**, %struct.scrub_page*** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.scrub_page*, %struct.scrub_page** %35, i64 %37
  %39 = load %struct.scrub_page*, %struct.scrub_page** %38, align 8
  store %struct.scrub_page* %39, %struct.scrub_page** %9, align 8
  %40 = load %struct.scrub_page*, %struct.scrub_page** %9, align 8
  %41 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %40, i32 0, i32 3
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %51

46:                                               ; preds = %32
  %47 = load %struct.scrub_page*, %struct.scrub_page** %9, align 8
  %48 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.scrub_block*, %struct.scrub_block** %5, align 8
  %50 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %49, i32 0, i32 0
  store i32 0, i32* %50, align 8
  br label %94

51:                                               ; preds = %32
  %52 = load %struct.scrub_page*, %struct.scrub_page** %9, align 8
  %53 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i32 @WARN_ON(i32 %57)
  %59 = call %struct.bio* @btrfs_io_bio_alloc(i32 1)
  store %struct.bio* %59, %struct.bio** %8, align 8
  %60 = load %struct.bio*, %struct.bio** %8, align 8
  %61 = load %struct.scrub_page*, %struct.scrub_page** %9, align 8
  %62 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %61, i32 0, i32 3
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = call i32 @bio_set_dev(%struct.bio* %60, i32* %65)
  %67 = load %struct.bio*, %struct.bio** %8, align 8
  %68 = load %struct.scrub_page*, %struct.scrub_page** %9, align 8
  %69 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @PAGE_SIZE, align 4
  %72 = call i32 @bio_add_page(%struct.bio* %67, i32 %70, i32 %71, i32 0)
  %73 = load %struct.scrub_page*, %struct.scrub_page** %9, align 8
  %74 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = ashr i32 %75, 9
  %77 = load %struct.bio*, %struct.bio** %8, align 8
  %78 = getelementptr inbounds %struct.bio, %struct.bio* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  store i32 %76, i32* %79, align 4
  %80 = load i32, i32* @REQ_OP_READ, align 4
  %81 = load %struct.bio*, %struct.bio** %8, align 8
  %82 = getelementptr inbounds %struct.bio, %struct.bio* %81, i32 0, i32 0
  store i32 %80, i32* %82, align 4
  %83 = load %struct.bio*, %struct.bio** %8, align 8
  %84 = call i64 @btrfsic_submit_bio_wait(%struct.bio* %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %51
  %87 = load %struct.scrub_page*, %struct.scrub_page** %9, align 8
  %88 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %87, i32 0, i32 0
  store i32 1, i32* %88, align 8
  %89 = load %struct.scrub_block*, %struct.scrub_block** %5, align 8
  %90 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  br label %91

91:                                               ; preds = %86, %51
  %92 = load %struct.bio*, %struct.bio** %8, align 8
  %93 = call i32 @bio_put(%struct.bio* %92)
  br label %94

94:                                               ; preds = %91, %46
  %95 = load i32, i32* %7, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %7, align 4
  br label %26

97:                                               ; preds = %26
  %98 = load %struct.scrub_block*, %struct.scrub_block** %5, align 8
  %99 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load %struct.scrub_block*, %struct.scrub_block** %5, align 8
  %104 = call i32 @scrub_recheck_block_checksum(%struct.scrub_block* %103)
  br label %105

105:                                              ; preds = %22, %102, %97
  ret void
}

declare dso_local i64 @scrub_is_page_on_raid56(%struct.scrub_page*) #1

declare dso_local void @scrub_recheck_block_on_raid56(%struct.btrfs_fs_info*, %struct.scrub_block*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.bio* @btrfs_io_bio_alloc(i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32*) #1

declare dso_local i32 @bio_add_page(%struct.bio*, i32, i32, i32) #1

declare dso_local i64 @btrfsic_submit_bio_wait(%struct.bio*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @scrub_recheck_block_checksum(%struct.scrub_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
