; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_io_ctl_prepare_pages.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_io_ctl_prepare_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_io_ctl = type { i32, %struct.page** }
%struct.page = type { i32 }
%struct.inode = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"error reading free space cache\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_io_ctl*, %struct.inode*, i32)* @io_ctl_prepare_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_ctl_prepare_pages(%struct.btrfs_io_ctl* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_io_ctl*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.btrfs_io_ctl* %0, %struct.btrfs_io_ctl** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.inode*, %struct.inode** %6, align 8
  %12 = getelementptr inbounds %struct.inode, %struct.inode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @btrfs_alloc_write_mask(i32 %13)
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %71, %3
  %16 = load i32, i32* %10, align 4
  %17 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %5, align 8
  %18 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %74

21:                                               ; preds = %15
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %10, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call %struct.page* @find_or_create_page(i32 %24, i32 %25, i32 %26)
  store %struct.page* %27, %struct.page** %8, align 8
  %28 = load %struct.page*, %struct.page** %8, align 8
  %29 = icmp ne %struct.page* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %21
  %31 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %5, align 8
  %32 = call i32 @io_ctl_drop_pages(%struct.btrfs_io_ctl* %31)
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %102

35:                                               ; preds = %21
  %36 = load %struct.page*, %struct.page** %8, align 8
  %37 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %5, align 8
  %38 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %37, i32 0, i32 1
  %39 = load %struct.page**, %struct.page*** %38, align 8
  %40 = load i32, i32* %10, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.page*, %struct.page** %39, i64 %41
  store %struct.page* %36, %struct.page** %42, align 8
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %70

45:                                               ; preds = %35
  %46 = load %struct.page*, %struct.page** %8, align 8
  %47 = call i32 @PageUptodate(%struct.page* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %70, label %49

49:                                               ; preds = %45
  %50 = load %struct.page*, %struct.page** %8, align 8
  %51 = call i32 @btrfs_readpage(i32* null, %struct.page* %50)
  %52 = load %struct.page*, %struct.page** %8, align 8
  %53 = call i32 @lock_page(%struct.page* %52)
  %54 = load %struct.page*, %struct.page** %8, align 8
  %55 = call i32 @PageUptodate(%struct.page* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %69, label %57

57:                                               ; preds = %49
  %58 = load %struct.inode*, %struct.inode** %6, align 8
  %59 = call %struct.TYPE_4__* @BTRFS_I(%struct.inode* %58)
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @btrfs_err(i32 %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %65 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %5, align 8
  %66 = call i32 @io_ctl_drop_pages(%struct.btrfs_io_ctl* %65)
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %4, align 4
  br label %102

69:                                               ; preds = %49
  br label %70

70:                                               ; preds = %69, %45, %35
  br label %71

71:                                               ; preds = %70
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %15

74:                                               ; preds = %15
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %98, %74
  %76 = load i32, i32* %10, align 4
  %77 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %5, align 8
  %78 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %101

81:                                               ; preds = %75
  %82 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %5, align 8
  %83 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %82, i32 0, i32 1
  %84 = load %struct.page**, %struct.page*** %83, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.page*, %struct.page** %84, i64 %86
  %88 = load %struct.page*, %struct.page** %87, align 8
  %89 = call i32 @clear_page_dirty_for_io(%struct.page* %88)
  %90 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %5, align 8
  %91 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %90, i32 0, i32 1
  %92 = load %struct.page**, %struct.page*** %91, align 8
  %93 = load i32, i32* %10, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.page*, %struct.page** %92, i64 %94
  %96 = load %struct.page*, %struct.page** %95, align 8
  %97 = call i32 @set_page_extent_mapped(%struct.page* %96)
  br label %98

98:                                               ; preds = %81
  %99 = load i32, i32* %10, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %10, align 4
  br label %75

101:                                              ; preds = %75
  store i32 0, i32* %4, align 4
  br label %102

102:                                              ; preds = %101, %57, %30
  %103 = load i32, i32* %4, align 4
  ret i32 %103
}

declare dso_local i32 @btrfs_alloc_write_mask(i32) #1

declare dso_local %struct.page* @find_or_create_page(i32, i32, i32) #1

declare dso_local i32 @io_ctl_drop_pages(%struct.btrfs_io_ctl*) #1

declare dso_local i32 @PageUptodate(%struct.page*) #1

declare dso_local i32 @btrfs_readpage(i32*, %struct.page*) #1

declare dso_local i32 @lock_page(%struct.page*) #1

declare dso_local i32 @btrfs_err(i32, i8*) #1

declare dso_local %struct.TYPE_4__* @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @clear_page_dirty_for_io(%struct.page*) #1

declare dso_local i32 @set_page_extent_mapped(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
