; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_stex.c_stex_suspend.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_stex.c_stex_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.st_hba = type { i64, i32 }

@st_yel = common dso_local global i64 0, align 8
@st_P3 = common dso_local global i64 0, align 8
@ST_IGNORED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci_dev*, i32)* @stex_suspend to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stex_suspend(%struct.pci_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.st_hba*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %7 = call %struct.st_hba* @pci_get_drvdata(%struct.pci_dev* %6)
  store %struct.st_hba* %7, %struct.st_hba** %5, align 8
  %8 = load %struct.st_hba*, %struct.st_hba** %5, align 8
  %9 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @st_yel, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = load %struct.st_hba*, %struct.st_hba** %5, align 8
  %15 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @st_P3, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %30

19:                                               ; preds = %13, %2
  %20 = load %struct.st_hba*, %struct.st_hba** %5, align 8
  %21 = getelementptr inbounds %struct.st_hba, %struct.st_hba* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %30

24:                                               ; preds = %19
  %25 = load %struct.st_hba*, %struct.st_hba** %5, align 8
  %26 = load %struct.st_hba*, %struct.st_hba** %5, align 8
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @stex_choice_sleep_mic(%struct.st_hba* %26, i32 %27)
  %29 = call i32 @stex_hba_stop(%struct.st_hba* %25, i32 %28)
  br label %34

30:                                               ; preds = %19, %13
  %31 = load %struct.st_hba*, %struct.st_hba** %5, align 8
  %32 = load i32, i32* @ST_IGNORED, align 4
  %33 = call i32 @stex_hba_stop(%struct.st_hba* %31, i32 %32)
  br label %34

34:                                               ; preds = %30, %24
  ret i32 0
}

declare dso_local %struct.st_hba* @pci_get_drvdata(%struct.pci_dev*) #1

declare dso_local i32 @stex_hba_stop(%struct.st_hba*, i32) #1

declare dso_local i32 @stex_choice_sleep_mic(%struct.st_hba*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
