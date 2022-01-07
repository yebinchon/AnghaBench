; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_tcm_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_tcm_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_function = type { i32 }
%struct.f_uas = type { i32 }

@USBG_IS_UAS = common dso_local global i32 0, align 4
@USBG_IS_BOT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_function*)* @tcm_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcm_disable(%struct.usb_function* %0) #0 {
  %2 = alloca %struct.usb_function*, align 8
  %3 = alloca %struct.f_uas*, align 8
  store %struct.usb_function* %0, %struct.usb_function** %2, align 8
  %4 = load %struct.usb_function*, %struct.usb_function** %2, align 8
  %5 = call %struct.f_uas* @to_f_uas(%struct.usb_function* %4)
  store %struct.f_uas* %5, %struct.f_uas** %3, align 8
  %6 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %7 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @USBG_IS_UAS, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %14 = call i32 @uasp_cleanup_old_alt(%struct.f_uas* %13)
  br label %26

15:                                               ; preds = %1
  %16 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %17 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @USBG_IS_BOT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %15
  %23 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %24 = call i32 @bot_cleanup_old_alt(%struct.f_uas* %23)
  br label %25

25:                                               ; preds = %22, %15
  br label %26

26:                                               ; preds = %25, %12
  %27 = load %struct.f_uas*, %struct.f_uas** %3, align 8
  %28 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %27, i32 0, i32 0
  store i32 0, i32* %28, align 4
  ret void
}

declare dso_local %struct.f_uas* @to_f_uas(%struct.usb_function*) #1

declare dso_local i32 @uasp_cleanup_old_alt(%struct.f_uas*) #1

declare dso_local i32 @bot_cleanup_old_alt(%struct.f_uas*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
