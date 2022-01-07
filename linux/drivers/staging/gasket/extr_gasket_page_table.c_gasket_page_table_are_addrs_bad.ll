; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_page_table.c_gasket_page_table_are_addrs_bad.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_page_table.c_gasket_page_table_are_addrs_bad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_page_table = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"host mapping address 0x%lx must be page aligned\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gasket_page_table_are_addrs_bad(%struct.gasket_page_table* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.gasket_page_table*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.gasket_page_table* %0, %struct.gasket_page_table** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = load i32, i32* @PAGE_SIZE, align 4
  %12 = sub nsw i32 %11, 1
  %13 = and i32 %10, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %21

15:                                               ; preds = %4
  %16 = load %struct.gasket_page_table*, %struct.gasket_page_table** %6, align 8
  %17 = getelementptr inbounds %struct.gasket_page_table, %struct.gasket_page_table* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @dev_err(i32 %18, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %19)
  store i32 1, i32* %5, align 4
  br label %26

21:                                               ; preds = %4
  %22 = load %struct.gasket_page_table*, %struct.gasket_page_table** %6, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* %9, align 4
  %25 = call i32 @gasket_page_table_is_dev_addr_bad(%struct.gasket_page_table* %22, i32 %23, i32 %24)
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %21, %15
  %27 = load i32, i32* %5, align 4
  ret i32 %27
}

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @gasket_page_table_is_dev_addr_bad(%struct.gasket_page_table*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
