; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_isadma.c_labpc_drain_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_labpc_isadma.c_labpc_drain_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.comedi_subdevice*, %struct.labpc_private* }
%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i64 }
%struct.labpc_private = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.comedi_isadma_desc* }
%struct.comedi_isadma_desc = type { i32, i32, i32 }

@TRIG_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @labpc_drain_dma(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca %struct.labpc_private*, align 8
  %4 = alloca %struct.comedi_isadma_desc*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca %struct.comedi_async*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %13 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %12, i32 0, i32 1
  %14 = load %struct.labpc_private*, %struct.labpc_private** %13, align 8
  store %struct.labpc_private* %14, %struct.labpc_private** %3, align 8
  %15 = load %struct.labpc_private*, %struct.labpc_private** %3, align 8
  %16 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %18, align 8
  %20 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %19, i64 0
  store %struct.comedi_isadma_desc* %20, %struct.comedi_isadma_desc** %4, align 8
  %21 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 0
  %23 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %22, align 8
  store %struct.comedi_subdevice* %23, %struct.comedi_subdevice** %5, align 8
  %24 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %25 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %24, i32 0, i32 0
  %26 = load %struct.comedi_async*, %struct.comedi_async** %25, align 8
  store %struct.comedi_async* %26, %struct.comedi_async** %6, align 8
  %27 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %28 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %27, i32 0, i32 0
  store %struct.comedi_cmd* %28, %struct.comedi_cmd** %7, align 8
  %29 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %30 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %4, align 8
  %31 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %29, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %4, align 8
  %35 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @comedi_isadma_disable(i32 %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %40 = load i32, i32* %9, align 4
  %41 = call i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %39, i32 %40)
  %42 = sub i32 %38, %41
  store i32 %42, i32* %10, align 4
  %43 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %44 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @TRIG_COUNT, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %76

48:                                               ; preds = %1
  %49 = load %struct.labpc_private*, %struct.labpc_private** %3, align 8
  %50 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %10, align 4
  %53 = icmp ule i32 %51, %52
  br i1 %53, label %54, label %58

54:                                               ; preds = %48
  %55 = load %struct.labpc_private*, %struct.labpc_private** %3, align 8
  %56 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  store i32 %57, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %70

58:                                               ; preds = %48
  %59 = load %struct.labpc_private*, %struct.labpc_private** %3, align 8
  %60 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %10, align 4
  %63 = sub i32 %61, %62
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = load i32, i32* %8, align 4
  %66 = icmp ugt i32 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %58
  %68 = load i32, i32* %8, align 4
  store i32 %68, i32* %11, align 4
  br label %69

69:                                               ; preds = %67, %58
  br label %70

70:                                               ; preds = %69, %54
  %71 = load i32, i32* %10, align 4
  %72 = load %struct.labpc_private*, %struct.labpc_private** %3, align 8
  %73 = getelementptr inbounds %struct.labpc_private, %struct.labpc_private* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = sub i32 %74, %71
  store i32 %75, i32* %73, align 8
  br label %78

76:                                               ; preds = %1
  %77 = load i32, i32* %8, align 4
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %76, %70
  %79 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %80 = load i32, i32* %11, align 4
  %81 = call i32 @comedi_samples_to_bytes(%struct.comedi_subdevice* %79, i32 %80)
  %82 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %4, align 8
  %83 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 4
  %84 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %85 = load %struct.comedi_isadma_desc*, %struct.comedi_isadma_desc** %4, align 8
  %86 = getelementptr inbounds %struct.comedi_isadma_desc, %struct.comedi_isadma_desc* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %84, i32 %87, i32 %88)
  ret void
}

declare dso_local i32 @comedi_bytes_to_samples(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @comedi_isadma_disable(i32) #1

declare dso_local i32 @comedi_samples_to_bytes(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
