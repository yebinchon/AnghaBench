; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_3w-sas.c_twl_aen_complete.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_3w-sas.c_twl_aen_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32*, %struct.TYPE_16__**, i32, i64* }
%struct.TYPE_16__ = type { %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }

@TW_OP_SET_PARAM = common dso_local global i64 0, align 8
@TW_S_COMPLETED = common dso_local global i32 0, align 4
@TW_IN_ATTENTION_LOOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*, i32)* @twl_aen_complete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twl_aen_complete(%struct.TYPE_15__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_16__*, align 8
  %6 = alloca %struct.TYPE_18__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i16, align 2
  %9 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 1, i32* %9, align 4
  %10 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %11 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %10, i32 0, i32 4
  %12 = load i64*, i64** %11, align 8
  %13 = load i32, i32* %4, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds i64, i64* %12, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %17, %struct.TYPE_17__** %7, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 8
  %21 = add nsw i32 %20, -1
  store i32 %21, i32* %19, align 8
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call zeroext i16 @le16_to_cpu(i32 %25)
  store i16 %26, i16* %8, align 2
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %29, i64 %31
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %32, align 8
  store %struct.TYPE_16__* %33, %struct.TYPE_16__** %5, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 0
  store %struct.TYPE_18__* %36, %struct.TYPE_18__** %6, align 8
  %37 = load %struct.TYPE_18__*, %struct.TYPE_18__** %6, align 8
  %38 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i64 @TW_OP_OUT(i32 %39)
  %41 = load i64, i64* @TW_OP_SET_PARAM, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %2
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i64 @twl_aen_read_queue(%struct.TYPE_15__* %44, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %43
  br label %69

49:                                               ; preds = %43
  store i32 0, i32* %9, align 4
  br label %84

50:                                               ; preds = %2
  %51 = load i16, i16* %8, align 2
  %52 = zext i16 %51 to i32
  switch i32 %52, label %58 [
    i32 129, label %53
    i32 128, label %54
  ]

53:                                               ; preds = %50
  br label %68

54:                                               ; preds = %50
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @twl_aen_sync_time(%struct.TYPE_15__* %55, i32 %56)
  store i32 0, i32* %9, align 4
  br label %84

58:                                               ; preds = %50
  %59 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %61 = call i32 @twl_aen_queue_event(%struct.TYPE_15__* %59, %struct.TYPE_17__* %60)
  %62 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i64 @twl_aen_read_queue(%struct.TYPE_15__* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %58
  br label %69

67:                                               ; preds = %58
  store i32 0, i32* %9, align 4
  br label %84

68:                                               ; preds = %53
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %68, %66, %48
  %70 = load i32, i32* @TW_S_COMPLETED, align 4
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = load i32, i32* %4, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds i32, i32* %73, i64 %75
  store i32 %70, i32* %76, align 4
  %77 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %78 = load i32, i32* %4, align 4
  %79 = call i32 @twl_free_request_id(%struct.TYPE_15__* %77, i32 %78)
  %80 = load i32, i32* @TW_IN_ATTENTION_LOOP, align 4
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %82 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %81, i32 0, i32 0
  %83 = call i32 @clear_bit(i32 %80, i32* %82)
  br label %84

84:                                               ; preds = %69, %67, %54, %49
  %85 = load i32, i32* %9, align 4
  ret i32 %85
}

declare dso_local zeroext i16 @le16_to_cpu(i32) #1

declare dso_local i64 @TW_OP_OUT(i32) #1

declare dso_local i64 @twl_aen_read_queue(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @twl_aen_sync_time(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @twl_aen_queue_event(%struct.TYPE_15__*, %struct.TYPE_17__*) #1

declare dso_local i32 @twl_free_request_id(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
