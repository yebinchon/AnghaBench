; ModuleID = '/home/carl/AnghaBench/linux/drivers/watchdog/extr_i6300esb.c_esb_initdevice.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/watchdog/extr_i6300esb.c_esb_initdevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esb_dev = type { %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 }

@ESB_CONFIG_REG = common dso_local global i32 0, align 4
@ESB_LOCK_REG = common dso_local global i32 0, align 4
@ESB_WDT_LOCK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"nowayout already set\0A\00", align 1
@ESB_WDT_TIMEOUT = common dso_local global i32 0, align 4
@WDIOF_CARDRESET = common dso_local global i32 0, align 4
@ESB_WDT_RELOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.esb_dev*)* @esb_initdevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @esb_initdevice(%struct.esb_dev* %0) #0 {
  %2 = alloca %struct.esb_dev*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.esb_dev* %0, %struct.esb_dev** %2, align 8
  %5 = load %struct.esb_dev*, %struct.esb_dev** %2, align 8
  %6 = getelementptr inbounds %struct.esb_dev, %struct.esb_dev* %5, i32 0, i32 1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %8 = load i32, i32* @ESB_CONFIG_REG, align 4
  %9 = call i32 @pci_write_config_word(%struct.TYPE_5__* %7, i32 %8, i32 3)
  %10 = load %struct.esb_dev*, %struct.esb_dev** %2, align 8
  %11 = getelementptr inbounds %struct.esb_dev, %struct.esb_dev* %10, i32 0, i32 1
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %11, align 8
  %13 = load i32, i32* @ESB_LOCK_REG, align 4
  %14 = call i32 @pci_read_config_byte(%struct.TYPE_5__* %12, i32 %13, i32* %3)
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @ESB_WDT_LOCK, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %25

19:                                               ; preds = %1
  %20 = load %struct.esb_dev*, %struct.esb_dev** %2, align 8
  %21 = getelementptr inbounds %struct.esb_dev, %struct.esb_dev* %20, i32 0, i32 1
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = call i32 @dev_warn(i32* %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %19, %1
  %26 = load %struct.esb_dev*, %struct.esb_dev** %2, align 8
  %27 = getelementptr inbounds %struct.esb_dev, %struct.esb_dev* %26, i32 0, i32 1
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = load i32, i32* @ESB_LOCK_REG, align 4
  %30 = call i32 @pci_write_config_byte(%struct.TYPE_5__* %28, i32 %29, i32 0)
  %31 = load %struct.esb_dev*, %struct.esb_dev** %2, align 8
  %32 = call i32 @esb_unlock_registers(%struct.esb_dev* %31)
  %33 = load %struct.esb_dev*, %struct.esb_dev** %2, align 8
  %34 = call i32 @ESB_RELOAD_REG(%struct.esb_dev* %33)
  %35 = call i32 @readw(i32 %34)
  store i32 %35, i32* %4, align 4
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @ESB_WDT_TIMEOUT, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %25
  %41 = load i32, i32* @WDIOF_CARDRESET, align 4
  %42 = load %struct.esb_dev*, %struct.esb_dev** %2, align 8
  %43 = getelementptr inbounds %struct.esb_dev, %struct.esb_dev* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  br label %45

45:                                               ; preds = %40, %25
  %46 = load %struct.esb_dev*, %struct.esb_dev** %2, align 8
  %47 = call i32 @esb_unlock_registers(%struct.esb_dev* %46)
  %48 = load i32, i32* @ESB_WDT_TIMEOUT, align 4
  %49 = load i32, i32* @ESB_WDT_RELOAD, align 4
  %50 = or i32 %48, %49
  %51 = load %struct.esb_dev*, %struct.esb_dev** %2, align 8
  %52 = call i32 @ESB_RELOAD_REG(%struct.esb_dev* %51)
  %53 = call i32 @writew(i32 %50, i32 %52)
  %54 = load %struct.esb_dev*, %struct.esb_dev** %2, align 8
  %55 = getelementptr inbounds %struct.esb_dev, %struct.esb_dev* %54, i32 0, i32 0
  %56 = load %struct.esb_dev*, %struct.esb_dev** %2, align 8
  %57 = getelementptr inbounds %struct.esb_dev, %struct.esb_dev* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @esb_timer_set_heartbeat(%struct.TYPE_6__* %55, i32 %59)
  ret void
}

declare dso_local i32 @pci_write_config_word(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @pci_read_config_byte(%struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @pci_write_config_byte(%struct.TYPE_5__*, i32, i32) #1

declare dso_local i32 @esb_unlock_registers(%struct.esb_dev*) #1

declare dso_local i32 @readw(i32) #1

declare dso_local i32 @ESB_RELOAD_REG(%struct.esb_dev*) #1

declare dso_local i32 @writew(i32, i32) #1

declare dso_local i32 @esb_timer_set_heartbeat(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
