; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_inode.c_ecryptfs_truncate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_inode.c_ecryptfs_truncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.iattr = type { i32, i32 }

@ATTR_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ecryptfs_truncate(%struct.dentry* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.iattr, align 4
  %7 = alloca %struct.iattr, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.dentry*, align 8
  store %struct.dentry* %0, %struct.dentry** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = getelementptr inbounds %struct.iattr, %struct.iattr* %6, i32 0, i32 0
  %11 = load i32, i32* @ATTR_SIZE, align 4
  store i32 %11, i32* %10, align 4
  %12 = getelementptr inbounds %struct.iattr, %struct.iattr* %6, i32 0, i32 1
  %13 = load i32, i32* %5, align 4
  store i32 %13, i32* %12, align 4
  %14 = bitcast %struct.iattr* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %14, i8 0, i64 8, i1 false)
  %15 = load %struct.dentry*, %struct.dentry** %4, align 8
  %16 = call i32 @d_inode(%struct.dentry* %15)
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @ecryptfs_inode_newsize_ok(i32 %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* %8, align 4
  store i32 %22, i32* %3, align 4
  br label %47

23:                                               ; preds = %2
  %24 = load %struct.dentry*, %struct.dentry** %4, align 8
  %25 = call i32 @truncate_upper(%struct.dentry* %24, %struct.iattr* %6, %struct.iattr* %7)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %45, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.iattr, %struct.iattr* %7, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @ATTR_SIZE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %28
  %35 = load %struct.dentry*, %struct.dentry** %4, align 8
  %36 = call %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry* %35)
  store %struct.dentry* %36, %struct.dentry** %9, align 8
  %37 = load %struct.dentry*, %struct.dentry** %9, align 8
  %38 = call i32 @d_inode(%struct.dentry* %37)
  %39 = call i32 @inode_lock(i32 %38)
  %40 = load %struct.dentry*, %struct.dentry** %9, align 8
  %41 = call i32 @notify_change(%struct.dentry* %40, %struct.iattr* %7, i32* null)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.dentry*, %struct.dentry** %9, align 8
  %43 = call i32 @d_inode(%struct.dentry* %42)
  %44 = call i32 @inode_unlock(i32 %43)
  br label %45

45:                                               ; preds = %34, %28, %23
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %3, align 4
  br label %47

47:                                               ; preds = %45, %21
  %48 = load i32, i32* %3, align 4
  ret i32 %48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @ecryptfs_inode_newsize_ok(i32, i32) #2

declare dso_local i32 @d_inode(%struct.dentry*) #2

declare dso_local i32 @truncate_upper(%struct.dentry*, %struct.iattr*, %struct.iattr*) #2

declare dso_local %struct.dentry* @ecryptfs_dentry_to_lower(%struct.dentry*) #2

declare dso_local i32 @inode_lock(i32) #2

declare dso_local i32 @notify_change(%struct.dentry*, %struct.iattr*, i32*) #2

declare dso_local i32 @inode_unlock(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
