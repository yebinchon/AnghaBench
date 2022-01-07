; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_core.c_st_nci_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_core.c_st_nci_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }
%struct.st_nci_info = type { i32, i32 }

@ST_NCI_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nci_dev*)* @st_nci_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_nci_open(%struct.nci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nci_dev*, align 8
  %4 = alloca %struct.st_nci_info*, align 8
  %5 = alloca i32, align 4
  store %struct.nci_dev* %0, %struct.nci_dev** %3, align 8
  %6 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %7 = call %struct.st_nci_info* @nci_get_drvdata(%struct.nci_dev* %6)
  store %struct.st_nci_info* %7, %struct.st_nci_info** %4, align 8
  %8 = load i32, i32* @ST_NCI_RUNNING, align 4
  %9 = load %struct.st_nci_info*, %struct.st_nci_info** %4, align 8
  %10 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %9, i32 0, i32 0
  %11 = call i64 @test_and_set_bit(i32 %8, i32* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %28

14:                                               ; preds = %1
  %15 = load %struct.st_nci_info*, %struct.st_nci_info** %4, align 8
  %16 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @ndlc_open(i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %14
  %22 = load i32, i32* @ST_NCI_RUNNING, align 4
  %23 = load %struct.st_nci_info*, %struct.st_nci_info** %4, align 8
  %24 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %23, i32 0, i32 0
  %25 = call i32 @clear_bit(i32 %22, i32* %24)
  br label %26

26:                                               ; preds = %21, %14
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %26, %13
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local %struct.st_nci_info* @nci_get_drvdata(%struct.nci_dev*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @ndlc_open(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
