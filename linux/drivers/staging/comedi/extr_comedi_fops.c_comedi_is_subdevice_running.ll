; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_comedi_is_subdevice_running.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_comedi_is_subdevice_running.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_subdevice = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comedi_is_subdevice_running(%struct.comedi_subdevice* %0) #0 {
  %2 = alloca %struct.comedi_subdevice*, align 8
  %3 = alloca i32, align 4
  store %struct.comedi_subdevice* %0, %struct.comedi_subdevice** %2, align 8
  %4 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %2, align 8
  %5 = call i32 @comedi_get_subdevice_runflags(%struct.comedi_subdevice* %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @comedi_is_runflags_running(i32 %6)
  ret i32 %7
}

declare dso_local i32 @comedi_get_subdevice_runflags(%struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_is_runflags_running(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
