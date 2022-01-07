; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_kill_tasklets.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_main.c_hisi_sas_kill_tasklets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32, %struct.hisi_sas_cq* }
%struct.hisi_sas_cq = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hisi_sas_kill_tasklets(%struct.hisi_hba* %0) #0 {
  %2 = alloca %struct.hisi_hba*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.hisi_sas_cq*, align 8
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
  %13 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %12, i32 0, i32 1
  %14 = load %struct.hisi_sas_cq*, %struct.hisi_sas_cq** %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.hisi_sas_cq, %struct.hisi_sas_cq* %14, i64 %16
  store %struct.hisi_sas_cq* %17, %struct.hisi_sas_cq** %4, align 8
  %18 = load %struct.hisi_sas_cq*, %struct.hisi_sas_cq** %4, align 8
  %19 = getelementptr inbounds %struct.hisi_sas_cq, %struct.hisi_sas_cq* %18, i32 0, i32 0
  %20 = call i32 @tasklet_kill(i32* %19)
  br label %21

21:                                               ; preds = %11
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %5

24:                                               ; preds = %5
  ret void
}

declare dso_local i32 @tasklet_kill(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
