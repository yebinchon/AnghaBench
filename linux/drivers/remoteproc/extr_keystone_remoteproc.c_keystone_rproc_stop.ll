; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_keystone_remoteproc.c_keystone_rproc_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_keystone_remoteproc.c_keystone_rproc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { %struct.keystone_rproc* }
%struct.keystone_rproc = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*)* @keystone_rproc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keystone_rproc_stop(%struct.rproc* %0) #0 {
  %2 = alloca %struct.rproc*, align 8
  %3 = alloca %struct.keystone_rproc*, align 8
  store %struct.rproc* %0, %struct.rproc** %2, align 8
  %4 = load %struct.rproc*, %struct.rproc** %2, align 8
  %5 = getelementptr inbounds %struct.rproc, %struct.rproc* %4, i32 0, i32 0
  %6 = load %struct.keystone_rproc*, %struct.keystone_rproc** %5, align 8
  store %struct.keystone_rproc* %6, %struct.keystone_rproc** %3, align 8
  %7 = load %struct.keystone_rproc*, %struct.keystone_rproc** %3, align 8
  %8 = call i32 @keystone_rproc_dsp_reset(%struct.keystone_rproc* %7)
  %9 = load %struct.keystone_rproc*, %struct.keystone_rproc** %3, align 8
  %10 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.keystone_rproc*, %struct.keystone_rproc** %3, align 8
  %13 = call i32 @free_irq(i32 %11, %struct.keystone_rproc* %12)
  %14 = load %struct.keystone_rproc*, %struct.keystone_rproc** %3, align 8
  %15 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.keystone_rproc*, %struct.keystone_rproc** %3, align 8
  %18 = call i32 @free_irq(i32 %16, %struct.keystone_rproc* %17)
  %19 = load %struct.keystone_rproc*, %struct.keystone_rproc** %3, align 8
  %20 = getelementptr inbounds %struct.keystone_rproc, %struct.keystone_rproc* %19, i32 0, i32 0
  %21 = call i32 @flush_work(i32* %20)
  ret i32 0
}

declare dso_local i32 @keystone_rproc_dsp_reset(%struct.keystone_rproc*) #1

declare dso_local i32 @free_irq(i32, %struct.keystone_rproc*) #1

declare dso_local i32 @flush_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
