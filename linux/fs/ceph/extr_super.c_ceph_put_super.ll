; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_super.c_ceph_put_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_super.c_ceph_put_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ceph_fs_client = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"put_super\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*)* @ceph_put_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ceph_put_super(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.ceph_fs_client*, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %4 = load %struct.super_block*, %struct.super_block** %2, align 8
  %5 = call %struct.ceph_fs_client* @ceph_sb_to_client(%struct.super_block* %4)
  store %struct.ceph_fs_client* %5, %struct.ceph_fs_client** %3, align 8
  %6 = call i32 @dout(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %7 = load %struct.ceph_fs_client*, %struct.ceph_fs_client** %3, align 8
  %8 = getelementptr inbounds %struct.ceph_fs_client, %struct.ceph_fs_client* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @ceph_mdsc_close_sessions(i32 %9)
  ret void
}

declare dso_local %struct.ceph_fs_client* @ceph_sb_to_client(%struct.super_block*) #1

declare dso_local i32 @dout(i8*) #1

declare dso_local i32 @ceph_mdsc_close_sessions(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
