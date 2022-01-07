; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_page_table.c_gasket_page_table_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_page_table.c_gasket_page_table_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_page_table = type { i32, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @gasket_page_table_cleanup(%struct.gasket_page_table* %0) #0 {
  %2 = alloca %struct.gasket_page_table*, align 8
  store %struct.gasket_page_table* %0, %struct.gasket_page_table** %2, align 8
  %3 = load %struct.gasket_page_table*, %struct.gasket_page_table** %2, align 8
  %4 = call i32 @gasket_page_table_garbage_collect(%struct.gasket_page_table* %3)
  %5 = load %struct.gasket_page_table*, %struct.gasket_page_table** %2, align 8
  %6 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = call i32 @vfree(i32* %7)
  %9 = load %struct.gasket_page_table*, %struct.gasket_page_table** %2, align 8
  %10 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %9, i32 0, i32 1
  store i32* null, i32** %10, align 8
  %11 = load %struct.gasket_page_table*, %struct.gasket_page_table** %2, align 8
  %12 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @put_device(i32 %13)
  %15 = load %struct.gasket_page_table*, %struct.gasket_page_table** %2, align 8
  %16 = call i32 @kfree(%struct.gasket_page_table* %15)
  ret void
}

declare dso_local i32 @gasket_page_table_garbage_collect(%struct.gasket_page_table*) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @put_device(i32) #1

declare dso_local i32 @kfree(%struct.gasket_page_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
