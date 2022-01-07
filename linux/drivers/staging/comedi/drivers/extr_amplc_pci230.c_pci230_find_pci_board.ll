; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_find_pci_board.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_find_pci_board.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci230_board = type { i32 }
%struct.pci_dev = type { i32 }

@pci230_boards = common dso_local global %struct.pci230_board* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci230_board* (%struct.pci_dev*)* @pci230_find_pci_board to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci230_board* @pci230_find_pci_board(%struct.pci_dev* %0) #0 {
  %2 = alloca %struct.pci230_board*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %24, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.pci230_board*, %struct.pci230_board** @pci230_boards, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.pci230_board* %7)
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %27

10:                                               ; preds = %5
  %11 = load %struct.pci230_board*, %struct.pci230_board** @pci230_boards, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.pci230_board, %struct.pci230_board* %11, i64 %13
  %15 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %16 = call i64 @pci230_match_pci_board(%struct.pci230_board* %14, %struct.pci_dev* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %10
  %19 = load %struct.pci230_board*, %struct.pci230_board** @pci230_boards, align 8
  %20 = load i32, i32* %4, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.pci230_board, %struct.pci230_board* %19, i64 %21
  store %struct.pci230_board* %22, %struct.pci230_board** %2, align 8
  br label %28

23:                                               ; preds = %10
  br label %24

24:                                               ; preds = %23
  %25 = load i32, i32* %4, align 4
  %26 = add i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %5

27:                                               ; preds = %5
  store %struct.pci230_board* null, %struct.pci230_board** %2, align 8
  br label %28

28:                                               ; preds = %27, %18
  %29 = load %struct.pci230_board*, %struct.pci230_board** %2, align 8
  ret %struct.pci230_board* %29
}

declare dso_local i32 @ARRAY_SIZE(%struct.pci230_board*) #1

declare dso_local i64 @pci230_match_pci_board(%struct.pci230_board*, %struct.pci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
