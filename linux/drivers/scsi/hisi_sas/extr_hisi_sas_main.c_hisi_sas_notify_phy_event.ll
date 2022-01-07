; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_notify_phy_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_notify_phy_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_sas_phy = type { i32*, %struct.hisi_hba* }
%struct.hisi_hba = type { i32 }

@HISI_PHYES_NUM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hisi_sas_notify_phy_event(%struct.hisi_sas_phy* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hisi_sas_phy*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hisi_hba*, align 8
  store %struct.hisi_sas_phy* %0, %struct.hisi_sas_phy** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %4, align 8
  %8 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %7, i32 0, i32 1
  %9 = load %struct.hisi_hba*, %struct.hisi_hba** %8, align 8
  store %struct.hisi_hba* %9, %struct.hisi_hba** %6, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @HISI_PHYES_NUM, align 4
  %12 = icmp uge i32 %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i64 @WARN_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %28

17:                                               ; preds = %2
  %18 = load %struct.hisi_hba*, %struct.hisi_hba** %6, align 8
  %19 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.hisi_sas_phy*, %struct.hisi_sas_phy** %4, align 8
  %22 = getelementptr inbounds %struct.hisi_sas_phy, %struct.hisi_sas_phy* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = zext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = call i32 @queue_work(i32 %20, i32* %26)
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %17, %16
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
