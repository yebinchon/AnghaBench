; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_page_table.c_gasket_map_simple_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_page_table.c_gasket_map_simple_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_page_table = type { i32, i64, i64 }

@.str = private unnamed_addr constant [55 x i8] c"page table slots %u (@ 0x%lx) to %u are not available\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"gasket_perform_mapping %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gasket_page_table*, i32, i32, i64)* @gasket_map_simple_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gasket_map_simple_pages(%struct.gasket_page_table* %0, i32 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gasket_page_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.gasket_page_table* %0, %struct.gasket_page_table** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load %struct.gasket_page_table*, %struct.gasket_page_table** %6, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i64 @gasket_simple_page_idx(%struct.gasket_page_table* %12, i32 %13)
  store i64 %14, i64* %11, align 8
  %15 = load %struct.gasket_page_table*, %struct.gasket_page_table** %6, align 8
  %16 = load i32, i32* %8, align 4
  %17 = load i64, i64* %9, align 8
  %18 = call i32 @gasket_alloc_simple_entries(%struct.gasket_page_table* %15, i32 %16, i64 %17)
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %34

21:                                               ; preds = %4
  %22 = load %struct.gasket_page_table*, %struct.gasket_page_table** %6, align 8
  %23 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i64, i64* %11, align 8
  %26 = trunc i64 %25 to i32
  %27 = load i32, i32* %8, align 4
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* %9, align 8
  %30 = add nsw i64 %28, %29
  %31 = sub nsw i64 %30, 1
  %32 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %24, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27, i64 %31)
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %5, align 4
  br label %63

34:                                               ; preds = %4
  %35 = load %struct.gasket_page_table*, %struct.gasket_page_table** %6, align 8
  %36 = load %struct.gasket_page_table*, %struct.gasket_page_table** %6, align 8
  %37 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %11, align 8
  %40 = add nsw i64 %38, %39
  %41 = load %struct.gasket_page_table*, %struct.gasket_page_table** %6, align 8
  %42 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* %11, align 8
  %45 = add nsw i64 %43, %44
  %46 = load i32, i32* %7, align 4
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @gasket_perform_mapping(%struct.gasket_page_table* %35, i64 %40, i64 %45, i32 %46, i64 %47, i32 1)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %34
  %52 = load %struct.gasket_page_table*, %struct.gasket_page_table** %6, align 8
  %53 = load i32, i32* %8, align 4
  %54 = load i64, i64* %9, align 8
  %55 = call i32 @gasket_page_table_unmap_nolock(%struct.gasket_page_table* %52, i32 %53, i64 %54)
  %56 = load %struct.gasket_page_table*, %struct.gasket_page_table** %6, align 8
  %57 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %58, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %51, %34
  %62 = load i32, i32* %10, align 4
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %61, %21
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local i64 @gasket_simple_page_idx(%struct.gasket_page_table*, i32) #1

declare dso_local i32 @gasket_alloc_simple_entries(%struct.gasket_page_table*, i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @gasket_perform_mapping(%struct.gasket_page_table*, i64, i64, i32, i64, i32) #1

declare dso_local i32 @gasket_page_table_unmap_nolock(%struct.gasket_page_table*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
