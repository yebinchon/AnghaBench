; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink.c_usc_process_rxoverrun_sync.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink.c_usc_process_rxoverrun_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgsl_struct = type { i32, i32, %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32, i64 }

@DmaCmd_PauseRxChannel = common dso_local global i32 0, align 4
@RCmd_EnterHuntmode = common dso_local global i32 0, align 4
@RTCmd_PurgeRxFifo = common dso_local global i32 0, align 4
@DMABUFFERSIZE = common dso_local global i64 0, align 8
@RXSTATUS_ALL = common dso_local global i32 0, align 4
@RECEIVE_DATA = common dso_local global i32 0, align 4
@RECEIVE_STATUS = common dso_local global i32 0, align 4
@DISABLE_UNCONDITIONAL = common dso_local global i32 0, align 4
@CCSR = common dso_local global i32 0, align 4
@BIT13 = common dso_local global i32 0, align 4
@NRARL = common dso_local global i32 0, align 4
@NRARU = common dso_local global i32 0, align 4
@RDIAR = common dso_local global i32 0, align 4
@BIT3 = common dso_local global i32 0, align 4
@BIT2 = common dso_local global i32 0, align 4
@DICR = common dso_local global i32 0, align 4
@BIT1 = common dso_local global i32 0, align 4
@DmaCmd_InitRxChannel = common dso_local global i32 0, align 4
@HDLC_FLAG_AUTO_DCD = common dso_local global i32 0, align 4
@ENABLE_AUTO_DCD = common dso_local global i32 0, align 4
@ENABLE_UNCONDITIONAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mgsl_struct*)* @usc_process_rxoverrun_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usc_process_rxoverrun_sync(%struct.mgsl_struct* %0) #0 {
  %2 = alloca %struct.mgsl_struct*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_4__*, align 8
  %10 = alloca i32, align 4
  store %struct.mgsl_struct* %0, %struct.mgsl_struct** %2, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %11 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %12 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %11, i32 0, i32 3
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %9, align 8
  %14 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %15 = load i32, i32* @DmaCmd_PauseRxChannel, align 4
  %16 = call i32 @usc_DmaCmd(%struct.mgsl_struct* %14, i32 %15)
  %17 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %18 = load i32, i32* @RCmd_EnterHuntmode, align 4
  %19 = call i32 @usc_RCmd(%struct.mgsl_struct* %17, i32 %18)
  %20 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %21 = load i32, i32* @RTCmd_PurgeRxFifo, align 4
  %22 = call i32 @usc_RTCmd(%struct.mgsl_struct* %20, i32 %21)
  %23 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %24 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %4, align 4
  store i32 %25, i32* %3, align 4
  store i32 %25, i32* %5, align 4
  br label %26

26:                                               ; preds = %65, %1
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  br i1 %34, label %35, label %66

35:                                               ; preds = %26
  %36 = load i32, i32* %6, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %35
  store i32 1, i32* %6, align 4
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %5, align 4
  store i32 0, i32* %7, align 4
  br label %40

40:                                               ; preds = %38, %35
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  store i32 0, i32* %6, align 4
  store i32 1, i32* %7, align 4
  br label %49

49:                                               ; preds = %48, %40
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %54 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %52, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %49
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %58
  %63 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %64 = call i32 @mgsl_reset_rx_dma_buffers(%struct.mgsl_struct* %63)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 1, i32* %8, align 4
  br label %66

65:                                               ; preds = %58
  br label %26

66:                                               ; preds = %62, %26
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %97

69:                                               ; preds = %66
  %70 = load i32, i32* %7, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %97, label %72

72:                                               ; preds = %69
  %73 = load i32, i32* %5, align 4
  store i32 %73, i32* %3, align 4
  br label %74

74:                                               ; preds = %92, %72
  %75 = load i64, i64* @DMABUFFERSIZE, align 8
  %76 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %77 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %76, i32 0, i32 3
  %78 = load %struct.TYPE_4__*, %struct.TYPE_4__** %77, align 8
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %3, align 4
  %81 = sext i32 %79 to i64
  %82 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 1
  %84 = bitcast i32* %83 to i64*
  store i64 %75, i64* %84, align 4
  %85 = load i32, i32* %3, align 4
  %86 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %87 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %85, %88
  br i1 %89, label %90, label %91

90:                                               ; preds = %74
  store i32 0, i32* %3, align 4
  br label %91

91:                                               ; preds = %90, %74
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %3, align 4
  %94 = load i32, i32* %4, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %74, label %96

96:                                               ; preds = %92
  store i32 1, i32* %8, align 4
  br label %97

97:                                               ; preds = %96, %69, %66
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %186

