; ModuleID = '/home/carl/AnghaBench/linux/fs/cramfs/extr_inode.c_cramfs_direct_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cramfs/extr_inode.c_cramfs_direct_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.cramfs_sb_info = type { i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.super_block*, i32, i32)* @cramfs_direct_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @cramfs_direct_read(%struct.super_block* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.cramfs_sb_info*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.super_block*, %struct.super_block** %5, align 8
  %10 = call %struct.cramfs_sb_info* @CRAMFS_SB(%struct.super_block* %9)
  store %struct.cramfs_sb_info* %10, %struct.cramfs_sb_info** %8, align 8
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %3
  store i8* null, i8** %4, align 8
  br label %38

14:                                               ; preds = %3
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.cramfs_sb_info*, %struct.cramfs_sb_info** %8, align 8
  %17 = getelementptr inbounds %struct.cramfs_sb_info, %struct.cramfs_sb_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ugt i32 %15, %18
  br i1 %19, label %28, label %20

20:                                               ; preds = %14
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.cramfs_sb_info*, %struct.cramfs_sb_info** %8, align 8
  %23 = getelementptr inbounds %struct.cramfs_sb_info, %struct.cramfs_sb_info* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sub i32 %24, %25
  %27 = icmp ugt i32 %21, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %20, %14
  %29 = call i32 @ZERO_PAGE(i32 0)
  %30 = call i8* @page_address(i32 %29)
  store i8* %30, i8** %4, align 8
  br label %38

31:                                               ; preds = %20
  %32 = load %struct.cramfs_sb_info*, %struct.cramfs_sb_info** %8, align 8
  %33 = getelementptr inbounds %struct.cramfs_sb_info, %struct.cramfs_sb_info* %32, i32 0, i32 1
  %34 = load i8*, i8** %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr i8, i8* %34, i64 %36
  store i8* %37, i8** %4, align 8
  br label %38

38:                                               ; preds = %31, %28, %13
  %39 = load i8*, i8** %4, align 8
  ret i8* %39
}

declare dso_local %struct.cramfs_sb_info* @CRAMFS_SB(%struct.super_block*) #1

declare dso_local i8* @page_address(i32) #1

declare dso_local i32 @ZERO_PAGE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
