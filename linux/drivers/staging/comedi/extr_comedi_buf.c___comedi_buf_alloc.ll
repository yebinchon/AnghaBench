; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_buf.c___comedi_buf_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/extr_comedi_buf.c___comedi_buf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32 }
%struct.comedi_subdevice = type { i64, i32, %struct.comedi_async* }
%struct.comedi_async = type { i32, %struct.comedi_buf_map* }
%struct.comedi_buf_map = type { i64, %struct.comedi_buf_page* }
%struct.comedi_buf_page = type { i32 }
%struct.page = type { i32 }

@CONFIG_HAS_DMA = common dso_local global i32 0, align 4
@DMA_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"dma buffer allocation not supported\0A\00", align 1
@VM_MAP = common dso_local global i32 0, align 4
@COMEDI_PAGE_PROTECTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*, %struct.comedi_subdevice*, i32)* @__comedi_buf_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__comedi_buf_alloc(%struct.comedi_device* %0, %struct.comedi_subdevice* %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca %struct.comedi_subdevice*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.comedi_async*, align 8
  %8 = alloca %struct.page**, align 8
  %9 = alloca %struct.comedi_buf_map*, align 8
  %10 = alloca %struct.comedi_buf_page*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store %struct.comedi_subdevice* %1, %struct.comedi_subdevice** %5, align 8
  store i32 %2, i32* %6, align 4
  %13 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %14 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %13, i32 0, i32 2
  %15 = load %struct.comedi_async*, %struct.comedi_async** %14, align 8
  store %struct.comedi_async* %15, %struct.comedi_async** %7, align 8
  store %struct.page** null, %struct.page*** %8, align 8
  %16 = load i32, i32* @CONFIG_HAS_DMA, align 4
  %17 = call i32 @IS_ENABLED(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %3
  %20 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %21 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @DMA_NONE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %30

25:                                               ; preds = %19
  %26 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %27 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @dev_err(i32 %28, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %109

30:                                               ; preds = %19, %3
  %31 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %32 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %33 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call %struct.comedi_buf_map* @comedi_buf_map_alloc(%struct.comedi_device* %31, i64 %34, i32 %35)
  store %struct.comedi_buf_map* %36, %struct.comedi_buf_map** %9, align 8
  %37 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %9, align 8
  %38 = icmp ne %struct.comedi_buf_map* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %30
  br label %109

40:                                               ; preds = %30
  %41 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %42 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %41, i32 0, i32 1
  %43 = load i64, i64* %11, align 8
  %44 = call i32 @spin_lock_irqsave(i32* %42, i64 %43)
  %45 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %9, align 8
  %46 = load %struct.comedi_async*, %struct.comedi_async** %7, align 8
  %47 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %46, i32 0, i32 1
  store %struct.comedi_buf_map* %45, %struct.comedi_buf_map** %47, align 8
  %48 = load %struct.comedi_subdevice*, %struct.comedi_subdevice** %5, align 8
  %49 = getelementptr inbounds %struct.comedi_subdevice, %struct.comedi_subdevice* %48, i32 0, i32 1
  %50 = load i64, i64* %11, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %9, align 8
  %53 = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @DMA_NONE, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %40
  %58 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %9, align 8
  %59 = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %58, i32 0, i32 1
  %60 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %59, align 8
  %61 = getelementptr inbounds %struct.comedi_buf_page, %struct.comedi_buf_page* %60, i64 0
  store %struct.comedi_buf_page* %61, %struct.comedi_buf_page** %10, align 8
  %62 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %10, align 8
  %63 = getelementptr inbounds %struct.comedi_buf_page, %struct.comedi_buf_page* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.comedi_async*, %struct.comedi_async** %7, align 8
  %66 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  br label %109

67:                                               ; preds = %40
  %68 = load i32, i32* %6, align 4
  %69 = zext i32 %68 to i64
  %70 = mul i64 8, %69
  %71 = trunc i64 %70 to i32
  %72 = call %struct.page** @vmalloc(i32 %71)
  store %struct.page** %72, %struct.page*** %8, align 8
  %73 = load %struct.page**, %struct.page*** %8, align 8
  %74 = icmp ne %struct.page** %73, null
  br i1 %74, label %76, label %75

75:                                               ; preds = %67
  br label %109

76:                                               ; preds = %67
  store i32 0, i32* %12, align 4
  br label %77

77:                                               ; preds = %96, %76
  %78 = load i32, i32* %12, align 4
  %79 = load i32, i32* %6, align 4
  %80 = icmp ult i32 %78, %79
  br i1 %80, label %81, label %99

81:                                               ; preds = %77
  %82 = load %struct.comedi_buf_map*, %struct.comedi_buf_map** %9, align 8
  %83 = getelementptr inbounds %struct.comedi_buf_map, %struct.comedi_buf_map* %82, i32 0, i32 1
  %84 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %83, align 8
  %85 = load i32, i32* %12, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds %struct.comedi_buf_page, %struct.comedi_buf_page* %84, i64 %86
  store %struct.comedi_buf_page* %87, %struct.comedi_buf_page** %10, align 8
  %88 = load %struct.comedi_buf_page*, %struct.comedi_buf_page** %10, align 8
  %89 = getelementptr inbounds %struct.comedi_buf_page, %struct.comedi_buf_page* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = call %struct.page* @virt_to_page(i32 %90)
  %92 = load %struct.page**, %struct.page*** %8, align 8
  %93 = load i32, i32* %12, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.page*, %struct.page** %92, i64 %94
  store %struct.page* %91, %struct.page** %95, align 8
  br label %96

96:                                               ; preds = %81
  %97 = load i32, i32* %12, align 4
  %98 = add i32 %97, 1
  store i32 %98, i32* %12, align 4
  br label %77

99:                                               ; preds = %77
  %100 = load %struct.page**, %struct.page*** %8, align 8
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @VM_MAP, align 4
  %103 = load i32, i32* @COMEDI_PAGE_PROTECTION, align 4
  %104 = call i32 @vmap(%struct.page** %100, i32 %101, i32 %102, i32 %103)
  %105 = load %struct.comedi_async*, %struct.comedi_async** %7, align 8
  %106 = getelementptr inbounds %struct.comedi_async, %struct.comedi_async* %105, i32 0, i32 0
  store i32 %104, i32* %106, align 8
  %107 = load %struct.page**, %struct.page*** %8, align 8
  %108 = call i32 @vfree(%struct.page** %107)
  br label %109

109:                                              ; preds = %25, %39, %75, %99, %57
  ret void
}

declare dso_local i32 @IS_ENABLED(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local %struct.comedi_buf_map* @comedi_buf_map_alloc(%struct.comedi_device*, i64, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.page** @vmalloc(i32) #1

declare dso_local %struct.page* @virt_to_page(i32) #1

declare dso_local i32 @vmap(%struct.page**, i32, i32, i32) #1

declare dso_local i32 @vfree(%struct.page**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
