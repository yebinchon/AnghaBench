; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_write_mappable_regions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_write_mappable_regions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_driver_desc = type { i64, %struct.gasket_bar_desc* }
%struct.gasket_bar_desc = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@GASKET_NOMAP = common dso_local global i64 0, align 8
@PAGE_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"0x%08lx-0x%08lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, %struct.gasket_driver_desc*, i32)* @gasket_write_mappable_regions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @gasket_write_mappable_regions(i8* %0, %struct.gasket_driver_desc* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.gasket_driver_desc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.gasket_bar_desc, align 8
  store i8* %0, i8** %5, align 8
  store %struct.gasket_driver_desc* %1, %struct.gasket_driver_desc** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 0, i64* %10, align 8
  %14 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %6, align 8
  %15 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %14, i32 0, i32 1
  %16 = load %struct.gasket_bar_desc*, %struct.gasket_bar_desc** %15, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.gasket_bar_desc, %struct.gasket_bar_desc* %16, i64 %18
  %20 = bitcast %struct.gasket_bar_desc* %13 to i8*
  %21 = bitcast %struct.gasket_bar_desc* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %20, i8* align 8 %21, i64 24, i1 false)
  %22 = getelementptr inbounds %struct.gasket_bar_desc, %struct.gasket_bar_desc* %13, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @GASKET_NOMAP, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i64 0, i64* %4, align 8
  br label %88

27:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %28

28:                                               ; preds = %83, %27
  %29 = load i32, i32* %8, align 4
  %30 = getelementptr inbounds %struct.gasket_bar_desc, %struct.gasket_bar_desc* %13, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = icmp slt i32 %29, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %28
  %34 = load i64, i64* %10, align 8
  %35 = load i64, i64* @PAGE_SIZE, align 8
  %36 = icmp slt i64 %34, %35
  br label %37

37:                                               ; preds = %33, %28
  %38 = phi i1 [ false, %28 ], [ %36, %33 ]
  br i1 %38, label %39, label %86

39:                                               ; preds = %37
  %40 = getelementptr inbounds %struct.gasket_bar_desc, %struct.gasket_bar_desc* %13, i32 0, i32 2
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %6, align 8
  %48 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = sub nsw i64 %46, %49
  store i64 %50, i64* %11, align 8
  %51 = getelementptr inbounds %struct.gasket_bar_desc, %struct.gasket_bar_desc* %13, i32 0, i32 2
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.gasket_driver_desc*, %struct.gasket_driver_desc** %6, align 8
  %59 = getelementptr inbounds %struct.gasket_driver_desc, %struct.gasket_driver_desc* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = sub nsw i64 %57, %60
  %62 = getelementptr inbounds %struct.gasket_bar_desc, %struct.gasket_bar_desc* %13, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %8, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %61, %68
  store i64 %69, i64* %12, align 8
  %70 = load i8*, i8** %5, align 8
  %71 = load i64, i64* @PAGE_SIZE, align 8
  %72 = load i64, i64* %10, align 8
  %73 = sub nsw i64 %71, %72
  %74 = load i64, i64* %11, align 8
  %75 = load i64, i64* %12, align 8
  %76 = call i64 @scnprintf(i8* %70, i64 %73, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i64 %74, i64 %75)
  store i64 %76, i64* %9, align 8
  %77 = load i64, i64* %9, align 8
  %78 = load i64, i64* %10, align 8
  %79 = add nsw i64 %78, %77
  store i64 %79, i64* %10, align 8
  %80 = load i64, i64* %9, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = getelementptr inbounds i8, i8* %81, i64 %80
  store i8* %82, i8** %5, align 8
  br label %83

83:                                               ; preds = %39
  %84 = load i32, i32* %8, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %8, align 4
  br label %28

86:                                               ; preds = %37
  %87 = load i64, i64* %10, align 8
  store i64 %87, i64* %4, align 8
  br label %88

88:                                               ; preds = %86, %26
  %89 = load i64, i64* %4, align 8
  ret i64 %89
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @scnprintf(i8*, i64, i8*, i64, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
