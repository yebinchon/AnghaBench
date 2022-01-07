; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das800.c_das800_interrupt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_das800.c_das800_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i64, i32, %struct.comedi_subdevice*, %struct.das800_private* }
%struct.comedi_subdevice = type { i32, %struct.comedi_async* }
%struct.comedi_async = type { i64, i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i64 }
%struct.das800_private = type { i32 }

@DAS800_STATUS = common dso_local global i64 0, align 8
@IRQ = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@CONTROL1 = common dso_local global i32 0, align 4
@STATUS2_HCEN = common dso_local global i32 0, align 4
@DAS802_16_HALF_FIFO_SZ = common dso_local global i32 0, align 4
@FIFO_EMPTY = common dso_local global i32 0, align 4
@FIFO_OVF = common dso_local global i32 0, align 4
@DAS800_GAIN = common dso_local global i64 0, align 8
@CIO_FFOV = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i64 0, align 8
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@COMEDI_CB_ERROR = common dso_local global i32 0, align 4
@COMEDI_CB_CANCEL_MASK = common dso_local global i32 0, align 4
@CONTROL1_INTE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @das800_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @das800_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.das800_private*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca %struct.comedi_async*, align 8
  %10 = alloca %struct.comedi_cmd*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %17 = load i8*, i8** %5, align 8
  %18 = bitcast i8* %17 to %struct.comedi_device*
  store %struct.comedi_device* %18, %struct.comedi_device** %6, align 8
  %19 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 4
  %21 = load %struct.das800_private*, %struct.das800_private** %20, align 8
  store %struct.das800_private* %21, %struct.das800_private** %7, align 8
  %22 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 3
  %24 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %23, align 8
  store %struct.comedi_subdevice* %24, %struct.comedi_subdevice** %8, align 8
  %25 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @DAS800_STATUS, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @inb(i64 %29)
  store i32 %30, i32* %12, align 4
  %31 = load i32, i32* %12, align 4
  %32 = load i32, i32* @IRQ, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %2
  %36 = load i32, i32* @IRQ_NONE, align 4
  store i32 %36, i32* %3, align 4
  br label %202

37:                                               ; preds = %2
  %38 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %39 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %43, i32* %3, align 4
  br label %202

44:                                               ; preds = %37
  %45 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %46 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %45, i32 0, i32 1
  %47 = load %struct.comedi_async*, %struct.comedi_async** %46, align 8
  store %struct.comedi_async* %47, %struct.comedi_async** %9, align 8
  %48 = load %struct.comedi_async*, %struct.comedi_async** %9, align 8
  %49 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %48, i32 0, i32 2
  store %struct.comedi_cmd* %49, %struct.comedi_cmd** %10, align 8
  %50 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %51 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %50, i32 0, i32 0
  %52 = load i64, i64* %11, align 8
  %53 = call i32 @spin_lock_irqsave(i32* %51, i64 %52)
  %54 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %55 = load i32, i32* @CONTROL1, align 4
  %56 = call i32 @das800_ind_read(%struct.comedi_device* %54, i32 %55)
  %57 = load i32, i32* @STATUS2_HCEN, align 4
  %58 = and i32 %56, %57
  store i32 %58, i32* %12, align 4
  %59 = load i32, i32* %12, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %44
  %62 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %63 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %62, i32 0, i32 0
  %64 = load i64, i64* %11, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  %66 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %66, i32* %3, align 4
  br label %202

67:                                               ; preds = %44
  store i32 0, i32* %16, align 4
  br label %68

68:                                               ; preds = %150, %67
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* @DAS802_16_HALF_FIFO_SZ, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %153

72:                                               ; preds = %68
  %73 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %74 = call i32 @das800_ai_get_sample(%struct.comedi_device* %73)
  store i32 %74, i32* %13, align 4
  %75 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %76 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp eq i32 %77, 4095
  br i1 %78, label %79, label %94

79:                                               ; preds = %72
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* @FIFO_EMPTY, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  %85 = xor i1 %84, true
  %86 = zext i1 %85 to i32
  store i32 %86, i32* %14, align 4
  %87 = load i32, i32* %13, align 4
  %88 = load i32, i32* @FIFO_OVF, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  %92 = xor i1 %91, true
  %93 = zext i1 %92 to i32
  store i32 %93, i32* %15, align 4
  br label %107

