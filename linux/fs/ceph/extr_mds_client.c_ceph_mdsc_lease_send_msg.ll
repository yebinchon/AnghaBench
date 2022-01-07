; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_ceph_mdsc_lease_send_msg.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_ceph_mdsc_lease_send_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_session = type { i32, i32 }
%struct.dentry = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.ceph_msg = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.ceph_mds_lease* }
%struct.ceph_mds_lease = type { i8, i8*, i8*, i8*, i32 }
%struct.inode = type { i32 }

@NAME_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"lease_send_msg identry %p %s to mds%d\0A\00", align 1
@CEPH_MSG_CLIENT_LEASE = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@CEPH_MDS_LEASE_RELEASE = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_mdsc_lease_send_msg(%struct.ceph_mds_session* %0, %struct.dentry* %1, i8 signext %2, i32 %3) #0 {
  %5 = alloca %struct.ceph_mds_session*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca %struct.ceph_msg*, align 8
  %10 = alloca %struct.ceph_mds_lease*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca i32, align 4
  store %struct.ceph_mds_session* %0, %struct.ceph_mds_session** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8 %2, i8* %7, align 1
  store i32 %3, i32* %8, align 4
  %13 = load i32, i32* @NAME_MAX, align 4
  %14 = sext i32 %13 to i64
  %15 = add i64 44, %14
  %16 = trunc i64 %15 to i32
  store i32 %16, i32* %12, align 4
  %17 = load %struct.dentry*, %struct.dentry** %6, align 8
  %18 = load i8, i8* %7, align 1
  %19 = call i32 @ceph_lease_op_name(i8 signext %18)
  %20 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %21 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @dout(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.dentry* %17, i32 %19, i32 %22)
  %24 = load i32, i32* @CEPH_MSG_CLIENT_LEASE, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @GFP_NOFS, align 4
  %27 = call %struct.ceph_msg* @ceph_msg_new(i32 %24, i32 %25, i32 %26, i32 0)
  store %struct.ceph_msg* %27, %struct.ceph_msg** %9, align 8
  %28 = load %struct.ceph_msg*, %struct.ceph_msg** %9, align 8
  %29 = icmp ne %struct.ceph_msg* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %4
  br label %97

