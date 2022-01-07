; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_export.c_ceph_get_parent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_export.c_ceph_get_parent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.inode = type { i64, i32 }

@CEPH_NOSNAP = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CEPH_SNAPDIR = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"get_parent %p ino %llx.%llx err=%ld\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.dentry*)* @ceph_get_parent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ceph_get_parent(%struct.dentry* %0) #0 {
  %2 = alloca %struct.dentry*, align 8
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %2, align 8
  %8 = load %struct.dentry*, %struct.dentry** %2, align 8
  %9 = call %struct.inode* @d_inode(%struct.dentry* %8)
  store %struct.inode* %9, %struct.inode** %3, align 8
  %10 = load %struct.inode*, %struct.inode** %3, align 8
  %11 = call i64 @ceph_snap(%struct.inode* %10)
  %12 = load i64, i64* @CEPH_NOSNAP, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %69

14:                                               ; preds = %1
  store i32 0, i32* %6, align 4
  %15 = load %struct.dentry*, %struct.dentry** %2, align 8
  %16 = call i32 @d_is_dir(%struct.dentry* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %14
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  %21 = call %struct.dentry* @ERR_PTR(i32 %20)
  store %struct.dentry* %21, %struct.dentry** %4, align 8
  br label %76

22:                                               ; preds = %14
  %23 = load %struct.inode*, %struct.inode** %3, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = call i32 @ceph_ino(%struct.inode* %26)
  %28 = call %struct.inode* @__lookup_inode(i32 %25, i32 %27)
  store %struct.inode* %28, %struct.inode** %5, align 8
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = call i64 @IS_ERR(%struct.inode* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %22
  %33 = load %struct.inode*, %struct.inode** %5, align 8
  %34 = call %struct.dentry* @ERR_CAST(%struct.inode* %33)
  store %struct.dentry* %34, %struct.dentry** %4, align 8
  br label %76

35:                                               ; preds = %22
  %36 = load %struct.inode*, %struct.inode** %3, align 8
  %37 = call i64 @ceph_snap(%struct.inode* %36)
  %38 = load i64, i64* @CEPH_SNAPDIR, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %59

40:                                               ; preds = %35
  %41 = load %struct.inode*, %struct.inode** %5, align 8
  %42 = call %struct.inode* @ceph_get_snapdir(%struct.inode* %41)
  store %struct.inode* %42, %struct.inode** %7, align 8
  %43 = load %struct.inode*, %struct.inode** %5, align 8
  %44 = getelementptr inbounds %struct.inode, %struct.inode* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %40
  store i32 1, i32* %6, align 4
  br label %48

48:                                               ; preds = %47, %40
  %49 = load %struct.inode*, %struct.inode** %5, align 8
  %50 = call i32 @iput(%struct.inode* %49)
  %51 = load %struct.inode*, %struct.inode** %7, align 8
  %52 = call i64 @IS_ERR(%struct.inode* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = load %struct.inode*, %struct.inode** %7, align 8
  %56 = call %struct.dentry* @ERR_CAST(%struct.inode* %55)
  store %struct.dentry* %56, %struct.dentry** %4, align 8
  br label %76

57:                                               ; preds = %48
  %58 = load %struct.inode*, %struct.inode** %7, align 8
  store %struct.inode* %58, %struct.inode** %5, align 8
  br label %59

59:                                               ; preds = %57, %35
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load %struct.inode*, %struct.inode** %5, align 8
  %64 = call %struct.dentry* @d_obtain_root(%struct.inode* %63)
  store %struct.dentry* %64, %struct.dentry** %4, align 8
  br label %68

65:                                               ; preds = %59
  %66 = load %struct.inode*, %struct.inode** %5, align 8
  %67 = call %struct.dentry* @d_obtain_alias(%struct.inode* %66)
  store %struct.dentry* %67, %struct.dentry** %4, align 8
  br label %68

68:                                               ; preds = %65, %62
  br label %75

69:                                               ; preds = %1
  %70 = load %struct.dentry*, %struct.dentry** %2, align 8
  %71 = getelementptr inbounds %struct.dentry, %struct.dentry* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.dentry*, %struct.dentry** %2, align 8
  %74 = call %struct.dentry* @__get_parent(i32 %72, %struct.dentry* %73, i32 0)
  store %struct.dentry* %74, %struct.dentry** %4, align 8
  br label %75

75:                                               ; preds = %69, %68
  br label %76

76:                                               ; preds = %75, %54, %32, %18
  %77 = load %struct.dentry*, %struct.dentry** %2, align 8
  %78 = load %struct.inode*, %struct.inode** %3, align 8
  %79 = call i32 @ceph_vinop(%struct.inode* %78)
  %80 = load %struct.dentry*, %struct.dentry** %4, align 8
  %81 = call i64 @PTR_ERR_OR_ZERO(%struct.dentry* %80)
  %82 = call i32 @dout(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.dentry* %77, i32 %79, i64 %81)
  %83 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %83
}

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i64 @ceph_snap(%struct.inode*) #1

declare dso_local i32 @d_is_dir(%struct.dentry*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.inode* @__lookup_inode(i32, i32) #1

declare dso_local i32 @ceph_ino(%struct.inode*) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.dentry* @ERR_CAST(%struct.inode*) #1

declare dso_local %struct.inode* @ceph_get_snapdir(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.dentry* @d_obtain_root(%struct.inode*) #1

declare dso_local %struct.dentry* @d_obtain_alias(%struct.inode*) #1

declare dso_local %struct.dentry* @__get_parent(i32, %struct.dentry*, i32) #1

declare dso_local i32 @dout(i8*, %struct.dentry*, i32, i64) #1

declare dso_local i32 @ceph_vinop(%struct.inode*) #1

declare dso_local i64 @PTR_ERR_OR_ZERO(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
