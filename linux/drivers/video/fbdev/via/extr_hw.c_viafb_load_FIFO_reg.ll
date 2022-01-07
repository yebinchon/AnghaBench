; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_hw.c_viafb_load_FIFO_reg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/via/extr_hw.c_viafb_load_FIFO_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_28__* }
%struct.TYPE_28__ = type { i64 }
%struct.TYPE_19__ = type { %struct.TYPE_24__, %struct.TYPE_20__ }
%struct.TYPE_24__ = type { i32, %struct.io_register* }
%struct.io_register = type { i32 }
%struct.TYPE_20__ = type { i32, %struct.io_register* }
%struct.TYPE_16__ = type { %struct.TYPE_25__, %struct.TYPE_21__ }
%struct.TYPE_25__ = type { i32, %struct.io_register* }
%struct.TYPE_21__ = type { i32, %struct.io_register* }
%struct.TYPE_17__ = type { %struct.TYPE_26__, %struct.TYPE_22__ }
%struct.TYPE_26__ = type { i32, %struct.io_register* }
%struct.TYPE_22__ = type { i32, %struct.io_register* }
%struct.TYPE_18__ = type { %struct.TYPE_27__, %struct.TYPE_23__ }
%struct.TYPE_27__ = type { i32, %struct.io_register* }
%struct.TYPE_23__ = type { i32, %struct.io_register* }

@IGA1 = common dso_local global i32 0, align 4
@viaparinfo = common dso_local global %struct.TYPE_15__* null, align 8
@UNICHROME_K800 = common dso_local global i64 0, align 8
@K800_IGA1_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@K800_IGA1_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@K800_IGA1_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@K800_IGA1_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@UNICHROME_PM800 = common dso_local global i64 0, align 8
@P880_IGA1_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@P880_IGA1_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@P880_IGA1_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@P880_IGA1_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@UNICHROME_CN700 = common dso_local global i64 0, align 8
@CN700_IGA1_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@CN700_IGA1_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@CN700_IGA1_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@CN700_IGA1_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@UNICHROME_CX700 = common dso_local global i64 0, align 8
@CX700_IGA1_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@CX700_IGA1_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@CX700_IGA1_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@CX700_IGA1_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@UNICHROME_K8M890 = common dso_local global i64 0, align 8
@K8M890_IGA1_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@K8M890_IGA1_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@K8M890_IGA1_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@K8M890_IGA1_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@UNICHROME_P4M890 = common dso_local global i64 0, align 8
@P4M890_IGA1_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@P4M890_IGA1_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@P4M890_IGA1_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@P4M890_IGA1_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@UNICHROME_P4M900 = common dso_local global i64 0, align 8
@P4M900_IGA1_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@P4M900_IGA1_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@P4M900_IGA1_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@P4M900_IGA1_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@UNICHROME_VX800 = common dso_local global i64 0, align 8
@VX800_IGA1_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@VX800_IGA1_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@VX800_IGA1_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@VX800_IGA1_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@UNICHROME_VX855 = common dso_local global i64 0, align 8
@VX855_IGA1_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@VX855_IGA1_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@VX855_IGA1_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@VX855_IGA1_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@UNICHROME_VX900 = common dso_local global i64 0, align 8
@VX900_IGA1_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@VX900_IGA1_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@VX900_IGA1_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@VX900_IGA1_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@display_fifo_depth_reg = common dso_local global %struct.TYPE_19__ zeroinitializer, align 8
@VIASR = common dso_local global i32 0, align 4
@fifo_threshold_select_reg = common dso_local global %struct.TYPE_16__ zeroinitializer, align 8
@fifo_high_threshold_select_reg = common dso_local global %struct.TYPE_17__ zeroinitializer, align 8
@display_queue_expire_num_reg = common dso_local global %struct.TYPE_18__ zeroinitializer, align 8
@K800_IGA2_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@K800_IGA2_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@K800_IGA2_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@K800_IGA2_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@P880_IGA2_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@P880_IGA2_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@P880_IGA2_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@P880_IGA2_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@CN700_IGA2_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@CN700_IGA2_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@CN700_IGA2_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@CN700_IGA2_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@CX700_IGA2_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@CX700_IGA2_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@CX700_IGA2_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@CX700_IGA2_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@K8M890_IGA2_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@K8M890_IGA2_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@K8M890_IGA2_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@K8M890_IGA2_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@P4M890_IGA2_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@P4M890_IGA2_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@P4M890_IGA2_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@P4M890_IGA2_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@P4M900_IGA2_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@P4M900_IGA2_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@P4M900_IGA2_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@P4M900_IGA2_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@VX800_IGA2_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@VX800_IGA2_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@VX800_IGA2_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@VX800_IGA2_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@VX855_IGA2_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@VX855_IGA2_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@VX855_IGA2_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@VX855_IGA2_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@VX900_IGA2_FIFO_MAX_DEPTH = common dso_local global i32 0, align 4
@VX900_IGA2_FIFO_THRESHOLD = common dso_local global i32 0, align 4
@VX900_IGA2_FIFO_HIGH_THRESHOLD = common dso_local global i32 0, align 4
@VX900_IGA2_DISPLAY_QUEUE_EXPIRE_NUM = common dso_local global i32 0, align 4
@VIACR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @viafb_load_FIFO_reg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.io_register*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store %struct.io_register* null, %struct.io_register** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @IGA1, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %213

