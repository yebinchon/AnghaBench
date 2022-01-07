; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_tail_append_pending_moves.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_tail_append_pending_moves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { i32 }
%struct.pending_dir_move = type { i32, i32 }
%struct.list_head = type { i32 }

@list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.send_ctx*, %struct.pending_dir_move*, %struct.list_head*)* @tail_append_pending_moves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tail_append_pending_moves(%struct.send_ctx* %0, %struct.pending_dir_move* %1, %struct.list_head* %2) #0 {
  %4 = alloca %struct.send_ctx*, align 8
  %5 = alloca %struct.pending_dir_move*, align 8
  %6 = alloca %struct.list_head*, align 8
  store %struct.send_ctx* %0, %struct.send_ctx** %4, align 8
  store %struct.pending_dir_move* %1, %struct.pending_dir_move** %5, align 8
  store %struct.list_head* %2, %struct.list_head** %6, align 8
  %7 = load %struct.pending_dir_move*, %struct.pending_dir_move** %5, align 8
  %8 = getelementptr inbounds %struct.pending_dir_move, %struct.pending_dir_move* %7, i32 0, i32 1
  %9 = call i64 @list_empty(i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %3
  %12 = load %struct.pending_dir_move*, %struct.pending_dir_move** %5, align 8
  %13 = getelementptr inbounds %struct.pending_dir_move, %struct.pending_dir_move* %12, i32 0, i32 1
  %14 = load %struct.list_head*, %struct.list_head** %6, align 8
  %15 = call i32 @list_add_tail(i32* %13, %struct.list_head* %14)
  br label %28

16:                                               ; preds = %3
  %17 = load i32, i32* @list, align 4
  %18 = call i32 @LIST_HEAD(i32 %17)
  %19 = load %struct.pending_dir_move*, %struct.pending_dir_move** %5, align 8
  %20 = getelementptr inbounds %struct.pending_dir_move, %struct.pending_dir_move* %19, i32 0, i32 1
  %21 = call i32 @list_splice_init(i32* %20, i32* @list)
  %22 = load %struct.pending_dir_move*, %struct.pending_dir_move** %5, align 8
  %23 = getelementptr inbounds %struct.pending_dir_move, %struct.pending_dir_move* %22, i32 0, i32 1
  %24 = load %struct.list_head*, %struct.list_head** %6, align 8
  %25 = call i32 @list_add_tail(i32* %23, %struct.list_head* %24)
  %26 = load %struct.list_head*, %struct.list_head** %6, align 8
  %27 = call i32 @list_splice_tail(i32* @list, %struct.list_head* %26)
  br label %28

28:                                               ; preds = %16, %11
  %29 = load %struct.pending_dir_move*, %struct.pending_dir_move** %5, align 8
  %30 = getelementptr inbounds %struct.pending_dir_move, %struct.pending_dir_move* %29, i32 0, i32 0
  %31 = call i32 @RB_EMPTY_NODE(i32* %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %42, label %33

33:                                               ; preds = %28
  %34 = load %struct.pending_dir_move*, %struct.pending_dir_move** %5, align 8
  %35 = getelementptr inbounds %struct.pending_dir_move, %struct.pending_dir_move* %34, i32 0, i32 0
  %36 = load %struct.send_ctx*, %struct.send_ctx** %4, align 8
  %37 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %36, i32 0, i32 0
  %38 = call i32 @rb_erase(i32* %35, i32* %37)
  %39 = load %struct.pending_dir_move*, %struct.pending_dir_move** %5, align 8
  %40 = getelementptr inbounds %struct.pending_dir_move, %struct.pending_dir_move* %39, i32 0, i32 0
  %41 = call i32 @RB_CLEAR_NODE(i32* %40)
  br label %42

42:                                               ; preds = %33, %28
  ret void
}

declare dso_local i64 @list_empty(i32*) #1

declare dso_local i32 @list_add_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @LIST_HEAD(i32) #1

declare dso_local i32 @list_splice_init(i32*, i32*) #1

declare dso_local i32 @list_splice_tail(i32*, %struct.list_head*) #1

declare dso_local i32 @RB_EMPTY_NODE(i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @RB_CLEAR_NODE(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
