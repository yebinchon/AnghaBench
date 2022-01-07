; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_check_direct_IO.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_inode.c_check_direct_IO.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.iov_iter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@EINVAL = common dso_local global i64 0, align 8
@READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.btrfs_fs_info*, %struct.iov_iter*, i32)* @check_direct_IO to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @check_direct_IO(%struct.btrfs_fs_info* %0, %struct.iov_iter* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.btrfs_fs_info*, align 8
  %6 = alloca %struct.iov_iter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %5, align 8
  store %struct.iov_iter* %1, %struct.iov_iter** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %5, align 8
  %13 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = sub nsw i32 %14, 1
  store i32 %15, i32* %10, align 4
  %16 = load i64, i64* @EINVAL, align 8
  %17 = sub nsw i64 0, %16
  store i64 %17, i64* %11, align 8
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* %10, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %84

23:                                               ; preds = %3
  %24 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %25 = call i32 @iov_iter_alignment(%struct.iov_iter* %24)
  %26 = load i32, i32* %10, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %84

30:                                               ; preds = %23
  %31 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %32 = call i64 @iov_iter_rw(%struct.iov_iter* %31)
  %33 = load i64, i64* @READ, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %30
  %36 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %37 = call i32 @iter_is_iovec(%struct.iov_iter* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35, %30
  store i64 0, i64* %4, align 8
  br label %86

40:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %41

41:                                               ; preds = %80, %40
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %44 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp slt i32 %42, %45
  br i1 %46, label %47, label %83

47:                                               ; preds = %41
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %50

50:                                               ; preds = %76, %47
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %53 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp slt i32 %51, %54
  br i1 %55, label %56, label %79

56:                                               ; preds = %50
  %57 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %58 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.iov_iter*, %struct.iov_iter** %6, align 8
  %66 = getelementptr inbounds %struct.iov_iter, %struct.iov_iter* %65, i32 0, i32 1
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = load i32, i32* %9, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = icmp eq i64 %64, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %56
  br label %84

75:                                               ; preds = %56
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %50

79:                                               ; preds = %50
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %8, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %8, align 4
  br label %41

83:                                               ; preds = %41
  store i64 0, i64* %11, align 8
  br label %84

84:                                               ; preds = %83, %74, %29, %22
  %85 = load i64, i64* %11, align 8
  store i64 %85, i64* %4, align 8
  br label %86

86:                                               ; preds = %84, %39
  %87 = load i64, i64* %4, align 8
  ret i64 %87
}

declare dso_local i32 @iov_iter_alignment(%struct.iov_iter*) #1

declare dso_local i64 @iov_iter_rw(%struct.iov_iter*) #1

declare dso_local i32 @iter_is_iovec(%struct.iov_iter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
