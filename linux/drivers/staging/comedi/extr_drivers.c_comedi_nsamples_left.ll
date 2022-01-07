; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_drivers.c_comedi_nsamples_left.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_drivers.c_comedi_nsamples_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_subdevice = type { %struct.comedi_async* }
%struct.comedi_async = type { i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i64, i64, i32 }

@TRIG_COUNT = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @comedi_nsamples_left(%struct.comedi_subdevice* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.comedi_async*, align 8
  %7 = alloca %struct.comedi_cmd*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.comedi_subdevice* %0, %struct.comedi_subdevice** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %11 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %10, i32 0, i32 0
  %12 = load %struct.comedi_async*, %struct.comedi_async** %11, align 8
  store %struct.comedi_async* %12, %struct.comedi_async** %6, align 8
  %13 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %14 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %13, i32 0, i32 1
  store %struct.comedi_cmd* %14, %struct.comedi_cmd** %7, align 8
  %15 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %16 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @TRIG_COUNT, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  store i32 %21, i32* %3, align 4
  br label %52

22:                                               ; preds = %2
  %23 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %24 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %25 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @__comedi_nscans_left(%struct.comedi_subdevice* %23, i32 %26)
  store i64 %27, i64* %8, align 8
  %28 = load i64, i64* %8, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %22
  store i32 0, i32* %3, align 4
  br label %52

31:                                               ; preds = %22
  %32 = load i64, i64* %8, align 8
  %33 = load %struct.comedi_cmd*, %struct.comedi_cmd** %7, align 8
  %34 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = mul i64 %32, %35
  %37 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %38 = load %struct.comedi_async*, %struct.comedi_async** %6, align 8
  %39 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @comedi_bytes_to_samples(%struct.comedi_subdevice* %37, i32 %40)
  %42 = sub i64 %36, %41
  store i64 %42, i64* %9, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i32, i32* %5, align 4
  %45 = zext i32 %44 to i64
  %46 = icmp ult i64 %43, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %31
  %48 = load i64, i64* %9, align 8
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %3, align 4
  br label %52

50:                                               ; preds = %31
  %51 = load i32, i32* %5, align 4
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %50, %47, %30, %20
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i64 @__comedi_nscans_left(%struct.comedi_subdevice*, i32) #1

declare dso_local i64 @comedi_bytes_to_samples(%struct.comedi_subdevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
