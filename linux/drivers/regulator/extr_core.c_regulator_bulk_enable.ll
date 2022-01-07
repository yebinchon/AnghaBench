; ModuleID = '/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_bulk_enable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/regulator/extr_core.c_regulator_bulk_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator_bulk_data = type { i32, i32, i32 }

@async_domain = common dso_local global i32 0, align 4
@regulator_bulk_enable_async = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Failed to enable %s: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulator_bulk_enable(i32 %0, %struct.regulator_bulk_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.regulator_bulk_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.regulator_bulk_data* %1, %struct.regulator_bulk_data** %5, align 8
  %8 = load i32, i32* @async_domain, align 4
  %9 = call i32 @ASYNC_DOMAIN_EXCLUSIVE(i32 %8)
  store i32 0, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %21, %2
  %11 = load i32, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %10
  %15 = load i32, i32* @regulator_bulk_enable_async, align 4
  %16 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %16, i64 %18
  %20 = call i32 @async_schedule_domain(i32 %15, %struct.regulator_bulk_data* %19, i32* @async_domain)
  br label %21

21:                                               ; preds = %14
  %22 = load i32, i32* %6, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %6, align 4
  br label %10

24:                                               ; preds = %10
  %25 = call i32 @async_synchronize_full_domain(i32* @async_domain)
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %46, %24
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %49

30:                                               ; preds = %26
  %31 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %31, i64 %33
  %35 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %45

38:                                               ; preds = %30
  %39 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %5, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %39, i64 %41
  %43 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  store i32 %44, i32* %7, align 4
  br label %50

45:                                               ; preds = %30
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %6, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %6, align 4
  br label %26

49:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %91

50:                                               ; preds = %38
  store i32 0, i32* %6, align 4
  br label %51

51:                                               ; preds = %86, %50
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %4, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %89

55:                                               ; preds = %51
  %56 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %5, align 8
  %57 = load i32, i32* %6, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %56, i64 %58
  %60 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %77

63:                                               ; preds = %55
  %64 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %5, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %64, i64 %66
  %68 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %5, align 8
  %71 = load i32, i32* %6, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %70, i64 %72
  %74 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %69, i32 %75)
  br label %85

77:                                               ; preds = %55
  %78 = load %struct.regulator_bulk_data*, %struct.regulator_bulk_data** %5, align 8
  %79 = load i32, i32* %6, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %78, i64 %80
  %82 = getelementptr inbounds %struct.regulator_bulk_data, %struct.regulator_bulk_data* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @regulator_disable(i32 %83)
  br label %85

85:                                               ; preds = %77, %63
  br label %86

86:                                               ; preds = %85
  %87 = load i32, i32* %6, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %6, align 4
  br label %51

89:                                               ; preds = %51
  %90 = load i32, i32* %7, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %89, %49
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local i32 @ASYNC_DOMAIN_EXCLUSIVE(i32) #1

declare dso_local i32 @async_schedule_domain(i32, %struct.regulator_bulk_data*, i32*) #1

declare dso_local i32 @async_synchronize_full_domain(i32*) #1

declare dso_local i32 @pr_err(i8*, i32, i32) #1

declare dso_local i32 @regulator_disable(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
