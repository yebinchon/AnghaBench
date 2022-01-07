; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_blk.c_to_dev_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_blk.c_to_dev_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_namespace_blk = type { i32, %struct.TYPE_3__, %struct.TYPE_4__** }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"illegal request\0A\00", align 1
@SIZE_MAX = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"request out of range\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nd_namespace_blk*, i64, i32)* @to_dev_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @to_dev_offset(%struct.nd_namespace_blk* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.nd_namespace_blk*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.nd_namespace_blk* %0, %struct.nd_namespace_blk** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %69, %3
  %10 = load i32, i32* %8, align 4
  %11 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %5, align 8
  %12 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %72

15:                                               ; preds = %9
  %16 = load i64, i64* %6, align 8
  %17 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %5, align 8
  %18 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %17, i32 0, i32 2
  %19 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %18, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %19, i64 %21
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = call i64 @resource_size(%struct.TYPE_4__* %23)
  %25 = icmp slt i64 %16, %24
  br i1 %25, label %26, label %58

26:                                               ; preds = %15
  %27 = load i64, i64* %6, align 8
  %28 = load i32, i32* %7, align 4
  %29 = zext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %5, align 8
  %32 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %31, i32 0, i32 2
  %33 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %33, i64 %35
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = call i64 @resource_size(%struct.TYPE_4__* %37)
  %39 = icmp sgt i64 %30, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %26
  %41 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %5, align 8
  %42 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = call i32 @dev_WARN_ONCE(i32* %43, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %45 = load i64, i64* @SIZE_MAX, align 8
  store i64 %45, i64* %4, align 8
  br label %78

46:                                               ; preds = %26
  %47 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %5, align 8
  %48 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %48, align 8
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %49, i64 %51
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %6, align 8
  %57 = add nsw i64 %55, %56
  store i64 %57, i64* %4, align 8
  br label %78

58:                                               ; preds = %15
  %59 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %5, align 8
  %60 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %59, i32 0, i32 2
  %61 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %60, align 8
  %62 = load i32, i32* %8, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %61, i64 %63
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = call i64 @resource_size(%struct.TYPE_4__* %65)
  %67 = load i64, i64* %6, align 8
  %68 = sub nsw i64 %67, %66
  store i64 %68, i64* %6, align 8
  br label %69

69:                                               ; preds = %58
  %70 = load i32, i32* %8, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %8, align 4
  br label %9

72:                                               ; preds = %9
  %73 = load %struct.nd_namespace_blk*, %struct.nd_namespace_blk** %5, align 8
  %74 = getelementptr inbounds %struct.nd_namespace_blk, %struct.nd_namespace_blk* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 0
  %76 = call i32 @dev_WARN_ONCE(i32* %75, i32 1, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %77 = load i64, i64* @SIZE_MAX, align 8
  store i64 %77, i64* %4, align 8
  br label %78

78:                                               ; preds = %72, %46, %40
  %79 = load i64, i64* %4, align 8
  ret i64 %79
}

declare dso_local i64 @resource_size(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_WARN_ONCE(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
