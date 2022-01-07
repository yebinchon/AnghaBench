; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcmuio.c_pcmuio_handle_intr_subdev.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_pcmuio.c_pcmuio_handle_intr_subdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.pcmuio_private* }
%struct.pcmuio_private = type { %struct.pcmuio_asic* }
%struct.pcmuio_asic = type { i32, i32, i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i64, i64, i32* }

@TRIG_COUNT = common dso_local global i64 0, align 8
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @pcmuio_handle_intr_subdev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pcmuio_handle_intr_subdev(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.pcmuio_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pcmuio_asic*, align 8
  %10 = alloca %struct.comedi_cmd*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  store i32 %2, i32* %6, align 4
  %15 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %16 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %15, i32 0, i32 0
  %17 = load %struct.pcmuio_private*, %struct.pcmuio_private** %16, align 8
  store %struct.pcmuio_private* %17, %struct.pcmuio_private** %7, align 8
  %18 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %19 = call i32 @pcmuio_subdevice_to_asic(%struct.comedi_subdevice* %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.pcmuio_private*, %struct.pcmuio_private** %7, align 8
  %21 = getelementptr inbounds %struct.pcmuio_private, %struct.pcmuio_private* %20, i32 0, i32 0
  %22 = load %struct.pcmuio_asic*, %struct.pcmuio_asic** %21, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.pcmuio_asic, %struct.pcmuio_asic* %22, i64 %24
  store %struct.pcmuio_asic* %25, %struct.pcmuio_asic** %9, align 8
  %26 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %27 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 2
  store %struct.comedi_cmd* %29, %struct.comedi_cmd** %10, align 8
  store i32 0, i32* %11, align 4
  %30 = load %struct.pcmuio_asic*, %struct.pcmuio_asic** %9, align 8
  %31 = getelementptr inbounds %struct.pcmuio_asic, %struct.pcmuio_asic* %30, i32 0, i32 1
  %32 = load i64, i64* %12, align 8
  %33 = call i32 @spin_lock_irqsave(i32* %31, i64 %32)
  %34 = load %struct.pcmuio_asic*, %struct.pcmuio_asic** %9, align 8
  %35 = getelementptr inbounds %struct.pcmuio_asic, %struct.pcmuio_asic* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %3
  br label %104

39:                                               ; preds = %3
  %40 = load i32, i32* %6, align 4
  %41 = load %struct.pcmuio_asic*, %struct.pcmuio_asic** %9, align 8
  %42 = getelementptr inbounds %struct.pcmuio_asic, %struct.pcmuio_asic* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %40, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  br label %104

47:                                               ; preds = %39
  store i32 0, i32* %13, align 4
  br label %48

48:                                               ; preds = %74, %47
  %49 = load i32, i32* %13, align 4
  %50 = load %struct.comedi_cmd*, %struct.comedi_cmd** %10, align 8
  %51 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ult i32 %49, %52
  br i1 %53, label %54, label %77

54:                                               ; preds = %48
  %55 = load %struct.comedi_cmd*, %struct.comedi_cmd** %10, align 8
  %56 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %55, i32 0, i32 3
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %13, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @CR_CHAN(i32 %61)
  store i32 %62, i32* %14, align 4
  %63 = load i32, i32* %6, align 4
  %64 = load i32, i32* %14, align 4
  %65 = shl i32 1, %64
  %66 = and i32 %63, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %54
  %69 = load i32, i32* %13, align 4
  %70 = shl i32 1, %69
  %71 = load i32, i32* %11, align 4
  %72 = or i32 %71, %70
  store i32 %72, i32* %11, align 4
  br label %73

73:                                               ; preds = %68, %54
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %13, align 4
  %76 = add i32 %75, 1
  store i32 %76, i32* %13, align 4
  br label %48

77:                                               ; preds = %48
  %78 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %79 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %78, i32* %11, i32 1)
  %80 = load %struct.comedi_cmd*, %struct.comedi_cmd** %10, align 8
  %81 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @TRIG_COUNT, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %103

85:                                               ; preds = %77
  %86 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %87 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %86, i32 0, i32 0
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.comedi_cmd*, %struct.comedi_cmd** %10, align 8
  %92 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = icmp sge i64 %90, %93
  br i1 %94, label %95, label %103

95:                                               ; preds = %85
  %96 = load i32, i32* @COMEDI_CB_EOA, align 4
  %97 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %98 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %97, i32 0, i32 0
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = or i32 %101, %96
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %95, %85, %77
  br label %104

104:                                              ; preds = %103, %46, %38
  %105 = load %struct.pcmuio_asic*, %struct.pcmuio_asic** %9, align 8
  %106 = getelementptr inbounds %struct.pcmuio_asic, %struct.pcmuio_asic* %105, i32 0, i32 1
  %107 = load i64, i64* %12, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32* %106, i64 %107)
  %109 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %110 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %111 = call i32 @comedi_handle_events(%struct.comedi_device* %109, %struct.comedi_subdevice* %110)
  ret void
}

declare dso_local i32 @pcmuio_subdevice_to_asic(%struct.comedi_subdevice*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i32*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @comedi_handle_events(%struct.comedi_device*, %struct.comedi_subdevice*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
