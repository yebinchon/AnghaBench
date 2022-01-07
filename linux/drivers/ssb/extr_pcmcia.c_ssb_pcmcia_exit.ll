; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_pcmcia.c_ssb_pcmcia_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_pcmcia.c_ssb_pcmcia_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_bus = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SSB_BUSTYPE_PCMCIA = common dso_local global i64 0, align 8
@dev_attr_ssb_sprom = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ssb_pcmcia_exit(%struct.ssb_bus* %0) #0 {
  %2 = alloca %struct.ssb_bus*, align 8
  store %struct.ssb_bus* %0, %struct.ssb_bus** %2, align 8
  %3 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %4 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = load i64, i64* @SSB_BUSTYPE_PCMCIA, align 8
  %7 = icmp ne i64 %5, %6
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  br label %15

9:                                                ; preds = %1
  %10 = load %struct.ssb_bus*, %struct.ssb_bus** %2, align 8
  %11 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @device_remove_file(i32* %13, i32* @dev_attr_ssb_sprom)
  br label %15

15:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @device_remove_file(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
