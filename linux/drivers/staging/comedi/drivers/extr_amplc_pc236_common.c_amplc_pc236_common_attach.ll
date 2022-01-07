; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pc236_common.c_amplc_pc236_common_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pc236_common.c_amplc_pc236_common_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i64, i32, i32, %struct.comedi_subdevice*, %struct.comedi_subdevice* }
%struct.comedi_subdevice = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32 }

@COMEDI_SUBD_UNUSED = common dso_local global i32 0, align 4
@pc236_interrupt = common dso_local global i32 0, align 4
@COMEDI_SUBD_DI = common dso_local global i32 0, align 4
@SDF_READABLE = common dso_local global i32 0, align 4
@SDF_CMD_READ = common dso_local global i32 0, align 4
@range_digital = common dso_local global i32 0, align 4
@pc236_intr_insn = common dso_local global i32 0, align 4
@pc236_intr_cmdtest = common dso_local global i32 0, align 4
@pc236_intr_cmd = common dso_local global i32 0, align 4
@pc236_intr_cancel = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @amplc_pc236_common_attach(%struct.comedi_device* %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.comedi_subdevice*, align 8
  %11 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %14 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %13, i32 0, i32 0
  store i64 %12, i64* %14, align 8
  %15 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %16 = call i32 @comedi_alloc_subdevices(%struct.comedi_device* %15, i32 2)
  store i32 %16, i32* %11, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %4
  %20 = load i32, i32* %11, align 4
  store i32 %20, i32* %5, align 4
  br label %92

21:                                               ; preds = %4
  %22 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %23 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %22, i32 0, i32 4
  %24 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %23, align 8
  %25 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %24, i64 0
  store %struct.comedi_subdevice* %25, %struct.comedi_subdevice** %10, align 8
  %26 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %27 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %28 = call i32 @subdev_8255_init(%struct.comedi_device* %26, %struct.comedi_subdevice* %27, i32* null, i32 0)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %5, align 4
  br label %92

33:                                               ; preds = %21
  %34 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %35 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %34, i32 0, i32 4
  %36 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %35, align 8
  %37 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %36, i64 1
  store %struct.comedi_subdevice* %37, %struct.comedi_subdevice** %10, align 8
  %38 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %39 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %40 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %39, i32 0, i32 3
  store %struct.comedi_subdevice* %38, %struct.comedi_subdevice** %40, align 8
  %41 = load i32, i32* @COMEDI_SUBD_UNUSED, align 4
  %42 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %43 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %42, i32 0, i32 9
  store i32 %41, i32* %43, align 8
  %44 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %45 = call i32 @pc236_intr_update(%struct.comedi_device* %44, i32 0)
  %46 = load i32, i32* %8, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %91

48:                                               ; preds = %33
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @pc236_interrupt, align 4
  %51 = load i64, i64* %9, align 8
  %52 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %53 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %56 = call i64 @request_irq(i32 %49, i32 %50, i64 %51, i32 %54, %struct.comedi_device* %55)
  %57 = icmp sge i64 %56, 0
  br i1 %57, label %58, label %90

58:                                               ; preds = %48
  %59 = load i32, i32* %8, align 4
  %60 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %61 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 8
  %62 = load i32, i32* @COMEDI_SUBD_DI, align 4
  %63 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %64 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %63, i32 0, i32 9
  store i32 %62, i32* %64, align 8
  %65 = load i32, i32* @SDF_READABLE, align 4
  %66 = load i32, i32* @SDF_CMD_READ, align 4
  %67 = or i32 %65, %66
  %68 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %69 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 8
  %70 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %71 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %70, i32 0, i32 1
  store i32 1, i32* %71, align 4
  %72 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %73 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %72, i32 0, i32 2
  store i32 1, i32* %73, align 8
  %74 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %75 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %74, i32 0, i32 8
  store i32* @range_digital, i32** %75, align 8
  %76 = load i32, i32* @pc236_intr_insn, align 4
  %77 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %78 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %77, i32 0, i32 7
  store i32 %76, i32* %78, align 4
  %79 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %80 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %79, i32 0, i32 3
  store i32 1, i32* %80, align 4
  %81 = load i32, i32* @pc236_intr_cmdtest, align 4
  %82 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %83 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %82, i32 0, i32 6
  store i32 %81, i32* %83, align 8
  %84 = load i32, i32* @pc236_intr_cmd, align 4
  %85 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %86 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %85, i32 0, i32 5
  store i32 %84, i32* %86, align 4
  %87 = load i32, i32* @pc236_intr_cancel, align 4
  %88 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %10, align 8
  %89 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %88, i32 0, i32 4
  store i32 %87, i32* %89, align 8
  br label %90

90:                                               ; preds = %58, %48
  br label %91

91:                                               ; preds = %90, %33
  store i32 0, i32* %5, align 4
  br label %92

92:                                               ; preds = %91, %31, %19
  %93 = load i32, i32* %5, align 4
  ret i32 %93
}

declare dso_local i32 @comedi_alloc_subdevices(%struct.comedi_device*, i32) #1

declare dso_local i32 @subdev_8255_init(%struct.comedi_device*, %struct.comedi_subdevice*, i32*, i32) #1

declare dso_local i32 @pc236_intr_update(%struct.comedi_device*, i32) #1

declare dso_local i64 @request_irq(i32, i32, i64, i32, %struct.comedi_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
