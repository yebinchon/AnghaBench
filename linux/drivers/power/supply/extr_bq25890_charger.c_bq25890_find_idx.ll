; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq25890_charger.c_bq25890_find_idx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq25890_charger.c_bq25890_find_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.bq25890_range, %struct.TYPE_3__ }
%struct.bq25890_range = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64*, i64 }

@TBL_TREG = common dso_local global i32 0, align 4
@bq25890_tables = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32)* @bq25890_find_idx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bq25890_find_idx(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.bq25890_range*, align 8
  %9 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @TBL_TREG, align 4
  %12 = icmp uge i32 %10, %11
  br i1 %12, label %13, label %46

13:                                               ; preds = %2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bq25890_tables, align 8
  %15 = load i32, i32* %4, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i64 %16
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64*, i64** %19, align 8
  store i64* %20, i64** %6, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bq25890_tables, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %7, align 8
  store i64 1, i64* %5, align 8
  br label %28

28:                                               ; preds = %42, %13
  %29 = load i64, i64* %5, align 8
  %30 = load i64, i64* %7, align 8
  %31 = icmp ult i64 %29, %30
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i64*, i64** %6, align 8
  %34 = load i64, i64* %5, align 8
  %35 = getelementptr inbounds i64, i64* %33, i64 %34
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %3, align 8
  %38 = icmp ule i64 %36, %37
  br label %39

39:                                               ; preds = %32, %28
  %40 = phi i1 [ false, %28 ], [ %38, %32 ]
  br i1 %40, label %41, label %45

41:                                               ; preds = %39
  br label %42

42:                                               ; preds = %41
  %43 = load i64, i64* %5, align 8
  %44 = add i64 %43, 1
  store i64 %44, i64* %5, align 8
  br label %28

45:                                               ; preds = %39
  br label %90

46:                                               ; preds = %2
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bq25890_tables, align 8
  %48 = load i32, i32* %4, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  store %struct.bq25890_range* %51, %struct.bq25890_range** %8, align 8
  %52 = load %struct.bq25890_range*, %struct.bq25890_range** %8, align 8
  %53 = getelementptr inbounds %struct.bq25890_range, %struct.bq25890_range* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.bq25890_range*, %struct.bq25890_range** %8, align 8
  %56 = getelementptr inbounds %struct.bq25890_range, %struct.bq25890_range* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = sub nsw i32 %54, %57
  %59 = load %struct.bq25890_range*, %struct.bq25890_range** %8, align 8
  %60 = getelementptr inbounds %struct.bq25890_range, %struct.bq25890_range* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 4
  %62 = sdiv i32 %58, %61
  %63 = add nsw i32 %62, 1
  %64 = sext i32 %63 to i64
  store i64 %64, i64* %9, align 8
  store i64 1, i64* %5, align 8
  br label %65

65:                                               ; preds = %86, %46
  %66 = load i64, i64* %5, align 8
  %67 = load i64, i64* %9, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %83

69:                                               ; preds = %65
  %70 = load i64, i64* %5, align 8
  %71 = load %struct.bq25890_range*, %struct.bq25890_range** %8, align 8
  %72 = getelementptr inbounds %struct.bq25890_range, %struct.bq25890_range* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = sext i32 %73 to i64
  %75 = mul i64 %70, %74
  %76 = load %struct.bq25890_range*, %struct.bq25890_range** %8, align 8
  %77 = getelementptr inbounds %struct.bq25890_range, %struct.bq25890_range* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = add i64 %75, %79
  %81 = load i64, i64* %3, align 8
  %82 = icmp ule i64 %80, %81
  br label %83

83:                                               ; preds = %69, %65
  %84 = phi i1 [ false, %65 ], [ %82, %69 ]
  br i1 %84, label %85, label %89

85:                                               ; preds = %83
  br label %86

86:                                               ; preds = %85
  %87 = load i64, i64* %5, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %5, align 8
  br label %65

89:                                               ; preds = %83
  br label %90

90:                                               ; preds = %89, %45
  %91 = load i64, i64* %5, align 8
  %92 = sub i64 %91, 1
  ret i64 %92
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
