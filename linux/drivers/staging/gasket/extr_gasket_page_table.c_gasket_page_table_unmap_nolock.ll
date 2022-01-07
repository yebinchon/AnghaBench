; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_page_table.c_gasket_page_table_unmap_nolock.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_page_table.c_gasket_page_table_unmap_nolock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_page_table = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gasket_page_table*, i32, i32)* @gasket_page_table_unmap_nolock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gasket_page_table_unmap_nolock(%struct.gasket_page_table* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.gasket_page_table*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gasket_page_table* %0, %struct.gasket_page_table** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %3
  br label %25

10:                                               ; preds = %3
  %11 = load %struct.gasket_page_table*, %struct.gasket_page_table** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call i64 @gasket_addr_is_simple(%struct.gasket_page_table* %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.gasket_page_table*, %struct.gasket_page_table** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @gasket_unmap_simple_pages(%struct.gasket_page_table* %16, i32 %17, i32 %18)
  br label %25

20:                                               ; preds = %10
  %21 = load %struct.gasket_page_table*, %struct.gasket_page_table** %4, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @gasket_unmap_extended_pages(%struct.gasket_page_table* %21, i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %9, %20, %15
  ret void
}

declare dso_local i64 @gasket_addr_is_simple(%struct.gasket_page_table*, i32) #1

declare dso_local i32 @gasket_unmap_simple_pages(%struct.gasket_page_table*, i32, i32) #1

declare dso_local i32 @gasket_unmap_extended_pages(%struct.gasket_page_table*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
