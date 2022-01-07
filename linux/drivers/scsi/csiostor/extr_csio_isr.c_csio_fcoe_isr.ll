; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_isr.c_csio_fcoe_isr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/csiostor/extr_csio_isr.c_csio_fcoe_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.csio_hw = type { i64, i32, i32, i32, i32, i32 }
%struct.csio_q = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@n_pcich_offline = common dso_local global i32 0, align 4
@CSIO_IM_INTX = common dso_local global i64 0, align 8
@PCIE_PF_CLI_A = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@CSIO_HWF_FWEVT_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @csio_fcoe_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @csio_fcoe_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.csio_hw*, align 8
  %7 = alloca %struct.csio_q*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.csio_hw*
  store %struct.csio_hw* %12, %struct.csio_hw** %6, align 8
  store %struct.csio_q* null, %struct.csio_q** %7, align 8
  %13 = load i32, i32* @IRQ_NONE, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %15 = icmp ne %struct.csio_hw* %14, null
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* @IRQ_NONE, align 4
  store i32 %21, i32* %3, align 4
  br label %104

22:                                               ; preds = %2
  %23 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %24 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @pci_channel_offline(i32 %25)
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %31 = load i32, i32* @n_pcich_offline, align 4
  %32 = call i32 @CSIO_INC_STATS(%struct.csio_hw* %30, i32 %31)
  %33 = load i32, i32* @IRQ_NONE, align 4
  store i32 %33, i32* %3, align 4
  br label %104

34:                                               ; preds = %22
  %35 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %36 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @CSIO_IM_INTX, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %42 = load i32, i32* @PCIE_PF_CLI_A, align 4
  %43 = call i32 @MYPF_REG(i32 %42)
  %44 = call i32 @csio_wr_reg32(%struct.csio_hw* %41, i32 0, i32 %43)
  br label %45

45:                                               ; preds = %40, %34
  %46 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %47 = call i64 @csio_hw_slow_intr_handler(%struct.csio_hw* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %50, i32* %9, align 4
  br label %51

51:                                               ; preds = %49, %45
  %52 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %53 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %54 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %53, i32 0, i32 4
  %55 = load i32, i32* %54, align 4
  %56 = call %struct.csio_q* @csio_get_q(%struct.csio_hw* %52, i32 %55)
  store %struct.csio_q* %56, %struct.csio_q** %7, align 8
  %57 = load %struct.csio_q*, %struct.csio_q** %7, align 8
  %58 = call i32 @CSIO_DB_ASSERT(%struct.csio_q* %57)
  %59 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %60 = load %struct.csio_q*, %struct.csio_q** %7, align 8
  %61 = call i64 @csio_wr_process_iq(%struct.csio_hw* %59, %struct.csio_q* %60, i32* null, i32* null)
  %62 = icmp eq i64 %61, 0
  %63 = zext i1 %62 to i32
  %64 = call i64 @likely(i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %51
  %67 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %67, i32* %9, align 4
  br label %68

68:                                               ; preds = %66, %51
  %69 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %70 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %69, i32 0, i32 2
  %71 = load i64, i64* %10, align 8
  %72 = call i32 @spin_lock_irqsave(i32* %70, i64 %71)
  %73 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %74 = call i32 @csio_mb_isr_handler(%struct.csio_hw* %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %98

77:                                               ; preds = %68
  %78 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %79 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @CSIO_HWF_FWEVT_PENDING, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %98, label %84

84:                                               ; preds = %77
  %85 = load i32, i32* @CSIO_HWF_FWEVT_PENDING, align 4
  %86 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %87 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = or i32 %88, %85
  store i32 %89, i32* %87, align 8
  %90 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %91 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %90, i32 0, i32 2
  %92 = load i64, i64* %10, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  %94 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %95 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %94, i32 0, i32 3
  %96 = call i32 @schedule_work(i32* %95)
  %97 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %97, i32* %3, align 4
  br label %104

98:                                               ; preds = %77, %68
  %99 = load %struct.csio_hw*, %struct.csio_hw** %6, align 8
  %100 = getelementptr inbounds %struct.csio_hw, %struct.csio_hw* %99, i32 0, i32 2
  %101 = load i64, i64* %10, align 8
  %102 = call i32 @spin_unlock_irqrestore(i32* %100, i64 %101)
  %103 = load i32, i32* %9, align 4
  store i32 %103, i32* %3, align 4
  br label %104

104:                                              ; preds = %98, %84, %29, %20
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @pci_channel_offline(i32) #1

declare dso_local i32 @CSIO_INC_STATS(%struct.csio_hw*, i32) #1

declare dso_local i32 @csio_wr_reg32(%struct.csio_hw*, i32, i32) #1

declare dso_local i32 @MYPF_REG(i32) #1

declare dso_local i64 @csio_hw_slow_intr_handler(%struct.csio_hw*) #1

declare dso_local %struct.csio_q* @csio_get_q(%struct.csio_hw*, i32) #1

declare dso_local i32 @CSIO_DB_ASSERT(%struct.csio_q*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @csio_wr_process_iq(%struct.csio_hw*, %struct.csio_q*, i32*, i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @csio_mb_isr_handler(%struct.csio_hw*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
