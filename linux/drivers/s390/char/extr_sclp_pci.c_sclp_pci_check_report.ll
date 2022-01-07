; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_pci.c_sclp_pci_check_report.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_pci.c_sclp_pci_check_report.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zpci_report_error_header = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zpci_report_error_header*)* @sclp_pci_check_report to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sclp_pci_check_report(%struct.zpci_report_error_header* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zpci_report_error_header*, align 8
  store %struct.zpci_report_error_header* %0, %struct.zpci_report_error_header** %3, align 8
  %4 = load %struct.zpci_report_error_header*, %struct.zpci_report_error_header** %3, align 8
  %5 = getelementptr inbounds %struct.zpci_report_error_header, %struct.zpci_report_error_header* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp ne i32 %6, 1
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load i32, i32* @EINVAL, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %2, align 4
  br label %32

11:                                               ; preds = %1
  %12 = load %struct.zpci_report_error_header*, %struct.zpci_report_error_header** %3, align 8
  %13 = getelementptr inbounds %struct.zpci_report_error_header, %struct.zpci_report_error_header* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %16 [
    i32 128, label %15
    i32 129, label %15
    i32 130, label %15
  ]

15:                                               ; preds = %11, %11, %11
  br label %19

16:                                               ; preds = %11
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %32

19:                                               ; preds = %15
  %20 = load %struct.zpci_report_error_header*, %struct.zpci_report_error_header** %3, align 8
  %21 = getelementptr inbounds %struct.zpci_report_error_header, %struct.zpci_report_error_header* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = sext i32 %22 to i64
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = sext i32 %24 to i64
  %26 = sub i64 %25, 4
  %27 = icmp ugt i64 %23, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %19
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %32

31:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %28, %16, %8
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
