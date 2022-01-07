; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_event.c_wl1251_event_handle.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_event.c_wl1251_event_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32* }
%struct.event_mailbox = type { i32 }

@DEBUG_EVENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"EVENT on mbox %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@ACX_REG_INTERRUPT_TRIG = common dso_local global i32 0, align 4
@INTR_TRIG_EVENT_ACK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_event_handle(%struct.wl1251* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wl1251*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.event_mailbox, align 4
  %7 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @DEBUG_EVENT, align 4
  %9 = load i32, i32* %5, align 4
  %10 = call i32 @wl1251_debug(i32 %8, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %9)
  %11 = load i32, i32* %5, align 4
  %12 = icmp sgt i32 %11, 1
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %37

16:                                               ; preds = %2
  %17 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %18 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %19 = getelementptr inbounds %struct.wl1251, %struct.wl1251* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @wl1251_mem_read(%struct.wl1251* %17, i32 %24, %struct.event_mailbox* %6, i32 4)
  %26 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %27 = call i32 @wl1251_event_process(%struct.wl1251* %26, %struct.event_mailbox* %6)
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %16
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %37

32:                                               ; preds = %16
  %33 = load %struct.wl1251*, %struct.wl1251** %4, align 8
  %34 = load i32, i32* @ACX_REG_INTERRUPT_TRIG, align 4
  %35 = load i32, i32* @INTR_TRIG_EVENT_ACK, align 4
  %36 = call i32 @wl1251_reg_write32(%struct.wl1251* %33, i32 %34, i32 %35)
  store i32 0, i32* %3, align 4
  br label %37

37:                                               ; preds = %32, %30, %13
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local i32 @wl1251_debug(i32, i8*, i32) #1

declare dso_local i32 @wl1251_mem_read(%struct.wl1251*, i32, %struct.event_mailbox*, i32) #1

declare dso_local i32 @wl1251_event_process(%struct.wl1251*, %struct.event_mailbox*) #1

declare dso_local i32 @wl1251_reg_write32(%struct.wl1251*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
