; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_ref-verify.c_dump_ref_action.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_ref-verify.c_dump_ref_action.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.ref_action = type { %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [95 x i8] c"  Ref action %d, root %llu, ref_root %llu, parent %llu, owner %llu, offset %llu, num_refs %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_fs_info*, %struct.ref_action*)* @dump_ref_action to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_ref_action(%struct.btrfs_fs_info* %0, %struct.ref_action* %1) #0 {
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca %struct.ref_action*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  store %struct.ref_action* %1, %struct.ref_action** %4, align 8
  %5 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %6 = load %struct.ref_action*, %struct.ref_action** %4, align 8
  %7 = getelementptr inbounds %struct.ref_action, %struct.ref_action* %6, i32 0, i32 2
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.ref_action*, %struct.ref_action** %4, align 8
  %10 = getelementptr inbounds %struct.ref_action, %struct.ref_action* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ref_action*, %struct.ref_action** %4, align 8
  %13 = getelementptr inbounds %struct.ref_action, %struct.ref_action* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ref_action*, %struct.ref_action** %4, align 8
  %17 = getelementptr inbounds %struct.ref_action, %struct.ref_action* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ref_action*, %struct.ref_action** %4, align 8
  %21 = getelementptr inbounds %struct.ref_action, %struct.ref_action* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ref_action*, %struct.ref_action** %4, align 8
  %25 = getelementptr inbounds %struct.ref_action, %struct.ref_action* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ref_action*, %struct.ref_action** %4, align 8
  %29 = getelementptr inbounds %struct.ref_action, %struct.ref_action* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @btrfs_err(%struct.btrfs_fs_info* %5, i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %11, i32 %15, i32 %19, i32 %23, i32 %27, i32 %31)
  %33 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %34 = load %struct.ref_action*, %struct.ref_action** %4, align 8
  %35 = call i32 @__print_stack_trace(%struct.btrfs_fs_info* %33, %struct.ref_action* %34)
  ret void
}

declare dso_local i32 @btrfs_err(%struct.btrfs_fs_info*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @__print_stack_trace(%struct.btrfs_fs_info*, %struct.ref_action*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
