; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_page_table.c_gasket_is_extended_dev_addr_bad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_page_table.c_gasket_is_extended_dev_addr_bad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_page_table = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@GASKET_EXTENDED_LVL0_WIDTH = common dso_local global i32 0, align 4
@GASKET_EXTENDED_LVL0_SHIFT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"device address out of bounds: 0x%lx\0A\00", align 1
@GASKET_PAGES_PER_SUBTABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"address is invalid: 0x%lx\0A\00", align 1
@.str.2 = private unnamed_addr constant [56 x i8] c"starting level 0 slot at %lu is too large, max is < %u\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"ending level 0 slot at %lu is too large, max is <= %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gasket_page_table*, i32, i32)* @gasket_is_extended_dev_addr_bad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gasket_is_extended_dev_addr_bad(%struct.gasket_page_table* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gasket_page_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.gasket_page_table* %0, %struct.gasket_page_table** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @PAGE_SIZE, align 4
  %15 = sub nsw i32 %14, 1
  %16 = and i32 %13, %15
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %6, align 4
  %18 = load %struct.gasket_page_table*, %struct.gasket_page_table** %5, align 8
  %19 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = xor i32 %20, -1
  %22 = and i32 %17, %21
  store i32 %22, i32* %12, align 4
  %23 = load i32, i32* %12, align 4
  %24 = load i32, i32* @GASKET_EXTENDED_LVL0_WIDTH, align 4
  %25 = load i32, i32* @GASKET_EXTENDED_LVL0_SHIFT, align 4
  %26 = add nsw i32 %24, %25
  %27 = ashr i32 %23, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %3
  %30 = load %struct.gasket_page_table*, %struct.gasket_page_table** %5, align 8
  %31 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %33)
  store i32 1, i32* %4, align 4
  br label %100

35:                                               ; preds = %3
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = sdiv i32 %36, %37
  %39 = load %struct.gasket_page_table*, %struct.gasket_page_table** %5, align 8
  %40 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @GASKET_PAGES_PER_SUBTABLE, align 4
  %44 = mul nsw i32 %42, %43
  %45 = sub nsw i32 %44, 1
  %46 = and i32 %38, %45
  store i32 %46, i32* %9, align 4
  %47 = load %struct.gasket_page_table*, %struct.gasket_page_table** %5, align 8
  %48 = load i32, i32* %6, align 4
  %49 = call i32 @gasket_extended_lvl0_page_idx(%struct.gasket_page_table* %47, i32 %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @GASKET_PAGES_PER_SUBTABLE, align 4
  %52 = call i32 @DIV_ROUND_UP(i32 %50, i32 %51)
  store i32 %52, i32* %11, align 4
  %53 = load %struct.gasket_page_table*, %struct.gasket_page_table** %5, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = call i32 @gasket_components_to_dev_address(%struct.gasket_page_table* %53, i32 0, i32 %54, i32 %55)
  %57 = load i32, i32* %6, align 4
  %58 = icmp ne i32 %56, %57
  br i1 %58, label %59, label %65

59:                                               ; preds = %35
  %60 = load %struct.gasket_page_table*, %struct.gasket_page_table** %5, align 8
  %61 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %6, align 4
  %64 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %62, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  store i32 1, i32* %4, align 4
  br label %100

65:                                               ; preds = %35
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.gasket_page_table*, %struct.gasket_page_table** %5, align 8
  %68 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = icmp sge i32 %66, %69
  br i1 %70, label %71, label %80

71:                                               ; preds = %65
  %72 = load %struct.gasket_page_table*, %struct.gasket_page_table** %5, align 8
  %73 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.gasket_page_table*, %struct.gasket_page_table** %5, align 8
  %77 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %74, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %75, i32 %78)
  store i32 1, i32* %4, align 4
  br label %100

80:                                               ; preds = %65
  %81 = load i32, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %81, %82
  %84 = load %struct.gasket_page_table*, %struct.gasket_page_table** %5, align 8
  %85 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = icmp sgt i32 %83, %86
  br i1 %87, label %88, label %99

88:                                               ; preds = %80
  %89 = load %struct.gasket_page_table*, %struct.gasket_page_table** %5, align 8
  %90 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = load i32, i32* %10, align 4
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %92, %93
  %95 = load %struct.gasket_page_table*, %struct.gasket_page_table** %5, align 8
  %96 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %91, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.3, i64 0, i64 0), i32 %94, i32 %97)
  store i32 1, i32* %4, align 4
  br label %100

99:                                               ; preds = %80
  store i32 0, i32* %4, align 4
  br label %100

100:                                              ; preds = %99, %88, %71, %59, %29
  %101 = load i32, i32* %4, align 4
  ret i32 %101
}

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

declare dso_local i32 @gasket_extended_lvl0_page_idx(%struct.gasket_page_table*, i32) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @gasket_components_to_dev_address(%struct.gasket_page_table*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
