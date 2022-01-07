; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_expire.c_get_next_positive_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_expire.c_get_next_positive_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.dentry*, i32 }
%struct.autofs_sb_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*, %struct.dentry*)* @get_next_positive_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @get_next_positive_dentry(%struct.dentry* %0, %struct.dentry* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.autofs_sb_info*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %11 = load %struct.dentry*, %struct.dentry** %5, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.autofs_sb_info* @autofs_sbi(i32 %13)
  store %struct.autofs_sb_info* %14, %struct.autofs_sb_info** %6, align 8
  %15 = load %struct.dentry*, %struct.dentry** %4, align 8
  store %struct.dentry* %15, %struct.dentry** %7, align 8
  store %struct.dentry* null, %struct.dentry** %8, align 8
  store %struct.dentry* null, %struct.dentry** %9, align 8
  %16 = load %struct.dentry*, %struct.dentry** %4, align 8
  %17 = icmp eq %struct.dentry* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.dentry*, %struct.dentry** %5, align 8
  %20 = call %struct.dentry* @dget(%struct.dentry* %19)
  store %struct.dentry* %20, %struct.dentry** %3, align 8
  br label %61

21:                                               ; preds = %2
  %22 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %23 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %22, i32 0, i32 0
  %24 = call i32 @spin_lock(i32* %23)
  %25 = load %struct.dentry*, %struct.dentry** %7, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 0
  %27 = call i32 @spin_lock(i32* %26)
  br label %28

28:                                               ; preds = %21, %39
  %29 = load %struct.dentry*, %struct.dentry** %7, align 8
  %30 = load %struct.dentry*, %struct.dentry** %9, align 8
  %31 = call %struct.dentry* @positive_after(%struct.dentry* %29, %struct.dentry* %30)
  store %struct.dentry* %31, %struct.dentry** %8, align 8
  %32 = load %struct.dentry*, %struct.dentry** %8, align 8
  %33 = icmp ne %struct.dentry* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %28
  %35 = load %struct.dentry*, %struct.dentry** %7, align 8
  %36 = load %struct.dentry*, %struct.dentry** %5, align 8
  %37 = icmp eq %struct.dentry* %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34, %28
  br label %51

39:                                               ; preds = %34
  %40 = load %struct.dentry*, %struct.dentry** %7, align 8
  %41 = getelementptr inbounds %struct.dentry, %struct.dentry* %40, i32 0, i32 1
  %42 = load %struct.dentry*, %struct.dentry** %41, align 8
  store %struct.dentry* %42, %struct.dentry** %10, align 8
  %43 = load %struct.dentry*, %struct.dentry** %7, align 8
  %44 = getelementptr inbounds %struct.dentry, %struct.dentry* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock(i32* %44)
  %46 = load %struct.dentry*, %struct.dentry** %10, align 8
  %47 = getelementptr inbounds %struct.dentry, %struct.dentry* %46, i32 0, i32 0
  %48 = call i32 @spin_lock(i32* %47)
  %49 = load %struct.dentry*, %struct.dentry** %7, align 8
  store %struct.dentry* %49, %struct.dentry** %9, align 8
  %50 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %50, %struct.dentry** %7, align 8
  br label %28

51:                                               ; preds = %38
  %52 = load %struct.dentry*, %struct.dentry** %7, align 8
  %53 = getelementptr inbounds %struct.dentry, %struct.dentry* %52, i32 0, i32 0
  %54 = call i32 @spin_unlock(i32* %53)
  %55 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %6, align 8
  %56 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %55, i32 0, i32 0
  %57 = call i32 @spin_unlock(i32* %56)
  %58 = load %struct.dentry*, %struct.dentry** %4, align 8
  %59 = call i32 @dput(%struct.dentry* %58)
  %60 = load %struct.dentry*, %struct.dentry** %8, align 8
  store %struct.dentry* %60, %struct.dentry** %3, align 8
  br label %61

61:                                               ; preds = %51, %18
  %62 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %62
}

declare dso_local %struct.autofs_sb_info* @autofs_sbi(i32) #1

declare dso_local %struct.dentry* @dget(%struct.dentry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.dentry* @positive_after(%struct.dentry*, %struct.dentry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
