; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_page_table.c_gasket_unmap_simple_pages.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_page_table.c_gasket_unmap_simple_pages.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_page_table = type { i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gasket_page_table*, i32, i64)* @gasket_unmap_simple_pages to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gasket_unmap_simple_pages(%struct.gasket_page_table* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.gasket_page_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.gasket_page_table* %0, %struct.gasket_page_table** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %8 = load %struct.gasket_page_table*, %struct.gasket_page_table** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call i64 @gasket_simple_page_idx(%struct.gasket_page_table* %8, i32 %9)
  store i64 %10, i64* %7, align 8
  %11 = load %struct.gasket_page_table*, %struct.gasket_page_table** %4, align 8
  %12 = load %struct.gasket_page_table*, %struct.gasket_page_table** %4, align 8
  %13 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* %7, align 8
  %16 = add nsw i64 %14, %15
  %17 = load %struct.gasket_page_table*, %struct.gasket_page_table** %4, align 8
  %18 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* %7, align 8
  %21 = add nsw i64 %19, %20
  %22 = load i64, i64* %6, align 8
  %23 = call i32 @gasket_perform_unmapping(%struct.gasket_page_table* %11, i64 %16, i64 %21, i64 %22, i32 1)
  ret void
}

declare dso_local i64 @gasket_simple_page_idx(%struct.gasket_page_table*, i32) #1

declare dso_local i32 @gasket_perform_unmapping(%struct.gasket_page_table*, i64, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
