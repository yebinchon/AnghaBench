; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci224.c_pci224_ao_munge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci224.c_pci224_ao_munge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pci224_board* }
%struct.pci224_board = type { i32, i32* }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i32* }

@PCI224_DACCON_POLAR_MASK = common dso_local global i32 0, align 4
@PCI224_DACCON_POLAR_UNI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i8*, i32, i32)* @pci224_ao_munge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci224_ao_munge(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pci224_board*, align 8
  %12 = alloca %struct.comedi_cmd*, align 8
  %13 = alloca i16*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 0
  %20 = load %struct.pci224_board*, %struct.pci224_board** %19, align 8
  store %struct.pci224_board* %20, %struct.pci224_board** %11, align 8
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %22 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.comedi_cmd* %24, %struct.comedi_cmd** %12, align 8
  %25 = load i8*, i8** %8, align 8
  %26 = bitcast i8* %25 to i16*
  store i16* %26, i16** %13, align 8
  %27 = load i32, i32* %9, align 4
  %28 = zext i32 %27 to i64
  %29 = udiv i64 %28, 2
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %14, align 4
  %31 = load %struct.pci224_board*, %struct.pci224_board** %11, align 8
  %32 = getelementptr inbounds %struct.pci224_board, %struct.pci224_board* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = sub nsw i32 16, %33
  store i32 %34, i32* %16, align 4
  %35 = load %struct.pci224_board*, %struct.pci224_board** %11, align 8
  %36 = getelementptr inbounds %struct.pci224_board, %struct.pci224_board* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load %struct.comedi_cmd*, %struct.comedi_cmd** %12, align 8
  %39 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = call i64 @CR_RANGE(i32 %42)
  %44 = getelementptr inbounds i32, i32* %37, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @PCI224_DACCON_POLAR_MASK, align 4
  %47 = and i32 %45, %46
  %48 = load i32, i32* @PCI224_DACCON_POLAR_UNI, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %5
  store i32 0, i32* %15, align 4
  br label %52

51:                                               ; preds = %5
  store i32 32768, i32* %15, align 4
  br label %52

52:                                               ; preds = %51, %50
  store i32 0, i32* %17, align 4
  br label %53

53:                                               ; preds = %73, %52
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* %14, align 4
  %56 = icmp ult i32 %54, %55
  br i1 %56, label %57, label %76

57:                                               ; preds = %53
  %58 = load i16*, i16** %13, align 8
  %59 = load i32, i32* %17, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i16, i16* %58, i64 %60
  %62 = load i16, i16* %61, align 2
  %63 = zext i16 %62 to i32
  %64 = load i32, i32* %16, align 4
  %65 = shl i32 %63, %64
  %66 = load i32, i32* %15, align 4
  %67 = sub i32 %65, %66
  %68 = trunc i32 %67 to i16
  %69 = load i16*, i16** %13, align 8
  %70 = load i32, i32* %17, align 4
  %71 = zext i32 %70 to i64
  %72 = getelementptr inbounds i16, i16* %69, i64 %71
  store i16 %68, i16* %72, align 2
  br label %73

73:                                               ; preds = %57
  %74 = load i32, i32* %17, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %17, align 4
  br label %53

76:                                               ; preds = %53
  ret void
}

declare dso_local i64 @CR_RANGE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
