; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_daqboard2000.c_db2k_setup_sampling.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_daqboard2000.c_db2k_setup_sampling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, i32, i32)* @db2k_setup_sampling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @db2k_setup_sampling(%struct.comedi_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 4, i32* %8, align 4
  %11 = load i32, i32* %5, align 4
  %12 = shl i32 %11, 6
  %13 = and i32 %12, 192
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sdiv i32 %14, 4
  switch i32 %15, label %22 [
    i32 0, label %16
    i32 1, label %17
    i32 2, label %18
    i32 3, label %19
    i32 4, label %20
    i32 5, label %21
  ]

16:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  br label %23

17:                                               ; preds = %3
  store i32 2, i32* %10, align 4
  br label %23

18:                                               ; preds = %3
  store i32 5, i32* %10, align 4
  br label %23

19:                                               ; preds = %3
  store i32 6, i32* %10, align 4
  br label %23

20:                                               ; preds = %3
  store i32 65, i32* %10, align 4
  br label %23

21:                                               ; preds = %3
  store i32 66, i32* %10, align 4
  br label %23

22:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %23

23:                                               ; preds = %22, %21, %20, %19, %18, %17, %16
  %24 = load i32, i32* %9, align 4
  %25 = or i32 %24, 2048
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %10, align 4
  %27 = or i32 %26, 49152
  store i32 %27, i32* %10, align 4
  %28 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @db2k_write_acq_scan_list_entry(%struct.comedi_device* %28, i32 %29)
  %31 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @db2k_write_acq_scan_list_entry(%struct.comedi_device* %31, i32 %32)
  %34 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %35 = load i32, i32* %9, align 4
  %36 = call i32 @db2k_write_acq_scan_list_entry(%struct.comedi_device* %34, i32 %35)
  %37 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @db2k_write_acq_scan_list_entry(%struct.comedi_device* %37, i32 %38)
  ret void
}

declare dso_local i32 @db2k_write_acq_scan_list_entry(%struct.comedi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
