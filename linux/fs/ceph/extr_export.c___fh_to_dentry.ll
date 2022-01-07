; ModuleID = '/home/carl/AnghaBench/linux/fs/ceph/extr_export.c___fh_to_dentry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ceph/extr_export.c___fh_to_dentry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32 }
%struct.super_block = type { i32 }
%struct.inode = type { i64 }

@ESTALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.super_block*, i32)* @__fh_to_dentry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @__fh_to_dentry(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.super_block*, %struct.super_block** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = call %struct.inode* @__lookup_inode(%struct.super_block* %7, i32 %8)
  store %struct.inode* %9, %struct.inode** %6, align 8
  %10 = load %struct.inode*, %struct.inode** %6, align 8
  %11 = call i64 @IS_ERR(%struct.inode* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.inode*, %struct.inode** %6, align 8
  %15 = call %struct.dentry* @ERR_CAST(%struct.inode* %14)
  store %struct.dentry* %15, %struct.dentry** %3, align 8
  br label %30

16:                                               ; preds = %2
  %17 = load %struct.inode*, %struct.inode** %6, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp eq i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %16
  %22 = load %struct.inode*, %struct.inode** %6, align 8
  %23 = call i32 @iput(%struct.inode* %22)
  %24 = load i32, i32* @ESTALE, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.dentry* @ERR_PTR(i32 %25)
  store %struct.dentry* %26, %struct.dentry** %3, align 8
  br label %30

27:                                               ; preds = %16
  %28 = load %struct.inode*, %struct.inode** %6, align 8
  %29 = call %struct.dentry* @d_obtain_alias(%struct.inode* %28)
  store %struct.dentry* %29, %struct.dentry** %3, align 8
  br label %30

30:                                               ; preds = %27, %21, %13
  %31 = load %struct.dentry*, %struct.dentry** %3, align 8
  ret %struct.dentry* %31
}

declare dso_local %struct.inode* @__lookup_inode(%struct.super_block*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.dentry* @ERR_CAST(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

declare dso_local %struct.dentry* @d_obtain_alias(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
