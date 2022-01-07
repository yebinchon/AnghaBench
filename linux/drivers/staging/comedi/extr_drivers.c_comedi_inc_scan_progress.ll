; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_drivers.c_comedi_inc_scan_progress.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_drivers.c_comedi_inc_scan_progress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_subdevice = type { i32, %struct.comedi_async* }
%struct.comedi_async = type { i32, i32, i32, i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32 }

@SDF_PACKED = common dso_local global i32 0, align 4
@UINT_MAX = common dso_local global i32 0, align 4
@COMEDI_CB_EOS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @comedi_inc_scan_progress(%struct.comedi_subdevice* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_subdevice*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_async*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.comedi_subdevice* %0, %struct.comedi_subdevice** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %10 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %9, i32 0, i32 1
  %11 = load %struct.comedi_async*, %struct.comedi_async** %10, align 8
  store %struct.comedi_async* %11, %struct.comedi_async** %5, align 8
  %12 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %13 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %12, i32 0, i32 4
  store %struct.comedi_cmd* %13, %struct.comedi_cmd** %6, align 8
  %14 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %15 = call i32 @comedi_bytes_per_scan(%struct.comedi_subdevice* %14)
  store i32 %15, i32* %7, align 4
  %16 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %17 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @SDF_PACKED, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %2
  %23 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = call i64 @comedi_bytes_to_samples(%struct.comedi_subdevice* %23, i32 %24)
  %26 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %27 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = add nsw i64 %29, %25
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %27, align 4
  %32 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %33 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %36 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = srem i32 %37, %34
  store i32 %38, i32* %36, align 4
  br label %39

39:                                               ; preds = %22, %2
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %42 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = add i32 %43, %40
  store i32 %44, i32* %42, align 4
  %45 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %46 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %7, align 4
  %49 = icmp uge i32 %47, %48
  br i1 %49, label %50, label %84

50:                                               ; preds = %39
  %51 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %52 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %7, align 4
  %55 = udiv i32 %53, %54
  store i32 %55, i32* %8, align 4
  %56 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %57 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @UINT_MAX, align 4
  %60 = load i32, i32* %8, align 4
  %61 = sub i32 %59, %60
  %62 = icmp ult i32 %58, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %50
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %66 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = add i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %73

69:                                               ; preds = %50
  %70 = load i32, i32* @UINT_MAX, align 4
  %71 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %72 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %69, %63
  %74 = load i32, i32* %7, align 4
  %75 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %76 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = urem i32 %77, %74
  store i32 %78, i32* %76, align 4
  %79 = load i32, i32* @COMEDI_CB_EOS, align 4
  %80 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %81 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 4
  br label %84

84:                                               ; preds = %73, %39
  ret void
}

declare dso_local i32 @comedi_bytes_per_scan(%struct.comedi_subdevice*) #1

declare dso_local i64 @comedi_bytes_to_samples(%struct.comedi_subdevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
