; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcmuio.c_pcmuio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcmuio.c_pcmuio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pcmuio_private* }
%struct.pcmuio_private = type { %struct.pcmuio_asic* }
%struct.pcmuio_asic = type { i32 }

@PCMUIO_PAGE_LOCK_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32, i32, i32)* @pcmuio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmuio_read(%struct.comedi_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pcmuio_private*, align 8
  %10 = alloca %struct.pcmuio_asic*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %14 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 0
  %16 = load %struct.pcmuio_private*, %struct.pcmuio_private** %15, align 8
  store %struct.pcmuio_private* %16, %struct.pcmuio_private** %9, align 8
  %17 = load %struct.pcmuio_private*, %struct.pcmuio_private** %9, align 8
  %18 = getelementptr inbounds %struct.pcmuio_private, %struct.pcmuio_private* %17, i32 0, i32 0
  %19 = load %struct.pcmuio_asic*, %struct.pcmuio_asic** %18, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.pcmuio_asic, %struct.pcmuio_asic* %19, i64 %21
  store %struct.pcmuio_asic* %22, %struct.pcmuio_asic** %10, align 8
  %23 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i64 @pcmuio_asic_iobase(%struct.comedi_device* %23, i32 %24)
  store i64 %25, i64* %11, align 8
  %26 = load %struct.pcmuio_asic*, %struct.pcmuio_asic** %10, align 8
  %27 = getelementptr inbounds %struct.pcmuio_asic, %struct.pcmuio_asic* %26, i32 0, i32 0
  %28 = load i64, i64* %12, align 8
  %29 = call i32 @spin_lock_irqsave(i32* %27, i64 %28)
  %30 = load i32, i32* %7, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %57

32:                                               ; preds = %4
  %33 = load i64, i64* %11, align 8
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 0
  %36 = call i64 @PCMUIO_PORT_REG(i32 %35)
  %37 = add i64 %33, %36
  %38 = call i32 @inb(i64 %37)
  store i32 %38, i32* %13, align 4
  %39 = load i64, i64* %11, align 8
  %40 = load i32, i32* %8, align 4
  %41 = add nsw i32 %40, 1
  %42 = call i64 @PCMUIO_PORT_REG(i32 %41)
  %43 = add i64 %39, %42
  %44 = call i32 @inb(i64 %43)
  %45 = shl i32 %44, 8
  %46 = load i32, i32* %13, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %13, align 4
  %48 = load i64, i64* %11, align 8
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 2
  %51 = call i64 @PCMUIO_PORT_REG(i32 %50)
  %52 = add i64 %48, %51
  %53 = call i32 @inb(i64 %52)
  %54 = shl i32 %53, 16
  %55 = load i32, i32* %13, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %13, align 4
  br label %82

57:                                               ; preds = %4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @PCMUIO_PAGE(i32 %58)
  %60 = load i64, i64* %11, align 8
  %61 = load i64, i64* @PCMUIO_PAGE_LOCK_REG, align 8
  %62 = add i64 %60, %61
  %63 = call i32 @outb(i32 %59, i64 %62)
  %64 = load i64, i64* %11, align 8
  %65 = call i64 @PCMUIO_PAGE_REG(i32 0)
  %66 = add i64 %64, %65
  %67 = call i32 @inb(i64 %66)
  store i32 %67, i32* %13, align 4
  %68 = load i64, i64* %11, align 8
  %69 = call i64 @PCMUIO_PAGE_REG(i32 1)
  %70 = add i64 %68, %69
  %71 = call i32 @inb(i64 %70)
  %72 = shl i32 %71, 8
  %73 = load i32, i32* %13, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %13, align 4
  %75 = load i64, i64* %11, align 8
  %76 = call i64 @PCMUIO_PAGE_REG(i32 2)
  %77 = add i64 %75, %76
  %78 = call i32 @inb(i64 %77)
  %79 = shl i32 %78, 16
  %80 = load i32, i32* %13, align 4
  %81 = or i32 %80, %79
  store i32 %81, i32* %13, align 4
  br label %82

82:                                               ; preds = %57, %32
  %83 = load %struct.pcmuio_asic*, %struct.pcmuio_asic** %10, align 8
  %84 = getelementptr inbounds %struct.pcmuio_asic, %struct.pcmuio_asic* %83, i32 0, i32 0
  %85 = load i64, i64* %12, align 8
  %86 = call i32 @spin_unlock_irqrestore(i32* %84, i64 %85)
  %87 = load i32, i32* %13, align 4
  ret i32 %87
}

declare dso_local i64 @pcmuio_asic_iobase(%struct.comedi_device*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i64 @PCMUIO_PORT_REG(i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @PCMUIO_PAGE(i32) #1

declare dso_local i64 @PCMUIO_PAGE_REG(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
