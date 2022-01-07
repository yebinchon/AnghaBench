; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c_ceph_queue_vmtruncate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c_ceph_queue_vmtruncate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ceph_inode_info = type { i32, i32 }
%struct.TYPE_2__ = type { i32 }

@CEPH_I_WORK_VMTRUNCATE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"ceph_queue_vmtruncate %p\0A\00", align 1
@.str.1 = private unnamed_addr constant [51 x i8] c"ceph_queue_vmtruncate %p already queued, mask=%lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ceph_queue_vmtruncate(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.ceph_inode_info*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = call %struct.ceph_inode_info* @ceph_inode(%struct.inode* %4)
  store %struct.ceph_inode_info* %5, %struct.ceph_inode_info** %3, align 8
  %6 = load i32, i32* @CEPH_I_WORK_VMTRUNCATE, align 4
  %7 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %8 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %7, i32 0, i32 0
  %9 = call i32 @set_bit(i32 %6, i32* %8)
  %10 = load %struct.inode*, %struct.inode** %2, align 8
  %11 = call i32 @ihold(%struct.inode* %10)
  %12 = load %struct.inode*, %struct.inode** %2, align 8
  %13 = call %struct.TYPE_2__* @ceph_inode_to_client(%struct.inode* %12)
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %17 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %16, i32 0, i32 1
  %18 = call i64 @queue_work(i32 %15, i32* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load %struct.inode*, %struct.inode** %2, align 8
  %22 = call i32 (i8*, %struct.inode*, ...) @dout(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), %struct.inode* %21)
  br label %31

23:                                               ; preds = %1
  %24 = load %struct.inode*, %struct.inode** %2, align 8
  %25 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %26 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i8*, %struct.inode*, ...) @dout(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), %struct.inode* %24, i32 %27)
  %29 = load %struct.inode*, %struct.inode** %2, align 8
  %30 = call i32 @iput(%struct.inode* %29)
  br label %31

31:                                               ; preds = %23, %20
  ret void
}

declare dso_local %struct.ceph_inode_info* @ceph_inode(%struct.inode*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ihold(%struct.inode*) #1

declare dso_local i64 @queue_work(i32, i32*) #1

declare dso_local %struct.TYPE_2__* @ceph_inode_to_client(%struct.inode*) #1

declare dso_local i32 @dout(i8*, %struct.inode*, ...) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