100:                                              ; preds = %97
  %101 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %102 = load i32, i32* @RXSTATUS_ALL, align 4
  %103 = call i32 @usc_UnlatchRxstatusBits(%struct.mgsl_struct* %101, i32 %102)
  %104 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %105 = load i32, i32* @RECEIVE_DATA, align 4
  %106 = load i32, i32* @RECEIVE_STATUS, align 4
  %107 = or i32 %105, %106
  %108 = call i32 @usc_ClearIrqPendingBits(%struct.mgsl_struct* %104, i32 %107)
  %109 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %110 = load i32, i32* @RECEIVE_DATA, align 4
  %111 = load i32, i32* @RECEIVE_STATUS, align 4
  %112 = or i32 %110, %111
  %113 = call i32 @usc_UnlatchRxstatusBits(%struct.mgsl_struct* %109, i32 %112)
  %114 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %115 = load i32, i32* @DISABLE_UNCONDITIONAL, align 4
  %116 = call i32 @usc_EnableReceiver(%struct.mgsl_struct* %114, i32 %115)
  %117 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %118 = load i32, i32* @CCSR, align 4
  %119 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %120 = load i32, i32* @CCSR, align 4
  %121 = call i32 @usc_InReg(%struct.mgsl_struct* %119, i32 %120)
  %122 = load i32, i32* @BIT13, align 4
  %123 = or i32 %121, %122
  %124 = call i32 @usc_OutReg(%struct.mgsl_struct* %117, i32 %118, i32 %123)
  %125 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %126 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %125, i32 0, i32 3
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %126, align 8
  %128 = load i32, i32* %5, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i64 %129
  %131 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  store i32 %132, i32* %10, align 4
  %133 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %134 = load i32, i32* @NRARL, align 4
  %135 = load i32, i32* %10, align 4
  %136 = call i32 @usc_OutDmaReg(%struct.mgsl_struct* %133, i32 %134, i32 %135)
  %137 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %138 = load i32, i32* @NRARU, align 4
  %139 = load i32, i32* %10, align 4
  %140 = ashr i32 %139, 16
  %141 = call i32 @usc_OutDmaReg(%struct.mgsl_struct* %137, i32 %138, i32 %140)
  %142 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %143 = load i32, i32* @RXSTATUS_ALL, align 4
  %144 = call i32 @usc_UnlatchRxstatusBits(%struct.mgsl_struct* %142, i32 %143)
  %145 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %146 = load i32, i32* @RECEIVE_DATA, align 4
  %147 = load i32, i32* @RECEIVE_STATUS, align 4
  %148 = or i32 %146, %147
  %149 = call i32 @usc_ClearIrqPendingBits(%struct.mgsl_struct* %145, i32 %148)
  %150 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %151 = load i32, i32* @RECEIVE_STATUS, align 4
  %152 = call i32 @usc_EnableInterrupts(%struct.mgsl_struct* %150, i32 %151)
  %153 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %154 = load i32, i32* @RDIAR, align 4
  %155 = load i32, i32* @BIT3, align 4
  %156 = load i32, i32* @BIT2, align 4
  %157 = or i32 %155, %156
  %158 = call i32 @usc_OutDmaReg(%struct.mgsl_struct* %153, i32 %154, i32 %157)
  %159 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %160 = load i32, i32* @DICR, align 4
  %161 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %162 = load i32, i32* @DICR, align 4
  %163 = call i32 @usc_InDmaReg(%struct.mgsl_struct* %161, i32 %162)
  %164 = load i32, i32* @BIT1, align 4
  %165 = or i32 %163, %164
  %166 = call i32 @usc_OutDmaReg(%struct.mgsl_struct* %159, i32 %160, i32 %165)
  %167 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %168 = load i32, i32* @DmaCmd_InitRxChannel, align 4
  %169 = call i32 @usc_DmaCmd(%struct.mgsl_struct* %167, i32 %168)
  %170 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %171 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %170, i32 0, i32 2
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @HDLC_FLAG_AUTO_DCD, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %100
  %178 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %179 = load i32, i32* @ENABLE_AUTO_DCD, align 4
  %180 = call i32 @usc_EnableReceiver(%struct.mgsl_struct* %178, i32 %179)
  br label %185

181:                                              ; preds = %100
  %182 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %183 = load i32, i32* @ENABLE_UNCONDITIONAL, align 4
  %184 = call i32 @usc_EnableReceiver(%struct.mgsl_struct* %182, i32 %183)
  br label %185

185:                                              ; preds = %181, %177
  br label %198

186:                                              ; preds = %97
  %187 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %188 = load i32, i32* @CCSR, align 4
  %189 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %190 = load i32, i32* @CCSR, align 4
  %191 = call i32 @usc_InReg(%struct.mgsl_struct* %189, i32 %190)
  %192 = load i32, i32* @BIT13, align 4
  %193 = or i32 %191, %192
  %194 = call i32 @usc_OutReg(%struct.mgsl_struct* %187, i32 %188, i32 %193)
  %195 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %196 = load i32, i32* @RTCmd_PurgeRxFifo, align 4
  %197 = call i32 @usc_RTCmd(%struct.mgsl_struct* %195, i32 %196)
  br label %198

198:                                              ; preds = %186, %185
  ret void
}

declare dso_local i32 @usc_DmaCmd(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_RCmd(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_RTCmd(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @mgsl_reset_rx_dma_buffers(%struct.mgsl_struct*) #1

declare dso_local i32 @usc_UnlatchRxstatusBits(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_ClearIrqPendingBits(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_EnableReceiver(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_OutReg(%struct.mgsl_struct*, i32, i32) #1

declare dso_local i32 @usc_InReg(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_OutDmaReg(%struct.mgsl_struct*, i32, i32) #1

declare dso_local i32 @usc_EnableInterrupts(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_InDmaReg(%struct.mgsl_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
