; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_internal.h_afs_cb_is_broken.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_internal.h_afs_cb_is_broken.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vnode = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.afs_cb_interest = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.afs_vnode*, %struct.afs_cb_interest*)* @afs_cb_is_broken to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_cb_is_broken(i32 %0, %struct.afs_vnode* %1, %struct.afs_cb_interest* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.afs_vnode*, align 8
  %6 = alloca %struct.afs_cb_interest*, align 8
  store i32 %0, i32* %4, align 4
  store %struct.afs_vnode* %1, %struct.afs_vnode** %5, align 8
  store %struct.afs_cb_interest* %2, %struct.afs_cb_interest** %6, align 8
  %7 = load %struct.afs_cb_interest*, %struct.afs_cb_interest** %6, align 8
  %8 = icmp ne %struct.afs_cb_interest* %7, null
  br i1 %8, label %9, label %21

9:                                                ; preds = %3
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %12 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.afs_vnode*, %struct.afs_vnode** %5, align 8
  %15 = getelementptr inbounds %struct.afs_vnode, %struct.afs_vnode* %14, i32 0, i32 1
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add i32 %13, %18
  %20 = icmp ne i32 %10, %19
  br label %21

21:                                               ; preds = %9, %3
  %22 = phi i1 [ true, %3 ], [ %20, %9 ]
  %23 = zext i1 %22 to i32
  ret i32 %23
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
