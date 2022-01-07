; ModuleID = '/home/carl/AnghaBench/linux/fs/affs/extr_namei.c_affs_nfs_get_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/affs/extr_namei.c_affs_nfs_get_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.super_block = type { i32 }

@ESTALE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, i32, i32)* @affs_nfs_get_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @affs_nfs_get_inode(%struct.super_block* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.super_block*, %struct.super_block** %5, align 8
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @affs_validblock(%struct.super_block* %9, i32 %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @ESTALE, align 4
  %15 = sub nsw i32 0, %14
  %16 = call %struct.inode* @ERR_PTR(i32 %15)
  store %struct.inode* %16, %struct.inode** %4, align 8
  br label %29

17:                                               ; preds = %3
  %18 = load %struct.super_block*, %struct.super_block** %5, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call %struct.inode* @affs_iget(%struct.super_block* %18, i32 %19)
  store %struct.inode* %20, %struct.inode** %8, align 8
  %21 = load %struct.inode*, %struct.inode** %8, align 8
  %22 = call i64 @IS_ERR(%struct.inode* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = load %struct.inode*, %struct.inode** %8, align 8
  %26 = call %struct.inode* @ERR_CAST(%struct.inode* %25)
  store %struct.inode* %26, %struct.inode** %4, align 8
  br label %29

27:                                               ; preds = %17
  %28 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %28, %struct.inode** %4, align 8
  br label %29

29:                                               ; preds = %27, %24, %13
  %30 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %30
}

declare dso_local i32 @affs_validblock(%struct.super_block*, i32) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local %struct.inode* @affs_iget(%struct.super_block*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local %struct.inode* @ERR_CAST(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
