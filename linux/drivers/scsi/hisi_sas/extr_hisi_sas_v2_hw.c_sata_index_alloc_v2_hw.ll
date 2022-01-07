; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_sata_index_alloc_v2_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v2_hw.c_sata_index_alloc_v2_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i8*, %struct.device* }
%struct.device = type { i32 }

@HISI_MAX_SATA_SUPPORT_V2_HW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"alloc sata index failed, index=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_hba*, i32*)* @sata_index_alloc_v2_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sata_index_alloc_v2_hw(%struct.hisi_hba* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hisi_hba*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i8*, align 8
  store %struct.hisi_hba* %0, %struct.hisi_hba** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %10 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %9, i32 0, i32 1
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %7, align 8
  %12 = load %struct.hisi_hba*, %struct.hisi_hba** %4, align 8
  %13 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %12, i32 0, i32 0
  %14 = load i8*, i8** %13, align 8
  store i8* %14, i8** %8, align 8
  %15 = load i8*, i8** %8, align 8
  %16 = load i32, i32* @HISI_MAX_SATA_SUPPORT_V2_HW, align 4
  %17 = call i32 @find_first_zero_bit(i8* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* @HISI_MAX_SATA_SUPPORT_V2_HW, align 4
  %20 = icmp uge i32 %18, %19
  br i1 %20, label %21, label %25

21:                                               ; preds = %2
  %22 = load %struct.device*, %struct.device** %7, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @dev_warn(%struct.device* %22, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %23)
  store i32 0, i32* %3, align 4
  br label %31

25:                                               ; preds = %2
  %26 = load i32, i32* %6, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = call i32 @set_bit(i32 %26, i8* %27)
  %29 = load i32, i32* %6, align 4
  %30 = load i32*, i32** %5, align 8
  store i32 %29, i32* %30, align 4
  store i32 1, i32* %3, align 4
  br label %31

31:                                               ; preds = %25, %21
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @find_first_zero_bit(i8*, i32) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

declare dso_local i32 @set_bit(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
