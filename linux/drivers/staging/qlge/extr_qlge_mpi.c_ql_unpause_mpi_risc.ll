; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_mpi.c_ql_unpause_mpi_risc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_mpi.c_ql_unpause_mpi_risc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32 }

@CSR = common dso_local global i32 0, align 4
@CSR_RP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@CSR_CMD_CLR_PAUSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ql_unpause_mpi_risc(%struct.ql_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  %5 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %6 = load i32, i32* @CSR, align 4
  %7 = call i32 @ql_read32(%struct.ql_adapter* %5, i32 %6)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = load i32, i32* @CSR_RP, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %20

15:                                               ; preds = %1
  %16 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %17 = load i32, i32* @CSR, align 4
  %18 = load i32, i32* @CSR_CMD_CLR_PAUSE, align 4
  %19 = call i32 @ql_write32(%struct.ql_adapter* %16, i32 %17, i32 %18)
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %15, %12
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

declare dso_local i32 @ql_read32(%struct.ql_adapter*, i32) #1

declare dso_local i32 @ql_write32(%struct.ql_adapter*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
