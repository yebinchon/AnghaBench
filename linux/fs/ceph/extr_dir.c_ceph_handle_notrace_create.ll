; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_ceph_handle_notrace_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_dir.c_ceph_handle_notrace_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dentry = type { i32 }

@ESTALE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ceph_handle_notrace_create(%struct.inode* %0, %struct.dentry* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.dentry*, align 8
  %6 = alloca %struct.dentry*, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.dentry* %1, %struct.dentry** %5, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = load %struct.dentry*, %struct.dentry** %5, align 8
  %9 = call %struct.dentry* @ceph_lookup(%struct.inode* %7, %struct.dentry* %8, i32 0)
  store %struct.dentry* %9, %struct.dentry** %6, align 8
  %10 = load %struct.dentry*, %struct.dentry** %6, align 8
  %11 = icmp ne %struct.dentry* %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = load %struct.dentry*, %struct.dentry** %6, align 8
  %14 = call i32 @IS_ERR(%struct.dentry* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %12
  %17 = load %struct.dentry*, %struct.dentry** %6, align 8
  %18 = call i32 @d_drop(%struct.dentry* %17)
  %19 = load i32, i32* @ESTALE, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %24

21:                                               ; preds = %12, %2
  %22 = load %struct.dentry*, %struct.dentry** %6, align 8
  %23 = call i32 @PTR_ERR(%struct.dentry* %22)
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %21, %16
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.dentry* @ceph_lookup(%struct.inode*, %struct.dentry*, i32) #1

declare dso_local i32 @IS_ERR(%struct.dentry*) #1

declare dso_local i32 @d_drop(%struct.dentry*) #1

declare dso_local i32 @PTR_ERR(%struct.dentry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
