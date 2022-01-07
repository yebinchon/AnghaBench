; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_drivers.c_comedi_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_drivers.c_comedi_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32 }
%struct.comedi_insn = type { i32 }

@jiffies = common dso_local global i64 0, align 8
@COMEDI_TIMEOUT_MS = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comedi_timeout(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, %struct.comedi_insn* %2, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i64)* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.comedi_device*, align 8
  %8 = alloca %struct.comedi_subdevice*, align 8
  %9 = alloca %struct.comedi_insn*, align 8
  %10 = alloca i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i64)*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %7, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %8, align 8
  store %struct.comedi_insn* %2, %struct.comedi_insn** %9, align 8
  store i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i64)* %3, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i64)** %10, align 8
  store i64 %4, i64* %11, align 8
  %14 = load i64, i64* @jiffies, align 8
  %15 = load i32, i32* @COMEDI_TIMEOUT_MS, align 4
  %16 = call i64 @msecs_to_jiffies(i32 %15)
  %17 = add i64 %14, %16
  store i64 %17, i64* %12, align 8
  br label %18

18:                                               ; preds = %36, %5
  %19 = load i64, i64* @jiffies, align 8
  %20 = load i64, i64* %12, align 8
  %21 = call i64 @time_before(i64 %19, i64 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %18
  %24 = load i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i64)*, i32 (%struct.comedi_device*, %struct.comedi_subdevice*, %struct.comedi_insn*, i64)** %10, align 8
  %25 = load %struct.comedi_device*, %struct.comedi_device** %7, align 8
  %26 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %8, align 8
  %27 = load %struct.comedi_insn*, %struct.comedi_insn** %9, align 8
  %28 = load i64, i64* %11, align 8
  %29 = call i32 %24(%struct.comedi_device* %25, %struct.comedi_subdevice* %26, %struct.comedi_insn* %27, i64 %28)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  %33 = icmp ne i32 %30, %32
  br i1 %33, label %34, label %36

34:                                               ; preds = %23
  %35 = load i32, i32* %13, align 4
  store i32 %35, i32* %6, align 4
  br label %41

36:                                               ; preds = %23
  %37 = call i32 (...) @cpu_relax()
  br label %18

38:                                               ; preds = %18
  %39 = load i32, i32* @ETIMEDOUT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %41

41:                                               ; preds = %38, %34
  %42 = load i32, i32* %6, align 4
  ret i32 %42
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @cpu_relax(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
