; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ai_drain_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ai_drain_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.ni_private* }
%struct.ni_private = type { i32, i64 }

@ni_ai_drain_dma.timeout = internal constant i32 10000, align 4
@NISTC_AI_STATUS1_REG = common dso_local global i32 0, align 4
@NISTC_AI_STATUS1_FIFO_E = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"timed out\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"mite_bytes_in_transit=%i, AI_Status1_Register=0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*)* @ni_ai_drain_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ni_ai_drain_dma(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.ni_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 1
  %9 = load %struct.ni_private*, %struct.ni_private** %8, align 8
  store %struct.ni_private* %9, %struct.ni_private** %3, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.ni_private*, %struct.ni_private** %3, align 8
  %11 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %10, i32 0, i32 0
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.ni_private*, %struct.ni_private** %3, align 8
  %15 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %61

18:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %19

19:                                               ; preds = %38, %18
  %20 = load i32, i32* %4, align 4
  %21 = icmp slt i32 %20, 10000
  br i1 %21, label %22, label %41

22:                                               ; preds = %19
  %23 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %24 = load i32, i32* @NISTC_AI_STATUS1_REG, align 4
  %25 = call i32 @ni_stc_readw(%struct.comedi_device* %23, i32 %24)
  %26 = load i32, i32* @NISTC_AI_STATUS1_FIFO_E, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %22
  %30 = load %struct.ni_private*, %struct.ni_private** %3, align 8
  %31 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = call i64 @mite_bytes_in_transit(i64 %32)
  %34 = icmp eq i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  br label %41

36:                                               ; preds = %29, %22
  %37 = call i32 @udelay(i32 5)
  br label %38

38:                                               ; preds = %36
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %19

41:                                               ; preds = %35, %19
  %42 = load i32, i32* %4, align 4
  %43 = icmp eq i32 %42, 10000
  br i1 %43, label %44, label %60

44:                                               ; preds = %41
  %45 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %46 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = call i32 (i32, i8*, ...) @dev_err(i32 %47, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %49 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %50 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.ni_private*, %struct.ni_private** %3, align 8
  %53 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = call i64 @mite_bytes_in_transit(i64 %54)
  %56 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %57 = load i32, i32* @NISTC_AI_STATUS1_REG, align 4
  %58 = call i32 @ni_stc_readw(%struct.comedi_device* %56, i32 %57)
  %59 = call i32 (i32, i8*, ...) @dev_err(i32 %51, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %55, i32 %58)
  store i32 -1, i32* %6, align 4
  br label %60

60:                                               ; preds = %44, %41
  br label %61

61:                                               ; preds = %60, %1
  %62 = load %struct.ni_private*, %struct.ni_private** %3, align 8
  %63 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %62, i32 0, i32 0
  %64 = load i64, i64* %5, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  %66 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %67 = call i32 @ni_sync_ai_dma(%struct.comedi_device* %66)
  %68 = load i32, i32* %6, align 4
  ret i32 %68
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @ni_stc_readw(%struct.comedi_device*, i32) #1

declare dso_local i64 @mite_bytes_in_transit(i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ni_sync_ai_dma(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
