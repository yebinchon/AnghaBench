; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AdvISR.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AdvISR.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i64, i64, %struct.TYPE_17__*, %struct.TYPE_17__*, i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_15__ = type { i64, i64, i32, i64, i64, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_15__ }

@IOPB_INTR_STATUS_REG = common dso_local global i32 0, align 4
@ADV_INTR_STATUS_INTRA = common dso_local global i32 0, align 4
@ADV_INTR_STATUS_INTRB = common dso_local global i32 0, align 4
@ADV_INTR_STATUS_INTRC = common dso_local global i32 0, align 4
@ADV_FALSE = common dso_local global i32 0, align 4
@ASC_MC_INTRB_CODE = common dso_local global i32 0, align 4
@ADV_CHIP_ASC3550 = common dso_local global i64 0, align 8
@ADV_CHIP_ASC38C0800 = common dso_local global i64 0, align 8
@ADV_ASYNC_CARRIER_READY_FAILURE = common dso_local global i32 0, align 4
@IOPB_TICKLE = common dso_local global i32 0, align 4
@ADV_TICKLE_A = common dso_local global i32 0, align 4
@ADV_TICKLE_NOP = common dso_local global i32 0, align 4
@ADV_RQ_DONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"irq_sp %p areq_vpa %u\0A\00", align 1
@ADV_RQ_GOOD = common dso_local global i32 0, align 4
@QD_NO_ERROR = common dso_local global i32 0, align 4
@ADV_TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*)* @AdvISR to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AdvISR(%struct.TYPE_16__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca %struct.TYPE_14__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 4
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %4, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @IOPB_INTR_STATUS_REG, align 4
  %18 = call i32 @AdvReadByteRegister(i32 %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @ADV_INTR_STATUS_INTRA, align 4
  %21 = load i32, i32* @ADV_INTR_STATUS_INTRB, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @ADV_INTR_STATUS_INTRC, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %19, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = load i32, i32* @ADV_FALSE, align 4
  store i32 %28, i32* %2, align 4
  br label %158

29:                                               ; preds = %1
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @ADV_INTR_STATUS_INTRB, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %80

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @ASC_MC_INTRB_CODE, align 4
  %37 = load i32, i32* %11, align 4
  %38 = call i32 @AdvReadByteLram(i32 %35, i32 %36, i32 %37)
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ADV_CHIP_ASC3550, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %34
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ADV_CHIP_ASC38C0800, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %76

50:                                               ; preds = %44, %34
  %51 = load i32, i32* %11, align 4
  %52 = load i32, i32* @ADV_ASYNC_CARRIER_READY_FAILURE, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %75

54:                                               ; preds = %50
  %55 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %54
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* @IOPB_TICKLE, align 4
  %62 = load i32, i32* @ADV_TICKLE_A, align 4
  %63 = call i32 @AdvWriteByteRegister(i32 %60, i32 %61, i32 %62)
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @ADV_CHIP_ASC3550, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %59
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @IOPB_TICKLE, align 4
  %72 = load i32, i32* @ADV_TICKLE_NOP, align 4
  %73 = call i32 @AdvWriteByteRegister(i32 %70, i32 %71, i32 %72)
  br label %74

74:                                               ; preds = %69, %59
  br label %75

75:                                               ; preds = %74, %54, %50
  br label %76

76:                                               ; preds = %75, %44
  %77 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @adv_async_callback(%struct.TYPE_16__* %77, i32 %78)
  br label %80

80:                                               ; preds = %76, %29
  br label %81

81:                                               ; preds = %123, %80
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %82, i32 0, i32 3
  %84 = load %struct.TYPE_17__*, %struct.TYPE_17__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i8* @le32_to_cpu(i32 %86)
  %88 = ptrtoint i8* %87 to i32
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* @ADV_RQ_DONE, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %156

92:                                               ; preds = %81
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %93, i32 0, i32 3
  %95 = load %struct.TYPE_17__*, %struct.TYPE_17__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @le32_to_cpu(i32 %97)
  store i8* %98, i8** %12, align 8
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 3
  %101 = load %struct.TYPE_17__*, %struct.TYPE_17__** %100, align 8
  %102 = load i8*, i8** %12, align 8
  %103 = call i32 @ASC_DBG(i32 1, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.TYPE_17__* %101, i8* %102)
  %104 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %105 = load i8*, i8** %12, align 8
  %106 = call %struct.TYPE_14__* @adv_get_reqp(%struct.TYPE_16__* %104, i8* %105)
  store %struct.TYPE_14__* %106, %struct.TYPE_14__** %10, align 8
  %107 = load %struct.TYPE_14__*, %struct.TYPE_14__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  store %struct.TYPE_15__* %108, %struct.TYPE_15__** %9, align 8
  %109 = load i32, i32* %8, align 4
  %110 = load i32, i32* @ADV_RQ_GOOD, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %123

113:                                              ; preds = %92
  %114 = load i32, i32* @QD_NO_ERROR, align 4
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 5
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %118 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %117, i32 0, i32 3
  store i64 0, i64* %118, align 8
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 4
  store i64 0, i64* %120, align 8
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 0
  store i64 0, i64* %122, align 8
  br label %123

123:                                              ; preds = %113, %92
  %124 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 3
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %125, align 8
  store %struct.TYPE_17__* %126, %struct.TYPE_17__** %7, align 8
  %127 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %128 = load i32, i32* %8, align 4
  %129 = call i32 @ADV_GET_CARRP(i32 %128)
  %130 = call %struct.TYPE_17__* @adv_get_carrier(%struct.TYPE_16__* %127, i32 %129)
  %131 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %132 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %131, i32 0, i32 3
  store %struct.TYPE_17__* %130, %struct.TYPE_17__** %132, align 8
  %133 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %134 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %133, i32 0, i32 2
  %135 = load %struct.TYPE_17__*, %struct.TYPE_17__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %138, i32 0, i32 1
  store i32 %137, i32* %139, align 4
  %140 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %141 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %142 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %141, i32 0, i32 2
  store %struct.TYPE_17__* %140, %struct.TYPE_17__** %142, align 8
  %143 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %144 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %143, i32 0, i32 1
  %145 = load i64, i64* %144, align 8
  %146 = add nsw i64 %145, -1
  store i64 %146, i64* %144, align 8
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %148 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = call i32 @ADV_TID_TO_TIDMASK(i32 %149)
  store i32 %150, i32* %6, align 4
  %151 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %152 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %151, i32 0, i32 1
  store i64 0, i64* %152, align 8
  %153 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %154 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %155 = call i32 @adv_isr_callback(%struct.TYPE_16__* %153, %struct.TYPE_15__* %154)
  br label %81

156:                                              ; preds = %81
  %157 = load i32, i32* @ADV_TRUE, align 4
  store i32 %157, i32* %2, align 4
  br label %158

158:                                              ; preds = %156, %27
  %159 = load i32, i32* %2, align 4
  ret i32 %159
}

declare dso_local i32 @AdvReadByteRegister(i32, i32) #1

declare dso_local i32 @AdvReadByteLram(i32, i32, i32) #1

declare dso_local i32 @AdvWriteByteRegister(i32, i32, i32) #1

declare dso_local i32 @adv_async_callback(%struct.TYPE_16__*, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @ASC_DBG(i32, i8*, %struct.TYPE_17__*, i8*) #1

declare dso_local %struct.TYPE_14__* @adv_get_reqp(%struct.TYPE_16__*, i8*) #1

declare dso_local %struct.TYPE_17__* @adv_get_carrier(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @ADV_GET_CARRP(i32) #1

declare dso_local i32 @ADV_TID_TO_TIDMASK(i32) #1

declare dso_local i32 @adv_isr_callback(%struct.TYPE_16__*, %struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
