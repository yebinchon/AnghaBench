; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_config_intr_coal_v3_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v3_hw.c_config_intr_coal_v3_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32, i32 }

@INT_COAL_EN = common dso_local global i32 0, align 4
@OQ_INT_COAL_TIME = common dso_local global i32 0, align 4
@OQ_INT_COAL_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hisi_hba*)* @config_intr_coal_v3_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @config_intr_coal_v3_hw(%struct.hisi_hba* %0) #0 {
  %2 = alloca %struct.hisi_hba*, align 8
  store %struct.hisi_hba* %0, %struct.hisi_hba** %2, align 8
  %3 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %4 = call i32 @hisi_sas_stop_phys(%struct.hisi_hba* %3)
  %5 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %6 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %11 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %9, %1
  %15 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %16 = load i32, i32* @INT_COAL_EN, align 4
  %17 = call i32 @hisi_sas_write32(%struct.hisi_hba* %15, i32 %16, i32 1)
  %18 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %19 = load i32, i32* @OQ_INT_COAL_TIME, align 4
  %20 = call i32 @hisi_sas_write32(%struct.hisi_hba* %18, i32 %19, i32 1)
  %21 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %22 = load i32, i32* @OQ_INT_COAL_CNT, align 4
  %23 = call i32 @hisi_sas_write32(%struct.hisi_hba* %21, i32 %22, i32 1)
  br label %40

24:                                               ; preds = %9
  %25 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %26 = load i32, i32* @INT_COAL_EN, align 4
  %27 = call i32 @hisi_sas_write32(%struct.hisi_hba* %25, i32 %26, i32 3)
  %28 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %29 = load i32, i32* @OQ_INT_COAL_TIME, align 4
  %30 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %31 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @hisi_sas_write32(%struct.hisi_hba* %28, i32 %29, i32 %32)
  %34 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %35 = load i32, i32* @OQ_INT_COAL_CNT, align 4
  %36 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %37 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @hisi_sas_write32(%struct.hisi_hba* %34, i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %24, %14
  %41 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %42 = call i32 @phys_init_v3_hw(%struct.hisi_hba* %41)
  ret void
}

declare dso_local i32 @hisi_sas_stop_phys(%struct.hisi_hba*) #1

declare dso_local i32 @hisi_sas_write32(%struct.hisi_hba*, i32, i32) #1

declare dso_local i32 @phys_init_v3_hw(%struct.hisi_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
