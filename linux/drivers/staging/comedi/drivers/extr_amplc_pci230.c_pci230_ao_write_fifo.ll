; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ao_write_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_ao_write_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pci230_private* }
%struct.pci230_private = type { i64 }

@PCI230P2_DACDATA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i16, i32)* @pci230_ao_write_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci230_ao_write_fifo(%struct.comedi_device* %0, i16 zeroext %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  %7 = alloca %struct.pci230_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i16 %1, i16* %5, align 2
  store i32 %2, i32* %6, align 4
  %8 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 0
  %10 = load %struct.pci230_private*, %struct.pci230_private** %9, align 8
  store %struct.pci230_private* %10, %struct.pci230_private** %7, align 8
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = load i16, i16* %5, align 2
  %13 = call i32 @pci230_ao_mangle_datum(%struct.comedi_device* %11, i16 zeroext %12)
  %14 = load %struct.pci230_private*, %struct.pci230_private** %7, align 8
  %15 = getelementptr inbounds %struct.pci230_private, %struct.pci230_private* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @PCI230P2_DACDATA, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @outw(i32 %13, i64 %18)
  ret void
}

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @pci230_ao_mangle_datum(%struct.comedi_device*, i16 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
