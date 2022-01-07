; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_bulk_force_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_bulk_force_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_bulk_data = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulator_bulk_force_disable(i32 %0, %struct.regulator_bulk_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_bulk_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.regulator_bulk_data* %1, %struct.regulator_bulk_data** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %42, %2
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %8, %9
  br i1 %10, label %11, label %45

11:                                               ; preds = %7
  %12 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %4, align 8
  %13 = load i32, i32* %5, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %12, i64 %14
  %16 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @regulator_force_disable(i32 %17)
  %19 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %19, i64 %21
  %23 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %22, i32 0, i32 0
  store i32 %18, i32* %23, align 4
  %24 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %24, i64 %26
  %28 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %41

31:                                               ; preds = %11
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %31
  %35 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %35, i64 %37
  %39 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %34, %31, %11
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %5, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %5, align 4
  br label %7

45:                                               ; preds = %7
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i32 @regulator_force_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
