; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink.c_usc_set_async_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink.c_usc_set_async_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgsl_struct = type { i32, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i64, i64, i32 }

@DmaCmd_ResetAllChannels = common dso_local global i32 0, align 4
@BIT14 = common dso_local global i32 0, align 4
@CMR = common dso_local global i32 0, align 4
@BIT4 = common dso_local global i32 0, align 4
@BIT3 = common dso_local global i32 0, align 4
@BIT2 = common dso_local global i32 0, align 4
@ASYNC_PARITY_NONE = common dso_local global i64 0, align 8
@BIT5 = common dso_local global i32 0, align 4
@ASYNC_PARITY_ODD = common dso_local global i64 0, align 8
@BIT6 = common dso_local global i32 0, align 4
@RMR = common dso_local global i32 0, align 4
@RCmd_SelectRicrIntLevel = common dso_local global i32 0, align 4
@RICR = common dso_local global i32 0, align 4
@RXSTATUS_ALL = common dso_local global i32 0, align 4
@RECEIVE_STATUS = common dso_local global i64 0, align 8
@TMR = common dso_local global i32 0, align 4
@TCmd_SelectTicrIntLevel = common dso_local global i32 0, align 4
@TICR = common dso_local global i32 0, align 4
@TXSTATUS_ALL = common dso_local global i32 0, align 4
@TRANSMIT_STATUS = common dso_local global i64 0, align 8
@CCSR = common dso_local global i32 0, align 4
@TRANSMIT_DATA = common dso_local global i64 0, align 8
@RECEIVE_DATA = common dso_local global i64 0, align 8
@CCAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mgsl_struct*)* @usc_set_async_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usc_set_async_mode(%struct.mgsl_struct* %0) #0 {
  %2 = alloca %struct.mgsl_struct*, align 8
  %3 = alloca i32, align 4
  store %struct.mgsl_struct* %0, %struct.mgsl_struct** %2, align 8
  %4 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %5 = call i32 @usc_DisableMasterIrqBit(%struct.mgsl_struct* %4)
  %6 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %7 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = call i32 @outw(i32 0, i64 %8)
  %10 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %11 = load i32, i32* @DmaCmd_ResetAllChannels, align 4
  %12 = call i32 @usc_DmaCmd(%struct.mgsl_struct* %10, i32 %11)
  %13 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %14 = call i32 @usc_loopback_frame(%struct.mgsl_struct* %13)
  store i32 0, i32* %3, align 4
  %15 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %16 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %15, i32 0, i32 2
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 1
  br i1 %19, label %20, label %24

20:                                               ; preds = %1
  %21 = load i32, i32* @BIT14, align 4
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %20, %1
  %25 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %26 = load i32, i32* @CMR, align 4
  %27 = load i32, i32* %3, align 4
  %28 = call i32 @usc_OutReg(%struct.mgsl_struct* %25, i32 %26, i32 %27)
  store i32 0, i32* %3, align 4
  %29 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %30 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 8
  br i1 %33, label %34, label %42

34:                                               ; preds = %24
  %35 = load i32, i32* @BIT4, align 4
  %36 = load i32, i32* @BIT3, align 4
  %37 = or i32 %35, %36
  %38 = load i32, i32* @BIT2, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* %3, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %34, %24
  %43 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %44 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @ASYNC_PARITY_NONE, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %42
  %50 = load i32, i32* @BIT5, align 4
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  %53 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %54 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @ASYNC_PARITY_ODD, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %63

59:                                               ; preds = %49
  %60 = load i32, i32* @BIT6, align 4
  %61 = load i32, i32* %3, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %3, align 4
  br label %63

63:                                               ; preds = %59, %49
  br label %64

64:                                               ; preds = %63, %42
  %65 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %66 = load i32, i32* @RMR, align 4
  %67 = load i32, i32* %3, align 4
  %68 = call i32 @usc_OutReg(%struct.mgsl_struct* %65, i32 %66, i32 %67)
  %69 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %70 = load i32, i32* @RCmd_SelectRicrIntLevel, align 4
  %71 = call i32 @usc_RCmd(%struct.mgsl_struct* %69, i32 %70)
  %72 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %73 = load i32, i32* @RICR, align 4
  %74 = call i32 @usc_OutReg(%struct.mgsl_struct* %72, i32 %73, i32 0)
  %75 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %76 = load i32, i32* @RXSTATUS_ALL, align 4
  %77 = call i32 @usc_UnlatchRxstatusBits(%struct.mgsl_struct* %75, i32 %76)
  %78 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %79 = load i64, i64* @RECEIVE_STATUS, align 8
  %80 = call i32 @usc_ClearIrqPendingBits(%struct.mgsl_struct* %78, i64 %79)
  store i32 0, i32* %3, align 4
  %81 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %82 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = icmp ne i32 %84, 8
  br i1 %85, label %86, label %94

86:                                               ; preds = %64
  %87 = load i32, i32* @BIT4, align 4
  %88 = load i32, i32* @BIT3, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @BIT2, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* %3, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %3, align 4
  br label %94

