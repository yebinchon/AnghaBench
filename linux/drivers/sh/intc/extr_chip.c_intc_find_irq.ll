; ModuleID = '/home/carl/AnghaBench/linux/drivers/sh/intc/extr_chip.c_intc_find_irq.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sh/intc/extr_chip.c_intc_find_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intc_handle_int = type { i32, i64 }

@intc_handle_int_cmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.intc_handle_int* (%struct.intc_handle_int*, i32, i32)* @intc_find_irq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.intc_handle_int* @intc_find_irq(%struct.intc_handle_int* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.intc_handle_int*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.intc_handle_int, align 8
  store %struct.intc_handle_int* %0, %struct.intc_handle_int** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %6, align 4
  %9 = getelementptr inbounds %struct.intc_handle_int, %struct.intc_handle_int* %7, i32 0, i32 0
  store i32 %8, i32* %9, align 8
  %10 = getelementptr inbounds %struct.intc_handle_int, %struct.intc_handle_int* %7, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load %struct.intc_handle_int*, %struct.intc_handle_int** %4, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @intc_handle_int_cmp, align 4
  %14 = call %struct.intc_handle_int* @bsearch(%struct.intc_handle_int* %7, %struct.intc_handle_int* %11, i32 %12, i32 16, i32 %13)
  ret %struct.intc_handle_int* %14
}

declare dso_local %struct.intc_handle_int* @bsearch(%struct.intc_handle_int*, %struct.intc_handle_int*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
