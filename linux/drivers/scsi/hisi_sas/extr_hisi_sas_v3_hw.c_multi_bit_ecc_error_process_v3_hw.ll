; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_multi_bit_ecc_error_process_v3_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_multi_bit_ecc_error_process_v3_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_sas_hw_error = type { i32, i32, i32, i32, i32 }
%struct.hisi_hba = type { i32, i32, %struct.device* }
%struct.device = type { i32 }

@multi_bit_ecc_errors = common dso_local global %struct.hisi_sas_hw_error* null, align 8
@.str = private unnamed_addr constant [37 x i8] c"%s (0x%x) found: mem addr is 0x%08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*, i32)* @multi_bit_ecc_error_process_v3_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @multi_bit_ecc_error_process_v3_hw(%struct.hisi_hba* %0, i32 %1) #0 {
  %3 = alloca %struct.hisi_hba*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.hisi_sas_hw_error*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %10 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %9, i32 0, i32 2
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %5, align 8
  store i32 0, i32* %8, align 4
  br label %12

12:                                               ; preds = %58, %2
  %13 = load i32, i32* %8, align 4
  %14 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** @multi_bit_ecc_errors, align 8
  %15 = call i32 @ARRAY_SIZE(%struct.hisi_sas_hw_error* %14)
  %16 = icmp slt i32 %13, %15
  br i1 %16, label %17, label %61

17:                                               ; preds = %12
  %18 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** @multi_bit_ecc_errors, align 8
  %19 = load i32, i32* %8, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.hisi_sas_hw_error, %struct.hisi_sas_hw_error* %18, i64 %20
  store %struct.hisi_sas_hw_error* %21, %struct.hisi_sas_hw_error** %6, align 8
  %22 = load i32, i32* %4, align 4
  %23 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** %6, align 8
  %24 = getelementptr inbounds %struct.hisi_sas_hw_error, %struct.hisi_sas_hw_error* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %22, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %57

28:                                               ; preds = %17
  %29 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %30 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** %6, align 8
  %31 = getelementptr inbounds %struct.hisi_sas_hw_error, %struct.hisi_sas_hw_error* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @hisi_sas_read32(%struct.hisi_hba* %29, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** %6, align 8
  %35 = getelementptr inbounds %struct.hisi_sas_hw_error, %struct.hisi_sas_hw_error* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %7, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %7, align 4
  %39 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** %6, align 8
  %40 = getelementptr inbounds %struct.hisi_sas_hw_error, %struct.hisi_sas_hw_error* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* %7, align 4
  %43 = ashr i32 %42, %41
  store i32 %43, i32* %7, align 4
  %44 = load %struct.device*, %struct.device** %5, align 8
  %45 = load %struct.hisi_sas_hw_error*, %struct.hisi_sas_hw_error** %6, align 8
  %46 = getelementptr inbounds %struct.hisi_sas_hw_error, %struct.hisi_sas_hw_error* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @dev_err(%struct.device* %44, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %47, i32 %48, i32 %49)
  %51 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %52 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %55 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %54, i32 0, i32 0
  %56 = call i32 @queue_work(i32 %53, i32* %55)
  br label %57

57:                                               ; preds = %28, %17
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %8, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %8, align 4
  br label %12

61:                                               ; preds = %12
  ret void
}

declare dso_local i32 @ARRAY_SIZE(%struct.hisi_sas_hw_error*) #1

declare dso_local i32 @hisi_sas_read32(%struct.hisi_hba*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32, i32, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
