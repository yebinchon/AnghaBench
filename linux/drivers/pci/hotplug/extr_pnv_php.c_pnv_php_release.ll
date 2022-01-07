; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pnv_php.c_pnv_php_release.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_pnv_php.c_pnv_php_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnv_php_slot = type { %struct.pnv_php_slot*, i32 }

@pnv_php_lock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pnv_php_slot*)* @pnv_php_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pnv_php_release(%struct.pnv_php_slot* %0) #0 {
  %2 = alloca %struct.pnv_php_slot*, align 8
  %3 = alloca i64, align 8
  store %struct.pnv_php_slot* %0, %struct.pnv_php_slot** %2, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @spin_lock_irqsave(i32* @pnv_php_lock, i64 %4)
  %6 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %2, align 8
  %7 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %6, i32 0, i32 1
  %8 = call i32 @list_del(i32* %7)
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @spin_unlock_irqrestore(i32* @pnv_php_lock, i64 %9)
  %11 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %2, align 8
  %12 = call i32 @pnv_php_put_slot(%struct.pnv_php_slot* %11)
  %13 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %2, align 8
  %14 = getelementptr inbounds %struct.pnv_php_slot, %struct.pnv_php_slot* %13, i32 0, i32 0
  %15 = load %struct.pnv_php_slot*, %struct.pnv_php_slot** %14, align 8
  %16 = call i32 @pnv_php_put_slot(%struct.pnv_php_slot* %15)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pnv_php_put_slot(%struct.pnv_php_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
