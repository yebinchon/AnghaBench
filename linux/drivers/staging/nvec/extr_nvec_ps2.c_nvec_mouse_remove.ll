; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec_ps2.c_nvec_mouse_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/nvec/extr_nvec_ps2.c_nvec_mouse_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.nvec_chip = type { i32 }

@ps2_dev = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@DISABLE_MOUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @nvec_mouse_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvec_mouse_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.nvec_chip*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.nvec_chip* @dev_get_drvdata(i32 %7)
  store %struct.nvec_chip* %8, %struct.nvec_chip** %3, align 8
  %9 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ps2_dev, i32 0, i32 0), align 4
  %10 = load i32, i32* @DISABLE_MOUSE, align 4
  %11 = call i32 @ps2_sendcommand(i32 %9, i32 %10)
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ps2_dev, i32 0, i32 0), align 4
  %13 = call i32 @ps2_stopstreaming(i32 %12)
  %14 = load %struct.nvec_chip*, %struct.nvec_chip** %3, align 8
  %15 = call i32 @nvec_unregister_notifier(%struct.nvec_chip* %14, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ps2_dev, i32 0, i32 1))
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @ps2_dev, i32 0, i32 0), align 4
  %17 = call i32 @serio_unregister_port(i32 %16)
  ret i32 0
}

declare dso_local %struct.nvec_chip* @dev_get_drvdata(i32) #1

declare dso_local i32 @ps2_sendcommand(i32, i32) #1

declare dso_local i32 @ps2_stopstreaming(i32) #1

declare dso_local i32 @nvec_unregister_notifier(%struct.nvec_chip*, i32*) #1

declare dso_local i32 @serio_unregister_port(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
