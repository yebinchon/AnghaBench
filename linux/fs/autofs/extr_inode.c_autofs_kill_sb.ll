; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_inode.c_autofs_kill_sb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_inode.c_autofs_kill_sb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.autofs_sb_info = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"shutting down\0A\00", align 1
@rcu = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @autofs_kill_sb(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.autofs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.autofs_sb_info* @autofs_sbi(%struct.super_block* %4)
  store %struct.autofs_sb_info* %5, %struct.autofs_sb_info** %3, align 8
  %6 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %3, align 8
  %7 = icmp ne %struct.autofs_sb_info* %6, null
  br i1 %7, label %8, label %15

8:                                                ; preds = %1
  %9 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %3, align 8
  %10 = call i32 @autofs_catatonic_mode(%struct.autofs_sb_info* %9)
  %11 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %3, align 8
  %12 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @put_pid(i32 %13)
  br label %15

15:                                               ; preds = %8, %1
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.super_block*, %struct.super_block** %2, align 8
  %18 = call i32 @kill_litter_super(%struct.super_block* %17)
  %19 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %3, align 8
  %20 = icmp ne %struct.autofs_sb_info* %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %15
  %22 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %3, align 8
  %23 = load i32, i32* @rcu, align 4
  %24 = call i32 @kfree_rcu(%struct.autofs_sb_info* %22, i32 %23)
  br label %25

25:                                               ; preds = %21, %15
  ret void
}

declare dso_local %struct.autofs_sb_info* @autofs_sbi(%struct.super_block*) #1

declare dso_local i32 @autofs_catatonic_mode(%struct.autofs_sb_info*) #1

declare dso_local i32 @put_pid(i32) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @kill_litter_super(%struct.super_block*) #1

declare dso_local i32 @kfree_rcu(%struct.autofs_sb_info*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
