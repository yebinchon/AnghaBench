; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3120.c_apci3120_addon_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_addi_apci_3120.c_apci3120_addon_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.apci3120_private* }
%struct.apci3120_private = type { i64 }

@APCI3120_ADDON_ADDR_REG = common dso_local global i64 0, align 8
@APCI3120_ADDON_DATA_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32)* @apci3120_addon_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apci3120_addon_write(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.apci3120_private*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 0
  %10 = load %struct.apci3120_private*, %struct.apci3120_private** %9, align 8
  store %struct.apci3120_private* %10, %struct.apci3120_private** %7, align 8
  %11 = load i32, i32* %6, align 4
  %12 = load %struct.apci3120_private*, %struct.apci3120_private** %7, align 8
  %13 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @APCI3120_ADDON_ADDR_REG, align 8
  %16 = add nsw i64 %14, %15
  %17 = call i32 @outw(i32 %11, i64 %16)
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 65535
  %20 = load %struct.apci3120_private*, %struct.apci3120_private** %7, align 8
  %21 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @APCI3120_ADDON_DATA_REG, align 8
  %24 = add nsw i64 %22, %23
  %25 = call i32 @outw(i32 %19, i64 %24)
  %26 = load i32, i32* %6, align 4
  %27 = add i32 %26, 2
  %28 = load %struct.apci3120_private*, %struct.apci3120_private** %7, align 8
  %29 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @APCI3120_ADDON_ADDR_REG, align 8
  %32 = add nsw i64 %30, %31
  %33 = call i32 @outw(i32 %27, i64 %32)
  %34 = load i32, i32* %5, align 4
  %35 = lshr i32 %34, 16
  %36 = and i32 %35, 65535
  %37 = load %struct.apci3120_private*, %struct.apci3120_private** %7, align 8
  %38 = getelementptr inbounds %struct.apci3120_private, %struct.apci3120_private* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @APCI3120_ADDON_DATA_REG, align 8
  %41 = add nsw i64 %39, %40
  %42 = call i32 @outw(i32 %36, i64 %41)
  ret void
}

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
