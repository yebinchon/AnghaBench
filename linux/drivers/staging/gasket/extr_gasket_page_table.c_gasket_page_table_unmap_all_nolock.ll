; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_page_table.c_gasket_page_table_unmap_all_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_page_table.c_gasket_page_table_unmap_all_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_page_table = type { i32, i32 }

@GASKET_PAGES_PER_SUBTABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gasket_page_table*)* @gasket_page_table_unmap_all_nolock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gasket_page_table_unmap_all_nolock(%struct.gasket_page_table* %0) #0 {
  %2 = alloca %struct.gasket_page_table*, align 8
  store %struct.gasket_page_table* %0, %struct.gasket_page_table** %2, align 8
  %3 = load %struct.gasket_page_table*, %struct.gasket_page_table** %2, align 8
  %4 = load %struct.gasket_page_table*, %struct.gasket_page_table** %2, align 8
  %5 = call i32 @gasket_components_to_dev_address(%struct.gasket_page_table* %4, i32 1, i32 0, i32 0)
  %6 = load %struct.gasket_page_table*, %struct.gasket_page_table** %2, align 8
  %7 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @gasket_unmap_simple_pages(%struct.gasket_page_table* %3, i32 %5, i32 %8)
  %10 = load %struct.gasket_page_table*, %struct.gasket_page_table** %2, align 8
  %11 = load %struct.gasket_page_table*, %struct.gasket_page_table** %2, align 8
  %12 = call i32 @gasket_components_to_dev_address(%struct.gasket_page_table* %11, i32 0, i32 0, i32 0)
  %13 = load %struct.gasket_page_table*, %struct.gasket_page_table** %2, align 8
  %14 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @GASKET_PAGES_PER_SUBTABLE, align 4
  %17 = mul nsw i32 %15, %16
  %18 = call i32 @gasket_unmap_extended_pages(%struct.gasket_page_table* %10, i32 %12, i32 %17)
  ret void
}

declare dso_local i32 @gasket_unmap_simple_pages(%struct.gasket_page_table*, i32, i32) #1

declare dso_local i32 @gasket_components_to_dev_address(%struct.gasket_page_table*, i32, i32, i32) #1

declare dso_local i32 @gasket_unmap_extended_pages(%struct.gasket_page_table*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
