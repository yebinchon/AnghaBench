; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedidev.h_comedi_bytes_per_sample.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedidev.h_comedi_bytes_per_sample.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_subdevice = type { i32 }

@SDF_LSAMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_subdevice*)* @comedi_bytes_per_sample to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comedi_bytes_per_sample(%struct.comedi_subdevice* %0) #0 {
  %2 = alloca %struct.comedi_subdevice*, align 8
  store %struct.comedi_subdevice* %0, %struct.comedi_subdevice** %2, align 8
  %3 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %2, align 8
  %4 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @SDF_LSAMPL, align 4
  %7 = and i32 %5, %6
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i64 4, i64 2
  %11 = trunc i64 %10 to i32
  ret i32 %11
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
