; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c_update_dentry_lease_careful.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c_update_dentry_lease_careful.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, %struct.dentry*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ceph_mds_reply_lease = type { i32 }
%struct.ceph_mds_session = type { i32 }
%struct.ceph_vino = type { i32 }
%struct.inode = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*, %struct.ceph_mds_reply_lease*, %struct.ceph_mds_session*, i64, i8*, i64, %struct.ceph_vino*, %struct.ceph_vino*)* @update_dentry_lease_careful to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_dentry_lease_careful(%struct.dentry* %0, %struct.ceph_mds_reply_lease* %1, %struct.ceph_mds_session* %2, i64 %3, i8* %4, i64 %5, %struct.ceph_vino* %6, %struct.ceph_vino* %7) #0 {
  %9 = alloca %struct.dentry*, align 8
  %10 = alloca %struct.ceph_mds_reply_lease*, align 8
  %11 = alloca %struct.ceph_mds_session*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.ceph_vino*, align 8
  %16 = alloca %struct.ceph_vino*, align 8
  %17 = alloca %struct.inode*, align 8
  %18 = alloca %struct.ceph_mds_session*, align 8
  store %struct.dentry* %0, %struct.dentry** %9, align 8
  store %struct.ceph_mds_reply_lease* %1, %struct.ceph_mds_reply_lease** %10, align 8
  store %struct.ceph_mds_session* %2, %struct.ceph_mds_session** %11, align 8
  store i64 %3, i64* %12, align 8
  store i8* %4, i8** %13, align 8
  store i64 %5, i64* %14, align 8
  store %struct.ceph_vino* %6, %struct.ceph_vino** %15, align 8
  store %struct.ceph_vino* %7, %struct.ceph_vino** %16, align 8
  store %struct.ceph_mds_session* null, %struct.ceph_mds_session** %18, align 8
  %19 = load %struct.dentry*, %struct.dentry** %9, align 8
  %20 = getelementptr inbounds %struct.dentry, %struct.dentry* %19, i32 0, i32 0
  %21 = call i32 @spin_lock(i32* %20)
  %22 = load %struct.dentry*, %struct.dentry** %9, align 8
  %23 = getelementptr inbounds %struct.dentry, %struct.dentry* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* %14, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %37, label %28

28:                                               ; preds = %8
  %29 = load %struct.dentry*, %struct.dentry** %9, align 8
  %30 = getelementptr inbounds %struct.dentry, %struct.dentry* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load i8*, i8** %13, align 8
  %34 = load i64, i64* %14, align 8
  %35 = call i64 @memcmp(i32 %32, i8* %33, i64 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %28, %8
  br label %77

38:                                               ; preds = %28
  %39 = load %struct.dentry*, %struct.dentry** %9, align 8
  %40 = getelementptr inbounds %struct.dentry, %struct.dentry* %39, i32 0, i32 1
  %41 = load %struct.dentry*, %struct.dentry** %40, align 8
  %42 = call %struct.inode* @d_inode(%struct.dentry* %41)
  store %struct.inode* %42, %struct.inode** %17, align 8
  %43 = load %struct.inode*, %struct.inode** %17, align 8
  %44 = load %struct.ceph_vino*, %struct.ceph_vino** %15, align 8
  %45 = call i32 @ceph_ino_compare(%struct.inode* %43, %struct.ceph_vino* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %38
  br label %77

48:                                               ; preds = %38
  %49 = load %struct.ceph_vino*, %struct.ceph_vino** %16, align 8
  %50 = icmp ne %struct.ceph_vino* %49, null
  br i1 %50, label %51, label %64

51:                                               ; preds = %48
  %52 = load %struct.dentry*, %struct.dentry** %9, align 8
  %53 = call i64 @d_really_is_negative(%struct.dentry* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %51
  br label %77

56:                                               ; preds = %51
  %57 = load %struct.dentry*, %struct.dentry** %9, align 8
  %58 = call %struct.inode* @d_inode(%struct.dentry* %57)
  %59 = load %struct.ceph_vino*, %struct.ceph_vino** %16, align 8
  %60 = call i32 @ceph_ino_compare(%struct.inode* %58, %struct.ceph_vino* %59)
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %56
  br label %77

63:                                               ; preds = %56
  br label %70

64:                                               ; preds = %48
  %65 = load %struct.dentry*, %struct.dentry** %9, align 8
  %66 = call i64 @d_really_is_positive(%struct.dentry* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %77

69:                                               ; preds = %64
  br label %70

70:                                               ; preds = %69, %63
  %71 = load %struct.inode*, %struct.inode** %17, align 8
  %72 = load %struct.dentry*, %struct.dentry** %9, align 8
  %73 = load %struct.ceph_mds_reply_lease*, %struct.ceph_mds_reply_lease** %10, align 8
  %74 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %11, align 8
  %75 = load i64, i64* %12, align 8
  %76 = call i32 @__update_dentry_lease(%struct.inode* %71, %struct.dentry* %72, %struct.ceph_mds_reply_lease* %73, %struct.ceph_mds_session* %74, i64 %75, %struct.ceph_mds_session** %18)
  br label %77

77:                                               ; preds = %70, %68, %62, %55, %47, %37
  %78 = load %struct.dentry*, %struct.dentry** %9, align 8
  %79 = getelementptr inbounds %struct.dentry, %struct.dentry* %78, i32 0, i32 0
  %80 = call i32 @spin_unlock(i32* %79)
  %81 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %18, align 8
  %82 = icmp ne %struct.ceph_mds_session* %81, null
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %18, align 8
  %85 = call i32 @ceph_put_mds_session(%struct.ceph_mds_session* %84)
  br label %86

86:                                               ; preds = %83, %77
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @memcmp(i32, i8*, i64) #1

declare dso_local %struct.inode* @d_inode(%struct.dentry*) #1

declare dso_local i32 @ceph_ino_compare(%struct.inode*, %struct.ceph_vino*) #1

declare dso_local i64 @d_really_is_negative(%struct.dentry*) #1

declare dso_local i64 @d_really_is_positive(%struct.dentry*) #1

declare dso_local i32 @__update_dentry_lease(%struct.inode*, %struct.dentry*, %struct.ceph_mds_reply_lease*, %struct.ceph_mds_session*, i64, %struct.ceph_mds_session**) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ceph_put_mds_session(%struct.ceph_mds_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
