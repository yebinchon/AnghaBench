; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_test.c_waveform_ao_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_test.c_waveform_ao_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waveform_private = type { i32, i32, i16*, i32, %struct.comedi_device* }
%struct.comedi_device = type { %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i64, i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i64, i64, i32* }
%struct.timer_list = type { i32 }

@ao_timer = common dso_local global i32 0, align 4
@COMEDI_CB_OVERFLOW = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i64 0, align 8
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@devpriv = common dso_local global %struct.waveform_private* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @waveform_ao_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @waveform_ao_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.waveform_private*, align 8
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.comedi_async*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i16*, align 8
  %16 = alloca i32, align 4
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %17 = load %struct.waveform_private*, %struct.waveform_private** %3, align 8
  %18 = ptrtoint %struct.waveform_private* %17 to i32
  %19 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %20 = load i32, i32* @ao_timer, align 4
  %21 = call %struct.waveform_private* @from_timer(i32 %18, %struct.timer_list* %19, i32 %20)
  store %struct.waveform_private* %21, %struct.waveform_private** %3, align 8
  %22 = load %struct.waveform_private*, %struct.waveform_private** %3, align 8
  %23 = getelementptr inbounds %struct.waveform_private, %struct.waveform_private* %22, i32 0, i32 4
  %24 = load %struct.comedi_device*, %struct.comedi_device** %23, align 8
  store %struct.comedi_device* %24, %struct.comedi_device** %4, align 8
  %25 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 0
  %27 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %26, align 8
  store %struct.comedi_subdevice* %27, %struct.comedi_subdevice** %5, align 8
  %28 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %29 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %28, i32 0, i32 0
  %30 = load %struct.comedi_async*, %struct.comedi_async** %29, align 8
  store %struct.comedi_async* %30, %struct.comedi_async** %6, align 8
  %31 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %32 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %31, i32 0, i32 2
  store %struct.comedi_cmd* %32, %struct.comedi_cmd** %7, align 8
  store i32 0, i32* %10, align 4
  %33 = call i32 (...) @ktime_get()
  %34 = call i32 @ktime_to_us(i32 %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.waveform_private*, %struct.waveform_private** %3, align 8
  %37 = getelementptr inbounds %struct.waveform_private, %struct.waveform_private* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = sub nsw i32 %35, %38
  store i32 %39, i32* %9, align 4
  %40 = load i32, i32* %9, align 4
  %41 = load %struct.waveform_private*, %struct.waveform_private** %3, align 8
  %42 = getelementptr inbounds %struct.waveform_private, %struct.waveform_private* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @do_div(i32 %40, i32 %43)
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %136

47:                                               ; preds = %1
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %49 = call i32 @comedi_nscans_left(%struct.comedi_subdevice* %48, i32 0)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ugt i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* %9, align 4
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %53, %47
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %135

58:                                               ; preds = %55
  %59 = load i32, i32* %10, align 4
  %60 = icmp ugt i32 %59, 1
  br i1 %60, label %61, label %89

61:                                               ; preds = %58
  %62 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %63 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %64 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %10, align 4
  %67 = sub i32 %66, 1
  %68 = mul i32 %65, %67
  %69 = call i32 @comedi_samples_to_bytes(%struct.comedi_subdevice* %62, i32 %68)
  store i32 %69, i32* %12, align 4
  %70 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %71 = load i32, i32* %12, align 4
  %72 = call i32 @comedi_buf_read_alloc(%struct.comedi_subdevice* %70, i32 %71)
  store i32 %72, i32* %13, align 4
  %73 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %74 = load i32, i32* %13, align 4
  %75 = call i32 @comedi_buf_read_free(%struct.comedi_subdevice* %73, i32 %74)
  %76 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %77 = load i32, i32* %13, align 4
  %78 = call i32 @comedi_inc_scan_progress(%struct.comedi_subdevice* %76, i32 %77)
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %12, align 4
  %81 = icmp ult i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %61
  %83 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %84 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %85 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = or i32 %86, %83
  store i32 %87, i32* %85, align 8
  br label %185

88:                                               ; preds = %61
  br label %89

89:                                               ; preds = %88, %58
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %122, %89
  %91 = load i32, i32* %11, align 4
  %92 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %93 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = icmp ult i32 %91, %94
  br i1 %95, label %96, label %125

96:                                               ; preds = %90
  %97 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %98 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %97, i32 0, i32 3
  %99 = load i32*, i32** %98, align 8
  %100 = load i32, i32* %11, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @CR_CHAN(i32 %103)
  store i32 %104, i32* %14, align 4
  %105 = load %struct.waveform_private*, %struct.waveform_private** %3, align 8
  %106 = getelementptr inbounds %struct.waveform_private, %struct.waveform_private* %105, i32 0, i32 2
  %107 = load i16*, i16** %106, align 8
  %108 = load i32, i32* %14, align 4
  %109 = zext i32 %108 to i64
  %110 = getelementptr inbounds i16, i16* %107, i64 %109
  store i16* %110, i16** %15, align 8
  %111 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %112 = load i16*, i16** %15, align 8
  %113 = call i32 @comedi_buf_read_samples(%struct.comedi_subdevice* %111, i16* %112, i32 1)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %121, label %115

115:                                              ; preds = %96
  %116 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %117 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %118 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, %116
  store i32 %120, i32* %118, align 8
  br label %185

121:                                              ; preds = %96
  br label %122

122:                                              ; preds = %121
  %123 = load i32, i32* %11, align 4
  %124 = add i32 %123, 1
  store i32 %124, i32* %11, align 4
  br label %90

125:                                              ; preds = %90
  %126 = load i32, i32* %10, align 4
  %127 = load %struct.waveform_private*, %struct.waveform_private** %3, align 8
  %128 = getelementptr inbounds %struct.waveform_private, %struct.waveform_private* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = mul nsw i32 %126, %129
  %131 = load %struct.waveform_private*, %struct.waveform_private** %3, align 8
  %132 = getelementptr inbounds %struct.waveform_private, %struct.waveform_private* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 8
  %134 = add nsw i32 %133, %130
  store i32 %134, i32* %132, align 8
  br label %135

135:                                              ; preds = %125, %55
  br label %136

136:                                              ; preds = %135, %1
  %137 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %138 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = load i64, i64* @TRIG_COUNT, align 8
  %141 = icmp eq i64 %139, %140
  br i1 %141, label %142, label %156

142:                                              ; preds = %136
  %143 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %144 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %147 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %146, i32 0, i32 2
  %148 = load i64, i64* %147, align 8
  %149 = icmp sge i64 %145, %148
  br i1 %149, label %150, label %156

150:                                              ; preds = %142
  %151 = load i32, i32* @COMEDI_CB_EOA, align 4
  %152 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %153 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = or i32 %154, %151
  store i32 %155, i32* %153, align 8
  br label %184

156:                                              ; preds = %142, %136
  %157 = load i32, i32* %10, align 4
  %158 = load i32, i32* %9, align 4
  %159 = icmp ult i32 %157, %158
  br i1 %159, label %160, label %166

160:                                              ; preds = %156
  %161 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %162 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %163 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = or i32 %164, %161
  store i32 %165, i32* %163, align 8
  br label %183

166:                                              ; preds = %156
  %167 = load %struct.waveform_private*, %struct.waveform_private** %3, align 8
  %168 = getelementptr inbounds %struct.waveform_private, %struct.waveform_private* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.waveform_private*, %struct.waveform_private** %3, align 8
  %171 = getelementptr inbounds %struct.waveform_private, %struct.waveform_private* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = add nsw i32 %169, %172
  %174 = load i32, i32* %8, align 4
  %175 = sub nsw i32 %173, %174
  store i32 %175, i32* %16, align 4
  %176 = load %struct.waveform_private*, %struct.waveform_private** %3, align 8
  %177 = getelementptr inbounds %struct.waveform_private, %struct.waveform_private* %176, i32 0, i32 3
  %178 = load i64, i64* @jiffies, align 8
  %179 = load i32, i32* %16, align 4
  %180 = call i64 @usecs_to_jiffies(i32 %179)
  %181 = add nsw i64 %178, %180
  %182 = call i32 @mod_timer(i32* %177, i64 %181)
  br label %183

183:                                              ; preds = %166, %160
  br label %184

184:                                              ; preds = %183, %150
  br label %185

185:                                              ; preds = %184, %115, %82
  %186 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %187 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %188 = call i32 @comedi_handle_events(%struct.comedi_device* %186, %struct.comedi_subdevice* %187)
  ret void
}

declare dso_local %struct.waveform_private* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @ktime_to_us(i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @do_div(i32, i32) #1

declare dso_local i32 @comedi_nscans_left(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @comedi_samples_to_bytes(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @comedi_buf_read_alloc(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @comedi_buf_read_free(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @comedi_inc_scan_progress(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @comedi_buf_read_samples(%struct.comedi_subdevice*, i16*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
