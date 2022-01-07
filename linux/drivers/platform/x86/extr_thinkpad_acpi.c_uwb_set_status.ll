; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_uwb_set_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_thinkpad_acpi.c_uwb_set_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TPACPI_DBG_RFKILL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"will attempt to %s UWB\0A\00", align 1
@TPACPI_RFK_RADIO_ON = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"enable\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"disable\00", align 1
@TP_ACPI_UWB_RADIOSSW = common dso_local global i32 0, align 4
@hkey_handle = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"SUWB\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"vd\00", align 1
@EIO = common dso_local global i32 0, align 4
@dbg_uwbemul = common dso_local global i64 0, align 8
@tpacpi_uwb_emulstate = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @uwb_set_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uwb_set_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %5 = load i32, i32* @TPACPI_DBG_RFKILL, align 4
  %6 = load i32, i32* %3, align 4
  %7 = load i32, i32* @TPACPI_RFK_RADIO_ON, align 4
  %8 = icmp eq i32 %6, %7
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %11 = call i32 @vdbg_printk(i32 %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i8* %10)
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @TPACPI_RFK_RADIO_ON, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @TP_ACPI_UWB_RADIOSSW, align 4
  store i32 %16, i32* %4, align 4
  br label %18

17:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %18

18:                                               ; preds = %17, %15
  %19 = load i32, i32* @hkey_handle, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @acpi_evalf(i32 %19, i32* null, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i32, i32* @EIO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %27

26:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %23
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @vdbg_printk(i32, i8*, i8*) #1

declare dso_local i32 @acpi_evalf(i32, i32*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
