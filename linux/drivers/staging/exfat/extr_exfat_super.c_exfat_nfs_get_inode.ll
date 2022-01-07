; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_nfs_get_inode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_super.c_exfat_nfs_get_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64 }
%struct.super_block = type { i32 }

@EXFAT_ROOT_INO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.inode* (%struct.super_block*, i64, i64)* @exfat_nfs_get_inode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.inode* @exfat_nfs_get_inode(%struct.super_block* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.inode*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.inode* null, %struct.inode** %8, align 8
  %9 = load i64, i64* %6, align 8
  %10 = load i64, i64* @EXFAT_ROOT_INO, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %3
  %13 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %13, %struct.inode** %4, align 8
  br label %34

14:                                               ; preds = %3
  %15 = load %struct.super_block*, %struct.super_block** %5, align 8
  %16 = load i64, i64* %6, align 8
  %17 = call %struct.inode* @ilookup(%struct.super_block* %15, i64 %16)
  store %struct.inode* %17, %struct.inode** %8, align 8
  %18 = load %struct.inode*, %struct.inode** %8, align 8
  %19 = icmp ne %struct.inode* %18, null
  br i1 %19, label %20, label %32

20:                                               ; preds = %14
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %20
  %24 = load %struct.inode*, %struct.inode** %8, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load %struct.inode*, %struct.inode** %8, align 8
  %31 = call i32 @iput(%struct.inode* %30)
  store %struct.inode* null, %struct.inode** %8, align 8
  br label %32

32:                                               ; preds = %29, %23, %20, %14
  %33 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %33, %struct.inode** %4, align 8
  br label %34

34:                                               ; preds = %32, %12
  %35 = load %struct.inode*, %struct.inode** %4, align 8
  ret %struct.inode* %35
}

declare dso_local %struct.inode* @ilookup(%struct.super_block*, i64) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
