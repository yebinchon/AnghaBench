; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_mpi.c_ql_get_mb_sts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_mpi.c_ql_get_mb_sts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32, i64 }
%struct.mbox_params = type { i32, i32* }

@SEM_PROC_REG_MASK = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@drv = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Failed mailbox read.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ql_adapter*, %struct.mbox_params*)* @ql_get_mb_sts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ql_get_mb_sts(%struct.ql_adapter* %0, %struct.mbox_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ql_adapter*, align 8
  %5 = alloca %struct.mbox_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %4, align 8
  store %struct.mbox_params* %1, %struct.mbox_params** %5, align 8
  %8 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %9 = load i32, i32* @SEM_PROC_REG_MASK, align 4
  %10 = call i32 @ql_sem_spinlock(%struct.ql_adapter* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EBUSY, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %56

16:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %17

17:                                               ; preds = %48, %16
  %18 = load i32, i32* %6, align 4
  %19 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %20 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %51

23:                                               ; preds = %17
  %24 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %25 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %26 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i32, i32* %6, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %27, %29
  %31 = load %struct.mbox_params*, %struct.mbox_params** %5, align 8
  %32 = getelementptr inbounds %struct.mbox_params, %struct.mbox_params* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = call i32 @ql_read_mpi_reg(%struct.ql_adapter* %24, i64 %30, i32* %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %23
  %41 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %42 = load i32, i32* @drv, align 4
  %43 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %44 = getelementptr inbounds %struct.ql_adapter, %struct.ql_adapter* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @netif_err(%struct.ql_adapter* %41, i32 %42, i32 %45, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %51

47:                                               ; preds = %23
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %6, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %6, align 4
  br label %17

51:                                               ; preds = %40, %17
  %52 = load %struct.ql_adapter*, %struct.ql_adapter** %4, align 8
  %53 = load i32, i32* @SEM_PROC_REG_MASK, align 4
  %54 = call i32 @ql_sem_unlock(%struct.ql_adapter* %52, i32 %53)
  %55 = load i32, i32* %7, align 4
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %51, %13
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @ql_sem_spinlock(%struct.ql_adapter*, i32) #1

declare dso_local i32 @ql_read_mpi_reg(%struct.ql_adapter*, i64, i32*) #1

declare dso_local i32 @netif_err(%struct.ql_adapter*, i32, i32, i8*) #1

declare dso_local i32 @ql_sem_unlock(%struct.ql_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
