; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_dio200_common.c_dio200_read_scan_intr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_dio200_common.c_dio200_read_scan_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i64, i64, i32* }

@TRIG_COUNT = common dso_local global i64 0, align 8
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @dio200_read_scan_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dio200_read_scan_intr(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %12 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 2
  store %struct.comedi_cmd* %14, %struct.comedi_cmd** %7, align 8
  store i16 0, i16* %8, align 2
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %43, %3
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %18 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp ult i32 %16, %19
  br i1 %20, label %21, label %46

21:                                               ; preds = %15
  %22 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %23 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @CR_CHAN(i32 %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %10, align 4
  %32 = shl i32 1, %31
  %33 = and i32 %30, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %42

35:                                               ; preds = %21
  %36 = load i32, i32* %9, align 4
  %37 = shl i32 1, %36
  %38 = load i16, i16* %8, align 2
  %39 = zext i16 %38 to i32
  %40 = or i32 %39, %37
  %41 = trunc i32 %40 to i16
  store i16 %41, i16* %8, align 2
  br label %42

42:                                               ; preds = %35, %21
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %9, align 4
  %45 = add i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %15

46:                                               ; preds = %15
  %47 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %48 = call i32 @comedi_buf_write_samples(%struct.comedi_subdevice* %47, i16* %8, i32 1)
  %49 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %50 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @TRIG_COUNT, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %72

54:                                               ; preds = %46
  %55 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %56 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %61 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = icmp sge i64 %59, %62
  br i1 %63, label %64, label %72

64:                                               ; preds = %54
  %65 = load i32, i32* @COMEDI_CB_EOA, align 4
  %66 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %67 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %66, i32 0, i32 0
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %65
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %64, %54, %46
  ret void
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @comedi_buf_write_samples(%struct.comedi_subdevice*, i16*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
