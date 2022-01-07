; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_comedi_file_read_subdevice.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_comedi_file_read_subdevice.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_subdevice = type { i32 }
%struct.file = type { %struct.comedi_file* }
%struct.comedi_file = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.comedi_subdevice* (%struct.file*)* @comedi_file_read_subdevice to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.comedi_subdevice* @comedi_file_read_subdevice(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.comedi_file*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %4 = load %struct.file*, %struct.file** %2, align 8
  %5 = getelementptr inbounds %struct.file, %struct.file* %4, i32 0, i32 0
  %6 = load %struct.comedi_file*, %struct.comedi_file** %5, align 8
  store %struct.comedi_file* %6, %struct.comedi_file** %3, align 8
  %7 = load %struct.file*, %struct.file** %2, align 8
  %8 = call i32 @comedi_file_check(%struct.file* %7)
  %9 = load %struct.comedi_file*, %struct.comedi_file** %3, align 8
  %10 = getelementptr inbounds %struct.comedi_file, %struct.comedi_file* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.comedi_subdevice* @READ_ONCE(i32 %11)
  ret %struct.comedi_subdevice* %12
}

declare dso_local i32 @comedi_file_check(%struct.file*) #1

declare dso_local %struct.comedi_subdevice* @READ_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