94:                                               ; preds = %72
  store i32 0, i32* %14, align 4
  %95 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %96 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @DAS800_GAIN, align 8
  %99 = add nsw i64 %97, %98
  %100 = call i32 @inb(i64 %99)
  %101 = load i32, i32* @CIO_FFOV, align 4
  %102 = and i32 %100, %101
  %103 = icmp ne i32 %102, 0
  %104 = xor i1 %103, true
  %105 = xor i1 %104, true
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %15, align 4
  br label %107

107:                                              ; preds = %94, %79
  %108 = load i32, i32* %14, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %113, label %110

110:                                              ; preds = %107
  %111 = load i32, i32* %15, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %114

113:                                              ; preds = %110, %107
  br label %153

114:                                              ; preds = %110
  %115 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %116 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 4095
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load i32, i32* %13, align 4
  %121 = lshr i32 %120, 4
  store i32 %121, i32* %13, align 4
  br label %122

122:                                              ; preds = %119, %114
  %123 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %124 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i32, i32* %13, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %13, align 4
  %128 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %129 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %128, i32* %13, i32 1)
  %130 = load %struct.comedi_cmd*, %struct.comedi_cmd** %10, align 8
  %131 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = load i64, i64* @TRIG_COUNT, align 8
  %134 = icmp eq i64 %132, %133
  br i1 %134, label %135, label %149

135:                                              ; preds = %122
  %136 = load %struct.comedi_async*, %struct.comedi_async** %9, align 8
  %137 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %136, i32 0, i32 0
  %138 = load i64, i64* %137, align 8
  %139 = load %struct.comedi_cmd*, %struct.comedi_cmd** %10, align 8
  %140 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = icmp sge i64 %138, %141
  br i1 %142, label %143, label %149

143:                                              ; preds = %135
  %144 = load i32, i32* @COMEDI_CB_EOA, align 4
  %145 = load %struct.comedi_async*, %struct.comedi_async** %9, align 8
  %146 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = or i32 %147, %144
  store i32 %148, i32* %146, align 8
  br label %153

149:                                              ; preds = %135, %122
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %16, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %16, align 4
  br label %68

153:                                              ; preds = %143, %113, %68
  %154 = load i32, i32* %15, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %170

156:                                              ; preds = %153
  %157 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %158 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %157, i32 0, i32 0
  %159 = load i64, i64* %11, align 8
  %160 = call i32 @spin_unlock_irqrestore(i32* %158, i64 %159)
  %161 = load i32, i32* @COMEDI_CB_ERROR, align 4
  %162 = load %struct.comedi_async*, %struct.comedi_async** %9, align 8
  %163 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 8
  %166 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %167 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %168 = call i32 @comedi_handle_events(%struct.comedi_device* %166, %struct.comedi_subdevice* %167)
  %169 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %169, i32* %3, align 4
  br label %202

170:                                              ; preds = %153
  %171 = load %struct.comedi_async*, %struct.comedi_async** %9, align 8
  %172 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @COMEDI_CB_CANCEL_MASK, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  br i1 %176, label %190, label %177

177:                                              ; preds = %170
  %178 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %179 = load i32, i32* @CONTROL1_INTE, align 4
  %180 = load %struct.das800_private*, %struct.das800_private** %7, align 8
  %181 = getelementptr inbounds %struct.das800_private, %struct.das800_private* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = or i32 %179, %182
  %184 = load i32, i32* @CONTROL1, align 4
  %185 = call i32 @das800_ind_write(%struct.comedi_device* %178, i32 %183, i32 %184)
  %186 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %187 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %186, i32 0, i32 0
  %188 = load i64, i64* %11, align 8
  %189 = call i32 @spin_unlock_irqrestore(i32* %187, i64 %188)
  br label %197

190:                                              ; preds = %170
  %191 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %192 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %191, i32 0, i32 0
  %193 = load i64, i64* %11, align 8
  %194 = call i32 @spin_unlock_irqrestore(i32* %192, i64 %193)
  %195 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %196 = call i32 @das800_disable(%struct.comedi_device* %195)
  br label %197

197:                                              ; preds = %190, %177
  %198 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %199 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %200 = call i32 @comedi_handle_events(%struct.comedi_device* %198, %struct.comedi_subdevice* %199)
  %201 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %201, i32* %3, align 4
  br label %202

202:                                              ; preds = %197, %156, %61, %42, %35
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @das800_ind_read(%struct.comedi_device*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @das800_ai_get_sample(%struct.comedi_device*) #1

declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i32*, i32) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

declare dso_local i32 @das800_ind_write(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @das800_disable(%struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
