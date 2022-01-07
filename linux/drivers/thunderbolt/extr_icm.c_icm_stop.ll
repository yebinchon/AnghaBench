; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_icm.c_icm_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { i32, i32* }
%struct.icm = type { i32 }

@NHI_MAILBOX_DRV_UNLOADS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb*)* @icm_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @icm_stop(%struct.tb* %0) #0 {
  %2 = alloca %struct.tb*, align 8
  %3 = alloca %struct.icm*, align 8
  store %struct.tb* %0, %struct.tb** %2, align 8
  %4 = load %struct.tb*, %struct.tb** %2, align 8
  %5 = call %struct.icm* @tb_priv(%struct.tb* %4)
  store %struct.icm* %5, %struct.icm** %3, align 8
  %6 = load %struct.icm*, %struct.icm** %3, align 8
  %7 = getelementptr inbounds %struct.icm, %struct.icm* %6, i32 0, i32 0
  %8 = call i32 @cancel_delayed_work(i32* %7)
  %9 = load %struct.tb*, %struct.tb** %2, align 8
  %10 = getelementptr inbounds %struct.tb, %struct.tb* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  %12 = call i32 @tb_switch_remove(i32* %11)
  %13 = load %struct.tb*, %struct.tb** %2, align 8
  %14 = getelementptr inbounds %struct.tb, %struct.tb* %13, i32 0, i32 1
  store i32* null, i32** %14, align 8
  %15 = load %struct.tb*, %struct.tb** %2, align 8
  %16 = getelementptr inbounds %struct.tb, %struct.tb* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @NHI_MAILBOX_DRV_UNLOADS, align 4
  %19 = call i32 @nhi_mailbox_cmd(i32 %17, i32 %18, i32 0)
  ret void
}

declare dso_local %struct.icm* @tb_priv(%struct.tb*) #1

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @tb_switch_remove(i32*) #1

declare dso_local i32 @nhi_mailbox_cmd(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
