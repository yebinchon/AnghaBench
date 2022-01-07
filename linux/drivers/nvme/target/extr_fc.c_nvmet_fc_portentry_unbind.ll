; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_portentry_unbind.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_fc.c_nvmet_fc_portentry_unbind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvmet_fc_port_entry = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* }

@nvmet_fc_tgtlock = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvmet_fc_port_entry*)* @nvmet_fc_portentry_unbind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_fc_portentry_unbind(%struct.nvmet_fc_port_entry* %0) #0 {
  %2 = alloca %struct.nvmet_fc_port_entry*, align 8
  %3 = alloca i64, align 8
  store %struct.nvmet_fc_port_entry* %0, %struct.nvmet_fc_port_entry** %2, align 8
  %4 = load i64, i64* %3, align 8
  %5 = call i32 @spin_lock_irqsave(i32* @nvmet_fc_tgtlock, i64 %4)
  %6 = load %struct.nvmet_fc_port_entry*, %struct.nvmet_fc_port_entry** %2, align 8
  %7 = getelementptr inbounds %struct.nvmet_fc_port_entry, %struct.nvmet_fc_port_entry* %6, i32 0, i32 1
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = icmp ne %struct.TYPE_2__* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load %struct.nvmet_fc_port_entry*, %struct.nvmet_fc_port_entry** %2, align 8
  %12 = getelementptr inbounds %struct.nvmet_fc_port_entry, %struct.nvmet_fc_port_entry* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32* null, i32** %14, align 8
  br label %15

15:                                               ; preds = %10, %1
  %16 = load %struct.nvmet_fc_port_entry*, %struct.nvmet_fc_port_entry** %2, align 8
  %17 = getelementptr inbounds %struct.nvmet_fc_port_entry, %struct.nvmet_fc_port_entry* %16, i32 0, i32 0
  %18 = call i32 @list_del(i32* %17)
  %19 = load i64, i64* %3, align 8
  %20 = call i32 @spin_unlock_irqrestore(i32* @nvmet_fc_tgtlock, i64 %19)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
