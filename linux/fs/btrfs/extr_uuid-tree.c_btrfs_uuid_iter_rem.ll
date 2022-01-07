; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_uuid-tree.c_btrfs_uuid_iter_rem.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_uuid-tree.c_btrfs_uuid_iter_rem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_root = type { i32 }
%struct.btrfs_trans_handle = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btrfs_root*, i32*, i32, i32)* @btrfs_uuid_iter_rem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btrfs_uuid_iter_rem(%struct.btrfs_root* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.btrfs_root*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.btrfs_trans_handle*, align 8
  %10 = alloca i32, align 4
  store %struct.btrfs_root* %0, %struct.btrfs_root** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load %struct.btrfs_root*, %struct.btrfs_root** %5, align 8
  %12 = call %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root* %11, i32 1)
  store %struct.btrfs_trans_handle* %12, %struct.btrfs_trans_handle** %9, align 8
  %13 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %14 = call i64 @IS_ERR(%struct.btrfs_trans_handle* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %18 = call i32 @PTR_ERR(%struct.btrfs_trans_handle* %17)
  store i32 %18, i32* %10, align 4
  br label %27

19:                                               ; preds = %4
  %20 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @btrfs_uuid_tree_remove(%struct.btrfs_trans_handle* %20, i32* %21, i32 %22, i32 %23)
  store i32 %24, i32* %10, align 4
  %25 = load %struct.btrfs_trans_handle*, %struct.btrfs_trans_handle** %9, align 8
  %26 = call i32 @btrfs_end_transaction(%struct.btrfs_trans_handle* %25)
  br label %27

27:                                               ; preds = %19, %16
  %28 = load i32, i32* %10, align 4
  ret i32 %28
}

declare dso_local %struct.btrfs_trans_handle* @btrfs_start_transaction(%struct.btrfs_root*, i32) #1

declare dso_local i64 @IS_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @PTR_ERR(%struct.btrfs_trans_handle*) #1

declare dso_local i32 @btrfs_uuid_tree_remove(%struct.btrfs_trans_handle*, i32*, i32, i32) #1

declare dso_local i32 @btrfs_end_transaction(%struct.btrfs_trans_handle*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
