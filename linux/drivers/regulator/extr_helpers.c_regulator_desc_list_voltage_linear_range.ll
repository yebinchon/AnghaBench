; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_helpers.c_regulator_desc_list_voltage_linear_range.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_helpers.c_regulator_desc_list_voltage_linear_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_desc = type { i32, %struct.regulator_linear_range* }
%struct.regulator_linear_range = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulator_desc_list_voltage_linear_range(%struct.regulator_desc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator_desc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.regulator_linear_range*, align 8
  %7 = alloca i32, align 4
  store %struct.regulator_desc* %0, %struct.regulator_desc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.regulator_desc*, %struct.regulator_desc** %4, align 8
  %9 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %22, label %12

12:                                               ; preds = %2
  %13 = load %struct.regulator_desc*, %struct.regulator_desc** %4, align 8
  %14 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %69

22:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %23

23:                                               ; preds = %63, %22
  %24 = load i32, i32* %7, align 4
  %25 = load %struct.regulator_desc*, %struct.regulator_desc** %4, align 8
  %26 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %66

29:                                               ; preds = %23
  %30 = load %struct.regulator_desc*, %struct.regulator_desc** %4, align 8
  %31 = getelementptr inbounds %struct.regulator_desc, %struct.regulator_desc* %30, i32 0, i32 1
  %32 = load %struct.regulator_linear_range*, %struct.regulator_linear_range** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.regulator_linear_range, %struct.regulator_linear_range* %32, i64 %34
  store %struct.regulator_linear_range* %35, %struct.regulator_linear_range** %6, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.regulator_linear_range*, %struct.regulator_linear_range** %6, align 8
  %38 = getelementptr inbounds %struct.regulator_linear_range, %struct.regulator_linear_range* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp uge i32 %36, %39
  br i1 %40, label %41, label %47

41:                                               ; preds = %29
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.regulator_linear_range*, %struct.regulator_linear_range** %6, align 8
  %44 = getelementptr inbounds %struct.regulator_linear_range, %struct.regulator_linear_range* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ule i32 %42, %45
  br i1 %46, label %48, label %47

47:                                               ; preds = %41, %29
  br label %63

48:                                               ; preds = %41
  %49 = load %struct.regulator_linear_range*, %struct.regulator_linear_range** %6, align 8
  %50 = getelementptr inbounds %struct.regulator_linear_range, %struct.regulator_linear_range* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %5, align 4
  %53 = sub i32 %52, %51
  store i32 %53, i32* %5, align 4
  %54 = load %struct.regulator_linear_range*, %struct.regulator_linear_range** %6, align 8
  %55 = getelementptr inbounds %struct.regulator_linear_range, %struct.regulator_linear_range* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.regulator_linear_range*, %struct.regulator_linear_range** %6, align 8
  %58 = getelementptr inbounds %struct.regulator_linear_range, %struct.regulator_linear_range* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %5, align 4
  %61 = mul i32 %59, %60
  %62 = add i32 %56, %61
  store i32 %62, i32* %3, align 4
  br label %69

63:                                               ; preds = %47
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %7, align 4
  br label %23

66:                                               ; preds = %23
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %66, %48, %12
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
