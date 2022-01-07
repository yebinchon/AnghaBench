; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_wake_up_session_cb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_mds_client.c_wake_up_session_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ceph_cap = type { i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ceph_inode_info = type { i32, i32, i32, i64, i64 }

@RECONNECT = common dso_local global i64 0, align 8
@RENEWCAPS = common dso_local global i64 0, align 8
@CEPH_CAP_PIN = common dso_local global i32 0, align 4
@CEPH_I_CAP_DROPPED = common dso_local global i32 0, align 4
@FORCE_RO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ceph_cap*, i8*)* @wake_up_session_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wake_up_session_cb(%struct.inode* %0, %struct.ceph_cap* %1, i8* %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ceph_cap*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.ceph_inode_info*, align 8
  %8 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.ceph_cap* %1, %struct.ceph_cap** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %9)
  store %struct.ceph_inode_info* %10, %struct.ceph_inode_info** %7, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = ptrtoint i8* %11 to i64
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @RECONNECT, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %27

16:                                               ; preds = %3
  %17 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %7, align 8
  %18 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %17, i32 0, i32 1
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %7, align 8
  %21 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %20, i32 0, i32 4
  store i64 0, i64* %21, align 8
  %22 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %7, align 8
  %23 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %22, i32 0, i32 3
  store i64 0, i64* %23, align 8
  %24 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %7, align 8
  %25 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %24, i32 0, i32 1
  %26 = call i32 @spin_unlock(i32* %25)
  br label %76

27:                                               ; preds = %3
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* @RENEWCAPS, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %69

31:                                               ; preds = %27
  %32 = load %struct.ceph_cap*, %struct.ceph_cap** %5, align 8
  %33 = getelementptr inbounds %struct.ceph_cap, %struct.ceph_cap* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ceph_cap*, %struct.ceph_cap** %5, align 8
  %36 = getelementptr inbounds %struct.ceph_cap, %struct.ceph_cap* %35, i32 0, i32 4
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp slt i64 %34, %39
  br i1 %40, label %41, label %68

41:                                               ; preds = %31
  %42 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %7, align 8
  %43 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %42, i32 0, i32 1
  %44 = call i32 @spin_lock(i32* %43)
  %45 = load i32, i32* @CEPH_CAP_PIN, align 4
  %46 = load %struct.ceph_cap*, %struct.ceph_cap** %5, align 8
  %47 = getelementptr inbounds %struct.ceph_cap, %struct.ceph_cap* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.ceph_cap*, %struct.ceph_cap** %5, align 8
  %49 = getelementptr inbounds %struct.ceph_cap, %struct.ceph_cap* %48, i32 0, i32 3
  store i32 %45, i32* %49, align 8
  %50 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %7, align 8
  %51 = call i32 @__ceph_caps_file_wanted(%struct.ceph_inode_info* %50)
  %52 = load %struct.ceph_cap*, %struct.ceph_cap** %5, align 8
  %53 = getelementptr inbounds %struct.ceph_cap, %struct.ceph_cap* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = xor i32 %54, -1
  %56 = and i32 %51, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %41
  %59 = load i32, i32* @CEPH_I_CAP_DROPPED, align 4
  %60 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %7, align 8
  %61 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %64

64:                                               ; preds = %58, %41
  %65 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %7, align 8
  %66 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %65, i32 0, i32 1
  %67 = call i32 @spin_unlock(i32* %66)
  br label %68

68:                                               ; preds = %64, %31
  br label %75

69:                                               ; preds = %27
  %70 = load i64, i64* %8, align 8
  %71 = load i64, i64* @FORCE_RO, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %69
  br label %74

74:                                               ; preds = %73, %69
  br label %75

75:                                               ; preds = %74, %68
  br label %76

76:                                               ; preds = %75, %16
  %77 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %7, align 8
  %78 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %77, i32 0, i32 0
  %79 = call i32 @wake_up_all(i32* %78)
  ret i32 0
}

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__ceph_caps_file_wanted(%struct.ceph_inode_info*) #1

declare dso_local i32 @wake_up_all(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
