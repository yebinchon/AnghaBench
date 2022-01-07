; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c___cap_delay_requeue.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c___cap_delay_requeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_mds_client = type { i32, i32, i32 }
%struct.ceph_inode_info = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [40 x i8] c"__cap_delay_requeue %p flags %d at %lu\0A\00", align 1
@CEPH_I_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ceph_mds_client*, %struct.ceph_inode_info*, i32)* @__cap_delay_requeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__cap_delay_requeue(%struct.ceph_mds_client* %0, %struct.ceph_inode_info* %1, i32 %2) #0 {
  %4 = alloca %struct.ceph_mds_client*, align 8
  %5 = alloca %struct.ceph_inode_info*, align 8
  %6 = alloca i32, align 4
  store %struct.ceph_mds_client* %0, %struct.ceph_mds_client** %4, align 8
  store %struct.ceph_inode_info* %1, %struct.ceph_inode_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %8 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %7, i32 0, i32 3
  %9 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %10 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %13 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dout(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32* %8, i32 %11, i32 %14)
  %16 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %17 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %57, label %20

20:                                               ; preds = %3
  %21 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %22 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %21, i32 0, i32 0
  %23 = call i32 @spin_lock(i32* %22)
  %24 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %25 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %24, i32 0, i32 1
  %26 = call i32 @list_empty(i32* %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %20
  %29 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %30 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @CEPH_I_FLUSH, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  br label %53

36:                                               ; preds = %28
  %37 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %38 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %37, i32 0, i32 1
  %39 = call i32 @list_del_init(i32* %38)
  br label %40

40:                                               ; preds = %36, %20
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %40
  %44 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %45 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %46 = call i32 @__cap_set_timeouts(%struct.ceph_mds_client* %44, %struct.ceph_inode_info* %45)
  br label %47

47:                                               ; preds = %43, %40
  %48 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %5, align 8
  %49 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %48, i32 0, i32 1
  %50 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %51 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %50, i32 0, i32 1
  %52 = call i32 @list_add_tail(i32* %49, i32* %51)
  br label %53

53:                                               ; preds = %47, %35
  %54 = load %struct.ceph_mds_client*, %struct.ceph_mds_client** %4, align 8
  %55 = getelementptr inbounds %struct.ceph_mds_client, %struct.ceph_mds_client* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock(i32* %55)
  br label %57

57:                                               ; preds = %53, %3
  ret void
}

declare dso_local i32 @dout(i8*, i32*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @__cap_set_timeouts(%struct.ceph_mds_client*, %struct.ceph_inode_info*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
