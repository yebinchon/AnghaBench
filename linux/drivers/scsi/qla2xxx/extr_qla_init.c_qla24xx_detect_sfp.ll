; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla24xx_detect_sfp.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla24xx_detect_sfp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.qla_hw_data* }
%struct.TYPE_10__ = type { i32 }
%struct.qla_hw_data = type { %struct.TYPE_9__, i32, i64 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.sff_8247_a0 = type { i32, i32, i32 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@FC_LL_VL = common dso_local global i32 0, align 4
@FC_LL_L = common dso_local global i32 0, align 4
@LR_DISTANCE_10K = common dso_local global i32 0, align 4
@LR_DISTANCE_5K = common dso_local global i32 0, align 4
@ql_dbg_async = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Detected Long Range SFP.\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Detected Short Range SFP.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla24xx_detect_sfp(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.sff_8247_a0*, align 8
  %5 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  %6 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %6, i32* %3, align 4
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 1
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %8, align 8
  store %struct.qla_hw_data* %9, %struct.qla_hw_data** %5, align 8
  %10 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %11 = call i32 @AUTO_DETECT_SFP_SUPPORT(%struct.TYPE_11__* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %101

14:                                               ; preds = %1
  %15 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %16 = call i32 @qla2x00_read_sfp_dev(%struct.TYPE_11__* %15, i32* null, i32 0)
  store i32 %16, i32* %3, align 4
  %17 = load i32, i32* %3, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  br label %101

20:                                               ; preds = %14
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %21, i32 0, i32 1
  %23 = load %struct.qla_hw_data*, %struct.qla_hw_data** %22, align 8
  %24 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.sff_8247_a0*
  store %struct.sff_8247_a0* %26, %struct.sff_8247_a0** %4, align 8
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %28 = call i32 @qla2xxx_print_sfp_info(%struct.TYPE_11__* %27)
  %29 = load %struct.sff_8247_a0*, %struct.sff_8247_a0** %4, align 8
  %30 = getelementptr inbounds %struct.sff_8247_a0, %struct.sff_8247_a0* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @FC_LL_VL, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %42, label %35

35:                                               ; preds = %20
  %36 = load %struct.sff_8247_a0*, %struct.sff_8247_a0** %4, align 8
  %37 = getelementptr inbounds %struct.sff_8247_a0, %struct.sff_8247_a0* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @FC_LL_L, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %78

42:                                               ; preds = %35, %20
  %43 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %44 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store i32 1, i32* %45, align 8
  %46 = load %struct.sff_8247_a0*, %struct.sff_8247_a0** %4, align 8
  %47 = getelementptr inbounds %struct.sff_8247_a0, %struct.sff_8247_a0* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = icmp sgt i32 %48, 5
  br i1 %49, label %55, label %50

50:                                               ; preds = %42
  %51 = load %struct.sff_8247_a0*, %struct.sff_8247_a0** %4, align 8
  %52 = getelementptr inbounds %struct.sff_8247_a0, %struct.sff_8247_a0* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = icmp sgt i32 %53, 50
  br i1 %54, label %55, label %59

55:                                               ; preds = %50, %42
  %56 = load i32, i32* @LR_DISTANCE_10K, align 4
  %57 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %58 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  br label %63

59:                                               ; preds = %50
  %60 = load i32, i32* @LR_DISTANCE_5K, align 4
  %61 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %62 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %59, %55
  %64 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %65 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %69 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %67, %71
  br i1 %72, label %73, label %77

73:                                               ; preds = %63
  %74 = load i32, i32* @ql_dbg_async, align 4
  %75 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %76 = call i32 @ql_dbg(i32 %74, %struct.TYPE_11__* %75, i32 20603, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %77

77:                                               ; preds = %73, %63
  br label %92

78:                                               ; preds = %35
  %79 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %80 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  store i32 0, i32* %81, align 8
  %82 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %83 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %78
  %88 = load i32, i32* @ql_dbg_async, align 4
  %89 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %90 = call i32 @ql_dbg(i32 %88, %struct.TYPE_11__* %89, i32 20612, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %91

91:                                               ; preds = %87, %78
  br label %92

92:                                               ; preds = %91, %77
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %100, label %98

98:                                               ; preds = %92
  %99 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %99, i32* %3, align 4
  br label %100

100:                                              ; preds = %98, %92
  br label %101

101:                                              ; preds = %100, %19, %13
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @AUTO_DETECT_SFP_SUPPORT(%struct.TYPE_11__*) #1

declare dso_local i32 @qla2x00_read_sfp_dev(%struct.TYPE_11__*, i32*, i32) #1

declare dso_local i32 @qla2xxx_print_sfp_info(%struct.TYPE_11__*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_11__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
