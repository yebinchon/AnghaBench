; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_core.c_st_nci_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_core.c_st_nci_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32 }
%struct.st_nci_info = type { i32, i32 }

@ST_NCI_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nci_dev*)* @st_nci_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_nci_close(%struct.nci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nci_dev*, align 8
  %4 = alloca %struct.st_nci_info*, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %3, align 8
  %5 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %6 = call %struct.st_nci_info* @nci_get_drvdata(%struct.nci_dev* %5)
  store %struct.st_nci_info* %6, %struct.st_nci_info** %4, align 8
  %7 = load i32, i32* @ST_NCI_RUNNING, align 4
  %8 = load %struct.st_nci_info*, %struct.st_nci_info** %4, align 8
  %9 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %8, i32 0, i32 0
  %10 = call i32 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %22

13:                                               ; preds = %1
  %14 = load %struct.st_nci_info*, %struct.st_nci_info** %4, align 8
  %15 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ndlc_close(i32 %16)
  %18 = load i32, i32* @ST_NCI_RUNNING, align 4
  %19 = load %struct.st_nci_info*, %struct.st_nci_info** %4, align 8
  %20 = getelementptr inbounds %struct.st_nci_info, %struct.st_nci_info* %19, i32 0, i32 0
  %21 = call i32 @clear_bit(i32 %18, i32* %20)
  store i32 0, i32* %2, align 4
  br label %22

22:                                               ; preds = %13, %12
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local %struct.st_nci_info* @nci_get_drvdata(%struct.nci_dev*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @ndlc_close(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
