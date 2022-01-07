; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ai_scan_counter_6xxx.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_cb_pcidas64.c_ai_scan_counter_6xxx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_cmd = type { i32, i32, i32, i32 }

@TIMER_BASE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, %struct.comedi_cmd*)* @ai_scan_counter_6xxx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ai_scan_counter_6xxx(%struct.comedi_device* %0, %struct.comedi_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_cmd*, align 8
  %6 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_cmd* %1, %struct.comedi_cmd** %5, align 8
  %7 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %8 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %31 [
    i32 128, label %10
    i32 129, label %25
  ]

10:                                               ; preds = %2
  %11 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %12 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %15 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %18 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %19, 1
  %21 = mul nsw i32 %16, %20
  %22 = sub nsw i32 %13, %21
  %23 = load i32, i32* @TIMER_BASE, align 4
  %24 = sdiv i32 %22, %23
  store i32 %24, i32* %6, align 4
  br label %32

25:                                               ; preds = %2
  %26 = load %struct.comedi_cmd*, %struct.comedi_cmd** %5, align 8
  %27 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @TIMER_BASE, align 4
  %30 = sdiv i32 %28, %29
  store i32 %30, i32* %6, align 4
  br label %32

31:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %35

32:                                               ; preds = %25, %10
  %33 = load i32, i32* %6, align 4
  %34 = sub nsw i32 %33, 3
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %32, %31
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
