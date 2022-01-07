; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_mpi_init_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_mpi_init_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32, i32 }

@MSGU_IBDB_SET = common dso_local global i32 0, align 4
@SPCv_MSGU_CFG_TABLE_UPDATE = common dso_local global i32 0, align 4
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
  %9 = load i32, i32* @SPCv_MSGU_CFG_TABLE_UPDATE, align 4
  %10 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %7, i32 0, i32 %8, i32 %9)
  %11 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %12 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @IS_SPCV_12G(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 4000000, i32* %4, align 4
  br label %18

17:                                               ; preds = %1
  store i32 2000000, i32* %4, align 4
  br label %18

18:                                               ; preds = %17, %16
  br label %19

19:                                               ; preds = %34, %18
  %20 = call i32 @udelay(i32 1)
  %21 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %22 = load i32, i32* @MSGU_IBDB_SET, align 4
  %23 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %21, i32 0, i32 %22)
  store i32 %23, i32* %5, align 4
  %24 = load i32, i32* @SPCv_MSGU_CFG_TABLE_UPDATE, align 4
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %19
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %27
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br label %34

34:                                               ; preds = %30, %27
  %35 = phi i1 [ false, %27 ], [ %33, %30 ]
  br i1 %35, label %19, label %36

36:                                               ; preds = %34
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %36
  store i32 -1, i32* %2, align 4
  br label %71

40:                                               ; preds = %36
  store i32 100000, i32* %4, align 4
  br label %41

41:                                               ; preds = %58, %40
  %42 = call i32 @udelay(i32 1)
  %43 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %44 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @GST_GSTLEN_MPIS_OFFSET, align 4
  %47 = call i32 @pm8001_mr32(i32 %45, i32 %46)
  store i32 %47, i32* %6, align 4
  br label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @GST_MPI_STATE_INIT, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @GST_MPI_STATE_MASK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %49, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load i32, i32* %4, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %4, align 4
  %57 = icmp ne i32 %56, 0
  br label %58

58:                                               ; preds = %54, %48
  %59 = phi i1 [ false, %48 ], [ %57, %54 ]
  br i1 %59, label %41, label %60

60:                                               ; preds = %58
  %61 = load i32, i32* %4, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %60
  store i32 -1, i32* %2, align 4
  br label %71

64:                                               ; preds = %60
  %65 = load i32, i32* %6, align 4
  %66 = ashr i32 %65, 16
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 0, %67
  br i1 %68, label %69, label %70

69:                                               ; preds = %64
  store i32 -1, i32* %2, align 4
  br label %71

70:                                               ; preds = %64
  store i32 0, i32* %2, align 4
  br label %71

71:                                               ; preds = %70, %69, %63, %39
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i32 @pm8001_cw32(%struct.pm8001_hba_info*, i32, i32, i32) #1

declare dso_local i64 @IS_SPCV_12G(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pm8001_cr32(%struct.pm8001_hba_info*, i32, i32) #1

declare dso_local i32 @pm8001_mr32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
