; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das16.c_das16_cancel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das16.c_das16_cancel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i64, %struct.das16_private_struct* }
%struct.das16_private_struct = type { i32, i64, i32, i64, %struct.comedi_isadma* }
%struct.comedi_isadma = type { i32 }
%struct.comedi_subdevice = type { i32 }

@DAS16_CTRL_INTE = common dso_local global i32 0, align 4
@DAS16_CTRL_DMAE = common dso_local global i32 0, align 4
@DAS16_CTRL_PACING_MASK = common dso_local global i32 0, align 4
@DAS16_CTRL_REG = common dso_local global i64 0, align 8
@DAS1600_BURST_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @das16_cancel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das16_cancel(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.das16_private_struct*, align 8
  %6 = alloca %struct.comedi_isadma*, align 8
  %7 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 2
  %10 = load %struct.das16_private_struct*, %struct.das16_private_struct** %9, align 8
  store %struct.das16_private_struct* %10, %struct.das16_private_struct** %5, align 8
  %11 = load %struct.das16_private_struct*, %struct.das16_private_struct** %5, align 8
  %12 = getelementptr inbounds %struct.das16_private_struct, %struct.das16_private_struct* %11, i32 0, i32 4
  %13 = load %struct.comedi_isadma*, %struct.comedi_isadma** %12, align 8
  store %struct.comedi_isadma* %13, %struct.comedi_isadma** %6, align 8
  %14 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 0
  %16 = load i64, i64* %7, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load i32, i32* @DAS16_CTRL_INTE, align 4
  %19 = load i32, i32* @DAS16_CTRL_DMAE, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @DAS16_CTRL_PACING_MASK, align 4
  %22 = or i32 %20, %21
  %23 = xor i32 %22, -1
  %24 = load %struct.das16_private_struct*, %struct.das16_private_struct** %5, align 8
  %25 = getelementptr inbounds %struct.das16_private_struct, %struct.das16_private_struct* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = and i32 %26, %23
  store i32 %27, i32* %25, align 8
  %28 = load %struct.das16_private_struct*, %struct.das16_private_struct** %5, align 8
  %29 = getelementptr inbounds %struct.das16_private_struct, %struct.das16_private_struct* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %32 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @DAS16_CTRL_REG, align 8
  %35 = add nsw i64 %33, %34
  %36 = call i32 @outb(i32 %30, i64 %35)
  %37 = load %struct.comedi_isadma*, %struct.comedi_isadma** %6, align 8
  %38 = getelementptr inbounds %struct.comedi_isadma, %struct.comedi_isadma* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @comedi_isadma_disable(i32 %39)
  %41 = load %struct.das16_private_struct*, %struct.das16_private_struct** %5, align 8
  %42 = getelementptr inbounds %struct.das16_private_struct, %struct.das16_private_struct* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %2
  %46 = load %struct.das16_private_struct*, %struct.das16_private_struct** %5, align 8
  %47 = getelementptr inbounds %struct.das16_private_struct, %struct.das16_private_struct* %46, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load %struct.das16_private_struct*, %struct.das16_private_struct** %5, align 8
  %49 = getelementptr inbounds %struct.das16_private_struct, %struct.das16_private_struct* %48, i32 0, i32 2
  %50 = call i32 @del_timer(i32* %49)
  br label %51

51:                                               ; preds = %45, %2
  %52 = load %struct.das16_private_struct*, %struct.das16_private_struct** %5, align 8
  %53 = getelementptr inbounds %struct.das16_private_struct, %struct.das16_private_struct* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %58 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @DAS1600_BURST_REG, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @outb(i32 0, i64 %61)
  br label %63

63:                                               ; preds = %56, %51
  %64 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %65 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %64, i32 0, i32 0
  %66 = load i64, i64* %7, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @comedi_isadma_disable(i32) #1

declare dso_local i32 @del_timer(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
