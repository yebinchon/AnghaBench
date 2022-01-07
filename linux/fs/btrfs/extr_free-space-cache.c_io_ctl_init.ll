; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_io_ctl_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_free-space-cache.c_io_ctl_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_io_ctl = type { i32, i32, %struct.inode*, i32, i32 }
%struct.inode = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@BTRFS_FREE_INO_OBJECTID = common dso_local global i64 0, align 8
@ENOSPC = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_io_ctl*, %struct.inode*, i32)* @io_ctl_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @io_ctl_init(%struct.btrfs_io_ctl* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_io_ctl*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.btrfs_io_ctl* %0, %struct.btrfs_io_ctl** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.inode*, %struct.inode** %6, align 8
  %11 = call i32 @i_size_read(%struct.inode* %10)
  %12 = load i32, i32* @PAGE_SIZE, align 4
  %13 = call i32 @DIV_ROUND_UP(i32 %11, i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = call i32 @BTRFS_I(%struct.inode* %14)
  %16 = call i64 @btrfs_ino(i32 %15)
  %17 = load i64, i64* @BTRFS_FREE_INO_OBJECTID, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 1, i32* %9, align 4
  br label %20

20:                                               ; preds = %19, %3
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %20
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %37

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = add i64 %29, 4
  %31 = load i32, i32* @PAGE_SIZE, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ugt i64 %30, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* @ENOSPC, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %4, align 4
  br label %68

37:                                               ; preds = %26, %23, %20
  %38 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %5, align 8
  %39 = call i32 @memset(%struct.btrfs_io_ctl* %38, i32 0, i32 24)
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* @GFP_NOFS, align 4
  %42 = call i32 @kcalloc(i32 %40, i32 8, i32 %41)
  %43 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %5, align 8
  %44 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %43, i32 0, i32 4
  store i32 %42, i32* %44, align 4
  %45 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %5, align 8
  %46 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %37
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %68

52:                                               ; preds = %37
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %5, align 8
  %55 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 8
  %56 = load %struct.inode*, %struct.inode** %6, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @btrfs_sb(i32 %58)
  %60 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %5, align 8
  %61 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* %9, align 4
  %63 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %5, align 8
  %64 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.inode*, %struct.inode** %6, align 8
  %66 = load %struct.btrfs_io_ctl*, %struct.btrfs_io_ctl** %5, align 8
  %67 = getelementptr inbounds %struct.btrfs_io_ctl, %struct.btrfs_io_ctl* %66, i32 0, i32 2
  store %struct.inode* %65, %struct.inode** %67, align 8
  store i32 0, i32* %4, align 4
  br label %68

68:                                               ; preds = %52, %49, %34
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @i_size_read(%struct.inode*) #1

declare dso_local i64 @btrfs_ino(i32) #1

declare dso_local i32 @BTRFS_I(%struct.inode*) #1

declare dso_local i32 @memset(%struct.btrfs_io_ctl*, i32, i32) #1

declare dso_local i32 @kcalloc(i32, i32, i32) #1

declare dso_local i32 @btrfs_sb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
