; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_inode.c_ecryptfs_get_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_inode.c_ecryptfs_get_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i32 }
%struct.delayed_call = type { i32 }

@ECHILD = common dso_local global i32 0, align 4
@kfree_link = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.dentry*, %struct.inode*, %struct.delayed_call*)* @ecryptfs_get_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @ecryptfs_get_link(%struct.dentry* %0, %struct.inode* %1, %struct.delayed_call* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.delayed_call*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
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
  br label %39

16:                                               ; preds = %3
  %17 = load %struct.dentry*, %struct.dentry** %5, align 8
  %18 = call i8* @ecryptfs_readlink_lower(%struct.dentry* %17, i64* %8)
  store i8* %18, i8** %9, align 8
  %19 = load i8*, i8** %9, align 8
  %20 = call i64 @IS_ERR(i8* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %16
  %23 = load i8*, i8** %9, align 8
  store i8* %23, i8** %4, align 8
  br label %39

24:                                               ; preds = %16
  %25 = load %struct.dentry*, %struct.dentry** %5, align 8
  %26 = call i32 @d_inode(%struct.dentry* %25)
  %27 = load %struct.dentry*, %struct.dentry** %5, align 8
  %28 = call %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry* %27)
  %29 = call i32 @d_inode(%struct.dentry* %28)
  %30 = call i32 @fsstack_copy_attr_atime(i32 %26, i32 %29)
  %31 = load i8*, i8** %9, align 8
  %32 = load i64, i64* %8, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  store i8 0, i8* %33, align 1
  %34 = load %struct.delayed_call*, %struct.delayed_call** %7, align 8
  %35 = load i32, i32* @kfree_link, align 4
  %36 = load i8*, i8** %9, align 8
  %37 = call i32 @set_delayed_call(%struct.delayed_call* %34, i32 %35, i8* %36)
  %38 = load i8*, i8** %9, align 8
  store i8* %38, i8** %4, align 8
  br label %39

39:                                               ; preds = %24, %22, %12
  %40 = load i8*, i8** %4, align 8
  ret i8* %40
}

declare dso_local i8* @ERR_PTR(i32) #1

declare dso_local i8* @ecryptfs_readlink_lower(%struct.dentry*, i64*) #1

declare dso_local i64 @IS_ERR(i8*) #1

declare dso_local i32 @fsstack_copy_attr_atime(i32, i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry*) #1

declare dso_local i32 @set_delayed_call(%struct.delayed_call*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
