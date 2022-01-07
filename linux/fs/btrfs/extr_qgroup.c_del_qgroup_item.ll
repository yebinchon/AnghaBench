; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_del_qgroup_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_qgroup.c_del_qgroup_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.btrfs_root* }
%struct.btrfs_root = type { i32 }
%struct.btrfs_path = type { i32 }
%struct.btrfs_key = type { i32, i32, i64 }

@ENOMEM = common dso_local global i32 0, align 4
@BTRFS_QGROUP_INFO_KEY = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@BTRFS_QGROUP_LIMIT_KEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_trans_handle*, i32)* @del_qgroup_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @del_qgroup_item(%struct.btrfs_trans_handle* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.btrfs_trans_handle*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.btrfs_root*, align 8
  %8 = alloca %struct.btrfs_path*, align 8
  %9 = alloca %struct.btrfs_key, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %11 = getelementptr inbounds %struct.btrfs_trans_handle, %struct.btrfs_trans_handle* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.btrfs_root*, %struct.btrfs_root** %13, align 8
  store %struct.btrfs_root* %14, %struct.btrfs_root** %7, align 8
  %15 = call %struct.btrfs_path* (...) @btrfs_alloc_path()
  store %struct.btrfs_path* %15, %struct.btrfs_path** %8, align 8
  %16 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %17 = icmp ne %struct.btrfs_path* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %75

21:                                               ; preds = %2
  %22 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 2
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* @BTRFS_QGROUP_INFO_KEY, align 4
  %24 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = load i32, i32* %5, align 4
  %26 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %28 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %29 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %30 = call i32 @btrfs_search_slot(%struct.btrfs_trans_handle* %27, %struct.btrfs_root* %28, %struct.btrfs_key* %9, %struct.btrfs_path* %29, i32 -1, i32 1)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %21
  br label %71

34:                                               ; preds = %21
  %35 = load i32, i32* %6, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %34
  %38 = load i32, i32* @ENOENT, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %71

40:                                               ; preds = %34
  %41 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %42 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %43 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %44 = call i32 @btrfs_del_item(%struct.btrfs_trans_handle* %41, %struct.btrfs_root* %42, %struct.btrfs_path* %43)
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  br label %71

48:                                               ; preds = %40
  %49 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %50 = call i32 @btrfs_release_path(%struct.btrfs_path* %49)
  %51 = load i32, i32* @BTRFS_QGROUP_LIMIT_KEY, align 4
  %52 = getelementptr inbounds %struct.btrfs_key, %struct.btrfs_key* %9, i32 0, i32 0
  store i32 %51, i32* %52, align 8
  %53 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %54 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %55 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %56 = call i32 @btrfs_search_slot(%struct.btrfs_trans_handle* %53, %struct.btrfs_root* %54, %struct.btrfs_key* %9, %struct.btrfs_path* %55, i32 -1, i32 1)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %48
  br label %71

60:                                               ; preds = %48
  %61 = load i32, i32* %6, align 4
  %62 = icmp sgt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load i32, i32* @ENOENT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %6, align 4
  br label %71

66:                                               ; preds = %60
  %67 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %4, align 8
  %68 = load %struct.btrfs_root*, %struct.btrfs_root** %7, align 8
  %69 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %70 = call i32 @btrfs_del_item(%struct.btrfs_trans_handle* %67, %struct.btrfs_root* %68, %struct.btrfs_path* %69)
  store i32 %70, i32* %6, align 4
  br label %71

71:                                               ; preds = %66, %63, %59, %47, %37, %33
  %72 = load %struct.btrfs_path*, %struct.btrfs_path** %8, align 8
  %73 = call i32 @btrfs_free_path(%struct.btrfs_path* %72)
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %71, %18
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local %struct.btrfs_path* @btrfs_alloc_path(...) #1

declare dso_local i32 @btrfs_search_slot(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_key*, %struct.btrfs_path*, i32, i32) #1

declare dso_local i32 @btrfs_del_item(%struct.btrfs_trans_handle*, %struct.btrfs_root*, %struct.btrfs_path*) #1

declare dso_local i32 @btrfs_release_path(%struct.btrfs_path*) #1

declare dso_local i32 @btrfs_free_path(%struct.btrfs_path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
