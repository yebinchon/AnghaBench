; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_buf.c_comedi_buf_map_from_subdev_get.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_buf.c_comedi_buf_map_from_subdev_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_buf_map = type { i64 }
%struct.comedi_subdevice = type { i32, %struct.comedi_async* }
%struct.comedi_async = type { %struct.comedi_buf_map* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.comedi_buf_map* @comedi_buf_map_from_subdev_get(%struct.comedi_subdevice* %0) #0 {
  %2 = alloca %struct.comedi_buf_map*, align 8
  %3 = alloca %struct.comedi_subdevice*, align 8
  %4 = alloca %struct.comedi_async*, align 8
  %5 = alloca %struct.comedi_buf_map*, align 8
  %6 = alloca i64, align 8
  store %struct.comedi_subdevice* %0, %struct.comedi_subdevice** %3, align 8
  %7 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %8 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %7, i32 0, i32 1
  %9 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  store %struct.comedi_async* %9, %struct.comedi_async** %4, align 8
  store %struct.comedi_buf_map* null, %struct.comedi_buf_map** %5, align 8
  %10 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %11 = icmp ne %struct.comedi_async* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.comedi_buf_map* null, %struct.comedi_buf_map** %2, align 8
  br label %38

13:                                               ; preds = %1
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %15 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %14, i32 0, i32 0
  %16 = load i64, i64* %6, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.comedi_async*, %struct.comedi_async** %4, align 8
  %19 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %18, i32 0, i32 0
  %20 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %19, align 8
  store %struct.comedi_buf_map* %20, %struct.comedi_buf_map** %5, align 8
  %21 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %5, align 8
  %22 = icmp ne %struct.comedi_buf_map* %21, null
  br i1 %22, label %23, label %31

23:                                               ; preds = %13
  %24 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %5, align 8
  %25 = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %5, align 8
  %30 = call i32 @comedi_buf_map_get(%struct.comedi_buf_map* %29)
  br label %32

31:                                               ; preds = %23, %13
  store %struct.comedi_buf_map* null, %struct.comedi_buf_map** %5, align 8
  br label %32

32:                                               ; preds = %31, %28
  %33 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %34 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %33, i32 0, i32 0
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %5, align 8
  store %struct.comedi_buf_map* %37, %struct.comedi_buf_map** %2, align 8
  br label %38

38:                                               ; preds = %32, %12
  %39 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %2, align 8
  ret %struct.comedi_buf_map* %39
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @comedi_buf_map_get(%struct.comedi_buf_map*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
