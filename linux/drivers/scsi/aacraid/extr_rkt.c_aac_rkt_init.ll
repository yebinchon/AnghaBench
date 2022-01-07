; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_rkt.c_aac_rkt_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_rkt.c_aac_rkt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@aac_rkt_ioremap = common dso_local global i32 0, align 4
@aac_rkt_select_comm = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @aac_rkt_init(%struct.aac_dev* %0) #0 {
  %2 = alloca %struct.aac_dev*, align 8
  store %struct.aac_dev* %0, %struct.aac_dev** %2, align 8
  %3 = load i32, i32* @aac_rkt_ioremap, align 4
  %4 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %5 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 1
  store i32 %3, i32* %6, align 4
  %7 = load i32, i32* @aac_rkt_select_comm, align 4
  %8 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %9 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store i32 %7, i32* %10, align 4
  %11 = load %struct.aac_dev*, %struct.aac_dev** %2, align 8
  %12 = call i32 @_aac_rx_init(%struct.aac_dev* %11)
  ret i32 %12
}

declare dso_local i32 @_aac_rx_init(%struct.aac_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
