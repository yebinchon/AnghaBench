; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci224.c_pci224_ao_set_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci224.c_pci224_ao_set_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.pci224_private*, %struct.pci224_board* }
%struct.pci224_private = type { i16 }
%struct.pci224_board = type { i32, i32* }

@PCI224_DACCEN = common dso_local global i64 0, align 8
@PCI224_DACCON_POLAR_MASK = common dso_local global i32 0, align 4
@PCI224_DACCON_VREF_MASK = common dso_local global i32 0, align 4
@PCI224_DACCON_FIFORESET = common dso_local global i16 0, align 2
@PCI224_DACCON = common dso_local global i64 0, align 8
@PCI224_DACCON_POLAR_BI = common dso_local global i32 0, align 4
@PCI224_DACDATA = common dso_local global i64 0, align 8
@PCI224_SOFTTRIG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32, i32)* @pci224_ao_set_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci224_ao_set_data(%struct.comedi_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci224_board*, align 8
  %10 = alloca %struct.pci224_private*, align 8
  %11 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 2
  %14 = load %struct.pci224_board*, %struct.pci224_board** %13, align 8
  store %struct.pci224_board* %14, %struct.pci224_board** %9, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 1
  %17 = load %struct.pci224_private*, %struct.pci224_private** %16, align 8
  store %struct.pci224_private* %17, %struct.pci224_private** %10, align 8
  %18 = load i32, i32* %6, align 4
  %19 = shl i32 1, %18
  %20 = trunc i32 %19 to i16
  %21 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PCI224_DACCEN, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @outw(i16 zeroext %20, i64 %25)
  %27 = load %struct.pci224_private*, %struct.pci224_private** %10, align 8
  %28 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %27, i32 0, i32 0
  %29 = load i16, i16* %28, align 2
  %30 = load %struct.pci224_board*, %struct.pci224_board** %9, align 8
  %31 = getelementptr inbounds %struct.pci224_board, %struct.pci224_board* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i32, i32* %7, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %32, i64 %34
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @PCI224_DACCON_POLAR_MASK, align 4
  %38 = load i32, i32* @PCI224_DACCON_VREF_MASK, align 4
  %39 = or i32 %37, %38
  %40 = call zeroext i16 @COMBINE(i16 zeroext %29, i32 %36, i32 %39)
  %41 = load %struct.pci224_private*, %struct.pci224_private** %10, align 8
  %42 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %41, i32 0, i32 0
  store i16 %40, i16* %42, align 2
  %43 = load %struct.pci224_private*, %struct.pci224_private** %10, align 8
  %44 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %43, i32 0, i32 0
  %45 = load i16, i16* %44, align 2
  %46 = zext i16 %45 to i32
  %47 = load i16, i16* @PCI224_DACCON_FIFORESET, align 2
  %48 = zext i16 %47 to i32
  %49 = or i32 %46, %48
  %50 = trunc i32 %49 to i16
  %51 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %52 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @PCI224_DACCON, align 8
  %55 = add nsw i64 %53, %54
  %56 = call i32 @outw(i16 zeroext %50, i64 %55)
  %57 = load i32, i32* %8, align 4
  %58 = trunc i32 %57 to i16
  %59 = zext i16 %58 to i32
  %60 = load %struct.pci224_board*, %struct.pci224_board** %9, align 8
  %61 = getelementptr inbounds %struct.pci224_board, %struct.pci224_board* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sub nsw i32 16, %62
  %64 = shl i32 %59, %63
  %65 = trunc i32 %64 to i16
  store i16 %65, i16* %11, align 2
  %66 = load %struct.pci224_private*, %struct.pci224_private** %10, align 8
  %67 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %66, i32 0, i32 0
  %68 = load i16, i16* %67, align 2
  %69 = zext i16 %68 to i32
  %70 = load i32, i32* @PCI224_DACCON_POLAR_MASK, align 4
  %71 = and i32 %69, %70
  %72 = load i32, i32* @PCI224_DACCON_POLAR_BI, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %4
  %75 = load i16, i16* %11, align 2
  %76 = zext i16 %75 to i32
  %77 = xor i32 %76, 32768
  %78 = trunc i32 %77 to i16
  store i16 %78, i16* %11, align 2
  br label %79

79:                                               ; preds = %74, %4
  %80 = load i16, i16* %11, align 2
  %81 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %82 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @PCI224_DACDATA, align 8
  %85 = add nsw i64 %83, %84
  %86 = call i32 @outw(i16 zeroext %80, i64 %85)
  %87 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %88 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @PCI224_SOFTTRIG, align 8
  %91 = add nsw i64 %89, %90
  %92 = call i32 @inw(i64 %91)
  ret void
}

declare dso_local i32 @outw(i16 zeroext, i64) #1

declare dso_local zeroext i16 @COMBINE(i16 zeroext, i32, i32) #1

declare dso_local i32 @inw(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
