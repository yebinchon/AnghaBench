; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_mpi_init_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_mpi_init_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32 }

@MSGU_IBDB_SET = common dso_local global i32 0, align 4
@SPC_MSGU_CFG_TABLE_UPDATE = common dso_local global i32 0, align 4
@GST_GSTLEN_MPIS_OFFSET = common dso_local global i32 0, align 4
@GST_MPI_STATE_INIT = common dso_local global i32 0, align 4
@GST_MPI_STATE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*)* @mpi_init_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpi_init_check(%struct.pm8001_hba_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  %7 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %8 = load i32, i32* @MSGU_IBDB_SET, align 4
  %9 = load i32, i32* @SPC_MSGU_CFG_TABLE_UPDATE, align 4
  %10 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %7, i32 0, i32 %8, i32 %9)
  store i32 1000000, i32* %4, align 4
  br label %11

11:                                               ; preds = %26, %1
  %12 = call i32 @udelay(i32 1)
  %13 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %14 = load i32, i32* @MSGU_IBDB_SET, align 4
  %15 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %13, i32 0, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* @SPC_MSGU_CFG_TABLE_UPDATE, align 4
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %11
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %19
  %23 = load i32, i32* %4, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br label %26

26:                                               ; preds = %22, %19
  %27 = phi i1 [ false, %19 ], [ %25, %22 ]
  br i1 %27, label %11, label %28

28:                                               ; preds = %26
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %28
  store i32 -1, i32* %2, align 4
  br label %51

32:                                               ; preds = %28
  %33 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %34 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @GST_GSTLEN_MPIS_OFFSET, align 4
  %37 = call i32 @pm8001_mr32(i32 %35, i32 %36)
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* @GST_MPI_STATE_INIT, align 4
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @GST_MPI_STATE_MASK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %38, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  store i32 -1, i32* %2, align 4
  br label %51

44:                                               ; preds = %32
  %45 = load i32, i32* %6, align 4
  %46 = ashr i32 %45, 16
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = icmp ne i32 0, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  store i32 -1, i32* %2, align 4
  br label %51

50:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %50, %49, %43, %31
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @pm8001_cw32(%struct.pm8001_hba_info*, i32, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pm8001_cr32(%struct.pm8001_hba_info*, i32, i32) #1

declare dso_local i32 @pm8001_mr32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
