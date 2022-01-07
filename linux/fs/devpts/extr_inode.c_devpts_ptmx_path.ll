; ModuleID = '/home/carl/AnghaBench/linux/fs/devpts/extr_inode.c_devpts_ptmx_path.c'
source_filename = "/home/carl/AnghaBench/linux/fs/devpts/extr_inode.c_devpts_ptmx_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.path = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, %struct.super_block* }
%struct.super_block = type { i64, i64 }

@DEVPTS_SUPER_MAGIC = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.path*)* @devpts_ptmx_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devpts_ptmx_path(%struct.path* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.path*, align 8
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i32, align 4
  store %struct.path* %0, %struct.path** %3, align 8
  %6 = load %struct.path*, %struct.path** %3, align 8
  %7 = call i32 @path_pts(%struct.path* %6)
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %5, align 4
  store i32 %11, i32* %2, align 4
  br label %37

12:                                               ; preds = %1
  %13 = load %struct.path*, %struct.path** %3, align 8
  %14 = getelementptr inbounds %struct.path, %struct.path* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = load %struct.super_block*, %struct.super_block** %16, align 8
  store %struct.super_block* %17, %struct.super_block** %4, align 8
  %18 = load %struct.super_block*, %struct.super_block** %4, align 8
  %19 = getelementptr inbounds %struct.super_block, %struct.super_block* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @DEVPTS_SUPER_MAGIC, align 8
  %22 = icmp ne i64 %20, %21
  br i1 %22, label %33, label %23

23:                                               ; preds = %12
  %24 = load %struct.path*, %struct.path** %3, align 8
  %25 = getelementptr inbounds %struct.path, %struct.path* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.super_block*, %struct.super_block** %4, align 8
  %30 = getelementptr inbounds %struct.super_block, %struct.super_block* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %23, %12
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %2, align 4
  br label %37

36:                                               ; preds = %23
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %36, %33, %10
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @path_pts(%struct.path*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
