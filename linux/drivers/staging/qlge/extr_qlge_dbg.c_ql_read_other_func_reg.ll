; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_dbg.c_ql_read_other_func_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_dbg.c_ql_read_other_func_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32 }

@MPI_NIC_REG_BLOCK = common dso_local global i32 0, align 4
@MPI_NIC_READ = common dso_local global i32 0, align 4
@MPI_NIC_FUNCTION_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*, i32)* @ql_read_other_func_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_read_other_func_reg(%struct.ql_adapter* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ql_adapter*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @MPI_NIC_REG_BLOCK, align 4
  %10 = load i32, i32* @MPI_NIC_READ, align 4
  %11 = or i32 %9, %10
  %12 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %13 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MPI_NIC_FUNCTION_SHIFT, align 4
  %16 = shl i32 %14, %15
  %17 = or i32 %11, %16
  %18 = load i32, i32* %5, align 4
  %19 = or i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @ql_read_mpi_reg(%struct.ql_adapter* %20, i32 %21, i32* %7)
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %28

26:                                               ; preds = %2
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %26, %25
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i32 @ql_read_mpi_reg(%struct.ql_adapter*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
