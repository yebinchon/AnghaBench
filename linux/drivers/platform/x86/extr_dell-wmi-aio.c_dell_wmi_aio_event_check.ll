; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-wmi-aio.c_dell_wmi_aio_event_check.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-wmi-aio.c_dell_wmi_aio_event_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dell_wmi_event = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i32)* @dell_wmi_aio_event_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dell_wmi_aio_event_check(i32* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dell_wmi_event*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32*, i32** %4, align 8
  %8 = bitcast i32* %7 to %struct.dell_wmi_event*
  store %struct.dell_wmi_event* %8, %struct.dell_wmi_event** %6, align 8
  %9 = load %struct.dell_wmi_event*, %struct.dell_wmi_event** %6, align 8
  %10 = icmp eq %struct.dell_wmi_event* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 6
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %2
  store i32 0, i32* %3, align 4
  br label %32

15:                                               ; preds = %11
  %16 = load %struct.dell_wmi_event*, %struct.dell_wmi_event** %6, align 8
  %17 = getelementptr inbounds %struct.dell_wmi_event, %struct.dell_wmi_event* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %15
  %21 = load %struct.dell_wmi_event*, %struct.dell_wmi_event** %6, align 8
  %22 = getelementptr inbounds %struct.dell_wmi_event, %struct.dell_wmi_event* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 15
  br i1 %24, label %25, label %31

25:                                               ; preds = %20, %15
  %26 = load %struct.dell_wmi_event*, %struct.dell_wmi_event** %6, align 8
  %27 = getelementptr inbounds %struct.dell_wmi_event, %struct.dell_wmi_event* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = icmp sge i32 %28, 2
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 1, i32* %3, align 4
  br label %32

31:                                               ; preds = %25, %20
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %31, %30, %14
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
