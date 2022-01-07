; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_md_prep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_md_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32, i32*, i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@ql_log_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"MiniDump Template size obtained (%d KB)\0A\00", align 1
@ql_dbg_p3p = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"MiniDump Template obtained\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"MiniDump memory allocated (%d KB)\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Free MiniDump template: %p, size: (%d KB)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla82xx_md_prep(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.qla_hw_data*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %5 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %5, i32 0, i32 0
  %7 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  store %struct.qla_hw_data* %7, %struct.qla_hw_data** %3, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %9 = call i32 @qla82xx_md_get_template_size(%struct.TYPE_11__* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @QLA_SUCCESS, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %81

13:                                               ; preds = %1
  %14 = load i32, i32* @ql_log_info, align 4
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %17 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sdiv i32 %18, 1024
  %20 = call i32 (i32, %struct.TYPE_11__*, i32, i8*, i32, ...) @ql_log(i32 %14, %struct.TYPE_11__* %15, i32 45130, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %22 = call i64 @IS_QLA8044(%struct.qla_hw_data* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %13
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %26 = call i32 @qla8044_md_get_template(%struct.TYPE_11__* %25)
  store i32 %26, i32* %4, align 4
  br label %30

27:                                               ; preds = %13
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %29 = call i32 @qla82xx_md_get_template(%struct.TYPE_11__* %28)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @QLA_SUCCESS, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %80

34:                                               ; preds = %30
  %35 = load i32, i32* @ql_dbg_p3p, align 4
  %36 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %37 = call i32 @ql_dbg(i32 %35, %struct.TYPE_11__* %36, i32 45131, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %38 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %39 = call i32 @qla82xx_md_alloc(%struct.TYPE_11__* %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = load i32, i32* @QLA_SUCCESS, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %34
  %44 = load i32, i32* @ql_log_info, align 4
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %46 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %47 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sdiv i32 %48, 1024
  %50 = call i32 (i32, %struct.TYPE_11__*, i32, i8*, i32, ...) @ql_log(i32 %44, %struct.TYPE_11__* %45, i32 45132, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %49)
  br label %79

51:                                               ; preds = %34
  %52 = load i32, i32* @ql_log_info, align 4
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %54 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %55 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = ptrtoint i32* %56 to i32
  %58 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %59 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = sdiv i32 %60, 1024
  %62 = call i32 (i32, %struct.TYPE_11__*, i32, i8*, i32, ...) @ql_log(i32 %52, %struct.TYPE_11__* %53, i32 45133, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %57, i32 %61)
  %63 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %64 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %63, i32 0, i32 4
  %65 = load %struct.TYPE_10__*, %struct.TYPE_10__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %65, i32 0, i32 0
  %67 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %68 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %71 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %74 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %73, i32 0, i32 3
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @dma_free_coherent(i32* %66, i32 %69, i32* %72, i32 %75)
  %77 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %78 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %77, i32 0, i32 2
  store i32* null, i32** %78, align 8
  br label %79

79:                                               ; preds = %51, %43
  br label %80

80:                                               ; preds = %79, %30
  br label %81

81:                                               ; preds = %80, %1
  ret void
}

declare dso_local i32 @qla82xx_md_get_template_size(%struct.TYPE_11__*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_11__*, i32, i8*, i32, ...) #1

declare dso_local i64 @IS_QLA8044(%struct.qla_hw_data*) #1

declare dso_local i32 @qla8044_md_get_template(%struct.TYPE_11__*) #1

declare dso_local i32 @qla82xx_md_get_template(%struct.TYPE_11__*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_11__*, i32, i8*) #1

declare dso_local i32 @qla82xx_md_alloc(%struct.TYPE_11__*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
