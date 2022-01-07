; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla24xx_async_abort_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla24xx_async_abort_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i8*, i32 (%struct.TYPE_17__*)*, i32, i32, i32, %struct.TYPE_18__*, i32, %struct.TYPE_13__, i32, i32* }
%struct.TYPE_18__ = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { %struct.srb_iocb }
%struct.srb_iocb = type { %struct.TYPE_16__, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i64, i32, i32, i32 }

@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@SRB_ABT_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"abort\00", align 1
@SRB_WAKEUP_ON_COMP = common dso_local global i32 0, align 4
@qla24xx_abort_iocb_timeout = common dso_local global i32 0, align 4
@qla24xx_abort_sp_done = common dso_local global i32 0, align 4
@ql_dbg_async = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Abort command issued - hdl=%x, type=%x\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4
@CS_COMPLETE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, i32)* @qla24xx_async_abort_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla24xx_async_abort_cmd(%struct.TYPE_17__* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.srb_iocb*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32, align 4
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 9
  %12 = load i32*, i32** %11, align 8
  store i32* %12, i32** %6, align 8
  %13 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %13, i32* %9, align 4
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 9
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %17, i32 0, i32 5
  %19 = load %struct.TYPE_18__*, %struct.TYPE_18__** %18, align 8
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 8
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  %24 = call %struct.TYPE_17__* @qla2xxx_get_qpair_sp(i32* %16, %struct.TYPE_18__* %19, i32 %22, i32 %23)
  store %struct.TYPE_17__* %24, %struct.TYPE_17__** %8, align 8
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %26 = icmp ne %struct.TYPE_17__* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %2
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %3, align 4
  br label %132

29:                                               ; preds = %2
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 7
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 0
  store %struct.srb_iocb* %32, %struct.srb_iocb** %7, align 8
  %33 = load i32, i32* @SRB_ABT_CMD, align 4
  %34 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %35 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8** %37, align 8
  %38 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %38, i32 0, i32 5
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %39, align 8
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 5
  store %struct.TYPE_18__* %40, %struct.TYPE_18__** %42, align 8
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %29
  %46 = load i32, i32* @SRB_WAKEUP_ON_COMP, align 4
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 6
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %45, %29
  %50 = load i32, i32* @qla24xx_abort_iocb_timeout, align 4
  %51 = load %struct.srb_iocb*, %struct.srb_iocb** %7, align 8
  %52 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 8
  %53 = load %struct.srb_iocb*, %struct.srb_iocb** %7, align 8
  %54 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = call i32 @init_completion(i32* %56)
  %58 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %59 = call i32 @qla2x00_init_timer(%struct.TYPE_17__* %58, i32 42)
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.srb_iocb*, %struct.srb_iocb** %7, align 8
  %64 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %65, i32 0, i32 3
  store i32 %62, i32* %66, align 8
  %67 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %68 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %67, i32 0, i32 5
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_14__*, %struct.TYPE_14__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @cpu_to_le16(i32 %73)
  %75 = load %struct.srb_iocb*, %struct.srb_iocb** %7, align 8
  %76 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %77, i32 0, i32 2
  store i32 %74, i32* %78, align 4
  %79 = load i32, i32* @qla24xx_abort_sp_done, align 4
  %80 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %81 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* @ql_dbg_async, align 4
  %83 = load i32*, i32** %6, align 8
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %88 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @ql_dbg(i32 %82, i32* %83, i32 20604, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %86, i32 %89)
  %91 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %92 = call i32 @qla2x00_start_sp(%struct.TYPE_17__* %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = load i32, i32* @QLA_SUCCESS, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %103

96:                                               ; preds = %49
  %97 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %98 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %97, i32 0, i32 1
  %99 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %98, align 8
  %100 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %101 = call i32 %99(%struct.TYPE_17__* %100)
  %102 = load i32, i32* %9, align 4
  store i32 %102, i32* %3, align 4
  br label %132

103:                                              ; preds = %49
  %104 = load i32, i32* %5, align 4
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %130

106:                                              ; preds = %103
  %107 = load %struct.srb_iocb*, %struct.srb_iocb** %7, align 8
  %108 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %107, i32 0, i32 0
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %109, i32 0, i32 1
  %111 = call i32 @wait_for_completion(i32* %110)
  %112 = load %struct.srb_iocb*, %struct.srb_iocb** %7, align 8
  %113 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @CS_COMPLETE, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %106
  %120 = load i32, i32* @QLA_SUCCESS, align 4
  br label %123

121:                                              ; preds = %106
  %122 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  br label %123

123:                                              ; preds = %121, %119
  %124 = phi i32 [ %120, %119 ], [ %122, %121 ]
  store i32 %124, i32* %9, align 4
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 1
  %127 = load i32 (%struct.TYPE_17__*)*, i32 (%struct.TYPE_17__*)** %126, align 8
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %129 = call i32 %127(%struct.TYPE_17__* %128)
  br label %130

130:                                              ; preds = %123, %103
  %131 = load i32, i32* %9, align 4
  store i32 %131, i32* %3, align 4
  br label %132

132:                                              ; preds = %130, %96, %27
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local %struct.TYPE_17__* @qla2xxx_get_qpair_sp(i32*, %struct.TYPE_18__*, i32, i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @qla2x00_init_timer(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @ql_dbg(i32, i32*, i32, i8*, i32, i32) #1

declare dso_local i32 @qla2x00_start_sp(%struct.TYPE_17__*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
