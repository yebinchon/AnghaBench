; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-acm.c_acm_set_control.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/class/extr_cdc-acm.c_acm_set_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acm = type { i32 }

@QUIRK_CONTROL_LINE_STATE = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@USB_CDC_REQ_SET_CONTROL_LINE_STATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acm*, i32)* @acm_set_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acm_set_control(%struct.acm* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.acm*, align 8
  %5 = alloca i32, align 4
  store %struct.acm* %0, %struct.acm** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.acm*, %struct.acm** %4, align 8
  %7 = getelementptr inbounds %struct.acm, %struct.acm* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @QUIRK_CONTROL_LINE_STATE, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EOPNOTSUPP, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %20

15:                                               ; preds = %2
  %16 = load %struct.acm*, %struct.acm** %4, align 8
  %17 = load i32, i32* @USB_CDC_REQ_SET_CONTROL_LINE_STATE, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @acm_ctrl_msg(%struct.acm* %16, i32 %17, i32 %18, i32* null, i32 0)
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %15, %12
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i32 @acm_ctrl_msg(%struct.acm*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
