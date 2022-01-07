; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ai_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ai_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pci230_private*, %struct.pci230_board* }
%struct.pci230_private = type { i64, i64 }
%struct.pci230_board = type { i32 }

@PCI230_ADCDATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.comedi_device*)* @pci230_ai_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @pci230_ai_read(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.pci230_board*, align 8
  %4 = alloca %struct.pci230_private*, align 8
  %5 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %6 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %7 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %6, i32 0, i32 1
  %8 = load %struct.pci230_board*, %struct.pci230_board** %7, align 8
  store %struct.pci230_board* %8, %struct.pci230_board** %3, align 8
  %9 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %10 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %9, i32 0, i32 0
  %11 = load %struct.pci230_private*, %struct.pci230_private** %10, align 8
  store %struct.pci230_private* %11, %struct.pci230_private** %4, align 8
  %12 = load %struct.pci230_private*, %struct.pci230_private** %4, align 8
  %13 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @PCI230_ADCDATA, align 8
  %16 = add nsw i64 %14, %15
  %17 = call zeroext i16 @inw(i64 %16)
  store i16 %17, i16* %5, align 2
  %18 = load %struct.pci230_private*, %struct.pci230_private** %4, align 8
  %19 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %1
  %23 = load i16, i16* %5, align 2
  %24 = zext i16 %23 to i32
  %25 = xor i32 %24, 32768
  %26 = trunc i32 %25 to i16
  store i16 %26, i16* %5, align 2
  br label %27

27:                                               ; preds = %22, %1
  %28 = load %struct.pci230_board*, %struct.pci230_board** %3, align 8
  %29 = getelementptr inbounds %struct.pci230_board, %struct.pci230_board* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 16, %30
  %32 = load i16, i16* %5, align 2
  %33 = zext i16 %32 to i32
  %34 = ashr i32 %33, %31
  %35 = trunc i32 %34 to i16
  store i16 %35, i16* %5, align 2
  %36 = load i16, i16* %5, align 2
  ret i16 %36
}

declare dso_local zeroext i16 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
