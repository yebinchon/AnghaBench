; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/virtio/extr_virtio_ccw.c_get_airq_indicator.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/virtio/extr_virtio_ccw.c_get_airq_indicator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airq_info = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }
%struct.virtqueue = type { i32 }

@MAX_AIRQ_AREAS = common dso_local global i32 0, align 4
@airq_areas_lock = common dso_local global i32 0, align 4
@airq_areas = common dso_local global %struct.airq_info** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.virtqueue**, i32, i64*, i8**)* @get_airq_indicator to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @get_airq_indicator(%struct.virtqueue** %0, i32 %1, i64* %2, i8** %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.virtqueue**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.airq_info*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  store %struct.virtqueue** %0, %struct.virtqueue*** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64* %2, i64** %8, align 8
  store i8** %3, i8*** %9, align 8
  store i64 0, i64* %13, align 8
  store i32 0, i32* %10, align 4
  br label %16

16:                                               ; preds = %106, %4
  %17 = load i32, i32* %10, align 4
  %18 = load i32, i32* @MAX_AIRQ_AREAS, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load i64, i64* %13, align 8
  %22 = icmp ne i64 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %20, %16
  %25 = phi i1 [ false, %16 ], [ %23, %20 ]
  br i1 %25, label %26, label %109

26:                                               ; preds = %24
  %27 = call i32 @mutex_lock(i32* @airq_areas_lock)
  %28 = load %struct.airq_info**, %struct.airq_info*** @airq_areas, align 8
  %29 = load i32, i32* %10, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.airq_info*, %struct.airq_info** %28, i64 %30
  %32 = load %struct.airq_info*, %struct.airq_info** %31, align 8
  %33 = icmp ne %struct.airq_info* %32, null
  br i1 %33, label %41, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %10, align 4
  %36 = call %struct.airq_info* @new_airq_info(i32 %35)
  %37 = load %struct.airq_info**, %struct.airq_info*** @airq_areas, align 8
  %38 = load i32, i32* %10, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.airq_info*, %struct.airq_info** %37, i64 %39
  store %struct.airq_info* %36, %struct.airq_info** %40, align 8
  br label %41

41:                                               ; preds = %34, %26
  %42 = load %struct.airq_info**, %struct.airq_info*** @airq_areas, align 8
  %43 = load i32, i32* %10, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.airq_info*, %struct.airq_info** %42, i64 %44
  %46 = load %struct.airq_info*, %struct.airq_info** %45, align 8
  store %struct.airq_info* %46, %struct.airq_info** %12, align 8
  %47 = call i32 @mutex_unlock(i32* @airq_areas_lock)
  %48 = load %struct.airq_info*, %struct.airq_info** %12, align 8
  %49 = icmp ne %struct.airq_info* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %41
  store i64 0, i64* %5, align 8
  br label %111

51:                                               ; preds = %41
  %52 = load %struct.airq_info*, %struct.airq_info** %12, align 8
  %53 = getelementptr inbounds %struct.airq_info, %struct.airq_info* %52, i32 0, i32 0
  %54 = load i64, i64* %15, align 8
  %55 = call i32 @write_lock_irqsave(i32* %53, i64 %54)
  %56 = load %struct.airq_info*, %struct.airq_info** %12, align 8
  %57 = getelementptr inbounds %struct.airq_info, %struct.airq_info* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i64 @airq_iv_alloc(%struct.TYPE_3__* %58, i32 %59)
  store i64 %60, i64* %14, align 8
  %61 = load i64, i64* %14, align 8
  %62 = icmp eq i64 %61, -1
  br i1 %62, label %63, label %68

63:                                               ; preds = %51
  %64 = load %struct.airq_info*, %struct.airq_info** %12, align 8
  %65 = getelementptr inbounds %struct.airq_info, %struct.airq_info* %64, i32 0, i32 0
  %66 = load i64, i64* %15, align 8
  %67 = call i32 @write_unlock_irqrestore(i32* %65, i64 %66)
  br label %106

68:                                               ; preds = %51
  %69 = load i64, i64* %14, align 8
  %70 = load i64*, i64** %8, align 8
  store i64 %69, i64* %70, align 8
  %71 = load %struct.airq_info*, %struct.airq_info** %12, align 8
  %72 = bitcast %struct.airq_info* %71 to i8*
  %73 = load i8**, i8*** %9, align 8
  store i8* %72, i8** %73, align 8
  %74 = load %struct.airq_info*, %struct.airq_info** %12, align 8
  %75 = getelementptr inbounds %struct.airq_info, %struct.airq_info* %74, i32 0, i32 1
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  store i64 %78, i64* %13, align 8
  store i32 0, i32* %11, align 4
  br label %79

79:                                               ; preds = %98, %68
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %7, align 4
  %82 = icmp slt i32 %80, %81
  br i1 %82, label %83, label %101

83:                                               ; preds = %79
  %84 = load %struct.airq_info*, %struct.airq_info** %12, align 8
  %85 = getelementptr inbounds %struct.airq_info, %struct.airq_info* %84, i32 0, i32 1
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load i64, i64* %14, align 8
  %88 = load i32, i32* %11, align 4
  %89 = sext i32 %88 to i64
  %90 = add i64 %87, %89
  %91 = load %struct.virtqueue**, %struct.virtqueue*** %6, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.virtqueue*, %struct.virtqueue** %91, i64 %93
  %95 = load %struct.virtqueue*, %struct.virtqueue** %94, align 8
  %96 = ptrtoint %struct.virtqueue* %95 to i64
  %97 = call i32 @airq_iv_set_ptr(%struct.TYPE_3__* %86, i64 %90, i64 %96)
  br label %98

98:                                               ; preds = %83
  %99 = load i32, i32* %11, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %11, align 4
  br label %79

101:                                              ; preds = %79
  %102 = load %struct.airq_info*, %struct.airq_info** %12, align 8
  %103 = getelementptr inbounds %struct.airq_info, %struct.airq_info* %102, i32 0, i32 0
  %104 = load i64, i64* %15, align 8
  %105 = call i32 @write_unlock_irqrestore(i32* %103, i64 %104)
  br label %106

106:                                              ; preds = %101, %63
  %107 = load i32, i32* %10, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %10, align 4
  br label %16

109:                                              ; preds = %24
  %110 = load i64, i64* %13, align 8
  store i64 %110, i64* %5, align 8
  br label %111

111:                                              ; preds = %109, %50
  %112 = load i64, i64* %5, align 8
  ret i64 %112
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.airq_info* @new_airq_info(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @write_lock_irqsave(i32*, i64) #1

declare dso_local i64 @airq_iv_alloc(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @write_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @airq_iv_set_ptr(%struct.TYPE_3__*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