94:                                               ; preds = %86, %64
  %95 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %96 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @ASYNC_PARITY_NONE, align 8
  %100 = icmp ne i64 %98, %99
  br i1 %100, label %101, label %116

101:                                              ; preds = %94
  %102 = load i32, i32* @BIT5, align 4
  %103 = load i32, i32* %3, align 4
  %104 = or i32 %103, %102
  store i32 %104, i32* %3, align 4
  %105 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %106 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %105, i32 0, i32 2
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 2
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @ASYNC_PARITY_ODD, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %101
  %112 = load i32, i32* @BIT6, align 4
  %113 = load i32, i32* %3, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %3, align 4
  br label %115

115:                                              ; preds = %111, %101
  br label %116

116:                                              ; preds = %115, %94
  %117 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %118 = load i32, i32* @TMR, align 4
  %119 = load i32, i32* %3, align 4
  %120 = call i32 @usc_OutReg(%struct.mgsl_struct* %117, i32 %118, i32 %119)
  %121 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %122 = call i32 @usc_set_txidle(%struct.mgsl_struct* %121)
  %123 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %124 = load i32, i32* @TCmd_SelectTicrIntLevel, align 4
  %125 = call i32 @usc_TCmd(%struct.mgsl_struct* %123, i32 %124)
  %126 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %127 = load i32, i32* @TICR, align 4
  %128 = call i32 @usc_OutReg(%struct.mgsl_struct* %126, i32 %127, i32 8000)
  %129 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %130 = load i32, i32* @TXSTATUS_ALL, align 4
  %131 = call i32 @usc_UnlatchTxstatusBits(%struct.mgsl_struct* %129, i32 %130)
  %132 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %133 = load i64, i64* @TRANSMIT_STATUS, align 8
  %134 = call i32 @usc_ClearIrqPendingBits(%struct.mgsl_struct* %132, i64 %133)
  %135 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %136 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %137 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %136, i32 0, i32 2
  %138 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i32 0, i32 4
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @usc_enable_async_clock(%struct.mgsl_struct* %135, i32 %139)
  %141 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %142 = load i32, i32* @CCSR, align 4
  %143 = call i32 @usc_OutReg(%struct.mgsl_struct* %141, i32 %142, i32 32)
  %144 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %145 = load i64, i64* @TRANSMIT_STATUS, align 8
  %146 = load i64, i64* @TRANSMIT_DATA, align 8
  %147 = add nsw i64 %145, %146
  %148 = load i64, i64* @RECEIVE_DATA, align 8
  %149 = add nsw i64 %147, %148
  %150 = load i64, i64* @RECEIVE_STATUS, align 8
  %151 = add nsw i64 %149, %150
  %152 = call i32 @usc_DisableInterrupts(%struct.mgsl_struct* %144, i64 %151)
  %153 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %154 = load i64, i64* @TRANSMIT_STATUS, align 8
  %155 = load i64, i64* @TRANSMIT_DATA, align 8
  %156 = add nsw i64 %154, %155
  %157 = load i64, i64* @RECEIVE_DATA, align 8
  %158 = add nsw i64 %156, %157
  %159 = load i64, i64* @RECEIVE_STATUS, align 8
  %160 = add nsw i64 %158, %159
  %161 = call i32 @usc_ClearIrqPendingBits(%struct.mgsl_struct* %153, i64 %160)
  %162 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %163 = call i32 @usc_EnableMasterIrqBit(%struct.mgsl_struct* %162)
  %164 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %165 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %164, i32 0, i32 2
  %166 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %165, i32 0, i32 3
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %178

169:                                              ; preds = %116
  %170 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %171 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %170, i32 0, i32 0
  store i32 768, i32* %171, align 8
  %172 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %173 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %172, i32 0, i32 1
  %174 = load i64, i64* %173, align 8
  %175 = load i64, i64* @CCAR, align 8
  %176 = add nsw i64 %174, %175
  %177 = call i32 @outw(i32 768, i64 %176)
  br label %178

178:                                              ; preds = %169, %116
  ret void
}

declare dso_local i32 @usc_DisableMasterIrqBit(%struct.mgsl_struct*) #1

declare dso_local i32 @outw(i32, i64) #1

declare dso_local i32 @usc_DmaCmd(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_loopback_frame(%struct.mgsl_struct*) #1

declare dso_local i32 @usc_OutReg(%struct.mgsl_struct*, i32, i32) #1

declare dso_local i32 @usc_RCmd(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_UnlatchRxstatusBits(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_ClearIrqPendingBits(%struct.mgsl_struct*, i64) #1

declare dso_local i32 @usc_set_txidle(%struct.mgsl_struct*) #1

declare dso_local i32 @usc_TCmd(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_UnlatchTxstatusBits(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_enable_async_clock(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_DisableInterrupts(%struct.mgsl_struct*, i64) #1

declare dso_local i32 @usc_EnableMasterIrqBit(%struct.mgsl_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
