; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_handle_ao_nofifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_amplc_pci230.c_pci230_handle_ao_nofifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i16*, %struct.comedi_async* }
%struct.comedi_async = type { i64, i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i64, i32, i32* }

@TRIG_COUNT = common dso_local global i64 0, align 8
@COMEDI_CB_OVERFLOW = common dso_local global i32 0, align 4
@COMEDI_CB_EOA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*)* @pci230_handle_ao_nofifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci230_handle_ao_nofifo(%struct.comedi_device* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.comedi_device*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.comedi_async*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %11 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %10, i32 0, i32 1
  %12 = load %struct.comedi_async*, %struct.comedi_async** %11, align 8
  store %struct.comedi_async* %12, %struct.comedi_async** %5, align 8
  %13 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %14 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %13, i32 0, i32 2
  store %struct.comedi_cmd* %14, %struct.comedi_cmd** %6, align 8
  %15 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %16 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TRIG_COUNT, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %2
  %21 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %22 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %25 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sge i64 %23, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %20
  br label %89

29:                                               ; preds = %20, %2
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %66, %29
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %33 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %69

36:                                               ; preds = %30
  %37 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %38 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %37, i32 0, i32 3
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = call i32 @CR_CHAN(i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %46 = call i32 @comedi_buf_read_samples(%struct.comedi_subdevice* %45, i16* %7, i32 1)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %36
  %49 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %50 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %51 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %49
  store i32 %53, i32* %51, align 8
  br label %89

54:                                               ; preds = %36
  %55 = load %struct.comedi_device*, %struct.comedi_device** %3, align 8
  %56 = load i16, i16* %7, align 2
  %57 = load i32, i32* %9, align 4
  %58 = call i32 @pci230_ao_write_nofifo(%struct.comedi_device* %55, i16 zeroext %56, i32 %57)
  %59 = load i16, i16* %7, align 2
  %60 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %61 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %60, i32 0, i32 0
  %62 = load i16*, i16** %61, align 8
  %63 = load i32, i32* %9, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds i16, i16* %62, i64 %64
  store i16 %59, i16* %65, align 2
  br label %66

66:                                               ; preds = %54
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %30

69:                                               ; preds = %30
  %70 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %71 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @TRIG_COUNT, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %89

75:                                               ; preds = %69
  %76 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %77 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %80 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = icmp sge i64 %78, %81
  br i1 %82, label %83, label %89

83:                                               ; preds = %75
  %84 = load i32, i32* @COMEDI_CB_EOA, align 4
  %85 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %86 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %28, %48, %83, %75, %69
  ret void
}

declare dso_local i32 @CR_CHAN(i32) #1

declare dso_local i32 @comedi_buf_read_samples(%struct.comedi_subdevice*, i16*, i32) #1

declare dso_local i32 @pci230_ao_write_nofifo(%struct.comedi_device*, i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
