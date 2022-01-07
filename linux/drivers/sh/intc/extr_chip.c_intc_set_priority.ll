; ModuleID = '/home/carl/AnghaBench/linux/drivers/sh/intc/extr_chip.c_intc_set_priority.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sh/intc/extr_chip.c_intc_set_priority.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intc_desc_int = type { i32, i32 }
%struct.irq_data = type { i32 }
%struct.intc_handle_int = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@REG_FN_ERR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intc_set_priority(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.intc_desc_int*, align 8
  %7 = alloca %struct.irq_data*, align 8
  %8 = alloca %struct.intc_handle_int*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.intc_desc_int* @get_intc_desc(i32 %9)
  store %struct.intc_desc_int* %10, %struct.intc_desc_int** %6, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call %struct.irq_data* @irq_get_irq_data(i32 %11)
  store %struct.irq_data* %12, %struct.irq_data** %7, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @intc_get_prio_level(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* %5, align 4
  %18 = icmp ule i32 %17, 1
  br i1 %18, label %19, label %22

19:                                               ; preds = %16, %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %62

22:                                               ; preds = %16
  %23 = load %struct.intc_desc_int*, %struct.intc_desc_int** %6, align 8
  %24 = getelementptr inbounds %struct.intc_desc_int, %struct.intc_desc_int* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.intc_desc_int*, %struct.intc_desc_int** %6, align 8
  %27 = getelementptr inbounds %struct.intc_desc_int, %struct.intc_desc_int* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* %4, align 4
  %30 = call %struct.intc_handle_int* @intc_find_irq(i32 %25, i32 %28, i32 %29)
  store %struct.intc_handle_int* %30, %struct.intc_handle_int** %8, align 8
  %31 = load %struct.intc_handle_int*, %struct.intc_handle_int** %8, align 8
  %32 = icmp ne %struct.intc_handle_int* %31, null
  br i1 %32, label %33, label %61

33:                                               ; preds = %22
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.intc_handle_int*, %struct.intc_handle_int** %8, align 8
  %36 = getelementptr inbounds %struct.intc_handle_int, %struct.intc_handle_int* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @_INTC_WIDTH(i32 %37)
  %39 = shl i32 1, %38
  %40 = icmp uge i32 %34, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %62

44:                                               ; preds = %33
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %5, align 4
  %47 = call i32 @intc_set_prio_level(i32 %45, i32 %46)
  %48 = load %struct.intc_handle_int*, %struct.intc_handle_int** %8, align 8
  %49 = getelementptr inbounds %struct.intc_handle_int, %struct.intc_handle_int* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i64 @_INTC_FN(i32 %50)
  %52 = load i64, i64* @REG_FN_ERR, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %60

54:                                               ; preds = %44
  %55 = load %struct.irq_data*, %struct.irq_data** %7, align 8
  %56 = load %struct.intc_handle_int*, %struct.intc_handle_int** %8, align 8
  %57 = getelementptr inbounds %struct.intc_handle_int, %struct.intc_handle_int* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @_intc_enable(%struct.irq_data* %55, i32 %58)
  br label %60

60:                                               ; preds = %54, %44
  br label %61

61:                                               ; preds = %60, %22
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %61, %41, %19
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local %struct.intc_desc_int* @get_intc_desc(i32) #1

declare dso_local %struct.irq_data* @irq_get_irq_data(i32) #1

declare dso_local i32 @intc_get_prio_level(i32) #1

declare dso_local %struct.intc_handle_int* @intc_find_irq(i32, i32, i32) #1

declare dso_local i32 @_INTC_WIDTH(i32) #1

declare dso_local i32 @intc_set_prio_level(i32, i32) #1

declare dso_local i64 @_INTC_FN(i32) #1

declare dso_local i32 @_intc_enable(%struct.irq_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
