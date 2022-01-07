; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_md_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_md_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32, i32*, i32*, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@ql_log_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Free MiniDump template: %p, size (%d KB)\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"Free MiniDump memory: %p, size (%d KB)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla82xx_md_free(%struct.TYPE_6__* %0) #0 {
  %2 = alloca %struct.TYPE_6__*, align 8
  %3 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %2, align 8
  %4 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %6 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  store %struct.qla_hw_data* %6, %struct.qla_hw_data** %3, align 8
  %7 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %8 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %38

11:                                               ; preds = %1
  %12 = load i32, i32* @ql_log_info, align 4
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %15 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %18 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = sdiv i32 %19, 1024
  %21 = call i32 @ql_log(i32 %12, %struct.TYPE_6__* %13, i32 45128, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32* %16, i32 %20)
  %22 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %23 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %22, i32 0, i32 5
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %27 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %30 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %33 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @dma_free_coherent(i32* %25, i32 %28, i32* %31, i32 %34)
  %36 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %37 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %36, i32 0, i32 3
  store i32* null, i32** %37, align 8
  br label %38

38:                                               ; preds = %11, %1
  %39 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %40 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = icmp ne i32* %41, null
  br i1 %42, label %43, label %62

43:                                               ; preds = %38
  %44 = load i32, i32* @ql_log_info, align 4
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %2, align 8
  %46 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %47 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %50 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = sdiv i32 %51, 1024
  %53 = call i32 @ql_log(i32 %44, %struct.TYPE_6__* %45, i32 45129, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32* %48, i32 %52)
  %54 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %55 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = call i32 @vfree(i32* %56)
  %58 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %59 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %58, i32 0, i32 1
  store i32 0, i32* %59, align 4
  %60 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %61 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %60, i32 0, i32 2
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %43, %38
  ret void
}

declare dso_local i32 @ql_log(i32, %struct.TYPE_6__*, i32, i8*, i32*, i32) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

declare dso_local i32 @vfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
