; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c_ceph_caps_revoking.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_caps.c_ceph_caps_revoking.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_inode_info = type { i32, %struct.inode }
%struct.inode = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"ceph_caps_revoking %p %s = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_caps_revoking(%struct.ceph_inode_info* %0, i32 %1) #0 {
  %3 = alloca %struct.ceph_inode_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  store %struct.ceph_inode_info* %0, %struct.ceph_inode_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %8 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %7, i32 0, i32 1
  store %struct.inode* %8, %struct.inode** %5, align 8
  %9 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %10 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %9, i32 0, i32 0
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @__ceph_caps_revoking_other(%struct.ceph_inode_info* %12, i32* null, i32 %13)
  store i32 %14, i32* %6, align 4
  %15 = load %struct.ceph_inode_info*, %struct.ceph_inode_info** %3, align 8
  %16 = getelementptr inbounds %struct.ceph_inode_info, %struct.ceph_inode_info* %15, i32 0, i32 0
  %17 = call i32 @spin_unlock(i32* %16)
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @ceph_cap_string(i32 %19)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @dout(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), %struct.inode* %18, i32 %20, i32 %21)
  %23 = load i32, i32* %6, align 4
  ret i32 %23
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__ceph_caps_revoking_other(%struct.ceph_inode_info*, i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @dout(i8*, %struct.inode*, i32, i32) #1

declare dso_local i32 @ceph_cap_string(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