31:                                               ; preds = %4
  %32 = load %struct.ceph_msg*, %struct.ceph_msg** %9, align 8
  %33 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load %struct.ceph_mds_lease*, %struct.ceph_mds_lease** %34, align 8
  store %struct.ceph_mds_lease* %35, %struct.ceph_mds_lease** %10, align 8
  %36 = load i8, i8* %7, align 1
  %37 = load %struct.ceph_mds_lease*, %struct.ceph_mds_lease** %10, align 8
  %38 = getelementptr inbounds %struct.ceph_mds_lease, %struct.ceph_mds_lease* %37, i32 0, i32 0
  store i8 %36, i8* %38, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @cpu_to_le32(i32 %39)
  %41 = load %struct.ceph_mds_lease*, %struct.ceph_mds_lease** %10, align 8
  %42 = getelementptr inbounds %struct.ceph_mds_lease, %struct.ceph_mds_lease* %41, i32 0, i32 4
  store i32 %40, i32* %42, align 8
  %43 = load %struct.dentry*, %struct.dentry** %6, align 8
  %44 = getelementptr inbounds %struct.dentry, %struct.dentry* %43, i32 0, i32 0
  %45 = call i32 @spin_lock(i32* %44)
  %46 = load %struct.dentry*, %struct.dentry** %6, align 8
  %47 = getelementptr inbounds %struct.dentry, %struct.dentry* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call %struct.inode* @d_inode(i32 %48)
  store %struct.inode* %49, %struct.inode** %11, align 8
  %50 = load %struct.inode*, %struct.inode** %11, align 8
  %51 = call i32 @ceph_ino(%struct.inode* %50)
  %52 = call i8* @cpu_to_le64(i32 %51)
  %53 = load %struct.ceph_mds_lease*, %struct.ceph_mds_lease** %10, align 8
  %54 = getelementptr inbounds %struct.ceph_mds_lease, %struct.ceph_mds_lease* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  %55 = load %struct.inode*, %struct.inode** %11, align 8
  %56 = call i32 @ceph_snap(%struct.inode* %55)
  %57 = call i8* @cpu_to_le64(i32 %56)
  %58 = load %struct.ceph_mds_lease*, %struct.ceph_mds_lease** %10, align 8
  %59 = getelementptr inbounds %struct.ceph_mds_lease, %struct.ceph_mds_lease* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load %struct.ceph_mds_lease*, %struct.ceph_mds_lease** %10, align 8
  %61 = getelementptr inbounds %struct.ceph_mds_lease, %struct.ceph_mds_lease* %60, i32 0, i32 2
  store i8* %57, i8** %61, align 8
  %62 = load %struct.dentry*, %struct.dentry** %6, align 8
  %63 = getelementptr inbounds %struct.dentry, %struct.dentry* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.ceph_mds_lease*, %struct.ceph_mds_lease** %10, align 8
  %67 = getelementptr inbounds %struct.ceph_mds_lease, %struct.ceph_mds_lease* %66, i64 1
  %68 = call i32 @put_unaligned_le32(i32 %65, %struct.ceph_mds_lease* %67)
  %69 = load %struct.ceph_mds_lease*, %struct.ceph_mds_lease** %10, align 8
  %70 = getelementptr inbounds %struct.ceph_mds_lease, %struct.ceph_mds_lease* %69, i64 1
  %71 = bitcast %struct.ceph_mds_lease* %70 to i8*
  %72 = getelementptr i8, i8* %71, i64 4
  %73 = load %struct.dentry*, %struct.dentry** %6, align 8
  %74 = getelementptr inbounds %struct.dentry, %struct.dentry* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.dentry*, %struct.dentry** %6, align 8
  %78 = getelementptr inbounds %struct.dentry, %struct.dentry* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @memcpy(i8* %72, i32 %76, i32 %80)
  %82 = load %struct.dentry*, %struct.dentry** %6, align 8
  %83 = getelementptr inbounds %struct.dentry, %struct.dentry* %82, i32 0, i32 0
  %84 = call i32 @spin_unlock(i32* %83)
  %85 = load i8, i8* %7, align 1
  %86 = sext i8 %85 to i32
  %87 = load i8, i8* @CEPH_MDS_LEASE_RELEASE, align 1
  %88 = sext i8 %87 to i32
  %89 = icmp eq i32 %86, %88
  %90 = zext i1 %89 to i32
  %91 = load %struct.ceph_msg*, %struct.ceph_msg** %9, align 8
  %92 = getelementptr inbounds %struct.ceph_msg, %struct.ceph_msg* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.ceph_mds_session*, %struct.ceph_mds_session** %5, align 8
  %94 = getelementptr inbounds %struct.ceph_mds_session, %struct.ceph_mds_session* %93, i32 0, i32 0
  %95 = load %struct.ceph_msg*, %struct.ceph_msg** %9, align 8
  %96 = call i32 @ceph_con_send(i32* %94, %struct.ceph_msg* %95)
  br label %97

97:                                               ; preds = %31, %30
  ret void
}

declare dso_local i32 @dout(i8*, %struct.dentry*, i32, i32) #1

declare dso_local i32 @ceph_lease_op_name(i8 signext) #1

declare dso_local %struct.ceph_msg* @ceph_msg_new(i32, i32, i32, i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.inode* @d_inode(i32) #1

declare dso_local i8* @cpu_to_le64(i32) #1

declare dso_local i32 @ceph_ino(%struct.inode*) #1

declare dso_local i32 @ceph_snap(%struct.inode*) #1

declare dso_local i32 @put_unaligned_le32(i32, %struct.ceph_mds_lease*) #1

declare dso_local i32 @memcpy(i8*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @ceph_con_send(i32*, %struct.ceph_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
