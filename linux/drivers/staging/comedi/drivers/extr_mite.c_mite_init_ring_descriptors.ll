; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mite.c_mite_init_ring_descriptors.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_mite.c_mite_init_ring_descriptors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mite_ring = type { i32, i32, %struct.mite_dma_desc* }
%struct.mite_dma_desc = type { i8*, i8*, i8* }
%struct.comedi_subdevice = type { %struct.TYPE_4__*, %struct.comedi_async* }
%struct.TYPE_4__ = type { i32 }
%struct.comedi_async = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"mite: init ring buffer to %u bytes\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"mite: ring buffer too small for requested init\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mite_init_ring_descriptors(%struct.mite_ring* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mite_ring*, align 8
  %6 = alloca %struct.comedi_subdevice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.comedi_async*, align 8
  %9 = alloca %struct.mite_dma_desc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mite_ring* %0, %struct.mite_ring** %5, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %14 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %13, i32 0, i32 1
  %15 = load %struct.comedi_async*, %struct.comedi_async** %14, align 8
  store %struct.comedi_async* %15, %struct.comedi_async** %8, align 8
  store %struct.mite_dma_desc* null, %struct.mite_dma_desc** %9, align 8
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @PAGE_SHIFT, align 4
  %18 = lshr i32 %16, %17
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* @PAGE_SIZE, align 4
  %21 = urem i32 %19, %20
  store i32 %21, i32* %11, align 4
  %22 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %23 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @dev_dbg(i32 %26, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ugt i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i32 1, i32 0
  %34 = add i32 %29, %33
  %35 = load %struct.mite_ring*, %struct.mite_ring** %5, align 8
  %36 = getelementptr inbounds %struct.mite_ring, %struct.mite_ring* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ugt i32 %34, %37
  br i1 %38, label %39, label %48

39:                                               ; preds = %3
  %40 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %6, align 8
  %41 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0))
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %4, align 4
  br label %128

48:                                               ; preds = %3
  store i32 0, i32* %12, align 4
  br label %49

49:                                               ; preds = %90, %48
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* %10, align 4
  %52 = icmp ult i32 %50, %51
  br i1 %52, label %53, label %93

53:                                               ; preds = %49
  %54 = load %struct.mite_ring*, %struct.mite_ring** %5, align 8
  %55 = getelementptr inbounds %struct.mite_ring, %struct.mite_ring* %54, i32 0, i32 2
  %56 = load %struct.mite_dma_desc*, %struct.mite_dma_desc** %55, align 8
  %57 = load i32, i32* %12, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.mite_dma_desc, %struct.mite_dma_desc* %56, i64 %58
  store %struct.mite_dma_desc* %59, %struct.mite_dma_desc** %9, align 8
  %60 = load i32, i32* @PAGE_SIZE, align 4
  %61 = call i8* @cpu_to_le32(i32 %60)
  %62 = load %struct.mite_dma_desc*, %struct.mite_dma_desc** %9, align 8
  %63 = getelementptr inbounds %struct.mite_dma_desc, %struct.mite_dma_desc* %62, i32 0, i32 2
  store i8* %61, i8** %63, align 8
  %64 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %65 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load i32, i32* %12, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i8* @cpu_to_le32(i32 %73)
  %75 = load %struct.mite_dma_desc*, %struct.mite_dma_desc** %9, align 8
  %76 = getelementptr inbounds %struct.mite_dma_desc, %struct.mite_dma_desc* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load %struct.mite_ring*, %struct.mite_ring** %5, align 8
  %78 = getelementptr inbounds %struct.mite_ring, %struct.mite_ring* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = sext i32 %79 to i64
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 24
  %85 = add i64 %80, %84
  %86 = trunc i64 %85 to i32
  %87 = call i8* @cpu_to_le32(i32 %86)
  %88 = load %struct.mite_dma_desc*, %struct.mite_dma_desc** %9, align 8
  %89 = getelementptr inbounds %struct.mite_dma_desc, %struct.mite_dma_desc* %88, i32 0, i32 0
  store i8* %87, i8** %89, align 8
  br label %90

90:                                               ; preds = %53
  %91 = load i32, i32* %12, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %12, align 4
  br label %49

93:                                               ; preds = %49
  %94 = load i32, i32* %11, align 4
  %95 = icmp ugt i32 %94, 0
  br i1 %95, label %96, label %120

96:                                               ; preds = %93
  %97 = load %struct.mite_ring*, %struct.mite_ring** %5, align 8
  %98 = getelementptr inbounds %struct.mite_ring, %struct.mite_ring* %97, i32 0, i32 2
  %99 = load %struct.mite_dma_desc*, %struct.mite_dma_desc** %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.mite_dma_desc, %struct.mite_dma_desc* %99, i64 %101
  store %struct.mite_dma_desc* %102, %struct.mite_dma_desc** %9, align 8
  %103 = load i32, i32* %11, align 4
  %104 = call i8* @cpu_to_le32(i32 %103)
  %105 = load %struct.mite_dma_desc*, %struct.mite_dma_desc** %9, align 8
  %106 = getelementptr inbounds %struct.mite_dma_desc, %struct.mite_dma_desc* %105, i32 0, i32 2
  store i8* %104, i8** %106, align 8
  %107 = load %struct.comedi_async*, %struct.comedi_async** %8, align 8
  %108 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = load i32, i32* %12, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i64 %113
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @cpu_to_le32(i32 %116)
  %118 = load %struct.mite_dma_desc*, %struct.mite_dma_desc** %9, align 8
  %119 = getelementptr inbounds %struct.mite_dma_desc, %struct.mite_dma_desc* %118, i32 0, i32 1
  store i8* %117, i8** %119, align 8
  br label %120

120:                                              ; preds = %96, %93
  %121 = load %struct.mite_ring*, %struct.mite_ring** %5, align 8
  %122 = getelementptr inbounds %struct.mite_ring, %struct.mite_ring* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @cpu_to_le32(i32 %123)
  %125 = load %struct.mite_dma_desc*, %struct.mite_dma_desc** %9, align 8
  %126 = getelementptr inbounds %struct.mite_dma_desc, %struct.mite_dma_desc* %125, i32 0, i32 0
  store i8* %124, i8** %126, align 8
  %127 = call i32 (...) @smp_wmb()
  store i32 0, i32* %4, align 4
  br label %128

128:                                              ; preds = %120, %39
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @smp_wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
