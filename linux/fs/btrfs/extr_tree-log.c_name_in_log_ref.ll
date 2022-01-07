; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_name_in_log_ref.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_tree-log.c_name_in_log_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.btrfs_key = type { i32, i32, i32 }

@BTRFS_INODE_REF_KEY = common dso_local global i32 0, align 4
@BTRFS_INODE_EXTREF_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*, i8*, i32, i32, i32)* @name_in_log_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @name_in_log_ref(%struct.btrfs_root* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.btrfs_key, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32, i32* %11, align 4
  %14 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 2
  store i32 %13, i32* %14, align 4
  %15 = load i32, i32* @BTRFS_INODE_REF_KEY, align 4
  %16 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %10, align 4
  %18 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 0
  store i32 %17, i32* %18, align 4
  %19 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %20 = load i32, i32* %10, align 4
  %21 = load i8*, i8** %8, align 8
  %22 = load i32, i32* %9, align 4
  %23 = call i64 @backref_in_log(%struct.btrfs_root* %19, %struct.btrfs_key* %12, i32 %20, i8* %21, i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %5
  store i32 1, i32* %6, align 4
  br label %42

26:                                               ; preds = %5
  %27 = load i32, i32* @BTRFS_INODE_EXTREF_KEY, align 4
  %28 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 1
  store i32 %27, i32* %28, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i8*, i8** %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = call i32 @btrfs_extref_hash(i32 %29, i8* %30, i32 %31)
  %33 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %12, i32 0, i32 0
  store i32 %32, i32* %33, align 4
  %34 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i8*, i8** %8, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i64 @backref_in_log(%struct.btrfs_root* %34, %struct.btrfs_key* %12, i32 %35, i8* %36, i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %26
  store i32 1, i32* %6, align 4
  br label %42

41:                                               ; preds = %26
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %41, %40, %25
  %43 = load i32, i32* %6, align 4
  ret i32 %43
}

declare dso_local i64 @backref_in_log(%struct.btrfs_root*, %struct.btrfs_key*, i32, i8*, i32) #1

declare dso_local i32 @btrfs_extref_hash(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
