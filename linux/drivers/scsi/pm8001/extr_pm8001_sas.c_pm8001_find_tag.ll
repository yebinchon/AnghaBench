; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_find_tag.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/pm8001/extr_pm8001_sas.c_pm8001_find_tag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sas_task = type { %struct.pm8001_ccb_info* }
%struct.pm8001_ccb_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sas_task*, i32*)* @pm8001_find_tag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm8001_find_tag(%struct.sas_task* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sas_task*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.pm8001_ccb_info*, align 8
  store %struct.sas_task* %0, %struct.sas_task** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %8 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %7, i32 0, i32 0
  %9 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %8, align 8
  %10 = icmp ne %struct.pm8001_ccb_info* %9, null
  br i1 %10, label %11, label %19

11:                                               ; preds = %2
  %12 = load %struct.sas_task*, %struct.sas_task** %4, align 8
  %13 = getelementptr inbounds %struct.sas_task, %struct.sas_task* %12, i32 0, i32 0
  %14 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %13, align 8
  store %struct.pm8001_ccb_info* %14, %struct.pm8001_ccb_info** %6, align 8
  %15 = load %struct.pm8001_ccb_info*, %struct.pm8001_ccb_info** %6, align 8
  %16 = getelementptr inbounds %struct.pm8001_ccb_info, %struct.pm8001_ccb_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %5, align 8
  store i32 %17, i32* %18, align 4
  store i32 1, i32* %3, align 4
  br label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %20

20:                                               ; preds = %19, %11
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
