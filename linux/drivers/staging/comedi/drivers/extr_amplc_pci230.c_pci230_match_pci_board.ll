; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_match_pci_board.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_match_pci_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci230_board = type { i64, i64 }
%struct.pci_dev = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pci230_board*, %struct.pci_dev*)* @pci230_match_pci_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pci230_match_pci_board(%struct.pci230_board* %0, %struct.pci_dev* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci230_board*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.pci230_board* %0, %struct.pci230_board** %4, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %5, align 8
  %6 = load %struct.pci230_board*, %struct.pci230_board** %4, align 8
  %7 = getelementptr inbounds %struct.pci230_board, %struct.pci230_board* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %10 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %26

14:                                               ; preds = %2
  %15 = load %struct.pci230_board*, %struct.pci230_board** %4, align 8
  %16 = getelementptr inbounds %struct.pci230_board, %struct.pci230_board* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 1, i32* %3, align 4
  br label %26

20:                                               ; preds = %14
  %21 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %22 = call i32 @pci_resource_len(%struct.pci_dev* %21, i32 3)
  %23 = icmp slt i32 %22, 32
  br i1 %23, label %24, label %25

24:                                               ; preds = %20
  store i32 0, i32* %3, align 4
  br label %26

25:                                               ; preds = %20
  store i32 1, i32* %3, align 4
  br label %26

26:                                               ; preds = %25, %24, %19, %13
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local i32 @pci_resource_len(%struct.pci_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
