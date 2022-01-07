; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_buf.c_comedi_buf_munge.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_buf.c_comedi_buf_munge.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_subdevice = type { i32, i32 (i32, %struct.comedi_subdevice*, i32, i32, i32)*, %struct.comedi_async* }
%struct.comedi_async = type { i32, i32, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@CMDF_RAWDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_subdevice*, i32)* @comedi_buf_munge to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @comedi_buf_munge(%struct.comedi_subdevice* %0, i32 %1) #0 {
  %3 = alloca %struct.comedi_subdevice*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.comedi_async*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.comedi_subdevice* %0, %struct.comedi_subdevice** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %11 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %10, i32 0, i32 2
  %12 = load %struct.comedi_async*, %struct.comedi_async** %11, align 8
  store %struct.comedi_async* %12, %struct.comedi_async** %5, align 8
  store i32 0, i32* %6, align 4
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %14 = call i32 @comedi_bytes_per_sample(%struct.comedi_subdevice* %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %16 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %15, i32 0, i32 1
  %17 = load i32 (i32, %struct.comedi_subdevice*, i32, i32, i32)*, i32 (i32, %struct.comedi_subdevice*, i32, i32, i32)** %16, align 8
  %18 = icmp ne i32 (i32, %struct.comedi_subdevice*, i32, i32, i32)* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %21 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %20, i32 0, i32 5
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @CMDF_RAWDATA, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %19, %2
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %30 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = add i32 %31, %28
  store i32 %32, i32* %30, align 4
  %33 = load i32, i32* %4, align 4
  store i32 %33, i32* %6, align 4
  br label %117

34:                                               ; preds = %19
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %7, align 4
  %37 = urem i32 %35, %36
  %38 = load i32, i32* %4, align 4
  %39 = sub i32 %38, %37
  store i32 %39, i32* %4, align 4
  br label %40

40:                                               ; preds = %60, %34
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %4, align 4
  %43 = icmp ult i32 %41, %42
  br i1 %43, label %44, label %116

44:                                               ; preds = %40
  %45 = load i32, i32* %4, align 4
  %46 = load i32, i32* %6, align 4
  %47 = sub i32 %45, %46
  store i32 %47, i32* %8, align 4
  %48 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %49 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %52 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = sub i32 %50, %53
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = icmp ugt i32 %55, %56
  br i1 %57, label %58, label %60

58:                                               ; preds = %44
  %59 = load i32, i32* %9, align 4
  store i32 %59, i32* %8, align 4
  br label %60

60:                                               ; preds = %58, %44
  %61 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %62 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %61, i32 0, i32 1
  %63 = load i32 (i32, %struct.comedi_subdevice*, i32, i32, i32)*, i32 (i32, %struct.comedi_subdevice*, i32, i32, i32)** %62, align 8
  %64 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %65 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %3, align 8
  %68 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %69 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %72 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = add i32 %70, %73
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %77 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 4
  %79 = call i32 %63(i32 %66, %struct.comedi_subdevice* %67, i32 %74, i32 %75, i32 %78)
  %80 = call i32 (...) @smp_wmb()
  %81 = load i32, i32* %8, align 4
  %82 = load i32, i32* %7, align 4
  %83 = udiv i32 %81, %82
  %84 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %85 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 4
  %87 = add i32 %86, %83
  store i32 %87, i32* %85, align 4
  %88 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %89 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %88, i32 0, i32 5
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %93 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %92, i32 0, i32 4
  %94 = load i32, i32* %93, align 4
  %95 = srem i32 %94, %91
  store i32 %95, i32* %93, align 4
  %96 = load i32, i32* %8, align 4
  %97 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %98 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = add i32 %99, %96
  store i32 %100, i32* %98, align 4
  %101 = load i32, i32* %8, align 4
  %102 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %103 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = add i32 %104, %101
  store i32 %105, i32* %103, align 4
  %106 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %107 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %110 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = urem i32 %111, %108
  store i32 %112, i32* %110, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %6, align 4
  %115 = add i32 %114, %113
  store i32 %115, i32* %6, align 4
  br label %40

116:                                              ; preds = %40
  br label %117

117:                                              ; preds = %116, %27
  %118 = load i32, i32* %6, align 4
  ret i32 %118
}

declare dso_local i32 @comedi_bytes_per_sample(%struct.comedi_subdevice*) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
