; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_super.h_ceph_find_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_super.h_ceph_find_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }
%struct.ceph_vino = type { i32 }

@ceph_ino_compare = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, i32)* @ceph_find_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @ceph_find_inode(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.ceph_vino, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %3, i32 0, i32 0
  store i32 %1, i32* %6, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  %7 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %3, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @ceph_vino_to_ino(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @ceph_ino_compare, align 4
  %13 = call %struct.inode* @ilookup5(%struct.super_block* %10, i32 %11, i32 %12, %struct.ceph_vino* %3)
  ret %struct.inode* %13
}

declare dso_local i32 @ceph_vino_to_ino(i32) #1

declare dso_local %struct.inode* @ilookup5(%struct.super_block*, i32, i32, %struct.ceph_vino*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
