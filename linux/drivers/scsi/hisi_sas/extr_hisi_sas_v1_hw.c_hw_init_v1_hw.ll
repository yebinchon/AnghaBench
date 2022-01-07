; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v1_hw.c_hw_init_v1_hw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/hisi_sas/extr_hisi_sas_v1_hw.c_hw_init_v1_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hisi_hba = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [32 x i8] c"hisi_sas_reset_hw failed, rc=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hisi_hba*)* @hw_init_v1_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hw_init_v1_hw(%struct.hisi_hba* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hisi_hba*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca i32, align 4
  store %struct.hisi_hba* %0, %struct.hisi_hba** %3, align 8
  %6 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %7 = getelementptr inbounds %struct.hisi_hba, %struct.hisi_hba* %6, i32 0, i32 0
  %8 = load %struct.device*, %struct.device** %7, align 8
  store %struct.device* %8, %struct.device** %4, align 8
  %9 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %10 = call i32 @reset_hw_v1_hw(%struct.hisi_hba* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @dev_err(%struct.device* %14, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load i32, i32* %5, align 4
  store i32 %17, i32* %2, align 4
  br label %22

18:                                               ; preds = %1
  %19 = call i32 @msleep(i32 100)
  %20 = load %struct.hisi_hba*, %struct.hisi_hba** %3, align 8
  %21 = call i32 @init_reg_v1_hw(%struct.hisi_hba* %20)
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %18, %13
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local i32 @reset_hw_v1_hw(%struct.hisi_hba*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @init_reg_v1_hw(%struct.hisi_hba*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
