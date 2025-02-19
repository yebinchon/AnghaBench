; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_writepage_cow_fixup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_writepage_cow_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.btrfs_fs_info = type { i32 }
%struct.btrfs_writepage_fixup = type { i32, %struct.page* }

@EAGAIN = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@btrfs_fixup_helper = common dso_local global i32 0, align 4
@btrfs_writepage_fixup_worker = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @btrfs_writepage_cow_fixup(%struct.page* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.page*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.btrfs_fs_info*, align 8
  %10 = alloca %struct.btrfs_writepage_fixup*, align 8
  store %struct.page* %0, %struct.page** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.page*, %struct.page** %5, align 8
  %12 = getelementptr inbounds %struct.page, %struct.page* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %8, align 8
  %16 = load %struct.inode*, %struct.inode** %8, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.btrfs_fs_info* @btrfs_sb(i32 %18)
  store %struct.btrfs_fs_info* %19, %struct.btrfs_fs_info** %9, align 8
  %20 = load %struct.page*, %struct.page** %5, align 8
  %21 = call i64 @TestClearPagePrivate2(%struct.page* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %60

24:                                               ; preds = %3
  %25 = load %struct.page*, %struct.page** %5, align 8
  %26 = call i64 @PageChecked(%struct.page* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32, i32* @EAGAIN, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %60

31:                                               ; preds = %24
  %32 = load i32, i32* @GFP_NOFS, align 4
  %33 = call %struct.btrfs_writepage_fixup* @kzalloc(i32 16, i32 %32)
  store %struct.btrfs_writepage_fixup* %33, %struct.btrfs_writepage_fixup** %10, align 8
  %34 = load %struct.btrfs_writepage_fixup*, %struct.btrfs_writepage_fixup** %10, align 8
  %35 = icmp ne %struct.btrfs_writepage_fixup* %34, null
  br i1 %35, label %39, label %36

36:                                               ; preds = %31
  %37 = load i32, i32* @EAGAIN, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %60

39:                                               ; preds = %31
  %40 = load %struct.page*, %struct.page** %5, align 8
  %41 = call i32 @SetPageChecked(%struct.page* %40)
  %42 = load %struct.page*, %struct.page** %5, align 8
  %43 = call i32 @get_page(%struct.page* %42)
  %44 = load %struct.btrfs_writepage_fixup*, %struct.btrfs_writepage_fixup** %10, align 8
  %45 = getelementptr inbounds %struct.btrfs_writepage_fixup, %struct.btrfs_writepage_fixup* %44, i32 0, i32 0
  %46 = load i32, i32* @btrfs_fixup_helper, align 4
  %47 = load i32, i32* @btrfs_writepage_fixup_worker, align 4
  %48 = call i32 @btrfs_init_work(i32* %45, i32 %46, i32 %47, i32* null, i32* null)
  %49 = load %struct.page*, %struct.page** %5, align 8
  %50 = load %struct.btrfs_writepage_fixup*, %struct.btrfs_writepage_fixup** %10, align 8
  %51 = getelementptr inbounds %struct.btrfs_writepage_fixup, %struct.btrfs_writepage_fixup* %50, i32 0, i32 1
  store %struct.page* %49, %struct.page** %51, align 8
  %52 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %9, align 8
  %53 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.btrfs_writepage_fixup*, %struct.btrfs_writepage_fixup** %10, align 8
  %56 = getelementptr inbounds %struct.btrfs_writepage_fixup, %struct.btrfs_writepage_fixup* %55, i32 0, i32 0
  %57 = call i32 @btrfs_queue_work(i32 %54, i32* %56)
  %58 = load i32, i32* @EBUSY, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %39, %36, %28, %23
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.btrfs_fs_info* @btrfs_sb(i32) #1

declare dso_local i64 @TestClearPagePrivate2(%struct.page*) #1

declare dso_local i64 @PageChecked(%struct.page*) #1

declare dso_local %struct.btrfs_writepage_fixup* @kzalloc(i32, i32) #1

declare dso_local i32 @SetPageChecked(%struct.page*) #1

declare dso_local i32 @get_page(%struct.page*) #1

declare dso_local i32 @btrfs_init_work(i32*, i32, i32, i32*, i32*) #1

declare dso_local i32 @btrfs_queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
