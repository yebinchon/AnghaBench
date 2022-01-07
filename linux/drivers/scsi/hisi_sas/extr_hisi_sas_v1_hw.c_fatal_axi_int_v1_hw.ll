; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v1_hw.c_fatal_axi_int_v1_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v1_hw.c_fatal_axi_int_v1_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { %struct.device* }
%struct.device = type { i32 }

@ENT_INT_SRC2 = common dso_local global i32 0, align 4
@HGC_AXI_FIFO_ERR_INFO = common dso_local global i32 0, align 4
@ENT_INT_SRC2_DQ_CFG_ERR_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"%s: Fatal DQ_CFG_ERR interrupt (0x%x)\0A\00", align 1
@ENT_INT_SRC2_CQ_CFG_ERR_MSK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"%s: Fatal CQ_CFG_ERR interrupt (0x%x)\0A\00", align 1
@ENT_INT_SRC2_AXI_WRONG_INT_MSK = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [42 x i8] c"%s: Fatal AXI_WRONG_INT interrupt (0x%x)\0A\00", align 1
@ENT_INT_SRC2_AXI_OVERLF_INT_MSK = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [53 x i8] c"%s: Fatal AXI_OVERLF_INT incorrect interrupt (0x%x)\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fatal_axi_int_v1_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fatal_axi_int_v1_hw(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.hisi_hba*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.hisi_hba*
  store %struct.hisi_hba* %10, %struct.hisi_hba** %5, align 8
  %11 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %12 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %11, i32 0, i32 0
  %13 = load %struct.device*, %struct.device** %12, align 8
  store %struct.device* %13, %struct.device** %6, align 8
  %14 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %15 = load i32, i32* @ENT_INT_SRC2, align 4
  %16 = call i32 @hisi_sas_read32(%struct.hisi_hba* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %18 = load i32, i32* @HGC_AXI_FIFO_ERR_INFO, align 4
  %19 = call i32 @hisi_sas_read32(%struct.hisi_hba* %17, i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @ENT_INT_SRC2_DQ_CFG_ERR_MSK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.device*, %struct.device** %6, align 8
  %26 = call i32 @dev_name(%struct.device* %25)
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %24, %2
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* @ENT_INT_SRC2_CQ_CFG_ERR_MSK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.device*, %struct.device** %6, align 8
  %36 = call i32 @dev_name(%struct.device* %35)
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @panic(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 %37)
  br label %39

39:                                               ; preds = %34, %29
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @ENT_INT_SRC2_AXI_WRONG_INT_MSK, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %49

44:                                               ; preds = %39
  %45 = load %struct.device*, %struct.device** %6, align 8
  %46 = call i32 @dev_name(%struct.device* %45)
  %47 = load i32, i32* %8, align 4
  %48 = call i32 @panic(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %44, %39
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @ENT_INT_SRC2_AXI_OVERLF_INT_MSK, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %49
  %55 = load %struct.device*, %struct.device** %6, align 8
  %56 = call i32 @dev_name(%struct.device* %55)
  %57 = load i32, i32* %8, align 4
  %58 = call i32 @panic(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0), i32 %56, i32 %57)
  br label %59

59:                                               ; preds = %54, %49
  %60 = load %struct.hisi_hba*, %struct.hisi_hba** %5, align 8
  %61 = load i32, i32* @ENT_INT_SRC2, align 4
  %62 = load i32, i32* %7, align 4
  %63 = or i32 %62, 805306368
  %64 = call i32 @hisi_sas_write32(%struct.hisi_hba* %60, i32 %61, i32 %63)
  %65 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %65
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
