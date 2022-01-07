; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_mpi.c_ql_exec_mb_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_mpi.c_ql_exec_mb_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i64 }
%struct.mbox_params = type { i32, i32* }

@CSR = common dso_local global i32 0, align 4
@CSR_HRI = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SEM_PROC_REG_MASK = common dso_local global i32 0, align 4
@CSR_CMD_SET_H2R_INT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*, %struct.mbox_params*)* @ql_exec_mb_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_exec_mb_cmd(%struct.ql_adapter* %0, %struct.mbox_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ql_adapter*, align 8
  %5 = alloca %struct.mbox_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %4, align 8
  store %struct.mbox_params* %1, %struct.mbox_params** %5, align 8
  %8 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %9 = load i32, i32* @CSR, align 4
  %10 = call i32 @ql_read32(%struct.ql_adapter* %8, i32 %9)
  %11 = load i32, i32* @CSR_HRI, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load i32, i32* @EIO, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %65

17:                                               ; preds = %2
  %18 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %19 = load i32, i32* @SEM_PROC_REG_MASK, align 4
  %20 = call i32 @ql_sem_spinlock(%struct.ql_adapter* %18, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %17
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %65

25:                                               ; preds = %17
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %52, %25
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %29 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp slt i32 %27, %30
  br i1 %31, label %32, label %55

32:                                               ; preds = %26
  %33 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %34 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %35 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* %6, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %41 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %40, i32 0, i32 1
  %42 = load i32*, i32** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ql_write_mpi_reg(%struct.ql_adapter* %33, i64 %39, i32 %46)
  store i32 %47, i32* %7, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %32
  br label %60

51:                                               ; preds = %32
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %26

55:                                               ; preds = %26
  %56 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %57 = load i32, i32* @CSR, align 4
  %58 = load i32, i32* @CSR_CMD_SET_H2R_INT, align 4
  %59 = call i32 @ql_write32(%struct.ql_adapter* %56, i32 %57, i32 %58)
  br label %60

60:                                               ; preds = %55, %50
  %61 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %62 = load i32, i32* @SEM_PROC_REG_MASK, align 4
  %63 = call i32 @ql_sem_unlock(%struct.ql_adapter* %61, i32 %62)
  %64 = load i32, i32* %7, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %60, %23, %14
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @ql_read32(%struct.ql_adapter*, i32) #1

declare dso_local i32 @ql_sem_spinlock(%struct.ql_adapter*, i32) #1

declare dso_local i32 @ql_write_mpi_reg(%struct.ql_adapter*, i64, i32) #1

declare dso_local i32 @ql_write32(%struct.ql_adapter*, i32, i32) #1

declare dso_local i32 @ql_sem_unlock(%struct.ql_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
