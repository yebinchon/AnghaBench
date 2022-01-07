; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tiocmd.c_ni_tio_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tiocmd.c_ni_tio_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.comedi_async*, %struct.ni_gpct* }
%struct.comedi_async = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i32 }
%struct.ni_gpct = type { i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [36 x i8] c"commands only supported with DMA.  \00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"Interrupt-driven commands not yet implemented.\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@CMDF_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ni_tio_cmd(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.ni_gpct*, align 8
  %6 = alloca %struct.comedi_async*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %11 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %10, i32 0, i32 1
  %12 = load %struct.ni_gpct*, %struct.ni_gpct** %11, align 8
  store %struct.ni_gpct* %12, %struct.ni_gpct** %5, align 8
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %14 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %13, i32 0, i32 0
  %15 = load %struct.comedi_async*, %struct.comedi_async** %14, align 8
  store %struct.comedi_async* %15, %struct.comedi_async** %6, align 8
  %16 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %17 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %16, i32 0, i32 0
  store %struct.comedi_cmd* %17, %struct.comedi_cmd** %7, align 8
  store i32 0, i32* %8, align 4
  %18 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %19 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %18, i32 0, i32 0
  %20 = load i64, i64* %9, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %23 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %45, label %26

26:                                               ; preds = %2
  %27 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %28 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %27, i32 0, i32 1
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @dev_err(i32 %33, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %35 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %36 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %35, i32 0, i32 1
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_err(i32 %41, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %43 = load i32, i32* @EIO, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %65

45:                                               ; preds = %2
  %46 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %47 = call i32 @ni_tio_cmd_setup(%struct.comedi_subdevice* %46)
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* %8, align 4
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %64

50:                                               ; preds = %45
  %51 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %52 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @CMDF_WRITE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %50
  %58 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %59 = call i32 @ni_tio_output_cmd(%struct.comedi_subdevice* %58)
  store i32 %59, i32* %8, align 4
  br label %63

60:                                               ; preds = %50
  %61 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %62 = call i32 @ni_tio_input_cmd(%struct.comedi_subdevice* %61)
  store i32 %62, i32* %8, align 4
  br label %63

63:                                               ; preds = %60, %57
  br label %64

64:                                               ; preds = %63, %45
  br label %65

65:                                               ; preds = %64, %26
  %66 = load %struct.ni_gpct*, %struct.ni_gpct** %5, align 8
  %67 = getelementptr inbounds %struct.ni_gpct, %struct.ni_gpct* %66, i32 0, i32 0
  %68 = load i64, i64* %9, align 8
  %69 = call i32 @spin_unlock_irqrestore(i32* %67, i64 %68)
  %70 = load i32, i32* %8, align 4
  ret i32 %70
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @ni_tio_cmd_setup(%struct.comedi_subdevice*) #1

declare dso_local i32 @ni_tio_output_cmd(%struct.comedi_subdevice*) #1

declare dso_local i32 @ni_tio_input_cmd(%struct.comedi_subdevice*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
