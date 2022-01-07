; ModuleID = '/home/carl/AnghaBench/linux/fs/adfs/extr_dir.c_adfs_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/adfs/extr_dir.c_adfs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }
%struct.object_info = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, i32)* @adfs_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @adfs_lookup(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca %struct.object_info, align 4
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  store i32 %2, i32* %6, align 4
  store %struct.inode* null, %struct.inode** %7, align 8
  %10 = load %struct.inode*, %struct.inode** %4, align 8
  %11 = load %struct.dentry*, %struct.dentry** %5, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 0
  %13 = call i32 @adfs_dir_lookup_byname(%struct.inode* %10, i32* %12, %struct.object_info* %8)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %3
  %17 = load %struct.inode*, %struct.inode** %4, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call %struct.inode* @adfs_iget(i32 %19, %struct.object_info* %8)
  store %struct.inode* %20, %struct.inode** %7, align 8
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = icmp ne %struct.inode* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %16
  %24 = load i32, i32* @EACCES, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.inode* @ERR_PTR(i32 %25)
  store %struct.inode* %26, %struct.inode** %7, align 8
  br label %27

27:                                               ; preds = %23, %16
  br label %37

28:                                               ; preds = %3
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @ENOENT, align 4
  %31 = sub nsw i32 0, %30
  %32 = icmp ne i32 %29, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %28
  %34 = load i32, i32* %9, align 4
  %35 = call %struct.inode* @ERR_PTR(i32 %34)
  store %struct.inode* %35, %struct.inode** %7, align 8
  br label %36

36:                                               ; preds = %33, %28
  br label %37

37:                                               ; preds = %36, %27
  %38 = load %struct.inode*, %struct.inode** %7, align 8
  %39 = load %struct.dentry*, %struct.dentry** %5, align 8
  %40 = call %struct.dentry* @d_splice_alias(%struct.inode* %38, %struct.dentry* %39)
  ret %struct.dentry* %40
}

declare dso_local i32 @adfs_dir_lookup_byname(%struct.inode*, i32*, %struct.object_info*) #1

declare dso_local %struct.inode* @adfs_iget(i32, %struct.object_info*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local %struct.dentry* @d_splice_alias(%struct.inode*, %struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
