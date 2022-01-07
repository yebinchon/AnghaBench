; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_comedi_dev_get_from_subdevice_minor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_comedi_dev_get_from_subdevice_minor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_subdevice = type { i32* }
%struct.comedi_device = type { i32 }

@COMEDI_NUM_BOARD_MINORS = common dso_local global i32 0, align 4
@comedi_subdevice_minor_table_lock = common dso_local global i32 0, align 4
@comedi_subdevice_minor_table = common dso_local global %struct.comedi_subdevice** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.comedi_device* (i32)* @comedi_dev_get_from_subdevice_minor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.comedi_device* @comedi_dev_get_from_subdevice_minor(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @COMEDI_NUM_BOARD_MINORS, align 4
  %8 = sub i32 %6, %7
  store i32 %8, i32* %5, align 4
  %9 = call i32 @mutex_lock(i32* @comedi_subdevice_minor_table_lock)
  %10 = load %struct.comedi_subdevice**, %struct.comedi_subdevice*** @comedi_subdevice_minor_table, align 8
  %11 = load i32, i32* %5, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, i64 %12
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %13, align 8
  store %struct.comedi_subdevice* %14, %struct.comedi_subdevice** %4, align 8
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %16 = icmp ne %struct.comedi_subdevice* %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %1
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %19 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  br label %22

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i32* [ %20, %17 ], [ null, %21 ]
  %24 = call %struct.comedi_device* @comedi_dev_get(i32* %23)
  store %struct.comedi_device* %24, %struct.comedi_device** %3, align 8
  %25 = call i32 @mutex_unlock(i32* @comedi_subdevice_minor_table_lock)
  %26 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  ret %struct.comedi_device* %26
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.comedi_device* @comedi_dev_get(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
