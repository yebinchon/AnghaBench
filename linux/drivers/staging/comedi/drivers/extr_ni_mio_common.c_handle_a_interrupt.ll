; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_handle_a_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_handle_a_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i64 }

@NISTC_AI_STATUS1_ERR = common dso_local global i16 0, align 2
@NISTC_AI_STATUS1_SC_TC = common dso_local global i16 0, align 2
@NISTC_AI_STATUS1_START1 = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [15 x i8] c"Card removed?\0A\00", align 1
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"ai error a_status=%04x\0A\00", align 1
@NISTC_AI_STATUS1_OVER = common dso_local global i16 0, align 2
@COMEDI_CB_OVERFLOW = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i64 0, align 8
@NISTC_AI_STATUS1_FIFO_HF = common dso_local global i16 0, align 2
@handle_a_interrupt.timeout = internal constant i32 10, align 4
@NISTC_AI_STATUS1_REG = common dso_local global i32 0, align 4
@NISTC_AI_STATUS1_STOP = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i16)* @handle_a_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_a_interrupt(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i16 zeroext %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i16, align 2
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  store i16 %2, i16* %6, align 2
  %9 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %10 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  store %struct.comedi_cmd* %12, %struct.comedi_cmd** %7, align 8
  %13 = load i16, i16* %6, align 2
  %14 = zext i16 %13 to i32
  %15 = load i16, i16* @NISTC_AI_STATUS1_ERR, align 2
  %16 = zext i16 %15 to i32
  %17 = load i16, i16* @NISTC_AI_STATUS1_SC_TC, align 2
  %18 = zext i16 %17 to i32
  %19 = or i32 %16, %18
  %20 = load i16, i16* @NISTC_AI_STATUS1_START1, align 2
  %21 = zext i16 %20 to i32
  %22 = or i32 %19, %21
  %23 = and i32 %14, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %102

25:                                               ; preds = %3
  %26 = load i16, i16* %6, align 2
  %27 = zext i16 %26 to i32
  %28 = icmp eq i32 %27, 65535
  br i1 %28, label %29, label %46

29:                                               ; preds = %25
  %30 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %31 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 (i32, i8*, ...) @dev_err(i32 %32, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %35 = call i64 @comedi_is_subdevice_running(%struct.comedi_subdevice* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %39 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %40 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = or i32 %43, %38
  store i32 %44, i32* %42, align 8
  br label %45

45:                                               ; preds = %37, %29
  br label %141

46:                                               ; preds = %25
  %47 = load i16, i16* %6, align 2
  %48 = zext i16 %47 to i32
  %49 = load i16, i16* @NISTC_AI_STATUS1_ERR, align 2
  %50 = zext i16 %49 to i32
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %84

53:                                               ; preds = %46
  %54 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %55 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i16, i16* %6, align 2
  %58 = zext i16 %57 to i32
  %59 = call i32 (i32, i8*, ...) @dev_err(i32 %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i32 %58)
  %60 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %61 = call i32 @shutdown_ai_command(%struct.comedi_device* %60)
  %62 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %64 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %62
  store i32 %68, i32* %66, align 8
  %69 = load i16, i16* %6, align 2
  %70 = zext i16 %69 to i32
  %71 = load i16, i16* @NISTC_AI_STATUS1_OVER, align 2
  %72 = zext i16 %71 to i32
  %73 = and i32 %70, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %83

75:                                               ; preds = %53
  %76 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %77 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %78 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %76
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %75, %53
  br label %141

84:                                               ; preds = %46
  %85 = load i16, i16* %6, align 2
  %86 = zext i16 %85 to i32
  %87 = load i16, i16* @NISTC_AI_STATUS1_SC_TC, align 2
  %88 = zext i16 %87 to i32
  %89 = and i32 %86, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %84
  %92 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %93 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i64, i64* @TRIG_COUNT, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %100

97:                                               ; preds = %91
  %98 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %99 = call i32 @shutdown_ai_command(%struct.comedi_device* %98)
  br label %100

100:                                              ; preds = %97, %91
  br label %101

101:                                              ; preds = %100, %84
  br label %102

102:                                              ; preds = %101, %3
  %103 = load i16, i16* %6, align 2
  %104 = zext i16 %103 to i32
  %105 = load i16, i16* @NISTC_AI_STATUS1_FIFO_HF, align 2
  %106 = zext i16 %105 to i32
  %107 = and i32 %104, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %130

109:                                              ; preds = %102
  store i32 0, i32* %8, align 4
  br label %110

110:                                              ; preds = %126, %109
  %111 = load i32, i32* %8, align 4
  %112 = icmp slt i32 %111, 10
  br i1 %112, label %113, label %129

113:                                              ; preds = %110
  %114 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %115 = call i32 @ni_handle_fifo_half_full(%struct.comedi_device* %114)
  %116 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %117 = load i32, i32* @NISTC_AI_STATUS1_REG, align 4
  %118 = call zeroext i16 @ni_stc_readw(%struct.comedi_device* %116, i32 %117)
  %119 = zext i16 %118 to i32
  %120 = load i16, i16* @NISTC_AI_STATUS1_FIFO_HF, align 2
  %121 = zext i16 %120 to i32
  %122 = and i32 %119, %121
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %113
  br label %129

125:                                              ; preds = %113
  br label %126

126:                                              ; preds = %125
  %127 = load i32, i32* %8, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %8, align 4
  br label %110

129:                                              ; preds = %124, %110
  br label %130

130:                                              ; preds = %129, %102
  %131 = load i16, i16* %6, align 2
  %132 = zext i16 %131 to i32
  %133 = load i16, i16* @NISTC_AI_STATUS1_STOP, align 2
  %134 = zext i16 %133 to i32
  %135 = and i32 %132, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %130
  %138 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %139 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %140 = call i32 @ni_handle_eos(%struct.comedi_device* %138, %struct.comedi_subdevice* %139)
  br label %141

141:                                              ; preds = %45, %83, %137, %130
  ret void
}

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i64 @comedi_is_subdevice_running(%struct.comedi_subdevice*) #1

declare dso_local i32 @shutdown_ai_command(%struct.comedi_device*) #1

declare dso_local i32 @ni_handle_fifo_half_full(%struct.comedi_device*) #1

declare dso_local zeroext i16 @ni_stc_readw(%struct.comedi_device*, i32) #1

declare dso_local i32 @ni_handle_eos(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
