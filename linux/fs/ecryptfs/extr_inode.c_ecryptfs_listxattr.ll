; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_inode.c_ecryptfs_listxattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_inode.c_ecryptfs_listxattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.dentry*, i8*, i64)* }

@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dentry*, i8*, i64)* @ecryptfs_listxattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecryptfs_listxattr(%struct.dentry* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %9 = load %struct.dentry*, %struct.dentry** %4, align 8
  %10 = call %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry* %9)
  store %struct.dentry* %10, %struct.dentry** %8, align 8
  %11 = load %struct.dentry*, %struct.dentry** %8, align 8
  %12 = call %struct.TYPE_6__* @d_inode(%struct.dentry* %11)
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32 (%struct.dentry*, i8*, i64)*, i32 (%struct.dentry*, i8*, i64)** %15, align 8
  %17 = icmp ne i32 (%struct.dentry*, i8*, i64)* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @EOPNOTSUPP, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %7, align 4
  br label %38

21:                                               ; preds = %3
  %22 = load %struct.dentry*, %struct.dentry** %8, align 8
  %23 = call %struct.TYPE_6__* @d_inode(%struct.dentry* %22)
  %24 = call i32 @inode_lock(%struct.TYPE_6__* %23)
  %25 = load %struct.dentry*, %struct.dentry** %8, align 8
  %26 = call %struct.TYPE_6__* @d_inode(%struct.dentry* %25)
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32 (%struct.dentry*, i8*, i64)*, i32 (%struct.dentry*, i8*, i64)** %29, align 8
  %31 = load %struct.dentry*, %struct.dentry** %8, align 8
  %32 = load i8*, i8** %5, align 8
  %33 = load i64, i64* %6, align 8
  %34 = call i32 %30(%struct.dentry* %31, i8* %32, i64 %33)
  store i32 %34, i32* %7, align 4
  %35 = load %struct.dentry*, %struct.dentry** %8, align 8
  %36 = call %struct.TYPE_6__* @d_inode(%struct.dentry* %35)
  %37 = call i32 @inode_unlock(%struct.TYPE_6__* %36)
  br label %38

38:                                               ; preds = %21, %18
  %39 = load i32, i32* %7, align 4
  ret i32 %39
}

declare dso_local %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry*) #1

declare dso_local %struct.TYPE_6__* @d_inode(%struct.dentry*) #1

declare dso_local i32 @inode_lock(%struct.TYPE_6__*) #1

declare dso_local i32 @inode_unlock(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
