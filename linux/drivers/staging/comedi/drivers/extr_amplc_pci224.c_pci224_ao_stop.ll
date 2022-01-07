; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci224.c_pci224_ao_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci224.c_pci224_ao_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.pci224_private* }
%struct.pci224_private = type { i64, i32, i32, i64, i64, i64, i32 }
%struct.comedi_subdevice = type { i32 }

@AO_CMD_STARTED = common dso_local global i32 0, align 4
@PCI224_INT_SCE = common dso_local global i64 0, align 8
@THISCPU = common dso_local global i64 0, align 8
@PCI224_DACCEN = common dso_local global i64 0, align 8
@PCI224_DACCON_TRIG_SW = common dso_local global i32 0, align 4
@PCI224_DACCON_FIFOINTR_EMPTY = common dso_local global i32 0, align 4
@PCI224_DACCON_TRIG_MASK = common dso_local global i32 0, align 4
@PCI224_DACCON_FIFOINTR_MASK = common dso_local global i32 0, align 4
@PCI224_DACCON_FIFORESET = common dso_local global i32 0, align 4
@PCI224_DACCON = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci224_ao_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci224_ao_stop(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.pci224_private*, align 8
  %6 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 1
  %9 = load %struct.pci224_private*, %struct.pci224_private** %8, align 8
  store %struct.pci224_private* %9, %struct.pci224_private** %5, align 8
  %10 = load i32, i32* @AO_CMD_STARTED, align 4
  %11 = load %struct.pci224_private*, %struct.pci224_private** %5, align 8
  %12 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %11, i32 0, i32 6
  %13 = call i32 @test_and_clear_bit(i32 %10, i32* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %85

16:                                               ; preds = %2
  %17 = load %struct.pci224_private*, %struct.pci224_private** %5, align 8
  %18 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %17, i32 0, i32 2
  %19 = load i64, i64* %6, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load %struct.pci224_private*, %struct.pci224_private** %5, align 8
  %22 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %21, i32 0, i32 5
  store i64 0, i64* %22, align 8
  %23 = load %struct.pci224_private*, %struct.pci224_private** %5, align 8
  %24 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @PCI224_INT_SCE, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @outb(i32 0, i64 %27)
  br label %29

29:                                               ; preds = %42, %16
  %30 = load %struct.pci224_private*, %struct.pci224_private** %5, align 8
  %31 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %29
  %35 = load %struct.pci224_private*, %struct.pci224_private** %5, align 8
  %36 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @THISCPU, align 8
  %39 = icmp ne i64 %37, %38
  br label %40

40:                                               ; preds = %34, %29
  %41 = phi i1 [ false, %29 ], [ %39, %34 ]
  br i1 %41, label %42, label %51

42:                                               ; preds = %40
  %43 = load %struct.pci224_private*, %struct.pci224_private** %5, align 8
  %44 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %43, i32 0, i32 2
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load %struct.pci224_private*, %struct.pci224_private** %5, align 8
  %48 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %47, i32 0, i32 2
  %49 = load i64, i64* %6, align 8
  %50 = call i32 @spin_lock_irqsave(i32* %48, i64 %49)
  br label %29

51:                                               ; preds = %40
  %52 = load %struct.pci224_private*, %struct.pci224_private** %5, align 8
  %53 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %52, i32 0, i32 2
  %54 = load i64, i64* %6, align 8
  %55 = call i32 @spin_unlock_irqrestore(i32* %53, i64 %54)
  %56 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %57 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @PCI224_DACCEN, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @outw(i32 0, i64 %60)
  %62 = load %struct.pci224_private*, %struct.pci224_private** %5, align 8
  %63 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @PCI224_DACCON_TRIG_SW, align 4
  %66 = load i32, i32* @PCI224_DACCON_FIFOINTR_EMPTY, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @PCI224_DACCON_TRIG_MASK, align 4
  %69 = load i32, i32* @PCI224_DACCON_FIFOINTR_MASK, align 4
  %70 = or i32 %68, %69
  %71 = call i32 @COMBINE(i32 %64, i32 %67, i32 %70)
  %72 = load %struct.pci224_private*, %struct.pci224_private** %5, align 8
  %73 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load %struct.pci224_private*, %struct.pci224_private** %5, align 8
  %75 = getelementptr inbounds %struct.pci224_private, %struct.pci224_private* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 8
  %77 = load i32, i32* @PCI224_DACCON_FIFORESET, align 4
  %78 = or i32 %76, %77
  %79 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %80 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @PCI224_DACCON, align 8
  %83 = add nsw i64 %81, %82
  %84 = call i32 @outw(i32 %78, i64 %83)
  br label %85

85:                                               ; preds = %51, %15
  ret void
}

declare dso_local i32 @test_and_clear_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @COMBINE(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
