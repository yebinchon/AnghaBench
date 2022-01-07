; ModuleID = '/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq25890_charger.c_bq25890_find_val.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/power/supply/extr_bq25890_charger.c_bq25890_find_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.bq25890_range, %struct.TYPE_3__ }
%struct.bq25890_range = type { i64, i64 }
%struct.TYPE_3__ = type { i64* }

@TBL_TREG = common dso_local global i32 0, align 4
@bq25890_tables = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i64, i32)* @bq25890_find_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @bq25890_find_val(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.bq25890_range*, align 8
  store i64 %0, i64* %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* @TBL_TREG, align 4
  %9 = icmp uge i32 %7, %8
  br i1 %9, label %10, label %21

10:                                               ; preds = %2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bq25890_tables, align 8
  %12 = load i32, i32* %5, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i64 %13
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* %4, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %3, align 8
  br label %36

21:                                               ; preds = %2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @bq25890_tables, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store %struct.bq25890_range* %26, %struct.bq25890_range** %6, align 8
  %27 = load %struct.bq25890_range*, %struct.bq25890_range** %6, align 8
  %28 = getelementptr inbounds %struct.bq25890_range, %struct.bq25890_range* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* %4, align 8
  %31 = load %struct.bq25890_range*, %struct.bq25890_range** %6, align 8
  %32 = getelementptr inbounds %struct.bq25890_range, %struct.bq25890_range* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = mul i64 %30, %33
  %35 = add i64 %29, %34
  store i64 %35, i64* %3, align 8
  br label %36

36:                                               ; preds = %21, %10
  %37 = load i64, i64* %3, align 8
  ret i64 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