21:                                               ; preds = %3
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_28__*, %struct.TYPE_28__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @UNICHROME_K800, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %42

29:                                               ; preds = %21
  %30 = load i32, i32* @K800_IGA1_FIFO_MAX_DEPTH, align 4
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* @K800_IGA1_FIFO_THRESHOLD, align 4
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* @K800_IGA1_FIFO_HIGH_THRESHOLD, align 4
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %5, align 4
  %34 = icmp sgt i32 %33, 1280
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32, i32* %6, align 4
  %37 = icmp sgt i32 %36, 1024
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 16, i32* %13, align 4
  br label %41

39:                                               ; preds = %35, %29
  %40 = load i32, i32* @K800_IGA1_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %40, i32* %13, align 4
  br label %41

41:                                               ; preds = %39, %38
  br label %42

42:                                               ; preds = %41, %21
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_28__*, %struct.TYPE_28__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @UNICHROME_PM800, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %64

50:                                               ; preds = %42
  %51 = load i32, i32* @P880_IGA1_FIFO_MAX_DEPTH, align 4
  store i32 %51, i32* %10, align 4
  %52 = load i32, i32* @P880_IGA1_FIFO_THRESHOLD, align 4
  store i32 %52, i32* %11, align 4
  %53 = load i32, i32* @P880_IGA1_FIFO_HIGH_THRESHOLD, align 4
  store i32 %53, i32* %12, align 4
  %54 = load i32, i32* @P880_IGA1_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp sgt i32 %55, 1280
  br i1 %56, label %57, label %61

57:                                               ; preds = %50
  %58 = load i32, i32* %6, align 4
  %59 = icmp sgt i32 %58, 1024
  br i1 %59, label %60, label %61

60:                                               ; preds = %57
  store i32 16, i32* %13, align 4
  br label %63

61:                                               ; preds = %57, %50
  %62 = load i32, i32* @P880_IGA1_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %62, i32* %13, align 4
  br label %63

63:                                               ; preds = %61, %60
  br label %64

64:                                               ; preds = %63, %42
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_28__*, %struct.TYPE_28__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @UNICHROME_CN700, align 8
  %71 = icmp eq i64 %69, %70
  br i1 %71, label %72, label %85

72:                                               ; preds = %64
  %73 = load i32, i32* @CN700_IGA1_FIFO_MAX_DEPTH, align 4
  store i32 %73, i32* %10, align 4
  %74 = load i32, i32* @CN700_IGA1_FIFO_THRESHOLD, align 4
  store i32 %74, i32* %11, align 4
  %75 = load i32, i32* @CN700_IGA1_FIFO_HIGH_THRESHOLD, align 4
  store i32 %75, i32* %12, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp sgt i32 %76, 1280
  br i1 %77, label %78, label %82

78:                                               ; preds = %72
  %79 = load i32, i32* %6, align 4
  %80 = icmp sgt i32 %79, 1024
  br i1 %80, label %81, label %82

81:                                               ; preds = %78
  store i32 16, i32* %13, align 4
  br label %84

82:                                               ; preds = %78, %72
  %83 = load i32, i32* @CN700_IGA1_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %83, i32* %13, align 4
  br label %84

84:                                               ; preds = %82, %81
  br label %85

85:                                               ; preds = %84, %64
  %86 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 0
  %88 = load %struct.TYPE_28__*, %struct.TYPE_28__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64, i64* @UNICHROME_CX700, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %98

