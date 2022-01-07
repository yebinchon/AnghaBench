; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd_usb.c_usb_pcwd_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_pcwd_usb.c_usb_pcwd_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_pcwd_private = type { i32 }

@CMD_DISABLE_WATCHDOG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Card did not acknowledge disable attempt\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_pcwd_private*)* @usb_pcwd_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @usb_pcwd_stop(%struct.usb_pcwd_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_pcwd_private*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  store %struct.usb_pcwd_private* %0, %struct.usb_pcwd_private** %3, align 8
  store i8 -91, i8* %4, align 1
  store i8 -61, i8* %5, align 1
  %7 = load %struct.usb_pcwd_private*, %struct.usb_pcwd_private** %3, align 8
  %8 = load i32, i32* @CMD_DISABLE_WATCHDOG, align 4
  %9 = call i32 @usb_pcwd_send_command(%struct.usb_pcwd_private* %7, i32 %8, i8* %4, i8* %5)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %1
  %13 = load i8, i8* %5, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %12, %1
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %19

18:                                               ; preds = %12
  store i32 0, i32* %2, align 4
  br label %19

19:                                               ; preds = %18, %16
  %20 = load i32, i32* %2, align 4
  ret i32 %20
}

declare dso_local i32 @usb_pcwd_send_command(%struct.usb_pcwd_private*, i32, i8*, i8*) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
