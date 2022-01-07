; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_changed_xattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_changed_xattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [6 x i8] c"xattr\00", align 1
@EIO = common dso_local global i32 0, align 4
@BTRFS_COMPARE_TREE_NEW = common dso_local global i32 0, align 4
@BTRFS_COMPARE_TREE_DELETED = common dso_local global i32 0, align 4
@BTRFS_COMPARE_TREE_CHANGED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.send_ctx*, i32)* @changed_xattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @changed_xattr(%struct.send_ctx* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.send_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.send_ctx* %0, %struct.send_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %8 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %11 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %9, %14
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @inconsistent_snapshot_error(%struct.send_ctx* %17, i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %58

22:                                               ; preds = %2
  %23 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %24 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %56, label %27

27:                                               ; preds = %22
  %28 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %29 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %56, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @BTRFS_COMPARE_TREE_NEW, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32
  %37 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %38 = call i32 @process_new_xattr(%struct.send_ctx* %37)
  store i32 %38, i32* %6, align 4
  br label %55

39:                                               ; preds = %32
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @BTRFS_COMPARE_TREE_DELETED, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %45 = call i32 @process_deleted_xattr(%struct.send_ctx* %44)
  store i32 %45, i32* %6, align 4
  br label %54

46:                                               ; preds = %39
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @BTRFS_COMPARE_TREE_CHANGED, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %52 = call i32 @process_changed_xattr(%struct.send_ctx* %51)
  store i32 %52, i32* %6, align 4
  br label %53

53:                                               ; preds = %50, %46
  br label %54

54:                                               ; preds = %53, %43
  br label %55

55:                                               ; preds = %54, %36
  br label %56

56:                                               ; preds = %55, %27, %22
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %56, %16
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @inconsistent_snapshot_error(%struct.send_ctx*, i32, i8*) #1

declare dso_local i32 @process_new_xattr(%struct.send_ctx*) #1

declare dso_local i32 @process_deleted_xattr(%struct.send_ctx*) #1

declare dso_local i32 @process_changed_xattr(%struct.send_ctx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
