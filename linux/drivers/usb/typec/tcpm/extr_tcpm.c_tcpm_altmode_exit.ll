; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_altmode_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_altmode_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typec_altmode = type { i32, i32 }
%struct.tcpm_port = type { i32, i32, i32 }

@CMD_EXIT_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.typec_altmode*)* @tcpm_altmode_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpm_altmode_exit(%struct.typec_altmode* %0) #0 {
  %2 = alloca %struct.typec_altmode*, align 8
  %3 = alloca %struct.tcpm_port*, align 8
  %4 = alloca i32, align 4
  store %struct.typec_altmode* %0, %struct.typec_altmode** %2, align 8
  %5 = load %struct.typec_altmode*, %struct.typec_altmode** %2, align 8
  %6 = call %struct.tcpm_port* @typec_altmode_get_drvdata(%struct.typec_altmode* %5)
  store %struct.tcpm_port* %6, %struct.tcpm_port** %3, align 8
  %7 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %8 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load %struct.typec_altmode*, %struct.typec_altmode** %2, align 8
  %11 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @CMD_EXIT_MODE, align 4
  %14 = call i32 @VDO(i32 %12, i32 1, i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load %struct.typec_altmode*, %struct.typec_altmode** %2, align 8
  %16 = getelementptr inbounds %struct.typec_altmode, %struct.typec_altmode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @VDO_OPOS(i32 %17)
  %19 = load i32, i32* %4, align 4
  %20 = or i32 %19, %18
  store i32 %20, i32* %4, align 4
  %21 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %22 = load i32, i32* %4, align 4
  %23 = call i32 @tcpm_queue_vdm(%struct.tcpm_port* %21, i32 %22, i32* null, i32 0)
  %24 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %25 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %28 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %27, i32 0, i32 1
  %29 = call i32 @mod_delayed_work(i32 %26, i32* %28, i32 0)
  %30 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %31 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %30, i32 0, i32 0
  %32 = call i32 @mutex_unlock(i32* %31)
  ret i32 0
}

declare dso_local %struct.tcpm_port* @typec_altmode_get_drvdata(%struct.typec_altmode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @VDO(i32, i32, i32) #1

declare dso_local i32 @VDO_OPOS(i32) #1

declare dso_local i32 @tcpm_queue_vdm(%struct.tcpm_port*, i32, i32*, i32) #1

declare dso_local i32 @mod_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
