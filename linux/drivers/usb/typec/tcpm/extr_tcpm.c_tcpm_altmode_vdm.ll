; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_altmode_vdm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_altmode_vdm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typec_altmode = type { i32 }
%struct.tcpm_port = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.typec_altmode*, i32, i32*, i32)* @tcpm_altmode_vdm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpm_altmode_vdm(%struct.typec_altmode* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.typec_altmode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tcpm_port*, align 8
  store %struct.typec_altmode* %0, %struct.typec_altmode** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.typec_altmode*, %struct.typec_altmode** %5, align 8
  %11 = call %struct.tcpm_port* @typec_altmode_get_drvdata(%struct.typec_altmode* %10)
  store %struct.tcpm_port* %11, %struct.tcpm_port** %9, align 8
  %12 = load %struct.tcpm_port*, %struct.tcpm_port** %9, align 8
  %13 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %12, i32 0, i32 0
  %14 = call i32 @mutex_lock(i32* %13)
  %15 = load %struct.tcpm_port*, %struct.tcpm_port** %9, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sub nsw i32 %18, 1
  %20 = call i32 @tcpm_queue_vdm(%struct.tcpm_port* %15, i32 %16, i32* %17, i32 %19)
  %21 = load %struct.tcpm_port*, %struct.tcpm_port** %9, align 8
  %22 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.tcpm_port*, %struct.tcpm_port** %9, align 8
  %25 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %24, i32 0, i32 1
  %26 = call i32 @mod_delayed_work(i32 %23, i32* %25, i32 0)
  %27 = load %struct.tcpm_port*, %struct.tcpm_port** %9, align 8
  %28 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %27, i32 0, i32 0
  %29 = call i32 @mutex_unlock(i32* %28)
  ret i32 0
}

declare dso_local %struct.tcpm_port* @typec_altmode_get_drvdata(%struct.typec_altmode*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @tcpm_queue_vdm(%struct.tcpm_port*, i32, i32*, i32) #1

declare dso_local i32 @mod_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
