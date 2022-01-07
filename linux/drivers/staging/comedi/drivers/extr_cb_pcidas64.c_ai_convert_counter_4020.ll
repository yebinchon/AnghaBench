; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ai_convert_counter_4020.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ai_convert_counter_4020.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, %struct.pcidas64_private* }
%struct.pcidas64_private = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.comedi_cmd = type { i32, i32 }

@TIMER_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"bug! failed to set ai pacing!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_cmd*)* @ai_convert_counter_4020 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ai_convert_counter_4020(%struct.comedi_device* %0, %struct.comedi_cmd* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_cmd*, align 8
  %5 = alloca %struct.pcidas64_private*, align 8
  %6 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_cmd* %1, %struct.comedi_cmd** %4, align 8
  %7 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %8 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %7, i32 0, i32 1
  %9 = load %struct.pcidas64_private*, %struct.pcidas64_private** %8, align 8
  store %struct.pcidas64_private* %9, %struct.pcidas64_private** %5, align 8
  %10 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %11 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %24 [
    i32 128, label %13
    i32 129, label %19
  ]

13:                                               ; preds = %2
  %14 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %15 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TIMER_BASE, align 4
  %18 = udiv i32 %16, %17
  store i32 %18, i32* %6, align 4
  br label %29

19:                                               ; preds = %2
  %20 = load %struct.pcidas64_private*, %struct.pcidas64_private** %5, align 8
  %21 = getelementptr inbounds %struct.pcidas64_private, %struct.pcidas64_private* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %6, align 4
  br label %29

24:                                               ; preds = %2
  %25 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %26 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_err(i32 %27, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  store i32 1000, i32* %6, align 4
  br label %29

29:                                               ; preds = %24, %19, %13
  %30 = load i32, i32* %6, align 4
  %31 = sub i32 %30, 2
  ret i32 %31
}

declare dso_local i32 @dev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
