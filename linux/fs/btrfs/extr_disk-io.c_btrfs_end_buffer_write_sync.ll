; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_end_buffer_write_sync.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_disk-io.c_btrfs_end_buffer_write_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i64 }
%struct.btrfs_device = type { i32, i32 }

@.str = private unnamed_addr constant [38 x i8] c"lost page write due to IO error on %s\00", align 1
@BTRFS_DEV_STAT_WRITE_ERRS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer_head*, i32)* @btrfs_end_buffer_write_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @btrfs_end_buffer_write_sync(%struct.buffer_head* %0, i32 %1) #0 {
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.btrfs_device*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %2
  %9 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %10 = call i32 @set_buffer_uptodate(%struct.buffer_head* %9)
  br label %29

11:                                               ; preds = %2
  %12 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %13 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.btrfs_device*
  store %struct.btrfs_device* %15, %struct.btrfs_device** %5, align 8
  %16 = load %struct.btrfs_device*, %struct.btrfs_device** %5, align 8
  %17 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.btrfs_device*, %struct.btrfs_device** %5, align 8
  %20 = getelementptr inbounds %struct.btrfs_device, %struct.btrfs_device* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @rcu_str_deref(i32 %21)
  %23 = call i32 @btrfs_warn_rl_in_rcu(i32 %18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %25 = call i32 @clear_buffer_uptodate(%struct.buffer_head* %24)
  %26 = load %struct.btrfs_device*, %struct.btrfs_device** %5, align 8
  %27 = load i32, i32* @BTRFS_DEV_STAT_WRITE_ERRS, align 4
  %28 = call i32 @btrfs_dev_stat_inc_and_print(%struct.btrfs_device* %26, i32 %27)
  br label %29

29:                                               ; preds = %11, %8
  %30 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %31 = call i32 @unlock_buffer(%struct.buffer_head* %30)
  %32 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %33 = call i32 @put_bh(%struct.buffer_head* %32)
  ret void
}

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @btrfs_warn_rl_in_rcu(i32, i8*, i32) #1

declare dso_local i32 @rcu_str_deref(i32) #1

declare dso_local i32 @clear_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @btrfs_dev_stat_inc_and_print(%struct.btrfs_device*, i32) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
