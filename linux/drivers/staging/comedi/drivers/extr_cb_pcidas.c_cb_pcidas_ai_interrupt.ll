; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_ai_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas.c_cb_pcidas_ai_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.comedi_subdevice*, %struct.cb_pcidas_private*, %struct.cb_pcidas_board* }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i64, i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i64 }
%struct.cb_pcidas_private = type { i16*, i64, i64 }
%struct.cb_pcidas_board = type { i32 }

@PCIDAS_CTRL_ADHFI = common dso_local global i32 0, align 4
@PCIDAS_CTRL_INT_CLR = common dso_local global i32 0, align 4
@PCIDAS_AI_DATA_REG = common dso_local global i64 0, align 8
@TRIG_COUNT = common dso_local global i64 0, align 8
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@PCIDAS_CTRL_ADNEI = common dso_local global i32 0, align 4
@PCIDAS_CTRL_EOBI = common dso_local global i32 0, align 4
@PCIDAS_CTRL_REG = common dso_local global i64 0, align 8
@PCIDAS_CTRL_ADNE = common dso_local global i16 0, align 2
@PCIDAS_CTRL_EOAI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"bug! encountered end of acquisition interrupt?\0A\00", align 1
@PCIDAS_CTRL_LADFUL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"fifo overflow\0A\00", align 1
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32)* @cb_pcidas_ai_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cb_pcidas_ai_interrupt(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.cb_pcidas_board*, align 8
  %6 = alloca %struct.cb_pcidas_private*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca %struct.comedi_async*, align 8
  %9 = alloca %struct.comedi_cmd*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %14 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %15 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %14, i32 0, i32 3
  %16 = load %struct.cb_pcidas_board*, %struct.cb_pcidas_board** %15, align 8
  store %struct.cb_pcidas_board* %16, %struct.cb_pcidas_board** %5, align 8
  %17 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %18 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %17, i32 0, i32 2
  %19 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %18, align 8
  store %struct.cb_pcidas_private* %19, %struct.cb_pcidas_private** %6, align 8
  %20 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %21 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %20, i32 0, i32 1
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %21, align 8
  store %struct.comedi_subdevice* %22, %struct.comedi_subdevice** %7, align 8
  %23 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %24 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %23, i32 0, i32 0
  %25 = load %struct.comedi_async*, %struct.comedi_async** %24, align 8
  store %struct.comedi_async* %25, %struct.comedi_async** %8, align 8
  %26 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %27 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %26, i32 0, i32 2
  store %struct.comedi_cmd* %27, %struct.comedi_cmd** %9, align 8
  store i32 0, i32* %10, align 4
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @PCIDAS_CTRL_ADHFI, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %78

32:                                               ; preds = %2
  %33 = load i32, i32* @PCIDAS_CTRL_INT_CLR, align 4
  %34 = load i32, i32* %10, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %10, align 4
  %36 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %37 = load %struct.cb_pcidas_board*, %struct.cb_pcidas_board** %5, align 8
  %38 = getelementptr inbounds %struct.cb_pcidas_board, %struct.cb_pcidas_board* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 %39, 2
  %41 = call i32 @comedi_nsamples_left(%struct.comedi_subdevice* %36, i32 %40)
  store i32 %41, i32* %11, align 4
  %42 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %6, align 8
  %43 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PCIDAS_AI_DATA_REG, align 8
  %46 = add nsw i64 %44, %45
  %47 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %6, align 8
  %48 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %47, i32 0, i32 0
  %49 = load i16*, i16** %48, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @insw(i64 %46, i16* %49, i32 %50)
  %52 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %53 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %6, align 8
  %54 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %53, i32 0, i32 0
  %55 = load i16*, i16** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %52, i16* %55, i32 %56)
  %58 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %59 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @TRIG_COUNT, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %32
  %64 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %65 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %68 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp sge i64 %66, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %63
  %72 = load i32, i32* @COMEDI_CB_EOA, align 4
  %73 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %74 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %72
  store i32 %76, i32* %74, align 8
  br label %77

