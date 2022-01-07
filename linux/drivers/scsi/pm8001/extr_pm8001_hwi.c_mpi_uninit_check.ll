; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_mpi_uninit_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_hwi.c_mpi_uninit_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pm8001_hba_info = type { i32, i32 }

@PCI_DEVICE_ID = common dso_local global i32 0, align 4
@GSM_SM_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Shift Bar4 to 0x%x failed\0A\00", align 1
@MSGU_IBDB_SET = common dso_local global i32 0, align 4
@SPC_MSGU_CFG_TABLE_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"TIMEOUT:IBDB value/=0x%x\0A\00", align 1
@GST_GSTLEN_MPIS_OFFSET = common dso_local global i32 0, align 4
@GST_MPI_STATE_UNINIT = common dso_local global i32 0, align 4
@GST_MPI_STATE_MASK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [28 x i8] c" TIME OUT MPI State = 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pm8001_hba_info*)* @mpi_uninit_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpi_uninit_check(%struct.pm8001_hba_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pm8001_hba_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pm8001_hba_info* %0, %struct.pm8001_hba_info** %3, align 8
  %8 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %9 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @PCI_DEVICE_ID, align 4
  %12 = call i32 @pci_read_config_word(i32 %10, i32 %11, i32* %7)
  %13 = load i32, i32* %7, align 4
  %14 = icmp eq i32 %13, 32897
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %7, align 4
  %17 = icmp eq i32 %16, 66
  br i1 %17, label %18, label %29

18:                                               ; preds = %15, %1
  %19 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %20 = load i32, i32* @GSM_SM_BASE, align 4
  %21 = call i32 @pm8001_bar4_shift(%struct.pm8001_hba_info* %19, i32 %20)
  %22 = icmp eq i32 -1, %21
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %25 = load i32, i32* @GSM_SM_BASE, align 4
  %26 = call i32 @pm8001_printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %24, i32 %26)
  store i32 -1, i32* %2, align 4
  br label %91

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28, %15
  %30 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %31 = call i32 @init_pci_device_addresses(%struct.pm8001_hba_info* %30)
  %32 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %33 = load i32, i32* @MSGU_IBDB_SET, align 4
  %34 = load i32, i32* @SPC_MSGU_CFG_TABLE_RESET, align 4
  %35 = call i32 @pm8001_cw32(%struct.pm8001_hba_info* %32, i32 0, i32 %33, i32 %34)
  store i32 1000000, i32* %4, align 4
  br label %36

36:                                               ; preds = %51, %29
  %37 = call i32 @udelay(i32 1)
  %38 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %39 = load i32, i32* @MSGU_IBDB_SET, align 4
  %40 = call i32 @pm8001_cr32(%struct.pm8001_hba_info* %38, i32 0, i32 %39)
  store i32 %40, i32* %5, align 4
  %41 = load i32, i32* @SPC_MSGU_CFG_TABLE_RESET, align 4
  %42 = load i32, i32* %5, align 4
  %43 = and i32 %42, %41
  store i32 %43, i32* %5, align 4
  br label %44

44:                                               ; preds = %36
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br label %51

51:                                               ; preds = %47, %44
  %52 = phi i1 [ false, %44 ], [ %50, %47 ]
  br i1 %52, label %36, label %53

53:                                               ; preds = %51
  %54 = load i32, i32* %4, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %61, label %56

56:                                               ; preds = %53
  %57 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @pm8001_printk(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %57, i32 %59)
  store i32 -1, i32* %2, align 4
  br label %91

61:                                               ; preds = %53
  store i32 1000000, i32* %4, align 4
  br label %62

62:                                               ; preds = %76, %61
  %63 = call i32 @udelay(i32 1)
  %64 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %65 = getelementptr inbounds %struct.pm8001_hba_info, %struct.pm8001_hba_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @GST_GSTLEN_MPIS_OFFSET, align 4
  %68 = call i32 @pm8001_mr32(i32 %66, i32 %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* @GST_MPI_STATE_UNINIT, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @GST_MPI_STATE_MASK, align 4
  %72 = and i32 %70, %71
  %73 = icmp eq i32 %69, %72
  br i1 %73, label %74, label %75

74:                                               ; preds = %62
  br label %80

75:                                               ; preds = %62
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %4, align 4
  %78 = add nsw i32 %77, -1
  store i32 %78, i32* %4, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %62, label %80

80:                                               ; preds = %76, %74
  %81 = load i32, i32* %4, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %80
  %84 = load %struct.pm8001_hba_info*, %struct.pm8001_hba_info** %3, align 8
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @GST_MPI_STATE_MASK, align 4
  %87 = and i32 %85, %86
  %88 = call i32 @pm8001_printk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %87)
  %89 = call i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info* %84, i32 %88)
  store i32 -1, i32* %2, align 4
  br label %91

90:                                               ; preds = %80
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %90, %83, %56, %23
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @pci_read_config_word(i32, i32, i32*) #1

declare dso_local i32 @pm8001_bar4_shift(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @PM8001_FAIL_DBG(%struct.pm8001_hba_info*, i32) #1

declare dso_local i32 @pm8001_printk(i8*, i32) #1

declare dso_local i32 @init_pci_device_addresses(%struct.pm8001_hba_info*) #1

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
