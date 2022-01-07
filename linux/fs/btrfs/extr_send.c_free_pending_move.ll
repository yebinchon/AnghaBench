; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_free_pending_move.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_send.c_free_pending_move.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.send_ctx = type { i32 }
%struct.pending_dir_move = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.send_ctx*, %struct.pending_dir_move*)* @free_pending_move to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_pending_move(%struct.send_ctx* %0, %struct.pending_dir_move* %1) #0 {
  %3 = alloca %struct.send_ctx*, align 8
  %4 = alloca %struct.pending_dir_move*, align 8
  store %struct.send_ctx* %0, %struct.send_ctx** %3, align 8
  store %struct.pending_dir_move* %1, %struct.pending_dir_move** %4, align 8
  %5 = load %struct.pending_dir_move*, %struct.pending_dir_move** %4, align 8
  %6 = getelementptr inbounds %struct.pending_dir_move, %struct.pending_dir_move* %5, i32 0, i32 2
  %7 = call i32 @list_empty(i32* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load %struct.pending_dir_move*, %struct.pending_dir_move** %4, align 8
  %11 = getelementptr inbounds %struct.pending_dir_move, %struct.pending_dir_move* %10, i32 0, i32 2
  %12 = call i32 @list_del(i32* %11)
  br label %13

13:                                               ; preds = %9, %2
  %14 = load %struct.pending_dir_move*, %struct.pending_dir_move** %4, align 8
  %15 = getelementptr inbounds %struct.pending_dir_move, %struct.pending_dir_move* %14, i32 0, i32 1
  %16 = call i32 @RB_EMPTY_NODE(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = load %struct.pending_dir_move*, %struct.pending_dir_move** %4, align 8
  %20 = getelementptr inbounds %struct.pending_dir_move, %struct.pending_dir_move* %19, i32 0, i32 1
  %21 = load %struct.send_ctx*, %struct.send_ctx** %3, align 8
  %22 = getelementptr inbounds %struct.send_ctx, %struct.send_ctx* %21, i32 0, i32 0
  %23 = call i32 @rb_erase(i32* %20, i32* %22)
  br label %24

24:                                               ; preds = %18, %13
  %25 = load %struct.pending_dir_move*, %struct.pending_dir_move** %4, align 8
  %26 = getelementptr inbounds %struct.pending_dir_move, %struct.pending_dir_move* %25, i32 0, i32 0
  %27 = call i32 @__free_recorded_refs(i32* %26)
  %28 = load %struct.pending_dir_move*, %struct.pending_dir_move** %4, align 8
  %29 = call i32 @kfree(%struct.pending_dir_move* %28)
  ret void
}

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @RB_EMPTY_NODE(i32*) #1

declare dso_local i32 @rb_erase(i32*, i32*) #1

declare dso_local i32 @__free_recorded_refs(i32*) #1

declare dso_local i32 @kfree(%struct.pending_dir_move*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
