; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c_frag_tree_split_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c_frag_tree_split_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_frag_tree_split = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8*)* @frag_tree_split_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @frag_tree_split_cmp(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ceph_frag_tree_split*, align 8
  %6 = alloca %struct.ceph_frag_tree_split*, align 8
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = bitcast i8* %7 to %struct.ceph_frag_tree_split*
  store %struct.ceph_frag_tree_split* %8, %struct.ceph_frag_tree_split** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.ceph_frag_tree_split*
  store %struct.ceph_frag_tree_split* %10, %struct.ceph_frag_tree_split** %6, align 8
  %11 = load %struct.ceph_frag_tree_split*, %struct.ceph_frag_tree_split** %5, align 8
  %12 = getelementptr inbounds %struct.ceph_frag_tree_split, %struct.ceph_frag_tree_split* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le32_to_cpu(i32 %13)
  %15 = load %struct.ceph_frag_tree_split*, %struct.ceph_frag_tree_split** %6, align 8
  %16 = getelementptr inbounds %struct.ceph_frag_tree_split, %struct.ceph_frag_tree_split* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  %19 = call i32 @ceph_frag_compare(i32 %14, i32 %18)
  ret i32 %19
}

declare dso_local i32 @ceph_frag_compare(i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