93:                                               ; preds = %85
  %94 = load i32, i32* @CX700_IGA1_FIFO_MAX_DEPTH, align 4
  store i32 %94, i32* %10, align 4
  %95 = load i32, i32* @CX700_IGA1_FIFO_THRESHOLD, align 4
  store i32 %95, i32* %11, align 4
  %96 = load i32, i32* @CX700_IGA1_FIFO_HIGH_THRESHOLD, align 4
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* @CX700_IGA1_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %97, i32* %13, align 4
  br label %98

98:                                               ; preds = %93, %85
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %100 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_28__*, %struct.TYPE_28__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @UNICHROME_K8M890, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %111

106:                                              ; preds = %98
  %107 = load i32, i32* @K8M890_IGA1_FIFO_MAX_DEPTH, align 4
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* @K8M890_IGA1_FIFO_THRESHOLD, align 4
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* @K8M890_IGA1_FIFO_HIGH_THRESHOLD, align 4
  store i32 %109, i32* %12, align 4
  %110 = load i32, i32* @K8M890_IGA1_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %110, i32* %13, align 4
  br label %111

111:                                              ; preds = %106, %98
  %112 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %113 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %112, i32 0, i32 0
  %114 = load %struct.TYPE_28__*, %struct.TYPE_28__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @UNICHROME_P4M890, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %111
  %120 = load i32, i32* @P4M890_IGA1_FIFO_MAX_DEPTH, align 4
  store i32 %120, i32* %10, align 4
  %121 = load i32, i32* @P4M890_IGA1_FIFO_THRESHOLD, align 4
  store i32 %121, i32* %11, align 4
  %122 = load i32, i32* @P4M890_IGA1_FIFO_HIGH_THRESHOLD, align 4
  store i32 %122, i32* %12, align 4
  %123 = load i32, i32* @P4M890_IGA1_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %123, i32* %13, align 4
  br label %124

124:                                              ; preds = %119, %111
  %125 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %126 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_28__*, %struct.TYPE_28__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i64, i64* @UNICHROME_P4M900, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %137

132:                                              ; preds = %124
  %133 = load i32, i32* @P4M900_IGA1_FIFO_MAX_DEPTH, align 4
  store i32 %133, i32* %10, align 4
  %134 = load i32, i32* @P4M900_IGA1_FIFO_THRESHOLD, align 4
  store i32 %134, i32* %11, align 4
  %135 = load i32, i32* @P4M900_IGA1_FIFO_HIGH_THRESHOLD, align 4
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* @P4M900_IGA1_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %136, i32* %13, align 4
  br label %137

137:                                              ; preds = %132, %124
  %138 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = load %struct.TYPE_28__*, %struct.TYPE_28__** %139, align 8
  %141 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @UNICHROME_VX800, align 8
  %144 = icmp eq i64 %142, %143
  br i1 %144, label %145, label %150

145:                                              ; preds = %137
  %146 = load i32, i32* @VX800_IGA1_FIFO_MAX_DEPTH, align 4
  store i32 %146, i32* %10, align 4
  %147 = load i32, i32* @VX800_IGA1_FIFO_THRESHOLD, align 4
  store i32 %147, i32* %11, align 4
  %148 = load i32, i32* @VX800_IGA1_FIFO_HIGH_THRESHOLD, align 4
  store i32 %148, i32* %12, align 4
  %149 = load i32, i32* @VX800_IGA1_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %149, i32* %13, align 4
  br label %150

150:                                              ; preds = %145, %137
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 0
  %153 = load %struct.TYPE_28__*, %struct.TYPE_28__** %152, align 8
  %154 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load i64, i64* @UNICHROME_VX855, align 8
  %157 = icmp eq i64 %155, %156
  br i1 %157, label %158, label %163

158:                                              ; preds = %150
  %159 = load i32, i32* @VX855_IGA1_FIFO_MAX_DEPTH, align 4
  store i32 %159, i32* %10, align 4
  %160 = load i32, i32* @VX855_IGA1_FIFO_THRESHOLD, align 4
  store i32 %160, i32* %11, align 4
  %161 = load i32, i32* @VX855_IGA1_FIFO_HIGH_THRESHOLD, align 4
  store i32 %161, i32* %12, align 4
  %162 = load i32, i32* @VX855_IGA1_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %162, i32* %13, align 4
  br label %163

