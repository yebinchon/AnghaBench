; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c_is_frag_child.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_inode.c_is_frag_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ceph_inode_frag = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, %struct.ceph_inode_frag*)* @is_frag_child to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_frag_child(i64 %0, %struct.ceph_inode_frag* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca %struct.ceph_inode_frag*, align 8
  store i64 %0, i64* %4, align 8
  store %struct.ceph_inode_frag* %1, %struct.ceph_inode_frag** %5, align 8
  %6 = load %struct.ceph_inode_frag*, %struct.ceph_inode_frag** %5, align 8
  %7 = icmp ne %struct.ceph_inode_frag* %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %2
  %9 = load i64, i64* %4, align 8
  %10 = call i64 @ceph_frag_make(i32 0, i32 0)
  %11 = icmp eq i64 %9, %10
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %3, align 4
  br label %33

13:                                               ; preds = %2
  %14 = load i64, i64* %4, align 8
  %15 = call i64 @ceph_frag_bits(i64 %14)
  %16 = load %struct.ceph_inode_frag*, %struct.ceph_inode_frag** %5, align 8
  %17 = getelementptr inbounds %struct.ceph_inode_frag, %struct.ceph_inode_frag* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = call i64 @ceph_frag_bits(i64 %18)
  %20 = load %struct.ceph_inode_frag*, %struct.ceph_inode_frag** %5, align 8
  %21 = getelementptr inbounds %struct.ceph_inode_frag, %struct.ceph_inode_frag* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %19, %22
  %24 = icmp ne i64 %15, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %33

26:                                               ; preds = %13
  %27 = load %struct.ceph_inode_frag*, %struct.ceph_inode_frag** %5, align 8
  %28 = getelementptr inbounds %struct.ceph_inode_frag, %struct.ceph_inode_frag* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @ceph_frag_value(i64 %30)
  %32 = call i32 @ceph_frag_contains_value(i64 %29, i32 %31)
  store i32 %32, i32* %3, align 4
  br label %33

33:                                               ; preds = %26, %25, %8
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i64 @ceph_frag_make(i32, i32) #1

declare dso_local i64 @ceph_frag_bits(i64) #1

declare dso_local i32 @ceph_frag_contains_value(i64, i32) #1

declare dso_local i32 @ceph_frag_value(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
