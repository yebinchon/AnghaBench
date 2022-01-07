; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_test.c_waveform_ai_timer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_comedi_test.c_waveform_ai_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.waveform_private = type { i64, i32, i32, i32, i32, i32, %struct.comedi_device* }
%struct.comedi_device = type { %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i64, i64, i64, i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32*, i32, i64, i64 }
%struct.timer_list = type { i32 }

@ai_timer = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i64 0, align 8
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@devpriv = common dso_local global %struct.waveform_private* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @waveform_ai_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @waveform_ai_timer(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.waveform_private*, align 8
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.comedi_async*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i16, align 2
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %13 = load %struct.waveform_private*, %struct.waveform_private** %3, align 8
  %14 = ptrtoint %struct.waveform_private* %13 to i32
  %15 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %16 = load i32, i32* @ai_timer, align 4
  %17 = call %struct.waveform_private* @from_timer(i32 %14, %struct.timer_list* %15, i32 %16)
  store %struct.waveform_private* %17, %struct.waveform_private** %3, align 8
  %18 = load %struct.waveform_private*, %struct.waveform_private** %3, align 8
  %19 = getelementptr inbounds %struct.waveform_private, %struct.waveform_private* %18, i32 0, i32 6
  %20 = load %struct.comedi_device*, %struct.comedi_device** %19, align 8
  store %struct.comedi_device* %20, %struct.comedi_device** %4, align 8
  %21 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 0
  %23 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %22, align 8
  store %struct.comedi_subdevice* %23, %struct.comedi_subdevice** %5, align 8
  %24 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %25 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %24, i32 0, i32 0
  %26 = load %struct.comedi_async*, %struct.comedi_async** %25, align 8
  store %struct.comedi_async* %26, %struct.comedi_async** %6, align 8
  %27 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %28 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %27, i32 0, i32 4
  store %struct.comedi_cmd* %28, %struct.comedi_cmd** %7, align 8
  %29 = call i32 (...) @ktime_get()
  %30 = call i64 @ktime_to_us(i32 %29)
  store i64 %30, i64* %8, align 8
  %31 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %32 = load i32, i32* @UINT_MAX, align 4
  %33 = call i32 @comedi_nsamples_left(%struct.comedi_subdevice* %31, i32 %32)
  store i32 %33, i32* %9, align 4
  br label %34

34:                                               ; preds = %110, %1
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %34
  %38 = load %struct.waveform_private*, %struct.waveform_private** %3, align 8
  %39 = getelementptr inbounds %struct.waveform_private, %struct.waveform_private* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %8, align 8
  %42 = icmp slt i64 %40, %41
  br label %43

43:                                               ; preds = %37, %34
  %44 = phi i1 [ false, %34 ], [ %42, %37 ]
  br i1 %44, label %45, label %119

45:                                               ; preds = %43
  %46 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %47 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %50 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = getelementptr inbounds i32, i32* %48, i64 %51
  %53 = load i32, i32* %52, align 4
  store i32 %53, i32* %11, align 4
  %54 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @CR_CHAN(i32 %55)
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @CR_RANGE(i32 %57)
  %59 = load %struct.waveform_private*, %struct.waveform_private** %3, align 8
  %60 = getelementptr inbounds %struct.waveform_private, %struct.waveform_private* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call zeroext i16 @fake_waveform(%struct.comedi_device* %54, i32 %56, i32 %58, i32 %61)
  store i16 %62, i16* %12, align 2
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %64 = call i64 @comedi_buf_write_samples(%struct.comedi_subdevice* %63, i16* %12, i32 1)
  %65 = icmp eq i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %45
  br label %162

67:                                               ; preds = %45
  %68 = load %struct.waveform_private*, %struct.waveform_private** %3, align 8
  %69 = getelementptr inbounds %struct.waveform_private, %struct.waveform_private* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  store i32 %70, i32* %10, align 4
  %71 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %72 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %89

75:                                               ; preds = %67
  %76 = load %struct.waveform_private*, %struct.waveform_private** %3, align 8
  %77 = getelementptr inbounds %struct.waveform_private, %struct.waveform_private* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.waveform_private*, %struct.waveform_private** %3, align 8
  %80 = getelementptr inbounds %struct.waveform_private, %struct.waveform_private* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %83 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = mul i32 %81, %84
  %86 = sub i32 %78, %85
  %87 = load i32, i32* %10, align 4
  %88 = add i32 %87, %86
  store i32 %88, i32* %10, align 4
  br label %89

89:                                               ; preds = %75, %67
  %90 = load i32, i32* %10, align 4
  %91 = load %struct.waveform_private*, %struct.waveform_private** %3, align 8
  %92 = getelementptr inbounds %struct.waveform_private, %struct.waveform_private* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = add i32 %93, %90
  store i32 %94, i32* %92, align 8
  %95 = load %struct.waveform_private*, %struct.waveform_private** %3, align 8
  %96 = getelementptr inbounds %struct.waveform_private, %struct.waveform_private* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 8
  %98 = load %struct.waveform_private*, %struct.waveform_private** %3, align 8
  %99 = getelementptr inbounds %struct.waveform_private, %struct.waveform_private* %98, i32 0, i32 4
  %100 = load i32, i32* %99, align 4
  %101 = icmp uge i32 %97, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %89
  %103 = load %struct.waveform_private*, %struct.waveform_private** %3, align 8
  %104 = getelementptr inbounds %struct.waveform_private, %struct.waveform_private* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.waveform_private*, %struct.waveform_private** %3, align 8
  %107 = getelementptr inbounds %struct.waveform_private, %struct.waveform_private* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = urem i32 %108, %105
  store i32 %109, i32* %107, align 8
  br label %110

110:                                              ; preds = %102, %89
  %111 = load i32, i32* %10, align 4
  %112 = zext i32 %111 to i64
  %113 = load %struct.waveform_private*, %struct.waveform_private** %3, align 8
  %114 = getelementptr inbounds %struct.waveform_private, %struct.waveform_private* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = add nsw i64 %115, %112
  store i64 %116, i64* %114, align 8
  %117 = load i32, i32* %9, align 4
  %118 = add i32 %117, -1
  store i32 %118, i32* %9, align 4
  br label %34

119:                                              ; preds = %43
  %120 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %121 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @TRIG_COUNT, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %139

125:                                              ; preds = %119
  %126 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %127 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %126, i32 0, i32 2
  %128 = load i64, i64* %127, align 8
  %129 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %130 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = icmp sge i64 %128, %131
  br i1 %132, label %133, label %139

133:                                              ; preds = %125
  %134 = load i32, i32* @COMEDI_CB_EOA, align 4
  %135 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %136 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = or i32 %137, %134
  store i32 %138, i32* %136, align 8
  br label %161

139:                                              ; preds = %125, %119
  %140 = load %struct.waveform_private*, %struct.waveform_private** %3, align 8
  %141 = getelementptr inbounds %struct.waveform_private, %struct.waveform_private* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* %8, align 8
  %144 = icmp sgt i64 %142, %143
  br i1 %144, label %145, label %152

145:                                              ; preds = %139
  %146 = load %struct.waveform_private*, %struct.waveform_private** %3, align 8
  %147 = getelementptr inbounds %struct.waveform_private, %struct.waveform_private* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* %8, align 8
  %150 = sub nsw i64 %148, %149
  %151 = trunc i64 %150 to i32
  store i32 %151, i32* %10, align 4
  br label %153

152:                                              ; preds = %139
  store i32 1, i32* %10, align 4
  br label %153

153:                                              ; preds = %152, %145
  %154 = load %struct.waveform_private*, %struct.waveform_private** %3, align 8
  %155 = getelementptr inbounds %struct.waveform_private, %struct.waveform_private* %154, i32 0, i32 5
  %156 = load i64, i64* @jiffies, align 8
  %157 = load i32, i32* %10, align 4
  %158 = call i64 @usecs_to_jiffies(i32 %157)
  %159 = add nsw i64 %156, %158
  %160 = call i32 @mod_timer(i32* %155, i64 %159)
  br label %161

161:                                              ; preds = %153, %133
  br label %162

162:                                              ; preds = %161, %66
  %163 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %164 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %165 = call i32 @comedi_handle_events(%struct.comedi_device* %163, %struct.comedi_subdevice* %164)
  ret void
}

declare dso_local %struct.waveform_private* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i64 @ktime_to_us(i32) #1

declare dso_local i32 @ktime_get(...) #1

declare dso_local i32 @comedi_nsamples_left(%struct.comedi_subdevice*, i32) #1

declare dso_local zeroext i16 @fake_waveform(%struct.comedi_device*, i32, i32, i32) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @CR_RANGE(i32) #1

declare dso_local i64 @comedi_buf_write_samples(%struct.comedi_subdevice*, i16*, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @usecs_to_jiffies(i32) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