163:                                              ; preds = %158, %150
  %164 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %165 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_28__*, %struct.TYPE_28__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %166, i32 0, i32 0
  %168 = load i64, i64* %167, align 8
  %169 = load i64, i64* @UNICHROME_VX900, align 8
  %170 = icmp eq i64 %168, %169
  br i1 %170, label %171, label %176

171:                                              ; preds = %163
  %172 = load i32, i32* @VX900_IGA1_FIFO_MAX_DEPTH, align 4
  store i32 %172, i32* %10, align 4
  %173 = load i32, i32* @VX900_IGA1_FIFO_THRESHOLD, align 4
  store i32 %173, i32* %11, align 4
  %174 = load i32, i32* @VX900_IGA1_FIFO_HIGH_THRESHOLD, align 4
  store i32 %174, i32* %12, align 4
  %175 = load i32, i32* @VX900_IGA1_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %175, i32* %13, align 4
  br label %176

176:                                              ; preds = %171, %163
  %177 = load i32, i32* %10, align 4
  %178 = call i32 @IGA1_FIFO_DEPTH_SELECT_FORMULA(i32 %177)
  store i32 %178, i32* %7, align 4
  %179 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @display_fifo_depth_reg, i32 0, i32 1, i32 0), align 8
  store i32 %179, i32* %8, align 4
  %180 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @display_fifo_depth_reg, i32 0, i32 1, i32 1), align 8
  store %struct.io_register* %180, %struct.io_register** %9, align 8
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* %8, align 4
  %183 = load %struct.io_register*, %struct.io_register** %9, align 8
  %184 = load i32, i32* @VIASR, align 4
  %185 = call i32 @viafb_load_reg(i32 %181, i32 %182, %struct.io_register* %183, i32 %184)
  %186 = load i32, i32* %11, align 4
  %187 = call i32 @IGA1_FIFO_THRESHOLD_FORMULA(i32 %186)
  store i32 %187, i32* %7, align 4
  %188 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @fifo_threshold_select_reg, i32 0, i32 1, i32 0), align 8
  store i32 %188, i32* %8, align 4
  %189 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @fifo_threshold_select_reg, i32 0, i32 1, i32 1), align 8
  store %struct.io_register* %189, %struct.io_register** %9, align 8
  %190 = load i32, i32* %7, align 4
  %191 = load i32, i32* %8, align 4
  %192 = load %struct.io_register*, %struct.io_register** %9, align 8
  %193 = load i32, i32* @VIASR, align 4
  %194 = call i32 @viafb_load_reg(i32 %190, i32 %191, %struct.io_register* %192, i32 %193)
  %195 = load i32, i32* %12, align 4
  %196 = call i32 @IGA1_FIFO_HIGH_THRESHOLD_FORMULA(i32 %195)
  store i32 %196, i32* %7, align 4
  %197 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @fifo_high_threshold_select_reg, i32 0, i32 1, i32 0), align 8
  store i32 %197, i32* %8, align 4
  %198 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @fifo_high_threshold_select_reg, i32 0, i32 1, i32 1), align 8
  store %struct.io_register* %198, %struct.io_register** %9, align 8
  %199 = load i32, i32* %7, align 4
  %200 = load i32, i32* %8, align 4
  %201 = load %struct.io_register*, %struct.io_register** %9, align 8
  %202 = load i32, i32* @VIASR, align 4
  %203 = call i32 @viafb_load_reg(i32 %199, i32 %200, %struct.io_register* %201, i32 %202)
  %204 = load i32, i32* %13, align 4
  %205 = call i32 @IGA1_DISPLAY_QUEUE_EXPIRE_NUM_FORMULA(i32 %204)
  store i32 %205, i32* %7, align 4
  %206 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @display_queue_expire_num_reg, i32 0, i32 1, i32 0), align 8
  store i32 %206, i32* %8, align 4
  %207 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @display_queue_expire_num_reg, i32 0, i32 1, i32 1), align 8
  store %struct.io_register* %207, %struct.io_register** %9, align 8
  %208 = load i32, i32* %7, align 4
  %209 = load i32, i32* %8, align 4
  %210 = load %struct.io_register*, %struct.io_register** %9, align 8
  %211 = load i32, i32* @VIASR, align 4
  %212 = call i32 @viafb_load_reg(i32 %208, i32 %209, %struct.io_register* %210, i32 %211)
  br label %424

