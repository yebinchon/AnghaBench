; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_mpi_uninit_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm80xx_hwi.c_mpi_uninit_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32, i32 }

@MSGU_IBDB_SET = common dso_local global i32 0, align 4
@SPCv_MSGU_CFG_TABLE_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"TIMEOUT:IBDB value/=%x\0A\00", align 1
@GST_GSTLEN_MPIS_OFFSET = common dso_local global i32 0, align 4
@GST_MPI_STATE_UNINIT = common dso_local global i32 0, align 4
@GST_MPI_STATE_MASK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c" TIME OUT MPI State = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*)* @mpi_uninit_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpi_uninit_check(%struct.pm8001_hba_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  %7 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %8 = call i32 @init_pci_device_addresses(%struct.pm8001_hba_info* %7)
  %9 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %10 = load i32, i32* @MSGU_IBDB_SET, align 4
  %11 = load i32, i32* @SPCv_MSGU_CFG_TABLE_RESET, align 4
  %12 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %9, i32 0, i32 %10, i32 %11)
  %13 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %14 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = call i64 @IS_SPCV_12G(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %1
  store i32 4000000, i32* %4, align 4
  br label %20

19:                                               ; preds = %1
  store i32 2000000, i32* %4, align 4
  br label %20

20:                                               ; preds = %19, %18
  br label %21

21:                                               ; preds = %36, %20
  %22 = call i32 @udelay(i32 1)
  %23 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %24 = load i32, i32* @MSGU_IBDB_SET, align 4
  %25 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %23, i32 0, i32 %24)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* @SPCv_MSGU_CFG_TABLE_RESET, align 4
  %27 = load i32, i32* %5, align 4
  %28 = and i32 %27, %26
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %4, align 4
  %35 = icmp ne i32 %34, 0
  br label %36

36:                                               ; preds = %32, %29
  %37 = phi i1 [ false, %29 ], [ %35, %32 ]
  br i1 %37, label %21, label %38

38:                                               ; preds = %36
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @pm8001_printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %42, i32 %44)
  store i32 -1, i32* %2, align 4
  br label %76

46:                                               ; preds = %38
  store i32 2000000, i32* %4, align 4
  br label %47

47:                                               ; preds = %61, %46
  %48 = call i32 @udelay(i32 1)
  %49 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %50 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @GST_GSTLEN_MPIS_OFFSET, align 4
  %53 = call i32 @pm8001_mr32(i32 %51, i32 %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* @GST_MPI_STATE_UNINIT, align 4
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @GST_MPI_STATE_MASK, align 4
  %57 = and i32 %55, %56
  %58 = icmp eq i32 %54, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %47
  br label %65

60:                                               ; preds = %47
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %47, label %65

65:                                               ; preds = %61, %59
  %66 = load i32, i32* %4, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %75, label %68

68:                                               ; preds = %65
  %69 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @GST_MPI_STATE_MASK, align 4
  %72 = and i32 %70, %71
  %73 = call i32 @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %72)
  %74 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %69, i32 %73)
  store i32 -1, i32* %2, align 4
  br label %76

75:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %75, %68, %41
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @init_pci_device_addresses(%struct.pm8001_hba_info*) #1

declare dso_local i32 @pm8001_cw32(%struct.pm8001_hba_info*, i32, i32, i32) #1

declare dso_local i64 @IS_SPCV_12G(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pm8001_cr32(%struct.pm8001_hba_info*, i32, i32) #1

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, i32) #1

declare dso_local i32 @pm8001_mr32(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
