; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v1_hw.c_hisi_sas_v1_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v1_hw.c_hisi_sas_v1_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_hba*)* @hisi_sas_v1_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hisi_sas_v1_init(%struct.hisi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hisi_hba*, align 8
  %4 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %3, align 8
  %5 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %6 = call i32 @hw_init_v1_hw(%struct.hisi_hba* %5)
  store i32 %6, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %1
  %10 = load i32, i32* %4, align 4
  store i32 %10, i32* %2, align 4
  br label %26

11:                                               ; preds = %1
  %12 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %13 = call i32 @interrupt_init_v1_hw(%struct.hisi_hba* %12)
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = load i32, i32* %4, align 4
  store i32 %17, i32* %2, align 4
  br label %26

18:                                               ; preds = %11
  %19 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %20 = call i32 @interrupt_openall_v1_hw(%struct.hisi_hba* %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %4, align 4
  store i32 %24, i32* %2, align 4
  br label %26

25:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %23, %16, %9
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local i32 @hw_init_v1_hw(%struct.hisi_hba*) #1

declare dso_local i32 @interrupt_init_v1_hw(%struct.hisi_hba*) #1

declare dso_local i32 @interrupt_openall_v1_hw(%struct.hisi_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
