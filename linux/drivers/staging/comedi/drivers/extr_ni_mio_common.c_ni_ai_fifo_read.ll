; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ai_fifo_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ai_fifo_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.ni_private* }
%struct.ni_private = type { i16*, i64, i64 }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32 }

@NI611X_AI_FIFO_DATA_REG = common dso_local global i32 0, align 4
@NI6143_AI_FIFO_DATA_REG = common dso_local global i32 0, align 4
@NI6143_AI_FIFO_CTRL_REG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"bug! ai_fifo_buffer too small\0A\00", align 1
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@NI_E_AI_FIFO_DATA_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @ni_ai_fifo_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_ai_fifo_read(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ni_private*, align 8
  %8 = alloca %struct.comedi_async*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  store i32 %2, i32* %6, align 4
  %12 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 1
  %14 = load %struct.ni_private*, %struct.ni_private** %13, align 8
  store %struct.ni_private* %14, %struct.ni_private** %7, align 8
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %16 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %15, i32 0, i32 0
  %17 = load %struct.comedi_async*, %struct.comedi_async** %16, align 8
  store %struct.comedi_async* %17, %struct.comedi_async** %8, align 8
  %18 = load %struct.ni_private*, %struct.ni_private** %7, align 8
  %19 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %60

22:                                               ; preds = %3
  store i32 0, i32* %11, align 4
  br label %23

23:                                               ; preds = %43, %22
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %6, align 4
  %26 = sdiv i32 %25, 2
  %27 = icmp slt i32 %24, %26
  br i1 %27, label %28, label %46

28:                                               ; preds = %23
  %29 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %30 = load i32, i32* @NI611X_AI_FIFO_DATA_REG, align 4
  %31 = call i32 @ni_readl(%struct.comedi_device* %29, i32 %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = lshr i32 %32, 16
  %34 = and i32 %33, 65535
  %35 = trunc i32 %34 to i16
  store i16 %35, i16* %10, align 2
  %36 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %37 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %36, i16* %10, i32 1)
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %38, 65535
  %40 = trunc i32 %39 to i16
  store i16 %40, i16* %10, align 2
  %41 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %42 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %41, i16* %10, i32 1)
  br label %43

43:                                               ; preds = %28
  %44 = load i32, i32* %11, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %23

46:                                               ; preds = %23
  %47 = load i32, i32* %6, align 4
  %48 = srem i32 %47, 2
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %46
  %51 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %52 = load i32, i32* @NI611X_AI_FIFO_DATA_REG, align 4
  %53 = call i32 @ni_readl(%struct.comedi_device* %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = and i32 %54, 65535
  %56 = trunc i32 %55 to i16
  store i16 %56, i16* %10, align 2
  %57 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %58 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %57, i16* %10, i32 1)
  br label %59

59:                                               ; preds = %50, %46
  br label %150

60:                                               ; preds = %3
  %61 = load %struct.ni_private*, %struct.ni_private** %7, align 8
  %62 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %107

65:                                               ; preds = %60
  store i32 0, i32* %11, align 4
  br label %66

66:                                               ; preds = %86, %65
  %67 = load i32, i32* %11, align 4
  %68 = load i32, i32* %6, align 4
  %69 = sdiv i32 %68, 2
  %70 = icmp slt i32 %67, %69
  br i1 %70, label %71, label %89

71:                                               ; preds = %66
  %72 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %73 = load i32, i32* @NI6143_AI_FIFO_DATA_REG, align 4
  %74 = call i32 @ni_readl(%struct.comedi_device* %72, i32 %73)
  store i32 %74, i32* %9, align 4
  %75 = load i32, i32* %9, align 4
  %76 = lshr i32 %75, 16
  %77 = and i32 %76, 65535
  %78 = trunc i32 %77 to i16
  store i16 %78, i16* %10, align 2
  %79 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %80 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %79, i16* %10, i32 1)
  %81 = load i32, i32* %9, align 4
  %82 = and i32 %81, 65535
  %83 = trunc i32 %82 to i16
  store i16 %83, i16* %10, align 2
  %84 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %85 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %84, i16* %10, i32 1)
  br label %86

86:                                               ; preds = %71
  %87 = load i32, i32* %11, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %11, align 4
  br label %66

89:                                               ; preds = %66
  %90 = load i32, i32* %6, align 4
  %91 = srem i32 %90, 2
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %106

93:                                               ; preds = %89
  %94 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %95 = load i32, i32* @NI6143_AI_FIFO_CTRL_REG, align 4
  %96 = call i32 @ni_writel(%struct.comedi_device* %94, i32 1, i32 %95)
  %97 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %98 = load i32, i32* @NI6143_AI_FIFO_DATA_REG, align 4
  %99 = call i32 @ni_readl(%struct.comedi_device* %97, i32 %98)
  store i32 %99, i32* %9, align 4
  %100 = load i32, i32* %9, align 4
  %101 = lshr i32 %100, 16
  %102 = and i32 %101, 65535
  %103 = trunc i32 %102 to i16
  store i16 %103, i16* %10, align 2
  %104 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %105 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %104, i16* %10, i32 1)
  br label %106

106:                                              ; preds = %93, %89
  br label %149

107:                                              ; preds = %60
  %108 = load i32, i32* %6, align 4
  %109 = load %struct.ni_private*, %struct.ni_private** %7, align 8
  %110 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %109, i32 0, i32 0
  %111 = load i16*, i16** %110, align 8
  %112 = call i32 @ARRAY_SIZE(i16* %111)
  %113 = icmp sgt i32 %108, %112
  br i1 %113, label %114, label %124

114:                                              ; preds = %107
  %115 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %116 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @dev_err(i32 %117, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %119 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %120 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %121 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 4
  br label %150

124:                                              ; preds = %107
  store i32 0, i32* %11, align 4
  br label %125

125:                                              ; preds = %139, %124
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %6, align 4
  %128 = icmp slt i32 %126, %127
  br i1 %128, label %129, label %142

129:                                              ; preds = %125
  %130 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %131 = load i32, i32* @NI_E_AI_FIFO_DATA_REG, align 4
  %132 = call zeroext i16 @ni_readw(%struct.comedi_device* %130, i32 %131)
  %133 = load %struct.ni_private*, %struct.ni_private** %7, align 8
  %134 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %133, i32 0, i32 0
  %135 = load i16*, i16** %134, align 8
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds i16, i16* %135, i64 %137
  store i16 %132, i16* %138, align 2
  br label %139

139:                                              ; preds = %129
  %140 = load i32, i32* %11, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %11, align 4
  br label %125

142:                                              ; preds = %125
  %143 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %144 = load %struct.ni_private*, %struct.ni_private** %7, align 8
  %145 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %144, i32 0, i32 0
  %146 = load i16*, i16** %145, align 8
  %147 = load i32, i32* %6, align 4
  %148 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %143, i16* %146, i32 %147)
  br label %149

149:                                              ; preds = %142, %106
  br label %150

150:                                              ; preds = %114, %149, %59
  ret void
}

declare dso_local i32 @ni_readl(%struct.comedi_device*, i32) #1

declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i16*, i32) #1

declare dso_local i32 @ni_writel(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i16*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local zeroext i16 @ni_readw(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
