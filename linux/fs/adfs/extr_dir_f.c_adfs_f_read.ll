; ModuleID = '/home/carl/AnghaBench/linux/fs/adfs/extr_dir_f.c_adfs_f_read.c'
source_filename = "/home/carl/AnghaBench/linux/fs/adfs/extr_dir_f.c_adfs_f_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.adfs_dir = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ADFS_NEWDIR_SIZE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"unable to read directory\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, i32, %struct.adfs_dir*)* @adfs_f_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @adfs_f_read(%struct.super_block* %0, i32 %1, i32 %2, %struct.adfs_dir* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.adfs_dir*, align 8
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.adfs_dir* %3, %struct.adfs_dir** %9, align 8
  %11 = load i32, i32* %8, align 4
  %12 = load i32, i32* @ADFS_NEWDIR_SIZE, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %4
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %39

17:                                               ; preds = %4
  %18 = load %struct.super_block*, %struct.super_block** %6, align 8
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %22 = call i32 @adfs_dir_read(%struct.super_block* %18, i32 %19, i32 %20, %struct.adfs_dir* %21)
  store i32 %22, i32* %10, align 4
  %23 = load i32, i32* %10, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %17
  %26 = load %struct.super_block*, %struct.super_block** %6, align 8
  %27 = call i32 @adfs_error(%struct.super_block* %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %37

28:                                               ; preds = %17
  %29 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %30 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @adfs_readval(i32 %33, i32 3)
  %35 = load %struct.adfs_dir*, %struct.adfs_dir** %9, align 8
  %36 = getelementptr inbounds %struct.adfs_dir, %struct.adfs_dir* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  br label %37

37:                                               ; preds = %28, %25
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %37, %14
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @adfs_dir_read(%struct.super_block*, i32, i32, %struct.adfs_dir*) #1

declare dso_local i32 @adfs_error(%struct.super_block*, i8*) #1

declare dso_local i32 @adfs_readval(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