213:                                              ; preds = %3
  %214 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %215 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %214, i32 0, i32 0
  %216 = load %struct.TYPE_28__*, %struct.TYPE_28__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %216, i32 0, i32 0
  %218 = load i64, i64* %217, align 8
  %219 = load i64, i64* @UNICHROME_K800, align 8
  %220 = icmp eq i64 %218, %219
  br i1 %220, label %221, label %234

221:                                              ; preds = %213
  %222 = load i32, i32* @K800_IGA2_FIFO_MAX_DEPTH, align 4
  store i32 %222, i32* %14, align 4
  %223 = load i32, i32* @K800_IGA2_FIFO_THRESHOLD, align 4
  store i32 %223, i32* %15, align 4
  %224 = load i32, i32* @K800_IGA2_FIFO_HIGH_THRESHOLD, align 4
  store i32 %224, i32* %16, align 4
  %225 = load i32, i32* %5, align 4
  %226 = icmp sgt i32 %225, 1280
  br i1 %226, label %227, label %231

227:                                              ; preds = %221
  %228 = load i32, i32* %6, align 4
  %229 = icmp sgt i32 %228, 1024
  br i1 %229, label %230, label %231

230:                                              ; preds = %227
  store i32 16, i32* %17, align 4
  br label %233

231:                                              ; preds = %227, %221
  %232 = load i32, i32* @K800_IGA2_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %232, i32* %17, align 4
  br label %233

233:                                              ; preds = %231, %230
  br label %234

234:                                              ; preds = %233, %213
  %235 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %236 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %235, i32 0, i32 0
  %237 = load %struct.TYPE_28__*, %struct.TYPE_28__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %237, i32 0, i32 0
  %239 = load i64, i64* %238, align 8
  %240 = load i64, i64* @UNICHROME_PM800, align 8
  %241 = icmp eq i64 %239, %240
  br i1 %241, label %242, label %255

242:                                              ; preds = %234
  %243 = load i32, i32* @P880_IGA2_FIFO_MAX_DEPTH, align 4
  store i32 %243, i32* %14, align 4
  %244 = load i32, i32* @P880_IGA2_FIFO_THRESHOLD, align 4
  store i32 %244, i32* %15, align 4
  %245 = load i32, i32* @P880_IGA2_FIFO_HIGH_THRESHOLD, align 4
  store i32 %245, i32* %16, align 4
  %246 = load i32, i32* %5, align 4
  %247 = icmp sgt i32 %246, 1280
  br i1 %247, label %248, label %252

248:                                              ; preds = %242
  %249 = load i32, i32* %6, align 4
  %250 = icmp sgt i32 %249, 1024
  br i1 %250, label %251, label %252

251:                                              ; preds = %248
  store i32 16, i32* %17, align 4
  br label %254

252:                                              ; preds = %248, %242
  %253 = load i32, i32* @P880_IGA2_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %253, i32* %17, align 4
  br label %254

254:                                              ; preds = %252, %251
  br label %255

255:                                              ; preds = %254, %234
  %256 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %257 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %256, i32 0, i32 0
  %258 = load %struct.TYPE_28__*, %struct.TYPE_28__** %257, align 8
  %259 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %258, i32 0, i32 0
  %260 = load i64, i64* %259, align 8
  %261 = load i64, i64* @UNICHROME_CN700, align 8
  %262 = icmp eq i64 %260, %261
  br i1 %262, label %263, label %276

263:                                              ; preds = %255
  %264 = load i32, i32* @CN700_IGA2_FIFO_MAX_DEPTH, align 4
  store i32 %264, i32* %14, align 4
  %265 = load i32, i32* @CN700_IGA2_FIFO_THRESHOLD, align 4
  store i32 %265, i32* %15, align 4
  %266 = load i32, i32* @CN700_IGA2_FIFO_HIGH_THRESHOLD, align 4
  store i32 %266, i32* %16, align 4
  %267 = load i32, i32* %5, align 4
  %268 = icmp sgt i32 %267, 1280
  br i1 %268, label %269, label %273

269:                                              ; preds = %263
  %270 = load i32, i32* %6, align 4
  %271 = icmp sgt i32 %270, 1024
  br i1 %271, label %272, label %273

272:                                              ; preds = %269
  store i32 16, i32* %17, align 4
  br label %275

273:                                              ; preds = %269, %263
  %274 = load i32, i32* @CN700_IGA2_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %274, i32* %17, align 4
  br label %275

275:                                              ; preds = %273, %272
  br label %276

