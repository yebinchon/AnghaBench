; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_uwb_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_uwb_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hkey_handle = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"GUWB\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"d\00", align 1
@EIO = common dso_local global i32 0, align 4
@TP_ACPI_UWB_RADIOSSW = common dso_local global i32 0, align 4
@TPACPI_RFK_RADIO_ON = common dso_local global i32 0, align 4
@TPACPI_RFK_RADIO_OFF = common dso_local global i32 0, align 4
@dbg_uwbemul = common dso_local global i64 0, align 8
@tpacpi_uwb_emulstate = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @uwb_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uwb_get_status() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i32, i32* @hkey_handle, align 4
  %4 = call i32 @acpi_evalf(i32 %3, i32* %2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %0
  %7 = load i32, i32* @EIO, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %1, align 4
  br label %20

9:                                                ; preds = %0
  %10 = load i32, i32* %2, align 4
  %11 = load i32, i32* @TP_ACPI_UWB_RADIOSSW, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %9
  %15 = load i32, i32* @TPACPI_RFK_RADIO_ON, align 4
  br label %18

16:                                               ; preds = %9
  %17 = load i32, i32* @TPACPI_RFK_RADIO_OFF, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  store i32 %19, i32* %1, align 4
  br label %20

20:                                               ; preds = %18, %6
  %21 = load i32, i32* %1, align 4
  ret i32 %21
}

declare dso_local i32 @acpi_evalf(i32, i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
