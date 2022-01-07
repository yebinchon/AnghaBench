; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_queue_pop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_knav_qmss_queue.c_knav_queue_pop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.knav_queue = type { %struct.TYPE_4__*, %struct.TYPE_3__*, %struct.knav_queue_inst* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.knav_queue_inst = type { i64*, i32, i32 }

@ACC_DESCS_MASK = common dso_local global i64 0, align 8
@DESC_PTR_MASK = common dso_local global i64 0, align 8
@DESC_SIZE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @knav_queue_pop(i8* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.knav_queue*, align 8
  %7 = alloca %struct.knav_queue_inst*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = bitcast i8* %11 to %struct.knav_queue*
  store %struct.knav_queue* %12, %struct.knav_queue** %6, align 8
  %13 = load %struct.knav_queue*, %struct.knav_queue** %6, align 8
  %14 = getelementptr inbounds %struct.knav_queue, %struct.knav_queue* %13, i32 0, i32 2
  %15 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %14, align 8
  store %struct.knav_queue_inst* %15, %struct.knav_queue_inst** %7, align 8
  %16 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %7, align 8
  %17 = getelementptr inbounds %struct.knav_queue_inst, %struct.knav_queue_inst* %16, i32 0, i32 0
  %18 = load i64*, i64** %17, align 8
  %19 = icmp ne i64* %18, null
  br i1 %19, label %20, label %45

20:                                               ; preds = %2
  %21 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %7, align 8
  %22 = getelementptr inbounds %struct.knav_queue_inst, %struct.knav_queue_inst* %21, i32 0, i32 2
  %23 = call i64 @atomic_dec_return(i32* %22)
  %24 = icmp slt i64 %23, 0
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %20
  %29 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %7, align 8
  %30 = getelementptr inbounds %struct.knav_queue_inst, %struct.knav_queue_inst* %29, i32 0, i32 2
  %31 = call i32 @atomic_inc(i32* %30)
  store i64 0, i64* %3, align 8
  br label %82

32:                                               ; preds = %20
  %33 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %7, align 8
  %34 = getelementptr inbounds %struct.knav_queue_inst, %struct.knav_queue_inst* %33, i32 0, i32 1
  %35 = call i64 @atomic_inc_return(i32* %34)
  store i64 %35, i64* %10, align 8
  %36 = load i64, i64* @ACC_DESCS_MASK, align 8
  %37 = load i64, i64* %10, align 8
  %38 = and i64 %37, %36
  store i64 %38, i64* %10, align 8
  %39 = load %struct.knav_queue_inst*, %struct.knav_queue_inst** %7, align 8
  %40 = getelementptr inbounds %struct.knav_queue_inst, %struct.knav_queue_inst* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = load i64, i64* %10, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  %44 = load i64, i64* %43, align 8
  store i64 %44, i64* %9, align 8
  br label %60

45:                                               ; preds = %2
  %46 = load %struct.knav_queue*, %struct.knav_queue** %6, align 8
  %47 = getelementptr inbounds %struct.knav_queue, %struct.knav_queue* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i64 0
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = call i64 @readl_relaxed(i32* %50)
  store i64 %51, i64* %9, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp ne i64 %52, 0
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %45
  store i64 0, i64* %3, align 8
  br label %82

59:                                               ; preds = %45
  br label %60

60:                                               ; preds = %59, %32
  %61 = load i64, i64* %9, align 8
  %62 = load i64, i64* @DESC_PTR_MASK, align 8
  %63 = and i64 %61, %62
  store i64 %63, i64* %8, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = icmp ne i32* %64, null
  br i1 %65, label %66, label %74

66:                                               ; preds = %60
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* @DESC_SIZE_MASK, align 8
  %69 = and i64 %67, %68
  %70 = add i64 %69, 1
  %71 = mul i64 %70, 16
  %72 = trunc i64 %71 to i32
  %73 = load i32*, i32** %5, align 8
  store i32 %72, i32* %73, align 4
  br label %74

74:                                               ; preds = %66, %60
  %75 = load %struct.knav_queue*, %struct.knav_queue** %6, align 8
  %76 = getelementptr inbounds %struct.knav_queue, %struct.knav_queue* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @this_cpu_inc(i32 %79)
  %81 = load i64, i64* %8, align 8
  store i64 %81, i64* %3, align 8
  br label %82

82:                                               ; preds = %74, %58, %28
  %83 = load i64, i64* %3, align 8
  ret i64 %83
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @atomic_inc_return(i32*) #1

declare dso_local i64 @readl_relaxed(i32*) #1

declare dso_local i32 @this_cpu_inc(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
