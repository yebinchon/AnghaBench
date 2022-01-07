; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_symlink.c_autofs_get_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_symlink.c_autofs_get_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.delayed_call = type { i32 }
%struct.autofs_sb_info = type { i32 }
%struct.autofs_info = type { i32 }
%struct.TYPE_2__ = type { i8* }

@ECHILD = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* @autofs_get_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @autofs_get_link(%struct.dentry* %0, %struct.inode* %1, %struct.delayed_call* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.delayed_call*, align 8
  %8 = alloca %struct.autofs_sb_info*, align 8
  %9 = alloca %struct.autofs_info*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store %struct.delayed_call* %2, %struct.delayed_call** %7, align 8
  %10 = load %struct.dentry*, %struct.dentry** %5, align 8
  %11 = icmp ne %struct.dentry* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* @ECHILD, align 4
  %14 = sub nsw i32 0, %13
  %15 = call i8* @ERR_PTR(i32 %14)
  store i8* %15, i8** %4, align 8
  br label %38

16:                                               ; preds = %3
  %17 = load %struct.dentry*, %struct.dentry** %5, align 8
  %18 = getelementptr inbounds %struct.dentry, %struct.dentry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.autofs_sb_info* @autofs_sbi(i32 %19)
  store %struct.autofs_sb_info* %20, %struct.autofs_sb_info** %8, align 8
  %21 = load %struct.dentry*, %struct.dentry** %5, align 8
  %22 = call %struct.autofs_info* @autofs_dentry_ino(%struct.dentry* %21)
  store %struct.autofs_info* %22, %struct.autofs_info** %9, align 8
  %23 = load %struct.autofs_info*, %struct.autofs_info** %9, align 8
  %24 = icmp ne %struct.autofs_info* %23, null
  br i1 %24, label %25, label %33

25:                                               ; preds = %16
  %26 = load %struct.autofs_sb_info*, %struct.autofs_sb_info** %8, align 8
  %27 = call i32 @autofs_oz_mode(%struct.autofs_sb_info* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = load i32, i32* @jiffies, align 4
  %31 = load %struct.autofs_info*, %struct.autofs_info** %9, align 8
  %32 = getelementptr inbounds %struct.autofs_info, %struct.autofs_info* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %25, %16
  %34 = load %struct.dentry*, %struct.dentry** %5, align 8
  %35 = call %struct.TYPE_2__* @d_inode(%struct.dentry* %34)
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i8*, i8** %36, align 8
  store i8* %37, i8** %4, align 8
  br label %38

38:                                               ; preds = %33, %12
  %39 = load i8*, i8** %4, align 8
  ret i8* %39
}

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local %struct.autofs_sb_info* @autofs_sbi(i32) #1

declare dso_local %struct.autofs_info* @autofs_dentry_ino(%struct.dentry*) #1

declare dso_local i32 @autofs_oz_mode(%struct.autofs_sb_info*) #1

declare dso_local %struct.TYPE_2__* @d_inode(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
