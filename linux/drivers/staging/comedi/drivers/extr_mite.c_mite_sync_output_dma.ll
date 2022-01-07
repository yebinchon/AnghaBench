; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mite.c_mite_sync_output_dma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mite.c_mite_sync_output_dma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mite_channel = type { i32 }
%struct.comedi_subdevice = type { %struct.TYPE_2__*, %struct.comedi_async* }
%struct.TYPE_2__ = type { i32 }
%struct.comedi_async = type { i32, i32, i32, i32, %struct.comedi_cmd }
%struct.comedi_cmd = type { i32, i64 }

@TRIG_NONE = common dso_local global i64 0, align 8
@TRIG_COUNT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"mite: DMA underrun\0A\00", align 1
@COMEDI_CB_OVERFLOW = common dso_local global i32 0, align 4
@COMEDI_CB_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mite_channel*, %struct.comedi_subdevice*)* @mite_sync_output_dma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mite_sync_output_dma(%struct.mite_channel* %0, %struct.comedi_subdevice* %1) #0 {
  %3 = alloca %struct.mite_channel*, align 8
  %4 = alloca %struct.comedi_subdevice*, align 8
  %5 = alloca %struct.comedi_async*, align 8
  %6 = alloca %struct.comedi_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mite_channel* %0, %struct.mite_channel** %3, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %4, align 8
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %14 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %13, i32 0, i32 1
  %15 = load %struct.comedi_async*, %struct.comedi_async** %14, align 8
  store %struct.comedi_async* %15, %struct.comedi_async** %5, align 8
  %16 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %17 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %16, i32 0, i32 4
  store %struct.comedi_cmd* %17, %struct.comedi_cmd** %6, align 8
  %18 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %19 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %22 = call i32 @comedi_bytes_per_scan(%struct.comedi_subdevice* %21)
  %23 = mul i32 %20, %22
  store i32 %23, i32* %7, align 4
  %24 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %25 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %8, align 4
  %27 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %28 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @TRIG_NONE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %2
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br label %35

35:                                               ; preds = %32, %2
  %36 = phi i1 [ false, %2 ], [ %34, %32 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %12, align 4
  %38 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %39 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %40 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @comedi_buf_read_alloc(%struct.comedi_subdevice* %38, i32 %41)
  %43 = load %struct.mite_channel*, %struct.mite_channel** %3, align 8
  %44 = call i32 @mite_bytes_read_from_memory_lb(%struct.mite_channel* %43)
  store i32 %44, i32* %10, align 4
  %45 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %46 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @TRIG_COUNT, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %57

50:                                               ; preds = %35
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* %7, align 4
  %53 = sub i32 %51, %52
  %54 = icmp sgt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  store i32 %56, i32* %10, align 4
  br label %57

57:                                               ; preds = %55, %50, %35
  %58 = load %struct.mite_channel*, %struct.mite_channel** %3, align 8
  %59 = call i32 @mite_bytes_read_from_memory_ub(%struct.mite_channel* %58)
  store i32 %59, i32* %9, align 4
  %60 = load %struct.comedi_cmd*, %struct.comedi_cmd** %6, align 8
  %61 = getelementptr inbounds %struct.comedi_cmd, %struct.comedi_cmd* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @TRIG_COUNT, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %57
  %66 = load i32, i32* %9, align 4
  %67 = load i32, i32* %7, align 4
  %68 = sub i32 %66, %67
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  %71 = load i32, i32* %7, align 4
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %70, %65, %57
  %73 = load i32, i32* %12, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %72
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ugt i32 %76, %77
  br i1 %78, label %79, label %96

79:                                               ; preds = %75, %72
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %8, align 4
  %82 = sub i32 %80, %81
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %96

84:                                               ; preds = %79
  %85 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %86 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @dev_warn(i32 %89, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %91 = load i32, i32* @COMEDI_CB_OVERFLOW, align 4
  %92 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %93 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %117

96:                                               ; preds = %79, %75
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96
  br label %117

100:                                              ; preds = %96
  %101 = load i32, i32* %10, align 4
  %102 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %103 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = sub i32 %101, %104
  store i32 %105, i32* %11, align 4
  %106 = load i32, i32* %11, align 4
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %108, label %117

108:                                              ; preds = %100
  %109 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %4, align 8
  %110 = load i32, i32* %11, align 4
  %111 = call i32 @comedi_buf_read_free(%struct.comedi_subdevice* %109, i32 %110)
  %112 = load i32, i32* @COMEDI_CB_BLOCK, align 4
  %113 = load %struct.comedi_async*, %struct.comedi_async** %5, align 8
  %114 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %113, i32 0, i32 2
  %115 = load i32, i32* %114, align 8
  %116 = or i32 %115, %112
  store i32 %116, i32* %114, align 8
  br label %117

117:                                              ; preds = %84, %99, %108, %100
  ret void
}

declare dso_local i32 @comedi_bytes_per_scan(%struct.comedi_subdevice*) #1

declare dso_local i32 @comedi_buf_read_alloc(%struct.comedi_subdevice*, i32) #1

declare dso_local i32 @mite_bytes_read_from_memory_lb(%struct.mite_channel*) #1

declare dso_local i32 @mite_bytes_read_from_memory_ub(%struct.mite_channel*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @comedi_buf_read_free(%struct.comedi_subdevice*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
