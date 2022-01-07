; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_eeprom.c_wait_eeprom_cmd_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_rtl871x_eeprom.c_wait_eeprom_cmd_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { i32 }

@EE_9346CR = common dso_local global i32 0, align 4
@_EEDO = common dso_local global i32 0, align 4
@CLOCK_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct._adapter*)* @wait_eeprom_cmd_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_eeprom_cmd_done(%struct._adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  %6 = load %struct._adapter*, %struct._adapter** %3, align 8
  %7 = call i32 @standby(%struct._adapter* %6)
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %23, %1
  %9 = load i32, i32* %5, align 4
  %10 = icmp slt i32 %9, 200
  br i1 %10, label %11, label %26

11:                                               ; preds = %8
  %12 = load %struct._adapter*, %struct._adapter** %3, align 8
  %13 = load i32, i32* @EE_9346CR, align 4
  %14 = call i32 @r8712_read8(%struct._adapter* %12, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @_EEDO, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %27

20:                                               ; preds = %11
  %21 = load i32, i32* @CLOCK_RATE, align 4
  %22 = call i32 @udelay(i32 %21)
  br label %23

23:                                               ; preds = %20
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  br label %8

26:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %19
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @standby(%struct._adapter*) #1

declare dso_local i32 @r8712_read8(%struct._adapter*, i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
