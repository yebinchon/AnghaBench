; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_dynroot.c_afs_dynroot_rmdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_dynroot.c_afs_dynroot_rmdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_net = type { %struct.super_block* }
%struct.super_block = type { %struct.dentry*, i32 }
%struct.dentry = type { i32, i32* }
%struct.afs_cell = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"lookup %ld\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"rmdir %pd %u\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"unpin %u\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @afs_dynroot_rmdir(%struct.afs_net* %0, %struct.afs_cell* %1) #0 {
  %3 = alloca %struct.afs_net*, align 8
  %4 = alloca %struct.afs_cell*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.dentry*, align 8
  store %struct.afs_net* %0, %struct.afs_net** %3, align 8
  store %struct.afs_cell* %1, %struct.afs_cell** %4, align 8
  %8 = load %struct.afs_net*, %struct.afs_net** %3, align 8
  %9 = getelementptr inbounds %struct.afs_net, %struct.afs_net* %8, i32 0, i32 0
  %10 = load %struct.super_block*, %struct.super_block** %9, align 8
  store %struct.super_block* %10, %struct.super_block** %5, align 8
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = icmp ne %struct.super_block* %11, null
  br i1 %12, label %13, label %18

13:                                               ; preds = %2
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = getelementptr inbounds %struct.super_block, %struct.super_block* %14, i32 0, i32 1
  %16 = call i64 @atomic_read(i32* %15)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13, %2
  br label %72

19:                                               ; preds = %13
  %20 = load %struct.super_block*, %struct.super_block** %5, align 8
  %21 = getelementptr inbounds %struct.super_block, %struct.super_block* %20, i32 0, i32 0
  %22 = load %struct.dentry*, %struct.dentry** %21, align 8
  store %struct.dentry* %22, %struct.dentry** %6, align 8
  %23 = load %struct.dentry*, %struct.dentry** %6, align 8
  %24 = getelementptr inbounds %struct.dentry, %struct.dentry* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @inode_lock(i32 %25)
  %27 = load %struct.afs_cell*, %struct.afs_cell** %4, align 8
  %28 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.dentry*, %struct.dentry** %6, align 8
  %31 = load %struct.afs_cell*, %struct.afs_cell** %4, align 8
  %32 = getelementptr inbounds %struct.afs_cell, %struct.afs_cell* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.dentry* @try_lookup_one_len(i32 %29, %struct.dentry* %30, i32 %33)
  store %struct.dentry* %34, %struct.dentry** %7, align 8
  %35 = load %struct.dentry*, %struct.dentry** %7, align 8
  %36 = call i64 @IS_ERR_OR_NULL(%struct.dentry* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %19
  %39 = load %struct.dentry*, %struct.dentry** %7, align 8
  %40 = call i32 @PTR_ERR(%struct.dentry* %39)
  %41 = sext i32 %40 to i64
  %42 = inttoptr i64 %41 to %struct.dentry*
  %43 = call i32 (i8*, %struct.dentry*, ...) @_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.dentry* %42)
  br label %66

44:                                               ; preds = %19
  %45 = load %struct.dentry*, %struct.dentry** %7, align 8
  %46 = load %struct.dentry*, %struct.dentry** %7, align 8
  %47 = call i32 @d_count(%struct.dentry* %46)
  %48 = call i32 (i8*, %struct.dentry*, ...) @_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), %struct.dentry* %45, i32 %47)
  %49 = load %struct.dentry*, %struct.dentry** %7, align 8
  %50 = getelementptr inbounds %struct.dentry, %struct.dentry* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %63

53:                                               ; preds = %44
  %54 = load %struct.dentry*, %struct.dentry** %7, align 8
  %55 = call i32 @d_count(%struct.dentry* %54)
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to %struct.dentry*
  %58 = call i32 (i8*, %struct.dentry*, ...) @_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), %struct.dentry* %57)
  %59 = load %struct.dentry*, %struct.dentry** %7, align 8
  %60 = getelementptr inbounds %struct.dentry, %struct.dentry* %59, i32 0, i32 1
  store i32* null, i32** %60, align 8
  %61 = load %struct.dentry*, %struct.dentry** %7, align 8
  %62 = call i32 @dput(%struct.dentry* %61)
  br label %63

63:                                               ; preds = %53, %44
  %64 = load %struct.dentry*, %struct.dentry** %7, align 8
  %65 = call i32 @dput(%struct.dentry* %64)
  br label %66

66:                                               ; preds = %63, %38
  %67 = load %struct.dentry*, %struct.dentry** %6, align 8
  %68 = getelementptr inbounds %struct.dentry, %struct.dentry* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @inode_unlock(i32 %69)
  %71 = call i32 @_leave(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0))
  br label %72

72:                                               ; preds = %66, %18
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @inode_lock(i32) #1

declare dso_local %struct.dentry* @try_lookup_one_len(i32, %struct.dentry*, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.dentry*) #1

declare dso_local i32 @_debug(i8*, %struct.dentry*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

declare dso_local i32 @d_count(%struct.dentry*) #1

declare dso_local i32 @dput(%struct.dentry*) #1

declare dso_local i32 @inode_unlock(i32) #1

declare dso_local i32 @_leave(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
