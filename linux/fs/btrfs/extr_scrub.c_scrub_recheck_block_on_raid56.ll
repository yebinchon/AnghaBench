; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_scrub_recheck_block_on_raid56.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_scrub_recheck_block_on_raid56.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.scrub_block = type { i32, i64, %struct.scrub_page** }
%struct.scrub_page = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.bio = type { i32 }

@BIO_MAX_PAGES = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_fs_info*, %struct.scrub_block*)* @scrub_recheck_block_on_raid56 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scrub_recheck_block_on_raid56(%struct.btrfs_fs_info* %0, %struct.scrub_block* %1) #0 {
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca %struct.scrub_block*, align 8
  %5 = alloca %struct.scrub_page*, align 8
  %6 = alloca %struct.bio*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.scrub_page*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  store %struct.scrub_block* %1, %struct.scrub_block** %4, align 8
  %9 = load %struct.scrub_block*, %struct.scrub_block** %4, align 8
  %10 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %9, i32 0, i32 2
  %11 = load %struct.scrub_page**, %struct.scrub_page*** %10, align 8
  %12 = getelementptr inbounds %struct.scrub_page*, %struct.scrub_page** %11, i64 0
  %13 = load %struct.scrub_page*, %struct.scrub_page** %12, align 8
  store %struct.scrub_page* %13, %struct.scrub_page** %5, align 8
  %14 = load %struct.scrub_page*, %struct.scrub_page** %5, align 8
  %15 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = call i32 @ASSERT(%struct.TYPE_2__* %16)
  %18 = load %struct.scrub_page*, %struct.scrub_page** %5, align 8
  %19 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %2
  br label %79

25:                                               ; preds = %2
  %26 = load i32, i32* @BIO_MAX_PAGES, align 4
  %27 = call %struct.bio* @btrfs_io_bio_alloc(i32 %26)
  store %struct.bio* %27, %struct.bio** %6, align 8
  %28 = load %struct.bio*, %struct.bio** %6, align 8
  %29 = load %struct.scrub_page*, %struct.scrub_page** %5, align 8
  %30 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %29, i32 0, i32 2
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @bio_set_dev(%struct.bio* %28, i32 %33)
  store i32 0, i32* %7, align 4
  br label %35

35:                                               ; preds = %62, %25
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.scrub_block*, %struct.scrub_block** %4, align 8
  %38 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = icmp slt i32 %36, %39
  br i1 %40, label %41, label %65

41:                                               ; preds = %35
  %42 = load %struct.scrub_block*, %struct.scrub_block** %4, align 8
  %43 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %42, i32 0, i32 2
  %44 = load %struct.scrub_page**, %struct.scrub_page*** %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.scrub_page*, %struct.scrub_page** %44, i64 %46
  %48 = load %struct.scrub_page*, %struct.scrub_page** %47, align 8
  store %struct.scrub_page* %48, %struct.scrub_page** %8, align 8
  %49 = load %struct.scrub_page*, %struct.scrub_page** %8, align 8
  %50 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  %53 = xor i1 %52, true
  %54 = zext i1 %53 to i32
  %55 = call i32 @WARN_ON(i32 %54)
  %56 = load %struct.bio*, %struct.bio** %6, align 8
  %57 = load %struct.scrub_page*, %struct.scrub_page** %8, align 8
  %58 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @PAGE_SIZE, align 4
  %61 = call i32 @bio_add_page(%struct.bio* %56, i32 %59, i32 %60, i32 0)
  br label %62

62:                                               ; preds = %41
  %63 = load i32, i32* %7, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %7, align 4
  br label %35

65:                                               ; preds = %35
  %66 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %67 = load %struct.bio*, %struct.bio** %6, align 8
  %68 = load %struct.scrub_page*, %struct.scrub_page** %5, align 8
  %69 = call i64 @scrub_submit_raid56_bio_wait(%struct.btrfs_fs_info* %66, %struct.bio* %67, %struct.scrub_page* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load %struct.bio*, %struct.bio** %6, align 8
  %73 = call i32 @bio_put(%struct.bio* %72)
  br label %79

74:                                               ; preds = %65
  %75 = load %struct.bio*, %struct.bio** %6, align 8
  %76 = call i32 @bio_put(%struct.bio* %75)
  %77 = load %struct.scrub_block*, %struct.scrub_block** %4, align 8
  %78 = call i32 @scrub_recheck_block_checksum(%struct.scrub_block* %77)
  br label %101

79:                                               ; preds = %71, %24
  store i32 0, i32* %7, align 4
  br label %80

80:                                               ; preds = %95, %79
  %81 = load i32, i32* %7, align 4
  %82 = load %struct.scrub_block*, %struct.scrub_block** %4, align 8
  %83 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = icmp slt i32 %81, %84
  br i1 %85, label %86, label %98

86:                                               ; preds = %80
  %87 = load %struct.scrub_block*, %struct.scrub_block** %4, align 8
  %88 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %87, i32 0, i32 2
  %89 = load %struct.scrub_page**, %struct.scrub_page*** %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.scrub_page*, %struct.scrub_page** %89, i64 %91
  %93 = load %struct.scrub_page*, %struct.scrub_page** %92, align 8
  %94 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  br label %95

95:                                               ; preds = %86
  %96 = load i32, i32* %7, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %80

98:                                               ; preds = %80
  %99 = load %struct.scrub_block*, %struct.scrub_block** %4, align 8
  %100 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %99, i32 0, i32 1
  store i64 0, i64* %100, align 8
  br label %101

101:                                              ; preds = %98, %74
  ret void
}

declare dso_local i32 @ASSERT(%struct.TYPE_2__*) #1

declare dso_local %struct.bio* @btrfs_io_bio_alloc(i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bio_add_page(%struct.bio*, i32, i32, i32) #1

declare dso_local i64 @scrub_submit_raid56_bio_wait(%struct.btrfs_fs_info*, %struct.bio*, %struct.scrub_page*) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @scrub_recheck_block_checksum(%struct.scrub_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
