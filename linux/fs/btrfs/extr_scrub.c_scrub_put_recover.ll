; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_scrub_put_recover.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_scrub.c_scrub_put_recover.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btrfs_fs_info = type { i32 }
%struct.scrub_recover = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.btrfs_fs_info*, %struct.scrub_recover*)* @scrub_put_recover to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scrub_put_recover(%struct.btrfs_fs_info* %0, %struct.scrub_recover* %1) #0 {
  %3 = alloca %struct.btrfs_fs_info*, align 8
  %4 = alloca %struct.scrub_recover*, align 8
  store %struct.btrfs_fs_info* %0, %struct.btrfs_fs_info** %3, align 8
  store %struct.scrub_recover* %1, %struct.scrub_recover** %4, align 8
  %5 = load %struct.scrub_recover*, %struct.scrub_recover** %4, align 8
  %6 = getelementptr inbounds %struct.scrub_recover, %struct.scrub_recover* %5, i32 0, i32 1
  %7 = call i64 @refcount_dec_and_test(i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load %struct.btrfs_fs_info*, %struct.btrfs_fs_info** %3, align 8
  %11 = call i32 @btrfs_bio_counter_dec(%struct.btrfs_fs_info* %10)
  %12 = load %struct.scrub_recover*, %struct.scrub_recover** %4, align 8
  %13 = getelementptr inbounds %struct.scrub_recover, %struct.scrub_recover* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @btrfs_put_bbio(i32 %14)
  %16 = load %struct.scrub_recover*, %struct.scrub_recover** %4, align 8
  %17 = call i32 @kfree(%struct.scrub_recover* %16)
  br label %18

18:                                               ; preds = %9, %2
  ret void
}

declare dso_local i64 @refcount_dec_and_test(i32*) #1

declare dso_local i32 @btrfs_bio_counter_dec(%struct.btrfs_fs_info*) #1

declare dso_local i32 @btrfs_put_bbio(i32) #1

declare dso_local i32 @kfree(%struct.scrub_recover*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
