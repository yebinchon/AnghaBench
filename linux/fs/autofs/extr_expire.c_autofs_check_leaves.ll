; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_expire.c_autofs_check_leaves.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_expire.c_autofs_check_leaves.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"parent %p %pd\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"dentry %p %pd\0A\00", align 1
@AUTOFS_EXP_FORCED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.vfsmount*, %struct.dentry*, i64, i32)* @autofs_check_leaves to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @autofs_check_leaves(%struct.vfsmount* %0, %struct.dentry* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.vfsmount*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.dentry*, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.dentry*, %struct.dentry** %7, align 8
  %12 = load %struct.dentry*, %struct.dentry** %7, align 8
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.dentry* %11, %struct.dentry* %12)
  store %struct.dentry* null, %struct.dentry** %10, align 8
  br label %14

14:                                               ; preds = %49, %32, %4
  %15 = load %struct.dentry*, %struct.dentry** %10, align 8
  %16 = load %struct.dentry*, %struct.dentry** %7, align 8
  %17 = call %struct.dentry* @get_next_positive_dentry(%struct.dentry* %15, %struct.dentry* %16)
  store %struct.dentry* %17, %struct.dentry** %10, align 8
  %18 = icmp ne %struct.dentry* %17, null
  br i1 %18, label %19, label %50

19:                                               ; preds = %14
  %20 = load %struct.dentry*, %struct.dentry** %10, align 8
  %21 = load %struct.dentry*, %struct.dentry** %10, align 8
  %22 = call i32 @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), %struct.dentry* %20, %struct.dentry* %21)
  %23 = load %struct.dentry*, %struct.dentry** %10, align 8
  %24 = call i64 @d_mountpoint(%struct.dentry* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %49

26:                                               ; preds = %19
  %27 = load %struct.vfsmount*, %struct.vfsmount** %6, align 8
  %28 = load %struct.dentry*, %struct.dentry** %10, align 8
  %29 = load i32, i32* %9, align 4
  %30 = call i64 @autofs_mount_busy(%struct.vfsmount* %27, %struct.dentry* %28, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %14

33:                                               ; preds = %26
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @AUTOFS_EXP_FORCED, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %39, %struct.dentry** %5, align 8
  br label %51

40:                                               ; preds = %33
  %41 = load %struct.dentry*, %struct.dentry** %10, align 8
  %42 = load i64, i64* %8, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i64 @autofs_can_expire(%struct.dentry* %41, i64 %42, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %40
  %47 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %47, %struct.dentry** %5, align 8
  br label %51

48:                                               ; preds = %40
  br label %49

49:                                               ; preds = %48, %19
  br label %14

50:                                               ; preds = %14
  store %struct.dentry* null, %struct.dentry** %5, align 8
  br label %51

51:                                               ; preds = %50, %46, %38
  %52 = load %struct.dentry*, %struct.dentry** %5, align 8
  ret %struct.dentry* %52
}

declare dso_local i32 @pr_debug(i8*, %struct.dentry*, %struct.dentry*) #1

declare dso_local %struct.dentry* @get_next_positive_dentry(%struct.dentry*, %struct.dentry*) #1

declare dso_local i64 @d_mountpoint(%struct.dentry*) #1

declare dso_local i64 @autofs_mount_busy(%struct.vfsmount*, %struct.dentry*, i32) #1

declare dso_local i64 @autofs_can_expire(%struct.dentry*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
