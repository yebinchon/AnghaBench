; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_get_tree_mod_seq.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ctree.c_btrfs_get_tree_mod_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32, i32, i32 }
%struct.seq_list = type { i64, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @btrfs_get_tree_mod_seq(%struct.btrfs_fs_info* %0, %struct.seq_list* %1) #0 {
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca %struct.seq_list*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  store %struct.seq_list* %1, %struct.seq_list** %4, align 8
  %5 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %6 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %5, i32 0, i32 0
  %7 = call i32 @write_lock(i32* %6)
  %8 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %9 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %8, i32 0, i32 1
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.seq_list*, %struct.seq_list** %4, align 8
  %12 = getelementptr inbounds %struct.seq_list, %struct.seq_list* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %2
  %16 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %17 = call i64 @btrfs_inc_tree_mod_seq(%struct.btrfs_fs_info* %16)
  %18 = load %struct.seq_list*, %struct.seq_list** %4, align 8
  %19 = getelementptr inbounds %struct.seq_list, %struct.seq_list* %18, i32 0, i32 0
  store i64 %17, i64* %19, align 8
  %20 = load %struct.seq_list*, %struct.seq_list** %4, align 8
  %21 = getelementptr inbounds %struct.seq_list, %struct.seq_list* %20, i32 0, i32 1
  %22 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %23 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %22, i32 0, i32 2
  %24 = call i32 @list_add_tail(i32* %21, i32* %23)
  br label %25

25:                                               ; preds = %15, %2
  %26 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %27 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %26, i32 0, i32 1
  %28 = call i32 @spin_unlock(i32* %27)
  %29 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %30 = getelementptr inbounds %struct.btrfs_fs_info, %struct.btrfs_fs_info* %29, i32 0, i32 0
  %31 = call i32 @write_unlock(i32* %30)
  %32 = load %struct.seq_list*, %struct.seq_list** %4, align 8
  %33 = getelementptr inbounds %struct.seq_list, %struct.seq_list* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  ret i64 %34
}

declare dso_local i32 @write_lock(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @btrfs_inc_tree_mod_seq(%struct.btrfs_fs_info*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @write_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
