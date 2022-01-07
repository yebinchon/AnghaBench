; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_print-tree.c_print_dev_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_print-tree.c_print_dev_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_buffer = type { i32 }
%struct.btrfs_dev_item = type { i32 }

@.str = private unnamed_addr constant [56 x i8] c"\09\09dev item devid %llu total_bytes %llu bytes used %llu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.extent_buffer*, %struct.btrfs_dev_item*)* @print_dev_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_dev_item(%struct.extent_buffer* %0, %struct.btrfs_dev_item* %1) #0 {
  %3 = alloca %struct.extent_buffer*, align 8
  %4 = alloca %struct.btrfs_dev_item*, align 8
  store %struct.extent_buffer* %0, %struct.extent_buffer** %3, align 8
  store %struct.btrfs_dev_item* %1, %struct.btrfs_dev_item** %4, align 8
  %5 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %6 = load %struct.btrfs_dev_item*, %struct.btrfs_dev_item** %4, align 8
  %7 = call i32 @btrfs_device_id(%struct.extent_buffer* %5, %struct.btrfs_dev_item* %6)
  %8 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %9 = load %struct.btrfs_dev_item*, %struct.btrfs_dev_item** %4, align 8
  %10 = call i32 @btrfs_device_total_bytes(%struct.extent_buffer* %8, %struct.btrfs_dev_item* %9)
  %11 = load %struct.extent_buffer*, %struct.extent_buffer** %3, align 8
  %12 = load %struct.btrfs_dev_item*, %struct.btrfs_dev_item** %4, align 8
  %13 = call i32 @btrfs_device_bytes_used(%struct.extent_buffer* %11, %struct.btrfs_dev_item* %12)
  %14 = call i32 @pr_info(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %7, i32 %10, i32 %13)
  ret void
}

declare dso_local i32 @pr_info(i8*, i32, i32, i32) #1

declare dso_local i32 @btrfs_device_id(%struct.extent_buffer*, %struct.btrfs_dev_item*) #1

declare dso_local i32 @btrfs_device_total_bytes(%struct.extent_buffer*, %struct.btrfs_dev_item*) #1

declare dso_local i32 @btrfs_device_bytes_used(%struct.extent_buffer*, %struct.btrfs_dev_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
