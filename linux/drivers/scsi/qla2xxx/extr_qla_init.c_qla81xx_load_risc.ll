; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla81xx_load_risc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla81xx_load_risc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { %struct.TYPE_9__, i32, i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.active_regions = type { i64 }

@ql2xfwloadbin = common dso_local global i32 0, align 4
@QLA27XX_SECONDARY_IMAGE = common dso_local global i64 0, align 8
@ql_dbg_init = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Loading secondary firmware image.\0A\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Loading primary firmware image.\0A\00", align 1
@ql_log_info = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [44 x i8] c"Attempting to fallback to golden firmware.\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Need firmware flash update.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla81xx_load_risc(%struct.TYPE_10__* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qla_hw_data*, align 8
  %8 = alloca %struct.active_regions, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  store %struct.qla_hw_data* %11, %struct.qla_hw_data** %7, align 8
  %12 = bitcast %struct.active_regions* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 8, i1 false)
  %13 = load i32, i32* @ql2xfwloadbin, align 4
  %14 = icmp eq i32 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %63

16:                                               ; preds = %2
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %18 = call i32 @IS_QLA27XX(%struct.qla_hw_data* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %25, label %20

20:                                               ; preds = %16
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %22 = call i32 @IS_QLA28XX(%struct.qla_hw_data* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  br label %48

25:                                               ; preds = %20, %16
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %27 = call i32 @qla27xx_get_active_image(%struct.TYPE_10__* %26, %struct.active_regions* %8)
  %28 = getelementptr inbounds %struct.active_regions, %struct.active_regions* %8, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @QLA27XX_SECONDARY_IMAGE, align 8
  %31 = icmp ne i64 %29, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %25
  br label %48

33:                                               ; preds = %25
  %34 = load i32, i32* @ql_dbg_init, align 4
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %36 = call i32 @ql_dbg(i32 %34, %struct.TYPE_10__* %35, i32 139, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %38 = load i32*, i32** %5, align 8
  %39 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %40 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @qla24xx_load_risc_flash(%struct.TYPE_10__* %37, i32* %38, i32 %41)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %33
  %46 = load i32, i32* %6, align 4
  store i32 %46, i32* %3, align 4
  br label %98

47:                                               ; preds = %33
  br label %48

48:                                               ; preds = %47, %32, %24
  %49 = load i32, i32* @ql_dbg_init, align 4
  %50 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %51 = call i32 @ql_dbg(i32 %49, %struct.TYPE_10__* %50, i32 139, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %53 = load i32*, i32** %5, align 8
  %54 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %55 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @qla24xx_load_risc_flash(%struct.TYPE_10__* %52, i32* %53, i32 %56)
  store i32 %57, i32* %6, align 4
  %58 = load i32, i32* %6, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %48
  %61 = load i32, i32* %6, align 4
  store i32 %61, i32* %3, align 4
  br label %98

62:                                               ; preds = %48
  br label %63

63:                                               ; preds = %62, %15
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = call i32 @qla24xx_load_risc_blob(%struct.TYPE_10__* %64, i32* %65)
  store i32 %66, i32* %6, align 4
  %67 = load i32, i32* %6, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %63
  %70 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %71 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %76, label %74

74:                                               ; preds = %69, %63
  %75 = load i32, i32* %6, align 4
  store i32 %75, i32* %3, align 4
  br label %98

76:                                               ; preds = %69
  %77 = load i32, i32* @ql_log_info, align 4
  %78 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %79 = call i32 @ql_log(i32 %77, %struct.TYPE_10__* %78, i32 153, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0))
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %83 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @qla24xx_load_risc_flash(%struct.TYPE_10__* %80, i32* %81, i32 %84)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %76
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %3, align 4
  br label %98

90:                                               ; preds = %76
  %91 = load i32, i32* @ql_log_info, align 4
  %92 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %93 = call i32 @ql_log(i32 %91, %struct.TYPE_10__* %92, i32 154, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %94 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %95 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 0
  store i32 1, i32* %96, align 4
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %3, align 4
  br label %98

98:                                               ; preds = %90, %88, %74, %60, %45
  %99 = load i32, i32* %3, align 4
  ret i32 %99
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @IS_QLA27XX(%struct.qla_hw_data*) #2

declare dso_local i32 @IS_QLA28XX(%struct.qla_hw_data*) #2

declare dso_local i32 @qla27xx_get_active_image(%struct.TYPE_10__*, %struct.active_regions*) #2

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_10__*, i32, i8*) #2

declare dso_local i32 @qla24xx_load_risc_flash(%struct.TYPE_10__*, i32*, i32) #2

declare dso_local i32 @qla24xx_load_risc_blob(%struct.TYPE_10__*, i32*) #2

declare dso_local i32 @ql_log(i32, %struct.TYPE_10__*, i32, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
