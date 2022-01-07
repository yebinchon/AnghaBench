; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mite.c_mite_sync_input_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mite.c_mite_sync_input_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mite_channel = type { i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__*, %struct.comedi_async* }
%struct.TYPE_2__ = type { i32 }
%struct.comedi_async = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [34 x i8] c"mite: DMA overwrite of free area\0A\00", align 1
@COMEDI_CB_OVERFLOW = common dso_local global i32 0, align 4
@COMEDI_CB_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mite_channel*, %struct.comedi_subdevice*)* @mite_sync_input_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mite_sync_input_dma(%struct.mite_channel* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.mite_channel*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.comedi_async*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.mite_channel* %0, %struct.mite_channel** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %9 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %10 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %9, i32 0, i32 1
  %11 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  store %struct.comedi_async* %11, %struct.comedi_async** %5, align 8
  %12 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %13 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %8, align 4
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %16 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %17 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @comedi_buf_write_alloc(%struct.comedi_subdevice* %15, i32 %18)
  %20 = load %struct.mite_channel*, %struct.mite_channel** %3, align 8
  %21 = call i32 @mite_bytes_written_to_memory_lb(%struct.mite_channel* %20)
  store i32 %21, i32* %7, align 4
  %22 = load %struct.mite_channel*, %struct.mite_channel** %3, align 8
  %23 = call i32 @mite_bytes_written_to_memory_ub(%struct.mite_channel* %22)
  %24 = load i32, i32* %8, align 4
  %25 = sub i32 %23, %24
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %39

27:                                               ; preds = %2
  %28 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %29 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_warn(i32 %32, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %34 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %35 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %36 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %59

39:                                               ; preds = %2
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %42 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = sub i32 %40, %43
  store i32 %44, i32* %6, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %59

47:                                               ; preds = %39
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @comedi_buf_write_free(%struct.comedi_subdevice* %48, i32 %49)
  %51 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %52 = load i32, i32* %6, align 4
  %53 = call i32 @comedi_inc_scan_progress(%struct.comedi_subdevice* %51, i32 %52)
  %54 = load i32, i32* @COMEDI_CB_BLOCK, align 4
  %55 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %56 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %57, %54
  store i32 %58, i32* %56, align 4
  br label %59

59:                                               ; preds = %27, %47, %39
  ret void
}

declare dso_local i32 @comedi_buf_write_alloc(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @mite_bytes_written_to_memory_lb(%struct.mite_channel*) #1

declare dso_local i32 @mite_bytes_written_to_memory_ub(%struct.mite_channel*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @comedi_buf_write_free(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @comedi_inc_scan_progress(%struct.comedi_subdevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
