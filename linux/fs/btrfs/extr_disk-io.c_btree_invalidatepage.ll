; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btree_invalidatepage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btree_invalidatepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.page = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.extent_io_tree = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__*, %struct.extent_io_tree }
%struct.TYPE_4__ = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"page private not zero on page %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.page*, i32, i32)* @btree_invalidatepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btree_invalidatepage(%struct.page* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.page*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.extent_io_tree*, align 8
  store %struct.page* %0, %struct.page** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.page*, %struct.page** %4, align 8
  %9 = getelementptr inbounds %struct.page, %struct.page* %8, i32 0, i32 0
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.TYPE_6__* @BTRFS_I(i32 %12)
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 1
  store %struct.extent_io_tree* %14, %struct.extent_io_tree** %7, align 8
  %15 = load %struct.extent_io_tree*, %struct.extent_io_tree** %7, align 8
  %16 = load %struct.page*, %struct.page** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @extent_invalidatepage(%struct.extent_io_tree* %15, %struct.page* %16, i32 %17)
  %19 = load %struct.page*, %struct.page** %4, align 8
  %20 = load i32, i32* @GFP_NOFS, align 4
  %21 = call i32 @btree_releasepage(%struct.page* %19, i32 %20)
  %22 = load %struct.page*, %struct.page** %4, align 8
  %23 = call i64 @PagePrivate(%struct.page* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %45

25:                                               ; preds = %3
  %26 = load %struct.page*, %struct.page** %4, align 8
  %27 = getelementptr inbounds %struct.page, %struct.page* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call %struct.TYPE_6__* @BTRFS_I(i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.page*, %struct.page** %4, align 8
  %37 = call i64 @page_offset(%struct.page* %36)
  %38 = call i32 @btrfs_warn(i32 %35, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i64 %37)
  %39 = load %struct.page*, %struct.page** %4, align 8
  %40 = call i32 @ClearPagePrivate(%struct.page* %39)
  %41 = load %struct.page*, %struct.page** %4, align 8
  %42 = call i32 @set_page_private(%struct.page* %41, i32 0)
  %43 = load %struct.page*, %struct.page** %4, align 8
  %44 = call i32 @put_page(%struct.page* %43)
  br label %45

45:                                               ; preds = %25, %3
  ret void
}

declare dso_local %struct.TYPE_6__* @BTRFS_I(i32) #1

declare dso_local i32 @extent_invalidatepage(%struct.extent_io_tree*, %struct.page*, i32) #1

declare dso_local i32 @btree_releasepage(%struct.page*, i32) #1

declare dso_local i64 @PagePrivate(%struct.page*) #1

declare dso_local i32 @btrfs_warn(i32, i8*, i64) #1

declare dso_local i64 @page_offset(%struct.page*) #1

declare dso_local i32 @ClearPagePrivate(%struct.page*) #1

declare dso_local i32 @set_page_private(%struct.page*, i32) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
