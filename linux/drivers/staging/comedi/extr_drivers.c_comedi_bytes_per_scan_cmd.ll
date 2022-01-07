; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_drivers.c_comedi_bytes_per_scan_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_drivers.c_comedi_bytes_per_scan_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_subdevice = type { i32 }
%struct.comedi_cmd = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comedi_bytes_per_scan_cmd(%struct.comedi_subdevice* %0, %struct.comedi_cmd* %1) #0 {
  %3 = alloca %struct.comedi_subdevice*, align 8
  %4 = alloca %struct.comedi_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.comedi_subdevice* %0, %struct.comedi_subdevice** %3, align 8
  store %struct.comedi_cmd* %1, %struct.comedi_cmd** %4, align 8
  %7 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %8 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %19 [
    i32 130, label %10
    i32 128, label %10
    i32 129, label %10
  ]

10:                                               ; preds = %2, %2, %2
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %12 = call i32 @comedi_bytes_per_sample(%struct.comedi_subdevice* %11)
  %13 = mul nsw i32 8, %12
  store i32 %13, i32* %6, align 4
  %14 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %15 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @DIV_ROUND_UP(i32 %16, i32 %17)
  store i32 %18, i32* %5, align 4
  br label %23

19:                                               ; preds = %2
  %20 = load %struct.comedi_cmd*, %struct.comedi_cmd** %4, align 8
  %21 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %5, align 4
  br label %23

23:                                               ; preds = %19, %10
  %24 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @comedi_samples_to_bytes(%struct.comedi_subdevice* %24, i32 %25)
  ret i32 %26
}

declare dso_local i32 @comedi_bytes_per_sample(%struct.comedi_subdevice*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i32 @comedi_samples_to_bytes(%struct.comedi_subdevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