77:                                               ; preds = %71, %63, %32
  br label %153

78:                                               ; preds = %2
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @PCIDAS_CTRL_ADNEI, align 4
  %81 = load i32, i32* @PCIDAS_CTRL_EOBI, align 4
  %82 = or i32 %80, %81
  %83 = and i32 %79, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %138

85:                                               ; preds = %78
  %86 = load i32, i32* @PCIDAS_CTRL_INT_CLR, align 4
  %87 = load i32, i32* %10, align 4
  %88 = or i32 %87, %86
  store i32 %88, i32* %10, align 4
  store i32 0, i32* %12, align 4
  br label %89

89:                                               ; preds = %134, %85
  %90 = load i32, i32* %12, align 4
  %91 = icmp ult i32 %90, 10000
  br i1 %91, label %92, label %137

92:                                               ; preds = %89
  %93 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %6, align 8
  %94 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @PCIDAS_CTRL_REG, align 8
  %97 = add nsw i64 %95, %96
  %98 = call zeroext i16 @inw(i64 %97)
  %99 = zext i16 %98 to i32
  %100 = load i16, i16* @PCIDAS_CTRL_ADNE, align 2
  %101 = zext i16 %100 to i32
  %102 = and i32 %99, %101
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %92
  br label %137

105:                                              ; preds = %92
  %106 = load %struct.cb_pcidas_private*, %struct.cb_pcidas_private** %6, align 8
  %107 = getelementptr inbounds %struct.cb_pcidas_private, %struct.cb_pcidas_private* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @PCIDAS_AI_DATA_REG, align 8
  %110 = add nsw i64 %108, %109
  %111 = call zeroext i16 @inw(i64 %110)
  store i16 %111, i16* %13, align 2
  %112 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %113 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %112, i16* %13, i32 1)
  %114 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %115 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @TRIG_COUNT, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %133

119:                                              ; preds = %105
  %120 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %121 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.comedi_cmd*, %struct.comedi_cmd** %9, align 8
  %124 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %123, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = icmp sge i64 %122, %125
  br i1 %126, label %127, label %133

127:                                              ; preds = %119
  %128 = load i32, i32* @COMEDI_CB_EOA, align 4
  %129 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %130 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 8
  br label %137

133:                                              ; preds = %119, %105
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %12, align 4
  %136 = add i32 %135, 1
  store i32 %136, i32* %12, align 4
  br label %89

137:                                              ; preds = %127, %104, %89
  br label %152

138:                                              ; preds = %78
  %139 = load i32, i32* %4, align 4
  %140 = load i32, i32* @PCIDAS_CTRL_EOAI, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %151

143:                                              ; preds = %138
  %144 = load i32, i32* @PCIDAS_CTRL_EOAI, align 4
  %145 = load i32, i32* %10, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %10, align 4
  %147 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %148 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @dev_err(i32 %149, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %151

151:                                              ; preds = %143, %138
  br label %152

152:                                              ; preds = %151, %137
  br label %153

153:                                              ; preds = %152, %77
  %154 = load i32, i32* %4, align 4
  %155 = load i32, i32* @PCIDAS_CTRL_LADFUL, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %171

158:                                              ; preds = %153
  %159 = load i32, i32* @PCIDAS_CTRL_LADFUL, align 4
  %160 = load i32, i32* %10, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %10, align 4
  %162 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %163 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @dev_err(i32 %164, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %166 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %167 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %168 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 8
  br label %171

171:                                              ; preds = %158, %153
  %172 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %173 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %174 = call i32 @comedi_handle_events(%struct.comedi_device* %172, %struct.comedi_subdevice* %173)
  %175 = load i32, i32* %10, align 4
  ret i32 %175
}

declare dso_local i32 @comedi_nsamples_left(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @insw(i64, i16*, i32) #1

declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i16*, i32) #1

declare dso_local zeroext i16 @inw(i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
