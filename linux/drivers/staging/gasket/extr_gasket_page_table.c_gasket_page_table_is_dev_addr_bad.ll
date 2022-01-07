; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_page_table.c_gasket_page_table_is_dev_addr_bad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_page_table.c_gasket_page_table_is_dev_addr_bad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_page_table = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"mapping size 0x%lX must be page aligned\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"requested mapping is less than one page: %lu / %lu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gasket_page_table_is_dev_addr_bad(%struct.gasket_page_table* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gasket_page_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.gasket_page_table* %0, %struct.gasket_page_table** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @PAGE_SIZE, align 4
  %11 = sdiv i32 %9, %10
  %12 = sext i32 %11 to i64
  store i64 %12, i64* %8, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = sub nsw i32 %14, 1
  %16 = and i32 %13, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.gasket_page_table*, %struct.gasket_page_table** %5, align 8
  %20 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %22)
  store i32 1, i32* %4, align 4
  br label %49

24:                                               ; preds = %3
  %25 = load i64, i64* %8, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %24
  %28 = load %struct.gasket_page_table*, %struct.gasket_page_table** %5, align 8
  %29 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @PAGE_SIZE, align 4
  %33 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %30, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i32 %31, i32 %32)
  store i32 1, i32* %4, align 4
  br label %49

34:                                               ; preds = %24
  %35 = load %struct.gasket_page_table*, %struct.gasket_page_table** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i64 @gasket_addr_is_simple(%struct.gasket_page_table* %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34
  %40 = load %struct.gasket_page_table*, %struct.gasket_page_table** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @gasket_is_simple_dev_addr_bad(%struct.gasket_page_table* %40, i32 %41, i64 %42)
  store i32 %43, i32* %4, align 4
  br label %49

44:                                               ; preds = %34
  %45 = load %struct.gasket_page_table*, %struct.gasket_page_table** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = load i64, i64* %8, align 8
  %48 = call i32 @gasket_is_extended_dev_addr_bad(%struct.gasket_page_table* %45, i32 %46, i64 %47)
  store i32 %48, i32* %4, align 4
  br label %49

49:                                               ; preds = %44, %39, %27, %18
  %50 = load i32, i32* %4, align 4
  ret i32 %50
}

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i64 @gasket_addr_is_simple(%struct.gasket_page_table*, i32) #1

declare dso_local i32 @gasket_is_simple_dev_addr_bad(%struct.gasket_page_table*, i32, i64) #1

declare dso_local i32 @gasket_is_extended_dev_addr_bad(%struct.gasket_page_table*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
