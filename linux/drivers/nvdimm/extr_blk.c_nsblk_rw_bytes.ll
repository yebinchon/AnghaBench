; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_blk.c_nsblk_rw_bytes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_blk.c_nsblk_rw_bytes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_namespace_common = type { i32 }
%struct.nd_namespace_blk = type { i64 }
%struct.nd_blk_region = type { i32 (%struct.nd_blk_region*, i64, i8*, i64, i32)* }

@.str = private unnamed_addr constant [22 x i8] c"request out of range\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@SIZE_MAX = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nd_namespace_common*, i64, i8*, i64, i32, i64)* @nsblk_rw_bytes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nsblk_rw_bytes(%struct.nd_namespace_common* %0, i64 %1, i8* %2, i64 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.nd_namespace_common*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca %struct.nd_namespace_blk*, align 8
  %15 = alloca %struct.nd_blk_region*, align 8
  %16 = alloca i64, align 8
  store %struct.nd_namespace_common* %0, %struct.nd_namespace_common** %8, align 8
  store i64 %1, i64* %9, align 8
  store i8* %2, i8** %10, align 8
  store i64 %3, i64* %11, align 8
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %17 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %8, align 8
  %18 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %17, i32 0, i32 0
  %19 = call %struct.nd_namespace_blk* @to_nd_namespace_blk(i32* %18)
  store %struct.nd_namespace_blk* %19, %struct.nd_namespace_blk** %14, align 8
  %20 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %14, align 8
  %21 = call %struct.nd_blk_region* @to_ndbr(%struct.nd_namespace_blk* %20)
  store %struct.nd_blk_region* %21, %struct.nd_blk_region** %15, align 8
  %22 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %14, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %11, align 8
  %25 = call i64 @to_dev_offset(%struct.nd_namespace_blk* %22, i64 %23, i64 %24)
  store i64 %25, i64* %16, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* %11, align 8
  %28 = add i64 %26, %27
  %29 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %14, align 8
  %30 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ugt i64 %28, %31
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %6
  %37 = load %struct.nd_namespace_common*, %struct.nd_namespace_common** %8, align 8
  %38 = getelementptr inbounds %struct.nd_namespace_common, %struct.nd_namespace_common* %37, i32 0, i32 0
  %39 = call i32 @dev_WARN_ONCE(i32* %38, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @EFAULT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %59

42:                                               ; preds = %6
  %43 = load i64, i64* %16, align 8
  %44 = load i64, i64* @SIZE_MAX, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %42
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %7, align 4
  br label %59

49:                                               ; preds = %42
  %50 = load %struct.nd_blk_region*, %struct.nd_blk_region** %15, align 8
  %51 = getelementptr inbounds %struct.nd_blk_region, %struct.nd_blk_region* %50, i32 0, i32 0
  %52 = load i32 (%struct.nd_blk_region*, i64, i8*, i64, i32)*, i32 (%struct.nd_blk_region*, i64, i8*, i64, i32)** %51, align 8
  %53 = load %struct.nd_blk_region*, %struct.nd_blk_region** %15, align 8
  %54 = load i64, i64* %16, align 8
  %55 = load i8*, i8** %10, align 8
  %56 = load i64, i64* %11, align 8
  %57 = load i32, i32* %12, align 4
  %58 = call i32 %52(%struct.nd_blk_region* %53, i64 %54, i8* %55, i64 %56, i32 %57)
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %49, %46, %36
  %60 = load i32, i32* %7, align 4
  ret i32 %60
}

declare dso_local %struct.nd_namespace_blk* @to_nd_namespace_blk(i32*) #1

declare dso_local %struct.nd_blk_region* @to_ndbr(%struct.nd_namespace_blk*) #1

declare dso_local i64 @to_dev_offset(%struct.nd_namespace_blk*, i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_WARN_ONCE(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
