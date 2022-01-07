; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_handle_chl_int1_v3_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_handle_chl_int1_v3_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_sas_hw_error = type { i32, i32 }
%struct.hisi_hba = type { i32, i32, %struct.device* }
%struct.device = type { i32 }

@CHL_INT1 = common dso_local global i32 0, align 4
@CHL_INT1_MSK = common dso_local global i32 0, align 4
@port_axi_error = common dso_local global %struct.hisi_sas_hw_error* null, align 8
@.str = private unnamed_addr constant [30 x i8] c"%s error (phy%d 0x%x) found!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*, i32)* @handle_chl_int1_v3_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_chl_int1_v3_hw(%struct.hisi_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.hisi_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.hisi_sas_hw_error*, align 8
  store %struct.hisi_hba* %0, %struct.hisi_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %11 = load i32, i32* %4, align 4
  %12 = load i32, i32* @CHL_INT1, align 4
  %13 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %10, i32 %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @CHL_INT1_MSK, align 4
  %17 = call i32 @hisi_sas_phy_read32(%struct.hisi_hba* %14, i32 %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %19 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %18, i32 0, i32 2
  %20 = load %struct.device*, %struct.device** %19, align 8
  store %struct.device* %20, %struct.device** %7, align 8
  %21 = load i32, i32* %6, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %5, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %2
  br label %69

28:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %60, %28
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** @port_axi_error, align 8
  %32 = call i32 @ARRAY_SIZE(%struct.hisi_sas_hw_error* %31)
  %33 = icmp slt i32 %30, %32
  br i1 %33, label %34, label %63

34:                                               ; preds = %29
  %35 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** @port_axi_error, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.hisi_sas_hw_error, %struct.hisi_sas_hw_error* %35, i64 %37
  store %struct.hisi_sas_hw_error* %38, %struct.hisi_sas_hw_error** %9, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** %9, align 8
  %41 = getelementptr inbounds %struct.hisi_sas_hw_error, %struct.hisi_sas_hw_error* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %39, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %34
  br label %60

46:                                               ; preds = %34
  %47 = load %struct.device*, %struct.device** %7, align 8
  %48 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** %9, align 8
  %49 = getelementptr inbounds %struct.hisi_sas_hw_error, %struct.hisi_sas_hw_error* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @dev_err(%struct.device* %47, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %50, i32 %51, i32 %52)
  %54 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %55 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %58 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %57, i32 0, i32 0
  %59 = call i32 @queue_work(i32 %56, i32* %58)
  br label %60

60:                                               ; preds = %46, %45
  %61 = load i32, i32* %8, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %8, align 4
  br label %29

63:                                               ; preds = %29
  %64 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @CHL_INT1, align 4
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @hisi_sas_phy_write32(%struct.hisi_hba* %64, i32 %65, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %63, %27
  ret void
}

declare dso_local i32 @hisi_sas_phy_read32(%struct.hisi_hba*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.hisi_sas_hw_error*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @hisi_sas_phy_write32(%struct.hisi_hba*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
