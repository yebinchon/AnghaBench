; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_bulk_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_bulk_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_bulk_data = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @regulator_bulk_free(i32 %0, %struct.regulator_bulk_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_bulk_data*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.regulator_bulk_data* %1, %struct.regulator_bulk_data** %4, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %23, %2
  %7 = load i32, i32* %5, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %26

10:                                               ; preds = %6
  %11 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %11, i64 %13
  %15 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @regulator_put(i32* %16)
  %18 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %18, i64 %20
  %22 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %21, i32 0, i32 0
  store i32* null, i32** %22, align 8
  br label %23

23:                                               ; preds = %10
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %6

26:                                               ; preds = %6
  ret void
}

declare dso_local i32 @regulator_put(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
