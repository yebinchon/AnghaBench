; ModuleID = '/home/carl/AnghaBench/linux/drivers/uio/extr_uio_aec.c_print_board_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/uio/extr_uio_aec.c_print_board_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_dev = type { i32 }
%struct.uio_info = type { i64 }

@.str = private unnamed_addr constant [55 x i8] c"PCI-TC board vendor: %x%x number: %x%x revision: %c%c\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pci_dev*, %struct.uio_info*)* @print_board_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_board_data(%struct.pci_dev* %0, %struct.uio_info* %1) #0 {
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca %struct.uio_info*, align 8
  store %struct.pci_dev* %0, %struct.pci_dev** %3, align 8
  store %struct.uio_info* %1, %struct.uio_info** %4, align 8
  %5 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %6 = getelementptr inbounds %struct.pci_dev, %struct.pci_dev* %5, i32 0, i32 0
  %7 = load %struct.uio_info*, %struct.uio_info** %4, align 8
  %8 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = add nsw i64 %9, 1
  %11 = call i32 @ioread8(i64 %10)
  %12 = load %struct.uio_info*, %struct.uio_info** %4, align 8
  %13 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = add nsw i64 %14, 0
  %16 = call i32 @ioread8(i64 %15)
  %17 = load %struct.uio_info*, %struct.uio_info** %4, align 8
  %18 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %19, 3
  %21 = call i32 @ioread8(i64 %20)
  %22 = load %struct.uio_info*, %struct.uio_info** %4, align 8
  %23 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = add nsw i64 %24, 2
  %26 = call i32 @ioread8(i64 %25)
  %27 = load %struct.uio_info*, %struct.uio_info** %4, align 8
  %28 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add nsw i64 %29, 6
  %31 = call i32 @ioread8(i64 %30)
  %32 = load %struct.uio_info*, %struct.uio_info** %4, align 8
  %33 = getelementptr inbounds %struct.uio_info, %struct.uio_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = add nsw i64 %34, 7
  %36 = call i32 @ioread8(i64 %35)
  %37 = call i32 @dev_info(i32* %6, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %16, i32 %21, i32 %26, i32 %31, i32 %36)
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ioread8(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
