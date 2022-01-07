; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_me4000.c_me4000_ai_do_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_me4000.c_me4000_ai_do_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, %struct.me4000_private* }
%struct.me4000_private = type { i32, i32, i32, i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i32, i32, i64, i32 }

@ME4000_AI_SCAN_PRE_TIMER_LOW_REG = common dso_local global i64 0, align 8
@ME4000_AI_SCAN_PRE_TIMER_HIGH_REG = common dso_local global i64 0, align 8
@ME4000_AI_SCAN_TIMER_LOW_REG = common dso_local global i64 0, align 8
@ME4000_AI_SCAN_TIMER_HIGH_REG = common dso_local global i64 0, align 8
@ME4000_AI_CHAN_PRE_TIMER_REG = common dso_local global i64 0, align 8
@ME4000_AI_CHAN_TIMER_REG = common dso_local global i64 0, align 8
@ME4000_AI_CTRL_CHANNEL_FIFO = common dso_local global i32 0, align 4
@ME4000_AI_CTRL_DATA_FIFO = common dso_local global i32 0, align 4
@TRIG_COUNT = common dso_local global i64 0, align 8
@ME4000_AI_SAMPLE_COUNTER_REG = common dso_local global i64 0, align 8
@ME4000_AI_CTRL_SC_IRQ = common dso_local global i32 0, align 4
@TRIG_NONE = common dso_local global i64 0, align 8
@ME4000_AI_CTRL_HF_IRQ = common dso_local global i32 0, align 4
@ME4000_AI_CTRL_REG = common dso_local global i64 0, align 8
@ME4000_AI_START_REG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_subdevice*)* @me4000_ai_do_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @me4000_ai_do_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.me4000_private*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %8 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %9 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %8, i32 0, i32 1
  %10 = load %struct.me4000_private*, %struct.me4000_private** %9, align 8
  store %struct.me4000_private* %10, %struct.me4000_private** %5, align 8
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %12 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.comedi_cmd* %14, %struct.comedi_cmd** %6, align 8
  %15 = load %struct.me4000_private*, %struct.me4000_private** %5, align 8
  %16 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sub i32 %17, 1
  %19 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %20 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @ME4000_AI_SCAN_PRE_TIMER_LOW_REG, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @outl(i32 %18, i64 %23)
  %25 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @ME4000_AI_SCAN_PRE_TIMER_HIGH_REG, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @outl(i32 0, i64 %29)
  %31 = load %struct.me4000_private*, %struct.me4000_private** %5, align 8
  %32 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %52

35:                                               ; preds = %2
  %36 = load %struct.me4000_private*, %struct.me4000_private** %5, align 8
  %37 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 1
  %40 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %41 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @ME4000_AI_SCAN_TIMER_LOW_REG, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @outl(i32 %39, i64 %44)
  %46 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %47 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @ME4000_AI_SCAN_TIMER_HIGH_REG, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @outl(i32 0, i64 %50)
  br label %52

52:                                               ; preds = %35, %2
  %53 = load %struct.me4000_private*, %struct.me4000_private** %5, align 8
  %54 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = sub nsw i32 %55, 1
  %57 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %58 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @ME4000_AI_CHAN_PRE_TIMER_REG, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @outl(i32 %56, i64 %61)
  %63 = load %struct.me4000_private*, %struct.me4000_private** %5, align 8
  %64 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = sub nsw i32 %65, 1
  %67 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %68 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @ME4000_AI_CHAN_TIMER_REG, align 8
  %71 = add nsw i64 %69, %70
  %72 = call i32 @outl(i32 %66, i64 %71)
  %73 = load %struct.me4000_private*, %struct.me4000_private** %5, align 8
  %74 = getelementptr inbounds %struct.me4000_private, %struct.me4000_private* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @ME4000_AI_CTRL_CHANNEL_FIFO, align 4
  %77 = or i32 %75, %76
  %78 = load i32, i32* @ME4000_AI_CTRL_DATA_FIFO, align 4
  %79 = or i32 %77, %78
  store i32 %79, i32* %7, align 4
  %80 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %81 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @TRIG_COUNT, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %102

85:                                               ; preds = %52
  %86 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %87 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  %89 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %90 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = mul i32 %88, %91
  %93 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %94 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @ME4000_AI_SAMPLE_COUNTER_REG, align 8
  %97 = add nsw i64 %95, %96
  %98 = call i32 @outl(i32 %92, i64 %97)
  %99 = load i32, i32* @ME4000_AI_CTRL_SC_IRQ, align 4
  %100 = load i32, i32* %7, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %7, align 4
  br label %128

102:                                              ; preds = %52
  %103 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %104 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @TRIG_NONE, align 8
  %107 = icmp eq i64 %105, %106
  br i1 %107, label %108, label %127

108:                                              ; preds = %102
  %109 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %110 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %109, i32 0, i32 3
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @TRIG_COUNT, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %114, label %127

114:                                              ; preds = %108
  %115 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %116 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %119 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = load i64, i64* @ME4000_AI_SAMPLE_COUNTER_REG, align 8
  %122 = add nsw i64 %120, %121
  %123 = call i32 @outl(i32 %117, i64 %122)
  %124 = load i32, i32* @ME4000_AI_CTRL_SC_IRQ, align 4
  %125 = load i32, i32* %7, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %7, align 4
  br label %127

127:                                              ; preds = %114, %108, %102
  br label %128

128:                                              ; preds = %127, %85
  %129 = load i32, i32* @ME4000_AI_CTRL_HF_IRQ, align 4
  %130 = load i32, i32* %7, align 4
  %131 = or i32 %130, %129
  store i32 %131, i32* %7, align 4
  %132 = load i32, i32* %7, align 4
  %133 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %134 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @ME4000_AI_CTRL_REG, align 8
  %137 = add nsw i64 %135, %136
  %138 = call i32 @outl(i32 %132, i64 %137)
  %139 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %140 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %141 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %142 = call i32 @me4000_ai_write_chanlist(%struct.comedi_device* %139, %struct.comedi_subdevice* %140, %struct.comedi_cmd* %141)
  %143 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %144 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %143, i32 0, i32 0
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @ME4000_AI_START_REG, align 8
  %147 = add nsw i64 %145, %146
  %148 = call i32 @inl(i64 %147)
  ret i32 0
}

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @me4000_ai_write_chanlist(%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_cmd*) #1

declare dso_local i32 @inl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
