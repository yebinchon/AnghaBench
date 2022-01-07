; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcmmio.c_pcmmio_dio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcmmio.c_pcmmio_dio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.pcmmio_private* }
%struct.pcmmio_private = type { i32 }

@PCMMIO_PAGE_LOCK_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32, i32)* @pcmmio_dio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcmmio_dio_write(%struct.comedi_device* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.comedi_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pcmmio_private*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 1
  %14 = load %struct.pcmmio_private*, %struct.pcmmio_private** %13, align 8
  store %struct.pcmmio_private* %14, %struct.pcmmio_private** %9, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %5, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %10, align 8
  %18 = load %struct.pcmmio_private*, %struct.pcmmio_private** %9, align 8
  %19 = getelementptr inbounds %struct.pcmmio_private, %struct.pcmmio_private* %18, i32 0, i32 0
  %20 = load i64, i64* %11, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %51

24:                                               ; preds = %4
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, 255
  %27 = load i64, i64* %10, align 8
  %28 = load i32, i32* %8, align 4
  %29 = add nsw i32 %28, 0
  %30 = call i64 @PCMMIO_PORT_REG(i32 %29)
  %31 = add i64 %27, %30
  %32 = call i32 @outb(i32 %26, i64 %31)
  %33 = load i32, i32* %6, align 4
  %34 = lshr i32 %33, 8
  %35 = and i32 %34, 255
  %36 = load i64, i64* %10, align 8
  %37 = load i32, i32* %8, align 4
  %38 = add nsw i32 %37, 1
  %39 = call i64 @PCMMIO_PORT_REG(i32 %38)
  %40 = add i64 %36, %39
  %41 = call i32 @outb(i32 %35, i64 %40)
  %42 = load i32, i32* %6, align 4
  %43 = lshr i32 %42, 16
  %44 = and i32 %43, 255
  %45 = load i64, i64* %10, align 8
  %46 = load i32, i32* %8, align 4
  %47 = add nsw i32 %46, 2
  %48 = call i64 @PCMMIO_PORT_REG(i32 %47)
  %49 = add i64 %45, %48
  %50 = call i32 @outb(i32 %44, i64 %49)
  br label %78

51:                                               ; preds = %4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @PCMMIO_PAGE(i32 %52)
  %54 = load i64, i64* %10, align 8
  %55 = load i64, i64* @PCMMIO_PAGE_LOCK_REG, align 8
  %56 = add i64 %54, %55
  %57 = call i32 @outb(i32 %53, i64 %56)
  %58 = load i32, i32* %6, align 4
  %59 = and i32 %58, 255
  %60 = load i64, i64* %10, align 8
  %61 = call i64 @PCMMIO_PAGE_REG(i32 0)
  %62 = add i64 %60, %61
  %63 = call i32 @outb(i32 %59, i64 %62)
  %64 = load i32, i32* %6, align 4
  %65 = lshr i32 %64, 8
  %66 = and i32 %65, 255
  %67 = load i64, i64* %10, align 8
  %68 = call i64 @PCMMIO_PAGE_REG(i32 1)
  %69 = add i64 %67, %68
  %70 = call i32 @outb(i32 %66, i64 %69)
  %71 = load i32, i32* %6, align 4
  %72 = lshr i32 %71, 16
  %73 = and i32 %72, 255
  %74 = load i64, i64* %10, align 8
  %75 = call i64 @PCMMIO_PAGE_REG(i32 2)
  %76 = add i64 %74, %75
  %77 = call i32 @outb(i32 %73, i64 %76)
  br label %78

78:                                               ; preds = %51, %24
  %79 = load %struct.pcmmio_private*, %struct.pcmmio_private** %9, align 8
  %80 = getelementptr inbounds %struct.pcmmio_private, %struct.pcmmio_private* %79, i32 0, i32 0
  %81 = load i64, i64* %11, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i64 @PCMMIO_PORT_REG(i32) #1

declare dso_local i32 @PCMMIO_PAGE(i32) #1

declare dso_local i64 @PCMMIO_PAGE_REG(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
