; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_scrub_repair_page_from_good_copy.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_scrub_repair_page_from_good_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scrub_block = type { i64, i64, %struct.TYPE_5__*, %struct.scrub_page** }
%struct.TYPE_5__ = type { %struct.btrfs_fs_info* }
%struct.btrfs_fs_info = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.scrub_page = type { i32, %struct.TYPE_8__*, i32*, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.bio = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [61 x i8] c"scrub_repair_page_from_good_copy(bdev == NULL) is unexpected\00", align 1
@EIO = common dso_local global i32 0, align 4
@REQ_OP_WRITE = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@BTRFS_DEV_STAT_WRITE_ERRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scrub_block*, %struct.scrub_block*, i32, i32)* @scrub_repair_page_from_good_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scrub_repair_page_from_good_copy(%struct.scrub_block* %0, %struct.scrub_block* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.scrub_block*, align 8
  %7 = alloca %struct.scrub_block*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.scrub_page*, align 8
  %11 = alloca %struct.scrub_page*, align 8
  %12 = alloca %struct.btrfs_fs_info*, align 8
  %13 = alloca %struct.bio*, align 8
  %14 = alloca i32, align 4
  store %struct.scrub_block* %0, %struct.scrub_block** %6, align 8
  store %struct.scrub_block* %1, %struct.scrub_block** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load %struct.scrub_block*, %struct.scrub_block** %6, align 8
  %16 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %15, i32 0, i32 3
  %17 = load %struct.scrub_page**, %struct.scrub_page*** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.scrub_page*, %struct.scrub_page** %17, i64 %19
  %21 = load %struct.scrub_page*, %struct.scrub_page** %20, align 8
  store %struct.scrub_page* %21, %struct.scrub_page** %10, align 8
  %22 = load %struct.scrub_block*, %struct.scrub_block** %7, align 8
  %23 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %22, i32 0, i32 3
  %24 = load %struct.scrub_page**, %struct.scrub_page*** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.scrub_page*, %struct.scrub_page** %24, i64 %26
  %28 = load %struct.scrub_page*, %struct.scrub_page** %27, align 8
  store %struct.scrub_page* %28, %struct.scrub_page** %11, align 8
  %29 = load %struct.scrub_block*, %struct.scrub_block** %6, align 8
  %30 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %29, i32 0, i32 2
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %32, align 8
  store %struct.btrfs_fs_info* %33, %struct.btrfs_fs_info** %12, align 8
  %34 = load %struct.scrub_page*, %struct.scrub_page** %10, align 8
  %35 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %34, i32 0, i32 2
  %36 = load i32*, i32** %35, align 8
  %37 = icmp eq i32* %36, null
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load %struct.scrub_page*, %struct.scrub_page** %11, align 8
  %41 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = icmp eq i32* %42, null
  %44 = zext i1 %43 to i32
  %45 = call i32 @BUG_ON(i32 %44)
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %63, label %48

48:                                               ; preds = %4
  %49 = load %struct.scrub_block*, %struct.scrub_block** %6, align 8
  %50 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %48
  %54 = load %struct.scrub_block*, %struct.scrub_block** %6, align 8
  %55 = getelementptr inbounds %struct.scrub_block, %struct.scrub_block* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load %struct.scrub_page*, %struct.scrub_page** %10, align 8
  %60 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %129

63:                                               ; preds = %58, %53, %48, %4
  %64 = load %struct.scrub_page*, %struct.scrub_page** %10, align 8
  %65 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %64, i32 0, i32 1
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %75, label %70

70:                                               ; preds = %63
  %71 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %72 = call i32 @btrfs_warn_rl(%struct.btrfs_fs_info* %71, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @EIO, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %5, align 4
  br label %130

75:                                               ; preds = %63
  %76 = call %struct.bio* @btrfs_io_bio_alloc(i32 1)
  store %struct.bio* %76, %struct.bio** %13, align 8
  %77 = load %struct.bio*, %struct.bio** %13, align 8
  %78 = load %struct.scrub_page*, %struct.scrub_page** %10, align 8
  %79 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %78, i32 0, i32 1
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @bio_set_dev(%struct.bio* %77, i32 %82)
  %84 = load %struct.scrub_page*, %struct.scrub_page** %10, align 8
  %85 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = ashr i32 %86, 9
  %88 = load %struct.bio*, %struct.bio** %13, align 8
  %89 = getelementptr inbounds %struct.bio, %struct.bio* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %89, i32 0, i32 0
  store i32 %87, i32* %90, align 4
  %91 = load i32, i32* @REQ_OP_WRITE, align 4
  %92 = load %struct.bio*, %struct.bio** %13, align 8
  %93 = getelementptr inbounds %struct.bio, %struct.bio* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 4
  %94 = load %struct.bio*, %struct.bio** %13, align 8
  %95 = load %struct.scrub_page*, %struct.scrub_page** %11, align 8
  %96 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* @PAGE_SIZE, align 4
  %99 = call i32 @bio_add_page(%struct.bio* %94, i32* %97, i32 %98, i32 0)
  store i32 %99, i32* %14, align 4
  %100 = load i32, i32* @PAGE_SIZE, align 4
  %101 = load i32, i32* %14, align 4
  %102 = icmp ne i32 %100, %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %75
  %104 = load %struct.bio*, %struct.bio** %13, align 8
  %105 = call i32 @bio_put(%struct.bio* %104)
  %106 = load i32, i32* @EIO, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %5, align 4
  br label %130

108:                                              ; preds = %75
  %109 = load %struct.bio*, %struct.bio** %13, align 8
  %110 = call i64 @btrfsic_submit_bio_wait(%struct.bio* %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %126

112:                                              ; preds = %108
  %113 = load %struct.scrub_page*, %struct.scrub_page** %10, align 8
  %114 = getelementptr inbounds %struct.scrub_page, %struct.scrub_page* %113, i32 0, i32 1
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %114, align 8
  %116 = load i32, i32* @BTRFS_DEV_STAT_WRITE_ERRS, align 4
  %117 = call i32 @btrfs_dev_stat_inc_and_print(%struct.TYPE_8__* %115, i32 %116)
  %118 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %12, align 8
  %119 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = call i32 @atomic64_inc(i32* %120)
  %122 = load %struct.bio*, %struct.bio** %13, align 8
  %123 = call i32 @bio_put(%struct.bio* %122)
  %124 = load i32, i32* @EIO, align 4
  %125 = sub nsw i32 0, %124
  store i32 %125, i32* %5, align 4
  br label %130

126:                                              ; preds = %108
  %127 = load %struct.bio*, %struct.bio** %13, align 8
  %128 = call i32 @bio_put(%struct.bio* %127)
  br label %129

129:                                              ; preds = %126, %58
  store i32 0, i32* %5, align 4
  br label %130

130:                                              ; preds = %129, %112, %103, %70
  %131 = load i32, i32* %5, align 4
  ret i32 %131
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @btrfs_warn_rl(%struct.btrfs_fs_info*, i8*) #1

declare dso_local %struct.bio* @btrfs_io_bio_alloc(i32) #1

declare dso_local i32 @bio_set_dev(%struct.bio*, i32) #1

declare dso_local i32 @bio_add_page(%struct.bio*, i32*, i32, i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i64 @btrfsic_submit_bio_wait(%struct.bio*) #1

declare dso_local i32 @btrfs_dev_stat_inc_and_print(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @atomic64_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
