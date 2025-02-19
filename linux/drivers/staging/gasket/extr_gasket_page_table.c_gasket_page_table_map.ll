; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_page_table.c_gasket_page_table_map.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_page_table.c_gasket_page_table_map.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_page_table = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gasket_page_table_map(%struct.gasket_page_table* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gasket_page_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.gasket_page_table* %0, %struct.gasket_page_table** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %9, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %39

14:                                               ; preds = %4
  %15 = load %struct.gasket_page_table*, %struct.gasket_page_table** %6, align 8
  %16 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.gasket_page_table*, %struct.gasket_page_table** %6, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call i64 @gasket_addr_is_simple(%struct.gasket_page_table* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %14
  %23 = load %struct.gasket_page_table*, %struct.gasket_page_table** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @gasket_map_simple_pages(%struct.gasket_page_table* %23, i32 %24, i32 %25, i32 %26)
  store i32 %27, i32* %10, align 4
  br label %34

28:                                               ; preds = %14
  %29 = load %struct.gasket_page_table*, %struct.gasket_page_table** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i32 @gasket_map_extended_pages(%struct.gasket_page_table* %29, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %10, align 4
  br label %34

34:                                               ; preds = %28, %22
  %35 = load %struct.gasket_page_table*, %struct.gasket_page_table** %6, align 8
  %36 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %35, i32 0, i32 0
  %37 = call i32 @mutex_unlock(i32* %36)
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %5, align 4
  br label %39

39:                                               ; preds = %34, %13
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @gasket_addr_is_simple(%struct.gasket_page_table*, i32) #1

declare dso_local i32 @gasket_map_simple_pages(%struct.gasket_page_table*, i32, i32, i32) #1

declare dso_local i32 @gasket_map_extended_pages(%struct.gasket_page_table*, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
