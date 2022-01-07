; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_root.c_autofs_dentry_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_root.c_autofs_dentry_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.autofs_info = type { i32, i32 }
%struct.autofs_sb_info = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"releasing %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*)* @autofs_dentry_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @autofs_dentry_release(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.autofs_info*, align 8
  %4 = alloca %struct.autofs_sb_info*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %5 = load %struct.dentry*, %struct.dentry** %2, align 8
  %6 = call %struct.autofs_info* @autofs_dentry_ino(%struct.dentry* %5)
  store %struct.autofs_info* %6, %struct.autofs_info** %3, align 8
  %7 = load %struct.dentry*, %struct.dentry** %2, align 8
  %8 = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.autofs_sb_info* @autofs_sbi(i32 %9)
  store %struct.autofs_sb_info* %10, %struct.autofs_sb_info** %4, align 8
  %11 = load %struct.dentry*, %struct.dentry** %2, align 8
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %struct.dentry* %11)
  %13 = load %struct.autofs_info*, %struct.autofs_info** %3, align 8
  %14 = icmp ne %struct.autofs_info* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %1
  br label %47

16:                                               ; preds = %1
  %17 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %4, align 8
  %18 = icmp ne %struct.autofs_sb_info* %17, null
  br i1 %18, label %19, label %44

19:                                               ; preds = %16
  %20 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %4, align 8
  %21 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %20, i32 0, i32 0
  %22 = call i32 @spin_lock(i32* %21)
  %23 = load %struct.autofs_info*, %struct.autofs_info** %3, align 8
  %24 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %23, i32 0, i32 1
  %25 = call i32 @list_empty(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %19
  %28 = load %struct.autofs_info*, %struct.autofs_info** %3, align 8
  %29 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %28, i32 0, i32 1
  %30 = call i32 @list_del(i32* %29)
  br label %31

31:                                               ; preds = %27, %19
  %32 = load %struct.autofs_info*, %struct.autofs_info** %3, align 8
  %33 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %32, i32 0, i32 0
  %34 = call i32 @list_empty(i32* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load %struct.autofs_info*, %struct.autofs_info** %3, align 8
  %38 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %37, i32 0, i32 0
  %39 = call i32 @list_del(i32* %38)
  br label %40

40:                                               ; preds = %36, %31
  %41 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %4, align 8
  %42 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock(i32* %42)
  br label %44

44:                                               ; preds = %40, %16
  %45 = load %struct.autofs_info*, %struct.autofs_info** %3, align 8
  %46 = call i32 @autofs_free_ino(%struct.autofs_info* %45)
  br label %47

47:                                               ; preds = %44, %15
  ret void
}

declare dso_local %struct.autofs_info* @autofs_dentry_ino(%struct.dentry*) #1

declare dso_local %struct.autofs_sb_info* @autofs_sbi(i32) #1

declare dso_local i32 @pr_debug(i8*, %struct.dentry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @autofs_free_ino(%struct.autofs_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
