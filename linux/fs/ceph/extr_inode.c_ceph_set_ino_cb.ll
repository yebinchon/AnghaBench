; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c_ceph_set_ino_cb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c_ceph_set_ino_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.TYPE_2__ = type { %struct.ceph_vino }
%struct.ceph_vino = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i8*)* @ceph_set_ino_cb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ceph_set_ino_cb(%struct.inode* %0, i8* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.inode*, %struct.inode** %3, align 8
  %6 = call %struct.TYPE_2__* @ceph_inode(%struct.inode* %5)
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.ceph_vino*
  %10 = bitcast %struct.ceph_vino* %7 to i8*
  %11 = bitcast %struct.ceph_vino* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 %11, i64 4, i1 false)
  %12 = load i8*, i8** %4, align 8
  %13 = bitcast i8* %12 to %struct.ceph_vino*
  %14 = getelementptr inbounds %struct.ceph_vino, %struct.ceph_vino* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ceph_vino_to_ino(i32 %15)
  %17 = load %struct.inode*, %struct.inode** %3, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  %19 = load %struct.inode*, %struct.inode** %3, align 8
  %20 = call i32 @inode_set_iversion_raw(%struct.inode* %19, i32 0)
  ret i32 0
}

declare dso_local %struct.TYPE_2__* @ceph_inode(%struct.inode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ceph_vino_to_ino(i32) #1

declare dso_local i32 @inode_set_iversion_raw(%struct.inode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
