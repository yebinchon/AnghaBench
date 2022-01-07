; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_comedi_event.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_fops.c_comedi_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i32, %struct.comedi_async* }
%struct.comedi_async = type { i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@COMEDI_CB_CANCEL_MASK = common dso_local global i32 0, align 4
@COMEDI_SRF_RUNNING = common dso_local global i32 0, align 4
@COMEDI_CB_ERROR_MASK = common dso_local global i32 0, align 4
@COMEDI_SRF_ERROR = common dso_local global i32 0, align 4
@CMDF_WRITE = common dso_local global i32 0, align 4
@POLL_OUT = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @comedi_event(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.comedi_async*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %9 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %10 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %9, i32 0, i32 1
  %11 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  store %struct.comedi_async* %11, %struct.comedi_async** %5, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %13 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %12, i32 0, i32 0
  %14 = load i64, i64* %8, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %17 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %6, align 4
  %19 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %20 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %22 = call i32 @__comedi_is_subdevice_running(%struct.comedi_subdevice* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %2
  %25 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %26 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %25, i32 0, i32 0
  %27 = load i64, i64* %8, align 8
  %28 = call i32 @spin_unlock_irqrestore(i32* %26, i64 %27)
  br label %84

29:                                               ; preds = %2
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @COMEDI_CB_CANCEL_MASK, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %36 = load i32, i32* @COMEDI_SRF_RUNNING, align 4
  %37 = call i32 @__comedi_clear_subdevice_runflags(%struct.comedi_subdevice* %35, i32 %36)
  br label %38

38:                                               ; preds = %34, %29
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @COMEDI_CB_ERROR_MASK, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %45 = load i32, i32* @COMEDI_SRF_ERROR, align 4
  %46 = call i32 @__comedi_set_subdevice_runflags(%struct.comedi_subdevice* %44, i32 %45)
  br label %47

47:                                               ; preds = %43, %38
  %48 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %49 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %71

54:                                               ; preds = %47
  %55 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %56 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %55, i32 0, i32 3
  %57 = call i32 @wake_up_interruptible(i32* %56)
  %58 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %59 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @CMDF_WRITE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %54
  %66 = load i32, i32* @POLL_OUT, align 4
  br label %69

67:                                               ; preds = %54
  %68 = load i32, i32* @POLL_IN, align 4
  br label %69

69:                                               ; preds = %67, %65
  %70 = phi i32 [ %66, %65 ], [ %68, %67 ]
  store i32 %70, i32* %7, align 4
  br label %71

71:                                               ; preds = %69, %47
  %72 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %73 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %72, i32 0, i32 0
  %74 = load i64, i64* %8, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  %76 = load i32, i32* %7, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %80 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %79, i32 0, i32 0
  %81 = load i32, i32* @SIGIO, align 4
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @kill_fasync(i32* %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %24, %78, %71
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @__comedi_is_subdevice_running(%struct.comedi_subdevice*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @__comedi_clear_subdevice_runflags(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @__comedi_set_subdevice_runflags(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
