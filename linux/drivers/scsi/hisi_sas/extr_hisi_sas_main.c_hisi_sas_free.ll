; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32, i64, %struct.hisi_sas_phy* }
%struct.hisi_sas_phy = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hisi_sas_free(%struct.hisi_hba* %0) #0 {
  %2 = alloca %struct.hisi_hba*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hisi_sas_phy*, align 8
  store %struct.hisi_hba* %0, %struct.hisi_hba** %2, align 8
  store i32 0, i32* %3, align 4
  br label %5

5:                                                ; preds = %21, %1
  %6 = load i32, i32* %3, align 4
  %7 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %8 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %24

11:                                               ; preds = %5
  %12 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %13 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %12, i32 0, i32 2
  %14 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %14, i64 %16
  store %struct.hisi_sas_phy* %17, %struct.hisi_sas_phy** %4, align 8
  %18 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %4, align 8
  %19 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %18, i32 0, i32 0
  %20 = call i32 @del_timer_sync(i32* %19)
  br label %21

21:                                               ; preds = %11
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %5

24:                                               ; preds = %5
  %25 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %26 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.hisi_hba*, %struct.hisi_hba** %2, align 8
  %31 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i32 @destroy_workqueue(i64 %32)
  br label %34

34:                                               ; preds = %29, %24
  ret void
}

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @destroy_workqueue(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
