; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ai_munge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_mio_common.c_ni_ai_munge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.ni_private* }
%struct.ni_private = type { i64* }
%struct.comedi_subdevice = type { i32, %struct.comedi_async* }
%struct.comedi_async = type { %struct.comedi_cmd }
%struct.comedi_cmd = type { i32 }

@SDF_LSAMPL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i8*, i32, i32)* @ni_ai_munge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ni_ai_munge(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.comedi_device*, align 8
  %7 = alloca %struct.comedi_subdevice*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ni_private*, align 8
  %12 = alloca %struct.comedi_async*, align 8
  %13 = alloca %struct.comedi_cmd*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i16*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %6, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load %struct.comedi_device*, %struct.comedi_device** %6, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 0
  %20 = load %struct.ni_private*, %struct.ni_private** %19, align 8
  store %struct.ni_private* %20, %struct.ni_private** %11, align 8
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %22 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %21, i32 0, i32 1
  %23 = load %struct.comedi_async*, %struct.comedi_async** %22, align 8
  store %struct.comedi_async* %23, %struct.comedi_async** %12, align 8
  %24 = load %struct.comedi_async*, %struct.comedi_async** %12, align 8
  %25 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %24, i32 0, i32 0
  store %struct.comedi_cmd* %25, %struct.comedi_cmd** %13, align 8
  %26 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @comedi_bytes_to_samples(%struct.comedi_subdevice* %26, i32 %27)
  store i32 %28, i32* %14, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = bitcast i8* %29 to i16*
  store i16* %30, i16** %15, align 8
  %31 = load i8*, i8** %8, align 8
  %32 = bitcast i8* %31 to i32*
  store i32* %32, i32** %16, align 8
  store i32 0, i32* %17, align 4
  br label %33

33:                                               ; preds = %84, %5
  %34 = load i32, i32* %17, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %87

37:                                               ; preds = %33
  %38 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %7, align 8
  %39 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = load i32, i32* @SDF_LSAMPL, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %37
  %45 = load %struct.ni_private*, %struct.ni_private** %11, align 8
  %46 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = load i32, i32* %10, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  %51 = load i64, i64* %50, align 8
  %52 = load i32*, i32** %16, align 8
  %53 = load i32, i32* %17, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = zext i32 %56 to i64
  %58 = add nsw i64 %57, %51
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %55, align 4
  br label %76

60:                                               ; preds = %37
  %61 = load %struct.ni_private*, %struct.ni_private** %11, align 8
  %62 = getelementptr inbounds %struct.ni_private, %struct.ni_private* %61, i32 0, i32 0
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = load i16*, i16** %15, align 8
  %69 = load i32, i32* %17, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i16, i16* %68, i64 %70
  %72 = load i16, i16* %71, align 2
  %73 = zext i16 %72 to i64
  %74 = add nsw i64 %73, %67
  %75 = trunc i64 %74 to i16
  store i16 %75, i16* %71, align 2
  br label %76

76:                                               ; preds = %60, %44
  %77 = load i32, i32* %10, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %10, align 4
  %79 = load %struct.comedi_cmd*, %struct.comedi_cmd** %13, align 8
  %80 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %10, align 4
  %83 = urem i32 %82, %81
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %76
  %85 = load i32, i32* %17, align 4
  %86 = add i32 %85, 1
  store i32 %86, i32* %17, align 4
  br label %33

87:                                               ; preds = %33
  ret void
}

declare dso_local i32 @comedi_bytes_to_samples(%struct.comedi_subdevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
