; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ao_mangle_datum.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ao_mangle_datum.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pci230_private*, %struct.pci230_board* }
%struct.pci230_private = type { i64 }
%struct.pci230_board = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.comedi_device*, i16)* @pci230_ao_mangle_datum to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @pci230_ao_mangle_datum(%struct.comedi_device* %0, i16 zeroext %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i16, align 2
  %5 = alloca %struct.pci230_board*, align 8
  %6 = alloca %struct.pci230_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i16 %1, i16* %4, align 2
  %7 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 1
  %9 = load %struct.pci230_board*, %struct.pci230_board** %8, align 8
  store %struct.pci230_board* %9, %struct.pci230_board** %5, align 8
  %10 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %11 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %10, i32 0, i32 0
  %12 = load %struct.pci230_private*, %struct.pci230_private** %11, align 8
  store %struct.pci230_private* %12, %struct.pci230_private** %6, align 8
  %13 = load %struct.pci230_board*, %struct.pci230_board** %5, align 8
  %14 = getelementptr inbounds %struct.pci230_board, %struct.pci230_board* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = sub nsw i32 16, %15
  %17 = load i16, i16* %4, align 2
  %18 = zext i16 %17 to i32
  %19 = shl i32 %18, %16
  %20 = trunc i32 %19 to i16
  store i16 %20, i16* %4, align 2
  %21 = load %struct.pci230_private*, %struct.pci230_private** %6, align 8
  %22 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %2
  %26 = load i16, i16* %4, align 2
  %27 = zext i16 %26 to i32
  %28 = xor i32 %27, 32768
  %29 = trunc i32 %28 to i16
  store i16 %29, i16* %4, align 2
  br label %30

30:                                               ; preds = %25, %2
  %31 = load i16, i16* %4, align 2
  ret i16 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
