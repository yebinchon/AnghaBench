; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_expire.c_autofs_mount_busy.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_expire.c_autofs_mount_busy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vfsmount = type { i32 }
%struct.dentry = type { i32 }
%struct.path = type { %struct.vfsmount*, %struct.dentry* }
%struct.autofs_sb_info = type { i32 }
%struct.autofs_info = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"dentry %p %pd\0A\00", align 1
@AUTOFS_EXP_FORCED = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"returning = %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vfsmount*, %struct.dentry*, i32)* @autofs_mount_busy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs_mount_busy(%struct.vfsmount* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.vfsmount*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca %struct.path, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.autofs_sb_info*, align 8
  %11 = alloca %struct.autofs_info*, align 8
  store %struct.vfsmount* %0, %struct.vfsmount** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.dentry*, %struct.dentry** %5, align 8
  store %struct.dentry* %12, %struct.dentry** %7, align 8
  %13 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 0
  %14 = load %struct.vfsmount*, %struct.vfsmount** %4, align 8
  store %struct.vfsmount* %14, %struct.vfsmount** %13, align 8
  %15 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 1
  %16 = load %struct.dentry*, %struct.dentry** %5, align 8
  store %struct.dentry* %16, %struct.dentry** %15, align 8
  store i32 1, i32* %9, align 4
  %17 = load %struct.dentry*, %struct.dentry** %5, align 8
  %18 = load %struct.dentry*, %struct.dentry** %5, align 8
  %19 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), %struct.dentry* %17, %struct.dentry* %18)
  %20 = call i32 @path_get(%struct.path* %8)
  %21 = call i32 @follow_down_one(%struct.path* %8)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %3
  br label %60

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 1
  %26 = load %struct.dentry*, %struct.dentry** %25, align 8
  %27 = call i64 @is_autofs_dentry(%struct.dentry* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 1
  %31 = load %struct.dentry*, %struct.dentry** %30, align 8
  %32 = getelementptr inbounds %struct.dentry, %struct.dentry* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.autofs_sb_info* @autofs_sbi(i32 %33)
  store %struct.autofs_sb_info* %34, %struct.autofs_sb_info** %10, align 8
  %35 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %10, align 8
  %36 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @autofs_type_indirect(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %60

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41, %24
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @AUTOFS_EXP_FORCED, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 0, i32* %9, align 4
  br label %60

48:                                               ; preds = %42
  %49 = getelementptr inbounds %struct.path, %struct.path* %8, i32 0, i32 0
  %50 = load %struct.vfsmount*, %struct.vfsmount** %49, align 8
  %51 = call i32 @may_umount_tree(%struct.vfsmount* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %48
  %54 = load %struct.dentry*, %struct.dentry** %7, align 8
  %55 = call %struct.autofs_info* @autofs_dentry_ino(%struct.dentry* %54)
  store %struct.autofs_info* %55, %struct.autofs_info** %11, align 8
  %56 = load i32, i32* @jiffies, align 4
  %57 = load %struct.autofs_info*, %struct.autofs_info** %11, align 8
  %58 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %57, i32 0, i32 0
  store i32 %56, i32* %58, align 4
  br label %60

59:                                               ; preds = %48
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %59, %53, %47, %40, %23
  %61 = load i32, i32* %9, align 4
  %62 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = call i32 @path_put(%struct.path* %8)
  %64 = load i32, i32* %9, align 4
  ret i32 %64
}

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i32 @path_get(%struct.path*) #1

declare dso_local i32 @follow_down_one(%struct.path*) #1

declare dso_local i64 @is_autofs_dentry(%struct.dentry*) #1

declare dso_local %struct.autofs_sb_info* @autofs_sbi(i32) #1

declare dso_local i64 @autofs_type_indirect(i32) #1

declare dso_local i32 @may_umount_tree(%struct.vfsmount*) #1

declare dso_local %struct.autofs_info* @autofs_dentry_ino(%struct.dentry*) #1

declare dso_local i32 @path_put(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
