; ModuleID = '/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_tsens-common.c_qfprom_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thermal/qcom/extr_tsens-common.c_qfprom_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nvmem_cell = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @qfprom_read(%struct.device* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nvmem_cell*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load %struct.device*, %struct.device** %4, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = call %struct.nvmem_cell* @nvmem_cell_get(%struct.device* %9, i8* %10)
  store %struct.nvmem_cell* %11, %struct.nvmem_cell** %6, align 8
  %12 = load %struct.nvmem_cell*, %struct.nvmem_cell** %6, align 8
  %13 = call i64 @IS_ERR(%struct.nvmem_cell* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load %struct.nvmem_cell*, %struct.nvmem_cell** %6, align 8
  %17 = call i8* @ERR_CAST(%struct.nvmem_cell* %16)
  store i8* %17, i8** %3, align 8
  br label %24

18:                                               ; preds = %2
  %19 = load %struct.nvmem_cell*, %struct.nvmem_cell** %6, align 8
  %20 = call i8* @nvmem_cell_read(%struct.nvmem_cell* %19, i32* %7)
  store i8* %20, i8** %8, align 8
  %21 = load %struct.nvmem_cell*, %struct.nvmem_cell** %6, align 8
  %22 = call i32 @nvmem_cell_put(%struct.nvmem_cell* %21)
  %23 = load i8*, i8** %8, align 8
  store i8* %23, i8** %3, align 8
  br label %24

24:                                               ; preds = %18, %15
  %25 = load i8*, i8** %3, align 8
  ret i8* %25
}

declare dso_local %struct.nvmem_cell* @nvmem_cell_get(%struct.device*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.nvmem_cell*) #1

declare dso_local i8* @ERR_CAST(%struct.nvmem_cell*) #1

declare dso_local i8* @nvmem_cell_read(%struct.nvmem_cell*, i32*) #1

declare dso_local i32 @nvmem_cell_put(%struct.nvmem_cell*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