276:                                              ; preds = %275, %255
  %277 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %278 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %277, i32 0, i32 0
  %279 = load %struct.TYPE_28__*, %struct.TYPE_28__** %278, align 8
  %280 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %279, i32 0, i32 0
  %281 = load i64, i64* %280, align 8
  %282 = load i64, i64* @UNICHROME_CX700, align 8
  %283 = icmp eq i64 %281, %282
  br i1 %283, label %284, label %289

284:                                              ; preds = %276
  %285 = load i32, i32* @CX700_IGA2_FIFO_MAX_DEPTH, align 4
  store i32 %285, i32* %14, align 4
  %286 = load i32, i32* @CX700_IGA2_FIFO_THRESHOLD, align 4
  store i32 %286, i32* %15, align 4
  %287 = load i32, i32* @CX700_IGA2_FIFO_HIGH_THRESHOLD, align 4
  store i32 %287, i32* %16, align 4
  %288 = load i32, i32* @CX700_IGA2_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %288, i32* %17, align 4
  br label %289

289:                                              ; preds = %284, %276
  %290 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %291 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %290, i32 0, i32 0
  %292 = load %struct.TYPE_28__*, %struct.TYPE_28__** %291, align 8
  %293 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = load i64, i64* @UNICHROME_K8M890, align 8
  %296 = icmp eq i64 %294, %295
  br i1 %296, label %297, label %302

297:                                              ; preds = %289
  %298 = load i32, i32* @K8M890_IGA2_FIFO_MAX_DEPTH, align 4
  store i32 %298, i32* %14, align 4
  %299 = load i32, i32* @K8M890_IGA2_FIFO_THRESHOLD, align 4
  store i32 %299, i32* %15, align 4
  %300 = load i32, i32* @K8M890_IGA2_FIFO_HIGH_THRESHOLD, align 4
  store i32 %300, i32* %16, align 4
  %301 = load i32, i32* @K8M890_IGA2_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %301, i32* %17, align 4
  br label %302

302:                                              ; preds = %297, %289
  %303 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %304 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %303, i32 0, i32 0
  %305 = load %struct.TYPE_28__*, %struct.TYPE_28__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = load i64, i64* @UNICHROME_P4M890, align 8
  %309 = icmp eq i64 %307, %308
  br i1 %309, label %310, label %315

310:                                              ; preds = %302
  %311 = load i32, i32* @P4M890_IGA2_FIFO_MAX_DEPTH, align 4
  store i32 %311, i32* %14, align 4
  %312 = load i32, i32* @P4M890_IGA2_FIFO_THRESHOLD, align 4
  store i32 %312, i32* %15, align 4
  %313 = load i32, i32* @P4M890_IGA2_FIFO_HIGH_THRESHOLD, align 4
  store i32 %313, i32* %16, align 4
  %314 = load i32, i32* @P4M890_IGA2_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %314, i32* %17, align 4
  br label %315

315:                                              ; preds = %310, %302
  %316 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %317 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %316, i32 0, i32 0
  %318 = load %struct.TYPE_28__*, %struct.TYPE_28__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = load i64, i64* @UNICHROME_P4M900, align 8
  %322 = icmp eq i64 %320, %321
  br i1 %322, label %323, label %328

323:                                              ; preds = %315
  %324 = load i32, i32* @P4M900_IGA2_FIFO_MAX_DEPTH, align 4
  store i32 %324, i32* %14, align 4
  %325 = load i32, i32* @P4M900_IGA2_FIFO_THRESHOLD, align 4
  store i32 %325, i32* %15, align 4
  %326 = load i32, i32* @P4M900_IGA2_FIFO_HIGH_THRESHOLD, align 4
  store i32 %326, i32* %16, align 4
  %327 = load i32, i32* @P4M900_IGA2_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %327, i32* %17, align 4
  br label %328

328:                                              ; preds = %323, %315
  %329 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %330 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %329, i32 0, i32 0
  %331 = load %struct.TYPE_28__*, %struct.TYPE_28__** %330, align 8
  %332 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = load i64, i64* @UNICHROME_VX800, align 8
  %335 = icmp eq i64 %333, %334
  br i1 %335, label %336, label %341

