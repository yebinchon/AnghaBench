; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_comedi_subdevice_from_minor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_comedi_subdevice_from_minor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_subdevice = type { %struct.comedi_device* }
%struct.comedi_device = type { i32 }

@COMEDI_NUM_BOARD_MINORS = common dso_local global i32 0, align 4
@comedi_subdevice_minor_table_lock = common dso_local global i32 0, align 4
@comedi_subdevice_minor_table = common dso_local global %struct.comedi_subdevice** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.comedi_subdevice* (%struct.comedi_device*, i32)* @comedi_subdevice_from_minor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.comedi_subdevice* @comedi_subdevice_from_minor(%struct.comedi_device* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @COMEDI_NUM_BOARD_MINORS, align 4
  %9 = sub i32 %7, %8
  store i32 %9, i32* %6, align 4
  %10 = call i32 @mutex_lock(i32* @comedi_subdevice_minor_table_lock)
  %11 = load %struct.comedi_subdevice**, %struct.comedi_subdevice*** @comedi_subdevice_minor_table, align 8
  %12 = load i32, i32* %6, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.comedi_subdevice*, %struct.comedi_subdevice** %11, i64 %13
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %14, align 8
  store %struct.comedi_subdevice* %15, %struct.comedi_subdevice** %5, align 8
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %17 = icmp ne %struct.comedi_subdevice* %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %20 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %19, i32 0, i32 0
  %21 = load %struct.comedi_device*, %struct.comedi_device** %20, align 8
  %22 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %23 = icmp ne %struct.comedi_device* %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  store %struct.comedi_subdevice* null, %struct.comedi_subdevice** %5, align 8
  br label %25

25:                                               ; preds = %24, %18, %2
  %26 = call i32 @mutex_unlock(i32* @comedi_subdevice_minor_table_lock)
  %27 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  ret %struct.comedi_subdevice* %27
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
