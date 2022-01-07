; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_c6xdigio.c_c6xdigio_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_c6xdigio.c_c6xdigio_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @c6xdigio_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c6xdigio_init(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %3 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %4 = call i32 @c6xdigio_write_data(%struct.comedi_device* %3, i32 112, i32 0)
  %5 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %6 = call i32 @c6xdigio_write_data(%struct.comedi_device* %5, i32 116, i32 128)
  %7 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %8 = call i32 @c6xdigio_write_data(%struct.comedi_device* %7, i32 112, i32 0)
  %9 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %10 = call i32 @c6xdigio_write_data(%struct.comedi_device* %9, i32 0, i32 128)
  %11 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %12 = call i32 @c6xdigio_write_data(%struct.comedi_device* %11, i32 104, i32 0)
  %13 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %14 = call i32 @c6xdigio_write_data(%struct.comedi_device* %13, i32 108, i32 128)
  %15 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %16 = call i32 @c6xdigio_write_data(%struct.comedi_device* %15, i32 104, i32 0)
  %17 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %18 = call i32 @c6xdigio_write_data(%struct.comedi_device* %17, i32 0, i32 128)
  ret void
}

declare dso_local i32 @c6xdigio_write_data(%struct.comedi_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
