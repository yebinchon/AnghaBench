; ModuleID = '/home/carl/AnghaBench/linux/fs/exportfs/extr_expfs.c_exportfs_encode_fh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/exportfs/extr_expfs.c_exportfs_encode_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { %struct.inode* }
%struct.inode = type { i32 }
%struct.fid = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @exportfs_encode_fh(%struct.dentry* %0, %struct.fid* %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.fid*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.dentry*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %5, align 8
  store %struct.fid* %1, %struct.fid** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store %struct.dentry* null, %struct.dentry** %10, align 8
  %13 = load %struct.dentry*, %struct.dentry** %5, align 8
  %14 = getelementptr inbounds %struct.dentry, %struct.dentry* %13, i32 0, i32 0
  %15 = load %struct.inode*, %struct.inode** %14, align 8
  store %struct.inode* %15, %struct.inode** %11, align 8
  store %struct.inode* null, %struct.inode** %12, align 8
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %30

18:                                               ; preds = %4
  %19 = load %struct.inode*, %struct.inode** %11, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @S_ISDIR(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %18
  %25 = load %struct.dentry*, %struct.dentry** %5, align 8
  %26 = call %struct.dentry* @dget_parent(%struct.dentry* %25)
  store %struct.dentry* %26, %struct.dentry** %10, align 8
  %27 = load %struct.dentry*, %struct.dentry** %10, align 8
  %28 = getelementptr inbounds %struct.dentry, %struct.dentry* %27, i32 0, i32 0
  %29 = load %struct.inode*, %struct.inode** %28, align 8
  store %struct.inode* %29, %struct.inode** %12, align 8
  br label %30

30:                                               ; preds = %24, %18, %4
  %31 = load %struct.inode*, %struct.inode** %11, align 8
  %32 = load %struct.fid*, %struct.fid** %6, align 8
  %33 = load i32*, i32** %7, align 8
  %34 = load %struct.inode*, %struct.inode** %12, align 8
  %35 = call i32 @exportfs_encode_inode_fh(%struct.inode* %31, %struct.fid* %32, i32* %33, %struct.inode* %34)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.dentry*, %struct.dentry** %10, align 8
  %37 = call i32 @dput(%struct.dentry* %36)
  %38 = load i32, i32* %9, align 4
  ret i32 %38
}

declare dso_local i32 @S_ISDIR(i32) #1

declare dso_local %struct.dentry* @dget_parent(%struct.dentry*) #1

declare dso_local i32 @exportfs_encode_inode_fh(%struct.inode*, %struct.fid*, i32*, %struct.inode*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
