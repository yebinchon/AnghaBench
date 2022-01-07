; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcmuio.c_pcmuio_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcmuio.c_pcmuio_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pcmuio_private* }
%struct.pcmuio_private = type { %struct.pcmuio_asic* }
%struct.pcmuio_asic = type { i32 }

@PCMUIO_PAGE_LOCK_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32, i32, i32)* @pcmuio_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcmuio_write(%struct.comedi_device* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.pcmuio_private*, align 8
  %12 = alloca %struct.pcmuio_asic*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 0
  %17 = load %struct.pcmuio_private*, %struct.pcmuio_private** %16, align 8
  store %struct.pcmuio_private* %17, %struct.pcmuio_private** %11, align 8
  %18 = load %struct.pcmuio_private*, %struct.pcmuio_private** %11, align 8
  %19 = getelementptr inbounds %struct.pcmuio_private, %struct.pcmuio_private* %18, i32 0, i32 0
  %20 = load %struct.pcmuio_asic*, %struct.pcmuio_asic** %19, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.pcmuio_asic, %struct.pcmuio_asic* %20, i64 %22
  store %struct.pcmuio_asic* %23, %struct.pcmuio_asic** %12, align 8
  %24 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @pcmuio_asic_iobase(%struct.comedi_device* %24, i32 %25)
  store i64 %26, i64* %13, align 8
  %27 = load %struct.pcmuio_asic*, %struct.pcmuio_asic** %12, align 8
  %28 = getelementptr inbounds %struct.pcmuio_asic, %struct.pcmuio_asic* %27, i32 0, i32 0
  %29 = load i64, i64* %14, align 8
  %30 = call i32 @spin_lock_irqsave(i32* %28, i64 %29)
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %60

33:                                               ; preds = %5
  %34 = load i32, i32* %7, align 4
  %35 = and i32 %34, 255
  %36 = load i64, i64* %13, align 8
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 0
  %39 = call i64 @PCMUIO_PORT_REG(i32 %38)
  %40 = add i64 %36, %39
  %41 = call i32 @outb(i32 %35, i64 %40)
  %42 = load i32, i32* %7, align 4
  %43 = lshr i32 %42, 8
  %44 = and i32 %43, 255
  %45 = load i64, i64* %13, align 8
  %46 = load i32, i32* %10, align 4
  %47 = add nsw i32 %46, 1
  %48 = call i64 @PCMUIO_PORT_REG(i32 %47)
  %49 = add i64 %45, %48
  %50 = call i32 @outb(i32 %44, i64 %49)
  %51 = load i32, i32* %7, align 4
  %52 = lshr i32 %51, 16
  %53 = and i32 %52, 255
  %54 = load i64, i64* %13, align 8
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 2
  %57 = call i64 @PCMUIO_PORT_REG(i32 %56)
  %58 = add i64 %54, %57
  %59 = call i32 @outb(i32 %53, i64 %58)
  br label %87

60:                                               ; preds = %5
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @PCMUIO_PAGE(i32 %61)
  %63 = load i64, i64* %13, align 8
  %64 = load i64, i64* @PCMUIO_PAGE_LOCK_REG, align 8
  %65 = add i64 %63, %64
  %66 = call i32 @outb(i32 %62, i64 %65)
  %67 = load i32, i32* %7, align 4
  %68 = and i32 %67, 255
  %69 = load i64, i64* %13, align 8
  %70 = call i64 @PCMUIO_PAGE_REG(i32 0)
  %71 = add i64 %69, %70
  %72 = call i32 @outb(i32 %68, i64 %71)
  %73 = load i32, i32* %7, align 4
  %74 = lshr i32 %73, 8
  %75 = and i32 %74, 255
  %76 = load i64, i64* %13, align 8
  %77 = call i64 @PCMUIO_PAGE_REG(i32 1)
  %78 = add i64 %76, %77
  %79 = call i32 @outb(i32 %75, i64 %78)
  %80 = load i32, i32* %7, align 4
  %81 = lshr i32 %80, 16
  %82 = and i32 %81, 255
  %83 = load i64, i64* %13, align 8
  %84 = call i64 @PCMUIO_PAGE_REG(i32 2)
  %85 = add i64 %83, %84
  %86 = call i32 @outb(i32 %82, i64 %85)
  br label %87

87:                                               ; preds = %60, %33
  %88 = load %struct.pcmuio_asic*, %struct.pcmuio_asic** %12, align 8
  %89 = getelementptr inbounds %struct.pcmuio_asic, %struct.pcmuio_asic* %88, i32 0, i32 0
  %90 = load i64, i64* %14, align 8
  %91 = call i32 @spin_unlock_irqrestore(i32* %89, i64 %90)
  ret void
}

declare dso_local i64 @pcmuio_asic_iobase(%struct.comedi_device*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i64 @PCMUIO_PORT_REG(i32) #1

declare dso_local i32 @PCMUIO_PAGE(i32) #1

declare dso_local i64 @PCMUIO_PAGE_REG(i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
