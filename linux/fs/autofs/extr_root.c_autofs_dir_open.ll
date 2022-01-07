; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_root.c_autofs_dir_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_root.c_autofs_dir_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.autofs_sb_info = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"file=%p dentry=%p %pd\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @autofs_dir_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @autofs_dir_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.autofs_sb_info*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.file*, %struct.file** %5, align 8
  %9 = getelementptr inbounds %struct.file, %struct.file* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.dentry*, %struct.dentry** %10, align 8
  store %struct.dentry* %11, %struct.dentry** %6, align 8
  %12 = load %struct.dentry*, %struct.dentry** %6, align 8
  %13 = getelementptr inbounds %struct.dentry, %struct.dentry* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.autofs_sb_info* @autofs_sbi(i32 %14)
  store %struct.autofs_sb_info* %15, %struct.autofs_sb_info** %7, align 8
  %16 = load %struct.file*, %struct.file** %5, align 8
  %17 = load %struct.dentry*, %struct.dentry** %6, align 8
  %18 = load %struct.dentry*, %struct.dentry** %6, align 8
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.file* %16, %struct.dentry* %17, %struct.dentry* %18)
  %20 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %7, align 8
  %21 = call i64 @autofs_oz_mode(%struct.autofs_sb_info* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %2
  br label %46

24:                                               ; preds = %2
  %25 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %7, align 8
  %26 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %25, i32 0, i32 0
  %27 = call i32 @spin_lock(i32* %26)
  %28 = load %struct.file*, %struct.file** %5, align 8
  %29 = getelementptr inbounds %struct.file, %struct.file* %28, i32 0, i32 0
  %30 = call i32 @path_is_mountpoint(%struct.TYPE_2__* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %42, label %32

32:                                               ; preds = %24
  %33 = load %struct.dentry*, %struct.dentry** %6, align 8
  %34 = call i64 @simple_empty(%struct.dentry* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %7, align 8
  %38 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock(i32* %38)
  %40 = load i32, i32* @ENOENT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %50

42:                                               ; preds = %32, %24
  %43 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %7, align 8
  %44 = getelementptr inbounds %struct.autofs_sb_info, %struct.autofs_sb_info* %43, i32 0, i32 0
  %45 = call i32 @spin_unlock(i32* %44)
  br label %46

46:                                               ; preds = %42, %23
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = load %struct.file*, %struct.file** %5, align 8
  %49 = call i32 @dcache_dir_open(%struct.inode* %47, %struct.file* %48)
  store i32 %49, i32* %3, align 4
  br label %50

50:                                               ; preds = %46, %36
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.autofs_sb_info* @autofs_sbi(i32) #1

declare dso_local i32 @pr_debug(i8*, %struct.file*, %struct.dentry*, %struct.dentry*) #1

declare dso_local i64 @autofs_oz_mode(%struct.autofs_sb_info*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @path_is_mountpoint(%struct.TYPE_2__*) #1

declare dso_local i64 @simple_empty(%struct.dentry*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dcache_dir_open(%struct.inode*, %struct.file*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
