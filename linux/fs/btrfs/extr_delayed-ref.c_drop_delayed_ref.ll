; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-ref.c_drop_delayed_ref.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_delayed-ref.c_drop_delayed_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_trans_handle = type { i32 }
%struct.btrfs_delayed_ref_root = type { i32 }
%struct.btrfs_delayed_ref_head = type { i32, i32 }
%struct.btrfs_delayed_ref_node = type { i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_trans_handle*, %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_node*)* @drop_delayed_ref to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drop_delayed_ref(%struct.btrfs_trans_handle* %0, %struct.btrfs_delayed_ref_root* %1, %struct.btrfs_delayed_ref_head* %2, %struct.btrfs_delayed_ref_node* %3) #0 {
  %5 = alloca %struct.btrfs_trans_handle*, align 8
  %6 = alloca %struct.btrfs_delayed_ref_root*, align 8
  %7 = alloca %struct.btrfs_delayed_ref_head*, align 8
  %8 = alloca %struct.btrfs_delayed_ref_node*, align 8
  store %struct.btrfs_trans_handle* %0, %struct.btrfs_trans_handle** %5, align 8
  store %struct.btrfs_delayed_ref_root* %1, %struct.btrfs_delayed_ref_root** %6, align 8
  store %struct.btrfs_delayed_ref_head* %2, %struct.btrfs_delayed_ref_head** %7, align 8
  store %struct.btrfs_delayed_ref_node* %3, %struct.btrfs_delayed_ref_node** %8, align 8
  %9 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %7, align 8
  %10 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %9, i32 0, i32 1
  %11 = call i32 @lockdep_assert_held(i32* %10)
  %12 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %8, align 8
  %13 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %12, i32 0, i32 2
  %14 = load %struct.btrfs_delayed_ref_head*, %struct.btrfs_delayed_ref_head** %7, align 8
  %15 = getelementptr inbounds %struct.btrfs_delayed_ref_head, %struct.btrfs_delayed_ref_head* %14, i32 0, i32 0
  %16 = call i32 @rb_erase_cached(i32* %13, i32* %15)
  %17 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %8, align 8
  %18 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %17, i32 0, i32 2
  %19 = call i32 @RB_CLEAR_NODE(i32* %18)
  %20 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %8, align 8
  %21 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %20, i32 0, i32 1
  %22 = call i32 @list_empty(i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %28, label %24

24:                                               ; preds = %4
  %25 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %8, align 8
  %26 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %25, i32 0, i32 1
  %27 = call i32 @list_del(i32* %26)
  br label %28

28:                                               ; preds = %24, %4
  %29 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %8, align 8
  %30 = getelementptr inbounds %struct.btrfs_delayed_ref_node, %struct.btrfs_delayed_ref_node* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.btrfs_delayed_ref_node*, %struct.btrfs_delayed_ref_node** %8, align 8
  %32 = call i32 @btrfs_put_delayed_ref(%struct.btrfs_delayed_ref_node* %31)
  %33 = load %struct.btrfs_delayed_ref_root*, %struct.btrfs_delayed_ref_root** %6, align 8
  %34 = getelementptr inbounds %struct.btrfs_delayed_ref_root, %struct.btrfs_delayed_ref_root* %33, i32 0, i32 0
  %35 = call i32 @atomic_dec(i32* %34)
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @rb_erase_cached(i32*, i32*) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @btrfs_put_delayed_ref(%struct.btrfs_delayed_ref_node*) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
