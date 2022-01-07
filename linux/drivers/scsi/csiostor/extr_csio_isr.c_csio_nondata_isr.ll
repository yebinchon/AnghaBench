; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_isr.c_csio_nondata_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_isr.c_csio_nondata_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i32, i32, i32, i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@n_pcich_offline = common dso_local global i32 0, align 4
@CSIO_HWF_FWEVT_PENDING = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @csio_nondata_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_nondata_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.csio_hw*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.csio_hw*
  store %struct.csio_hw* %10, %struct.csio_hw** %6, align 8
  %11 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %12 = icmp ne %struct.csio_hw* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* @IRQ_NONE, align 4
  store i32 %18, i32* %3, align 4
  br label %69

19:                                               ; preds = %2
  %20 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %21 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @pci_channel_offline(i32 %22)
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %28 = load i32, i32* @n_pcich_offline, align 4
  %29 = call i32 @CSIO_INC_STATS(%struct.csio_hw* %27, i32 %28)
  %30 = load i32, i32* @IRQ_NONE, align 4
  store i32 %30, i32* %3, align 4
  br label %69

31:                                               ; preds = %19
  %32 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %33 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %32, i32 0, i32 1
  %34 = load i64, i64* %8, align 8
  %35 = call i32 @spin_lock_irqsave(i32* %33, i64 %34)
  %36 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %37 = call i32 @csio_hw_slow_intr_handler(%struct.csio_hw* %36)
  %38 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %39 = call i32 @csio_mb_isr_handler(%struct.csio_hw* %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %63

42:                                               ; preds = %31
  %43 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %44 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @CSIO_HWF_FWEVT_PENDING, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %63, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* @CSIO_HWF_FWEVT_PENDING, align 4
  %51 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %52 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %56 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %55, i32 0, i32 1
  %57 = load i64, i64* %8, align 8
  %58 = call i32 @spin_unlock_irqrestore(i32* %56, i64 %57)
  %59 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %60 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %59, i32 0, i32 2
  %61 = call i32 @schedule_work(i32* %60)
  %62 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %62, i32* %3, align 4
  br label %69

63:                                               ; preds = %42, %31
  %64 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %65 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %64, i32 0, i32 1
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  %68 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %63, %49, %26, %17
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pci_channel_offline(i32) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_hw*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @csio_hw_slow_intr_handler(%struct.csio_hw*) #1

declare dso_local i32 @csio_mb_isr_handler(%struct.csio_hw*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