336:                                              ; preds = %328
  %337 = load i32, i32* @VX800_IGA2_FIFO_MAX_DEPTH, align 4
  store i32 %337, i32* %14, align 4
  %338 = load i32, i32* @VX800_IGA2_FIFO_THRESHOLD, align 4
  store i32 %338, i32* %15, align 4
  %339 = load i32, i32* @VX800_IGA2_FIFO_HIGH_THRESHOLD, align 4
  store i32 %339, i32* %16, align 4
  %340 = load i32, i32* @VX800_IGA2_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %340, i32* %17, align 4
  br label %341

341:                                              ; preds = %336, %328
  %342 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %343 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %342, i32 0, i32 0
  %344 = load %struct.TYPE_28__*, %struct.TYPE_28__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = load i64, i64* @UNICHROME_VX855, align 8
  %348 = icmp eq i64 %346, %347
  br i1 %348, label %349, label %354

349:                                              ; preds = %341
  %350 = load i32, i32* @VX855_IGA2_FIFO_MAX_DEPTH, align 4
  store i32 %350, i32* %14, align 4
  %351 = load i32, i32* @VX855_IGA2_FIFO_THRESHOLD, align 4
  store i32 %351, i32* %15, align 4
  %352 = load i32, i32* @VX855_IGA2_FIFO_HIGH_THRESHOLD, align 4
  store i32 %352, i32* %16, align 4
  %353 = load i32, i32* @VX855_IGA2_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %353, i32* %17, align 4
  br label %354

354:                                              ; preds = %349, %341
  %355 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %356 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %355, i32 0, i32 0
  %357 = load %struct.TYPE_28__*, %struct.TYPE_28__** %356, align 8
  %358 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %357, i32 0, i32 0
  %359 = load i64, i64* %358, align 8
  %360 = load i64, i64* @UNICHROME_VX900, align 8
  %361 = icmp eq i64 %359, %360
  br i1 %361, label %362, label %367

362:                                              ; preds = %354
  %363 = load i32, i32* @VX900_IGA2_FIFO_MAX_DEPTH, align 4
  store i32 %363, i32* %14, align 4
  %364 = load i32, i32* @VX900_IGA2_FIFO_THRESHOLD, align 4
  store i32 %364, i32* %15, align 4
  %365 = load i32, i32* @VX900_IGA2_FIFO_HIGH_THRESHOLD, align 4
  store i32 %365, i32* %16, align 4
  %366 = load i32, i32* @VX900_IGA2_DISPLAY_QUEUE_EXPIRE_NUM, align 4
  store i32 %366, i32* %17, align 4
  br label %367

367:                                              ; preds = %362, %354
  %368 = load %struct.TYPE_15__*, %struct.TYPE_15__** @viaparinfo, align 8
  %369 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %368, i32 0, i32 0
  %370 = load %struct.TYPE_28__*, %struct.TYPE_28__** %369, align 8
  %371 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %370, i32 0, i32 0
  %372 = load i64, i64* %371, align 8
  %373 = load i64, i64* @UNICHROME_K800, align 8
  %374 = icmp eq i64 %372, %373
  br i1 %374, label %375, label %386

375:                                              ; preds = %367
  %376 = load i32, i32* %14, align 4
  %377 = call i32 @IGA2_FIFO_DEPTH_SELECT_FORMULA(i32 %376)
  %378 = sub nsw i32 %377, 1
  store i32 %378, i32* %7, align 4
  %379 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @display_fifo_depth_reg, i32 0, i32 0, i32 0), align 8
  store i32 %379, i32* %8, align 4
  %380 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @display_fifo_depth_reg, i32 0, i32 0, i32 1), align 8
  store %struct.io_register* %380, %struct.io_register** %9, align 8
  %381 = load i32, i32* %7, align 4
  %382 = load i32, i32* %8, align 4
  %383 = load %struct.io_register*, %struct.io_register** %9, align 8
  %384 = load i32, i32* @VIACR, align 4
  %385 = call i32 @viafb_load_reg(i32 %381, i32 %382, %struct.io_register* %383, i32 %384)
  br label %396

386:                                              ; preds = %367
  %387 = load i32, i32* %14, align 4
  %388 = call i32 @IGA2_FIFO_DEPTH_SELECT_FORMULA(i32 %387)
  store i32 %388, i32* %7, align 4
  %389 = load i32, i32* getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @display_fifo_depth_reg, i32 0, i32 0, i32 0), align 8
  store i32 %389, i32* %8, align 4
  %390 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_19__, %struct.TYPE_19__* @display_fifo_depth_reg, i32 0, i32 0, i32 1), align 8
  store %struct.io_register* %390, %struct.io_register** %9, align 8
  %391 = load i32, i32* %7, align 4
  %392 = load i32, i32* %8, align 4
  %393 = load %struct.io_register*, %struct.io_register** %9, align 8
  %394 = load i32, i32* @VIACR, align 4
  %395 = call i32 @viafb_load_reg(i32 %391, i32 %392, %struct.io_register* %393, i32 %394)
  br label %396

