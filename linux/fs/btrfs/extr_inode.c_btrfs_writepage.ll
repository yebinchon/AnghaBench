; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_writepage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_btrfs_writepage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.page = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.writeback_control = type { i32 }

@current = common dso_local global %struct.TYPE_4__* null, align 8
@PF_MEMALLOC = common dso_local global i32 0, align 4
@AOP_WRITEPAGE_ACTIVATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.page*, %struct.writeback_control*)* @btrfs_writepage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_writepage(%struct.page* %0, %struct.writeback_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.writeback_control*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  store %struct.page* %0, %struct.page** %4, align 8
  store %struct.writeback_control* %1, %struct.writeback_control** %5, align 8
  %8 = load %struct.page*, %struct.page** %4, align 8
  %9 = getelementptr inbounds %struct.page, %struct.page* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load %struct.inode*, %struct.inode** %11, align 8
  store %struct.inode* %12, %struct.inode** %6, align 8
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @PF_MEMALLOC, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %2
  %20 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %21 = load %struct.page*, %struct.page** %4, align 8
  %22 = call i32 @redirty_page_for_writepage(%struct.writeback_control* %20, %struct.page* %21)
  %23 = load %struct.page*, %struct.page** %4, align 8
  %24 = call i32 @unlock_page(%struct.page* %23)
  store i32 0, i32* %3, align 4
  br label %41

25:                                               ; preds = %2
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = call i32 @igrab(%struct.inode* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %25
  %30 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %31 = load %struct.page*, %struct.page** %4, align 8
  %32 = call i32 @redirty_page_for_writepage(%struct.writeback_control* %30, %struct.page* %31)
  %33 = load i32, i32* @AOP_WRITEPAGE_ACTIVATE, align 4
  store i32 %33, i32* %3, align 4
  br label %41

34:                                               ; preds = %25
  %35 = load %struct.page*, %struct.page** %4, align 8
  %36 = load %struct.writeback_control*, %struct.writeback_control** %5, align 8
  %37 = call i32 @extent_write_full_page(%struct.page* %35, %struct.writeback_control* %36)
  store i32 %37, i32* %7, align 4
  %38 = load %struct.inode*, %struct.inode** %6, align 8
  %39 = call i32 @btrfs_add_delayed_iput(%struct.inode* %38)
  %40 = load i32, i32* %7, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %34, %29, %19
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @redirty_page_for_writepage(%struct.writeback_control*, %struct.page*) #1

declare dso_local i32 @unlock_page(%struct.page*) #1

declare dso_local i32 @igrab(%struct.inode*) #1

declare dso_local i32 @extent_write_full_page(%struct.page*, %struct.writeback_control*) #1

declare dso_local i32 @btrfs_add_delayed_iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
