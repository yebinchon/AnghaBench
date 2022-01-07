; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_page_table.c_gasket_page_table_lookup_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_page_table.c_gasket_page_table_lookup_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_page_table = type { i64, i64, i32, %struct.gasket_page_table_entry* }
%struct.gasket_page_table_entry = type { i64, i32, %struct.page*, %struct.gasket_page_table_entry* }
%struct.page = type { i32 }

@PTE_INUSE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gasket_page_table_lookup_page(%struct.gasket_page_table* %0, i32 %1, %struct.page** %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gasket_page_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.page**, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.gasket_page_table_entry*, align 8
  store %struct.gasket_page_table* %0, %struct.gasket_page_table** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.page** %2, %struct.page*** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.gasket_page_table*, %struct.gasket_page_table** %6, align 8
  %13 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %12, i32 0, i32 2
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.gasket_page_table*, %struct.gasket_page_table** %6, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i64 @gasket_addr_is_simple(%struct.gasket_page_table* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %4
  %20 = load %struct.gasket_page_table*, %struct.gasket_page_table** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call i64 @gasket_simple_page_idx(%struct.gasket_page_table* %20, i32 %21)
  store i64 %22, i64* %10, align 8
  %23 = load i64, i64* %10, align 8
  %24 = load %struct.gasket_page_table*, %struct.gasket_page_table** %6, align 8
  %25 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %19
  br label %96

29:                                               ; preds = %19
  %30 = load %struct.gasket_page_table*, %struct.gasket_page_table** %6, align 8
  %31 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %30, i32 0, i32 3
  %32 = load %struct.gasket_page_table_entry*, %struct.gasket_page_table_entry** %31, align 8
  %33 = load i64, i64* %10, align 8
  %34 = getelementptr inbounds %struct.gasket_page_table_entry, %struct.gasket_page_table_entry* %32, i64 %33
  store %struct.gasket_page_table_entry* %34, %struct.gasket_page_table_entry** %11, align 8
  %35 = load %struct.gasket_page_table_entry*, %struct.gasket_page_table_entry** %11, align 8
  %36 = getelementptr inbounds %struct.gasket_page_table_entry, %struct.gasket_page_table_entry* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @PTE_INUSE, align 8
  %39 = icmp ne i64 %37, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %29
  br label %96

41:                                               ; preds = %29
  br label %84

42:                                               ; preds = %4
  %43 = load %struct.gasket_page_table*, %struct.gasket_page_table** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = call i64 @gasket_extended_lvl0_page_idx(%struct.gasket_page_table* %43, i32 %44)
  store i64 %45, i64* %10, align 8
  %46 = load i64, i64* %10, align 8
  %47 = load %struct.gasket_page_table*, %struct.gasket_page_table** %6, align 8
  %48 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp sge i64 %46, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  br label %96

52:                                               ; preds = %42
  %53 = load %struct.gasket_page_table*, %struct.gasket_page_table** %6, align 8
  %54 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %53, i32 0, i32 3
  %55 = load %struct.gasket_page_table_entry*, %struct.gasket_page_table_entry** %54, align 8
  %56 = load %struct.gasket_page_table*, %struct.gasket_page_table** %6, align 8
  %57 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds %struct.gasket_page_table_entry, %struct.gasket_page_table_entry* %55, i64 %58
  %60 = load i64, i64* %10, align 8
  %61 = getelementptr inbounds %struct.gasket_page_table_entry, %struct.gasket_page_table_entry* %59, i64 %60
  store %struct.gasket_page_table_entry* %61, %struct.gasket_page_table_entry** %11, align 8
  %62 = load %struct.gasket_page_table_entry*, %struct.gasket_page_table_entry** %11, align 8
  %63 = getelementptr inbounds %struct.gasket_page_table_entry, %struct.gasket_page_table_entry* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @PTE_INUSE, align 8
  %66 = icmp ne i64 %64, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %52
  br label %96

68:                                               ; preds = %52
  %69 = load %struct.gasket_page_table*, %struct.gasket_page_table** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i64 @gasket_extended_lvl1_page_idx(%struct.gasket_page_table* %69, i32 %70)
  store i64 %71, i64* %10, align 8
  %72 = load %struct.gasket_page_table_entry*, %struct.gasket_page_table_entry** %11, align 8
  %73 = getelementptr inbounds %struct.gasket_page_table_entry, %struct.gasket_page_table_entry* %72, i32 0, i32 3
  %74 = load %struct.gasket_page_table_entry*, %struct.gasket_page_table_entry** %73, align 8
  %75 = load i64, i64* %10, align 8
  %76 = getelementptr inbounds %struct.gasket_page_table_entry, %struct.gasket_page_table_entry* %74, i64 %75
  store %struct.gasket_page_table_entry* %76, %struct.gasket_page_table_entry** %11, align 8
  %77 = load %struct.gasket_page_table_entry*, %struct.gasket_page_table_entry** %11, align 8
  %78 = getelementptr inbounds %struct.gasket_page_table_entry, %struct.gasket_page_table_entry* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @PTE_INUSE, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %83

82:                                               ; preds = %68
  br label %96

83:                                               ; preds = %68
  br label %84

84:                                               ; preds = %83, %41
  %85 = load %struct.gasket_page_table_entry*, %struct.gasket_page_table_entry** %11, align 8
  %86 = getelementptr inbounds %struct.gasket_page_table_entry, %struct.gasket_page_table_entry* %85, i32 0, i32 2
  %87 = load %struct.page*, %struct.page** %86, align 8
  %88 = load %struct.page**, %struct.page*** %8, align 8
  store %struct.page* %87, %struct.page** %88, align 8
  %89 = load %struct.gasket_page_table_entry*, %struct.gasket_page_table_entry** %11, align 8
  %90 = getelementptr inbounds %struct.gasket_page_table_entry, %struct.gasket_page_table_entry* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load i32*, i32** %9, align 8
  store i32 %91, i32* %92, align 4
  %93 = load %struct.gasket_page_table*, %struct.gasket_page_table** %6, align 8
  %94 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %93, i32 0, i32 2
  %95 = call i32 @mutex_unlock(i32* %94)
  store i32 0, i32* %5, align 4
  br label %104

96:                                               ; preds = %82, %67, %51, %40, %28
  %97 = load %struct.page**, %struct.page*** %8, align 8
  store %struct.page* null, %struct.page** %97, align 8
  %98 = load i32*, i32** %9, align 8
  store i32 0, i32* %98, align 4
  %99 = load %struct.gasket_page_table*, %struct.gasket_page_table** %6, align 8
  %100 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %99, i32 0, i32 2
  %101 = call i32 @mutex_unlock(i32* %100)
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %5, align 4
  br label %104

104:                                              ; preds = %96, %84
  %105 = load i32, i32* %5, align 4
  ret i32 %105
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @gasket_addr_is_simple(%struct.gasket_page_table*, i32) #1

declare dso_local i64 @gasket_simple_page_idx(%struct.gasket_page_table*, i32) #1

declare dso_local i64 @gasket_extended_lvl0_page_idx(%struct.gasket_page_table*, i32) #1

declare dso_local i64 @gasket_extended_lvl1_page_idx(%struct.gasket_page_table*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
