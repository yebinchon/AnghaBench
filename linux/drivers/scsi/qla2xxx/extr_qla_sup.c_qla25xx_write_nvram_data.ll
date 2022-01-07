; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla25xx_write_nvram_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla25xx_write_nvram_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, i32*, i32, i32)*, i32 (%struct.TYPE_7__*, i32*, i32, i32)* }

@RMW_BUFFER_SIZE = common dso_local global i32 0, align 4
@QLA_MEMORY_ALLOC_FAILED = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla25xx_write_nvram_data(%struct.TYPE_7__* %0, i8* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.qla_hw_data*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  store %struct.qla_hw_data* %14, %struct.qla_hw_data** %10, align 8
  %15 = load i32, i32* @RMW_BUFFER_SIZE, align 4
  %16 = call i32* @vmalloc(i32 %15)
  store i32* %16, i32** %11, align 8
  %17 = load i32*, i32** %11, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %21, label %19

19:                                               ; preds = %4
  %20 = load i32, i32* @QLA_MEMORY_ALLOC_FAILED, align 4
  store i32 %20, i32* %5, align 4
  br label %59

21:                                               ; preds = %4
  %22 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %23 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = load i32 (%struct.TYPE_7__*, i32*, i32, i32)*, i32 (%struct.TYPE_7__*, i32*, i32, i32)** %25, align 8
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %30 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = shl i32 %31, 2
  %33 = load i32, i32* @RMW_BUFFER_SIZE, align 4
  %34 = call i32 %26(%struct.TYPE_7__* %27, i32* %28, i32 %32, i32 %33)
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %8, align 4
  %37 = shl i32 %36, 2
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @memcpy(i32* %39, i8* %40, i32 %41)
  %43 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %44 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %43, i32 0, i32 1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32 (%struct.TYPE_7__*, i32*, i32, i32)*, i32 (%struct.TYPE_7__*, i32*, i32, i32)** %46, align 8
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %49 = load i32*, i32** %11, align 8
  %50 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  %51 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = shl i32 %52, 2
  %54 = load i32, i32* @RMW_BUFFER_SIZE, align 4
  %55 = call i32 %47(%struct.TYPE_7__* %48, i32* %49, i32 %53, i32 %54)
  %56 = load i32*, i32** %11, align 8
  %57 = call i32 @vfree(i32* %56)
  %58 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %58, i32* %5, align 4
  br label %59

59:                                               ; preds = %21, %19
  %60 = load i32, i32* %5, align 4
  ret i32 %60
}

declare dso_local i32* @vmalloc(i32) #1

declare dso_local i32 @memcpy(i32*, i8*, i32) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
