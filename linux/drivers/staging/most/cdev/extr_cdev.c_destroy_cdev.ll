; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/most/cdev/extr_cdev.c_destroy_cdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/most/cdev/extr_cdev.c_destroy_cdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.comp_channel = type { i32, i32, i32 }

@comp = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ch_list_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comp_channel*)* @destroy_cdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @destroy_cdev(%struct.comp_channel* %0) #0 {
  %2 = alloca %struct.comp_channel*, align 8
  %3 = alloca i64, align 8
  store %struct.comp_channel* %0, %struct.comp_channel** %2, align 8
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @comp, i32 0, i32 0), align 4
  %5 = load %struct.comp_channel*, %struct.comp_channel** %2, align 8
  %6 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %5, i32 0, i32 2
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @device_destroy(i32 %4, i32 %7)
  %9 = load %struct.comp_channel*, %struct.comp_channel** %2, align 8
  %10 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %9, i32 0, i32 1
  %11 = call i32 @cdev_del(i32* %10)
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @spin_lock_irqsave(i32* @ch_list_lock, i64 %12)
  %14 = load %struct.comp_channel*, %struct.comp_channel** %2, align 8
  %15 = getelementptr inbounds %struct.comp_channel, %struct.comp_channel* %14, i32 0, i32 0
  %16 = call i32 @list_del(i32* %15)
  %17 = load i64, i64* %3, align 8
  %18 = call i32 @spin_unlock_irqrestore(i32* @ch_list_lock, i64 %17)
  ret void
}

declare dso_local i32 @device_destroy(i32, i32) #1

declare dso_local i32 @cdev_del(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
