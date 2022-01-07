; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcmmio.c_pcmmio_dio_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcmmio.c_pcmmio_dio_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.pcmmio_private* }
%struct.pcmmio_private = type { i32 }

@PCMMIO_PAGE_LOCK_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32, i32)* @pcmmio_dio_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcmmio_dio_read(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcmmio_private*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %12 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %11, i32 0, i32 1
  %13 = load %struct.pcmmio_private*, %struct.pcmmio_private** %12, align 8
  store %struct.pcmmio_private* %13, %struct.pcmmio_private** %7, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %8, align 8
  %17 = load %struct.pcmmio_private*, %struct.pcmmio_private** %7, align 8
  %18 = getelementptr inbounds %struct.pcmmio_private, %struct.pcmmio_private* %17, i32 0, i32 0
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @spin_lock_irqsave(i32* %18, i64 %19)
  %21 = load i32, i32* %5, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %3
  %24 = load i64, i64* %8, align 8
  %25 = load i32, i32* %6, align 4
  %26 = add nsw i32 %25, 0
  %27 = call i64 @PCMMIO_PORT_REG(i32 %26)
  %28 = add i64 %24, %27
  %29 = call i32 @inb(i64 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i64, i64* %8, align 8
  %31 = load i32, i32* %6, align 4
  %32 = add nsw i32 %31, 1
  %33 = call i64 @PCMMIO_PORT_REG(i32 %32)
  %34 = add i64 %30, %33
  %35 = call i32 @inb(i64 %34)
  %36 = shl i32 %35, 8
  %37 = load i32, i32* %10, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %10, align 4
  %39 = load i64, i64* %8, align 8
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, 2
  %42 = call i64 @PCMMIO_PORT_REG(i32 %41)
  %43 = add i64 %39, %42
  %44 = call i32 @inb(i64 %43)
  %45 = shl i32 %44, 16
  %46 = load i32, i32* %10, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %10, align 4
  br label %73

48:                                               ; preds = %3
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @PCMMIO_PAGE(i32 %49)
  %51 = load i64, i64* %8, align 8
  %52 = load i64, i64* @PCMMIO_PAGE_LOCK_REG, align 8
  %53 = add i64 %51, %52
  %54 = call i32 @outb(i32 %50, i64 %53)
  %55 = load i64, i64* %8, align 8
  %56 = call i64 @PCMMIO_PAGE_REG(i32 0)
  %57 = add i64 %55, %56
  %58 = call i32 @inb(i64 %57)
  store i32 %58, i32* %10, align 4
  %59 = load i64, i64* %8, align 8
  %60 = call i64 @PCMMIO_PAGE_REG(i32 1)
  %61 = add i64 %59, %60
  %62 = call i32 @inb(i64 %61)
  %63 = shl i32 %62, 8
  %64 = load i32, i32* %10, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %10, align 4
  %66 = load i64, i64* %8, align 8
  %67 = call i64 @PCMMIO_PAGE_REG(i32 2)
  %68 = add i64 %66, %67
  %69 = call i32 @inb(i64 %68)
  %70 = shl i32 %69, 16
  %71 = load i32, i32* %10, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %10, align 4
  br label %73

73:                                               ; preds = %48, %23
  %74 = load %struct.pcmmio_private*, %struct.pcmmio_private** %7, align 8
  %75 = getelementptr inbounds %struct.pcmmio_private, %struct.pcmmio_private* %74, i32 0, i32 0
  %76 = load i64, i64* %9, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  %78 = load i32, i32* %10, align 4
  ret i32 %78
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i64 @PCMMIO_PORT_REG(i32) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @PCMMIO_PAGE(i32) #1

declare dso_local i64 @PCMMIO_PAGE_REG(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