396:                                              ; preds = %386, %375
  %397 = load i32, i32* %15, align 4
  %398 = call i32 @IGA2_FIFO_THRESHOLD_FORMULA(i32 %397)
  store i32 %398, i32* %7, align 4
  %399 = load i32, i32* getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @fifo_threshold_select_reg, i32 0, i32 0, i32 0), align 8
  store i32 %399, i32* %8, align 4
  %400 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_16__, %struct.TYPE_16__* @fifo_threshold_select_reg, i32 0, i32 0, i32 1), align 8
  store %struct.io_register* %400, %struct.io_register** %9, align 8
  %401 = load i32, i32* %7, align 4
  %402 = load i32, i32* %8, align 4
  %403 = load %struct.io_register*, %struct.io_register** %9, align 8
  %404 = load i32, i32* @VIACR, align 4
  %405 = call i32 @viafb_load_reg(i32 %401, i32 %402, %struct.io_register* %403, i32 %404)
  %406 = load i32, i32* %16, align 4
  %407 = call i32 @IGA2_FIFO_HIGH_THRESHOLD_FORMULA(i32 %406)
  store i32 %407, i32* %7, align 4
  %408 = load i32, i32* getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @fifo_high_threshold_select_reg, i32 0, i32 0, i32 0), align 8
  store i32 %408, i32* %8, align 4
  %409 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_17__, %struct.TYPE_17__* @fifo_high_threshold_select_reg, i32 0, i32 0, i32 1), align 8
  store %struct.io_register* %409, %struct.io_register** %9, align 8
  %410 = load i32, i32* %7, align 4
  %411 = load i32, i32* %8, align 4
  %412 = load %struct.io_register*, %struct.io_register** %9, align 8
  %413 = load i32, i32* @VIACR, align 4
  %414 = call i32 @viafb_load_reg(i32 %410, i32 %411, %struct.io_register* %412, i32 %413)
  %415 = load i32, i32* %17, align 4
  %416 = call i32 @IGA2_DISPLAY_QUEUE_EXPIRE_NUM_FORMULA(i32 %415)
  store i32 %416, i32* %7, align 4
  %417 = load i32, i32* getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @display_queue_expire_num_reg, i32 0, i32 0, i32 0), align 8
  store i32 %417, i32* %8, align 4
  %418 = load %struct.io_register*, %struct.io_register** getelementptr inbounds (%struct.TYPE_18__, %struct.TYPE_18__* @display_queue_expire_num_reg, i32 0, i32 0, i32 1), align 8
  store %struct.io_register* %418, %struct.io_register** %9, align 8
  %419 = load i32, i32* %7, align 4
  %420 = load i32, i32* %8, align 4
  %421 = load %struct.io_register*, %struct.io_register** %9, align 8
  %422 = load i32, i32* @VIACR, align 4
  %423 = call i32 @viafb_load_reg(i32 %419, i32 %420, %struct.io_register* %421, i32 %422)
  br label %424

424:                                              ; preds = %396, %176
  ret void
}

declare dso_local i32 @IGA1_FIFO_DEPTH_SELECT_FORMULA(i32) #1

declare dso_local i32 @viafb_load_reg(i32, i32, %struct.io_register*, i32) #1

declare dso_local i32 @IGA1_FIFO_THRESHOLD_FORMULA(i32) #1

declare dso_local i32 @IGA1_FIFO_HIGH_THRESHOLD_FORMULA(i32) #1

declare dso_local i32 @IGA1_DISPLAY_QUEUE_EXPIRE_NUM_FORMULA(i32) #1

declare dso_local i32 @IGA2_FIFO_DEPTH_SELECT_FORMULA(i32) #1

declare dso_local i32 @IGA2_FIFO_THRESHOLD_FORMULA(i32) #1

declare dso_local i32 @IGA2_FIFO_HIGH_THRESHOLD_FORMULA(i32) #1

declare dso_local i32 @IGA2_DISPLAY_QUEUE_EXPIRE_NUM_FORMULA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
