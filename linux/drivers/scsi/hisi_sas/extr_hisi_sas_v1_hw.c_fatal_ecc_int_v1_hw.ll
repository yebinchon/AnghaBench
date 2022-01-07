; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v1_hw.c_fatal_ecc_int_v1_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v1_hw.c_fatal_ecc_int_v1_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { %struct.device* }
%struct.device = type { i32 }

@SAS_ECC_INTR = common dso_local global i32 0, align 4
@SAS_ECC_INTR_DQ_ECC1B_MSK = common dso_local global i32 0, align 4
@HGC_ECC_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"%s: Fatal DQ 1b ECC interrupt (0x%x)\0A\00", align 1
@SAS_ECC_INTR_DQ_ECCBAD_MSK = common dso_local global i32 0, align 4
@HGC_DQ_ECC_ADDR = common dso_local global i32 0, align 4
@HGC_DQ_ECC_ADDR_BAD_MSK = common dso_local global i32 0, align 4
@HGC_DQ_ECC_ADDR_BAD_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"%s: Fatal DQ RAM ECC interrupt @ 0x%08x\0A\00", align 1
@SAS_ECC_INTR_IOST_ECC1B_MSK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [40 x i8] c"%s: Fatal IOST 1b ECC interrupt (0x%x)\0A\00", align 1
@SAS_ECC_INTR_IOST_ECCBAD_MSK = common dso_local global i32 0, align 4
@HGC_IOST_ECC_ADDR = common dso_local global i32 0, align 4
@HGC_IOST_ECC_ADDR_BAD_MSK = common dso_local global i32 0, align 4
@HGC_IOST_ECC_ADDR_BAD_OFF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"%s: Fatal IOST RAM ECC interrupt @ 0x%08x\0A\00", align 1
@SAS_ECC_INTR_ITCT_ECCBAD_MSK = common dso_local global i32 0, align 4
@HGC_ITCT_ECC_ADDR = common dso_local global i32 0, align 4
@HGC_ITCT_ECC_ADDR_BAD_MSK = common dso_local global i32 0, align 4
@HGC_ITCT_ECC_ADDR_BAD_OFF = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"%s: Fatal TCT RAM ECC interrupt @ 0x%08x\0A\00", align 1
@SAS_ECC_INTR_ITCT_ECC1B_MSK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"%s: Fatal ITCT 1b ECC interrupt (0x%x)\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fatal_ecc_int_v1_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fatal_ecc_int_v1_hw(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hisi_hba*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.hisi_hba*
  store %struct.hisi_hba* %15, %struct.hisi_hba** %5, align 8
  %16 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %17 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %16, i32 0, i32 0
  %18 = load %struct.device*, %struct.device** %17, align 8
  store %struct.device* %18, %struct.device** %6, align 8
  %19 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %20 = load i32, i32* @SAS_ECC_INTR, align 4
  %21 = call i32 @hisi_sas_read32(%struct.hisi_hba* %19, i32 %20)
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @SAS_ECC_INTR_DQ_ECC1B_MSK, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %34

26:                                               ; preds = %2
  %27 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %28 = load i32, i32* @HGC_ECC_ERR, align 4
  %29 = call i32 @hisi_sas_read32(%struct.hisi_hba* %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load %struct.device*, %struct.device** %6, align 8
  %31 = call i32 @dev_name(%struct.device* %30)
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %31, i32 %32)
  br label %34

34:                                               ; preds = %26, %2
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @SAS_ECC_INTR_DQ_ECCBAD_MSK, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %51

39:                                               ; preds = %34
  %40 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %41 = load i32, i32* @HGC_DQ_ECC_ADDR, align 4
  %42 = call i32 @hisi_sas_read32(%struct.hisi_hba* %40, i32 %41)
  %43 = load i32, i32* @HGC_DQ_ECC_ADDR_BAD_MSK, align 4
  %44 = and i32 %42, %43
  %45 = load i32, i32* @HGC_DQ_ECC_ADDR_BAD_OFF, align 4
  %46 = ashr i32 %44, %45
  store i32 %46, i32* %9, align 4
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = call i32 @dev_name(%struct.device* %47)
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %39, %34
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @SAS_ECC_INTR_IOST_ECC1B_MSK, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %64

56:                                               ; preds = %51
  %57 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %58 = load i32, i32* @HGC_ECC_ERR, align 4
  %59 = call i32 @hisi_sas_read32(%struct.hisi_hba* %57, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load %struct.device*, %struct.device** %6, align 8
  %61 = call i32 @dev_name(%struct.device* %60)
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %62)
  br label %64

64:                                               ; preds = %56, %51
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* @SAS_ECC_INTR_IOST_ECCBAD_MSK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %64
  %70 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %71 = load i32, i32* @HGC_IOST_ECC_ADDR, align 4
  %72 = call i32 @hisi_sas_read32(%struct.hisi_hba* %70, i32 %71)
  %73 = load i32, i32* @HGC_IOST_ECC_ADDR_BAD_MSK, align 4
  %74 = and i32 %72, %73
  %75 = load i32, i32* @HGC_IOST_ECC_ADDR_BAD_OFF, align 4
  %76 = ashr i32 %74, %75
  store i32 %76, i32* %11, align 4
  %77 = load %struct.device*, %struct.device** %6, align 8
  %78 = call i32 @dev_name(%struct.device* %77)
  %79 = load i32, i32* %11, align 4
  %80 = call i32 @panic(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %78, i32 %79)
  br label %81

81:                                               ; preds = %69, %64
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @SAS_ECC_INTR_ITCT_ECCBAD_MSK, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %81
  %87 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %88 = load i32, i32* @HGC_ITCT_ECC_ADDR, align 4
  %89 = call i32 @hisi_sas_read32(%struct.hisi_hba* %87, i32 %88)
  %90 = load i32, i32* @HGC_ITCT_ECC_ADDR_BAD_MSK, align 4
  %91 = and i32 %89, %90
  %92 = load i32, i32* @HGC_ITCT_ECC_ADDR_BAD_OFF, align 4
  %93 = ashr i32 %91, %92
  store i32 %93, i32* %12, align 4
  %94 = load %struct.device*, %struct.device** %6, align 8
  %95 = call i32 @dev_name(%struct.device* %94)
  %96 = load i32, i32* %12, align 4
  %97 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0), i32 %95, i32 %96)
  br label %98

98:                                               ; preds = %86, %81
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @SAS_ECC_INTR_ITCT_ECC1B_MSK, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %111

103:                                              ; preds = %98
  %104 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %105 = load i32, i32* @HGC_ECC_ERR, align 4
  %106 = call i32 @hisi_sas_read32(%struct.hisi_hba* %104, i32 %105)
  store i32 %106, i32* %13, align 4
  %107 = load %struct.device*, %struct.device** %6, align 8
  %108 = call i32 @dev_name(%struct.device* %107)
  %109 = load i32, i32* %13, align 4
  %110 = call i32 @panic(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0), i32 %108, i32 %109)
  br label %111

111:                                              ; preds = %103, %98
  %112 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %113 = load i32, i32* @SAS_ECC_INTR, align 4
  %114 = load i32, i32* %7, align 4
  %115 = or i32 %114, 63
  %116 = call i32 @hisi_sas_write32(%struct.hisi_hba* %112, i32 %113, i32 %115)
  %117 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %117
}

declare dso_local i32 @hisi_sas_read32(%struct.hisi_hba*, i32) #1

declare dso_local i32 @panic(i8*, i32, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @hisi_sas_write32(%struct.hisi_hba*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
