; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscPutReadySgListQueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_AscPutReadySgListQueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32 }
%struct.TYPE_15__ = type { i32, %struct.TYPE_12__, %struct.TYPE_14__* }
%struct.TYPE_12__ = type { i32, i8*, i8*, i32 }
%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32, i32, i8*, i32, i8* }

@QC_SG_HEAD = common dso_local global i32 0, align 4
@QCSG_SG_XFER_LIST = common dso_local global i32 0, align 4
@ASC_SG_LIST_PER_Q = common dso_local global i32 0, align 4
@QCSG_SG_XFER_END = common dso_local global i32 0, align 4
@ASC_SCSIQ_B_FWD = common dso_local global i32 0, align 4
@ASC_SCSIQ_SGHD_CPY_BEG = common dso_local global i32 0, align 4
@ASC_SGQ_LIST_BEG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, %struct.TYPE_15__*, i8*)* @AscPutReadySgListQueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @AscPutReadySgListQueue(%struct.TYPE_16__* %0, %struct.TYPE_15__* %1, i8* %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_14__*, align 8
  %10 = alloca %struct.TYPE_13__, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %5, align 8
  store i8* %2, i8** %6, align 8
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %13, align 4
  %22 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %22, i32 0, i32 2
  %24 = load %struct.TYPE_14__*, %struct.TYPE_14__** %23, align 8
  store %struct.TYPE_14__* %24, %struct.TYPE_14__** %9, align 8
  %25 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 2
  %28 = load i8*, i8** %27, align 8
  store i8* %28, i8** %11, align 8
  %29 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %12, align 8
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 2
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @cpu_to_le32(i32 %38)
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 2
  store i8* %39, i8** %42, align 8
  %43 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 2
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @cpu_to_le32(i32 %48)
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %51, i32 0, i32 1
  store i8* %49, i8** %52, align 8
  %53 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %54 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sub nsw i32 %55, 1
  store i32 %56, i32* %16, align 4
  %57 = load i32, i32* %16, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %176

59:                                               ; preds = %3
  %60 = load i32, i32* @QC_SG_HEAD, align 4
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %60
  store i32 %65, i32* %63, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = call i32 @ASC_QNO_TO_QADDR(i8* %66)
  store i32 %67, i32* %17, align 4
  store i32 1, i32* %15, align 4
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 0
  store i32 %70, i32* %73, align 8
  %74 = load i8*, i8** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 5
  store i8* %74, i8** %75, align 8
  %76 = load i32, i32* @QCSG_SG_XFER_LIST, align 4
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 4
  store i32 %76, i32* %77, align 8
  store i32 0, i32* %8, align 4
  br label %78

78:                                               ; preds = %172, %59
  %79 = load i32, i32* %8, align 4
  %80 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %175

84:                                               ; preds = %78
  %85 = load i32, i32* %8, align 4
  %86 = add nsw i32 %85, 1
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 0
  store i32 %86, i32* %87, align 8
  %88 = load i32, i32* %16, align 4
  %89 = load i32, i32* @ASC_SG_LIST_PER_Q, align 4
  %90 = icmp sgt i32 %88, %89
  br i1 %90, label %91, label %115

91:                                               ; preds = %84
  %92 = load i32, i32* @ASC_SG_LIST_PER_Q, align 4
  %93 = mul nsw i32 %92, 2
  %94 = sext i32 %93 to i64
  %95 = inttoptr i64 %94 to i8*
  %96 = ptrtoint i8* %95 to i32
  store i32 %96, i32* %14, align 4
  %97 = load i32, i32* @ASC_SG_LIST_PER_Q, align 4
  %98 = load i32, i32* %16, align 4
  %99 = sub nsw i32 %98, %97
  store i32 %99, i32* %16, align 4
  %100 = load i32, i32* %8, align 4
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %91
  %103 = load i32, i32* @ASC_SG_LIST_PER_Q, align 4
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  store i32 %103, i32* %104, align 4
  %105 = load i32, i32* @ASC_SG_LIST_PER_Q, align 4
  %106 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  store i32 %105, i32* %106, align 8
  br label %114

107:                                              ; preds = %91
  %108 = load i32, i32* @ASC_SG_LIST_PER_Q, align 4
  %109 = sub nsw i32 %108, 1
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  store i32 %109, i32* %110, align 4
  %111 = load i32, i32* @ASC_SG_LIST_PER_Q, align 4
  %112 = sub nsw i32 %111, 1
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  store i32 %112, i32* %113, align 8
  br label %114

114:                                              ; preds = %107, %102
  br label %137

115:                                              ; preds = %84
  %116 = load i32, i32* @QCSG_SG_XFER_END, align 4
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 4
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %116
  store i32 %119, i32* %117, align 8
  %120 = load i32, i32* %16, align 4
  %121 = shl i32 %120, 1
  store i32 %121, i32* %14, align 4
  %122 = load i32, i32* %8, align 4
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %129

124:                                              ; preds = %115
  %125 = load i32, i32* %16, align 4
  %126 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  store i32 %125, i32* %126, align 4
  %127 = load i32, i32* %16, align 4
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  store i32 %127, i32* %128, align 8
  br label %136

129:                                              ; preds = %115
  %130 = load i32, i32* %16, align 4
  %131 = sub nsw i32 %130, 1
  %132 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 1
  store i32 %131, i32* %132, align 4
  %133 = load i32, i32* %16, align 4
  %134 = sub nsw i32 %133, 1
  %135 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 2
  store i32 %134, i32* %135, align 8
  br label %136

136:                                              ; preds = %129, %124
  store i32 0, i32* %16, align 4
  br label %137

137:                                              ; preds = %136, %114
  %138 = load i32, i32* %13, align 4
  %139 = load i32, i32* %17, align 4
  %140 = load i32, i32* @ASC_SCSIQ_B_FWD, align 4
  %141 = add nsw i32 %139, %140
  %142 = call i8* @AscReadLramByte(i32 %138, i32 %141)
  store i8* %142, i8** %18, align 8
  %143 = load i8*, i8** %18, align 8
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %10, i32 0, i32 3
  store i8* %143, i8** %144, align 8
  %145 = load i8*, i8** %18, align 8
  %146 = call i32 @ASC_QNO_TO_QADDR(i8* %145)
  store i32 %146, i32* %17, align 4
  %147 = load i32, i32* %13, align 4
  %148 = load i32, i32* %17, align 4
  %149 = load i32, i32* @ASC_SCSIQ_SGHD_CPY_BEG, align 4
  %150 = add nsw i32 %148, %149
  %151 = bitcast %struct.TYPE_13__* %10 to i8**
  %152 = call i32 @AscMemWordCopyPtrToLram(i32 %147, i32 %150, i8** %151, i32 20)
  %153 = load i32, i32* %13, align 4
  %154 = load i32, i32* %17, align 4
  %155 = load i32, i32* @ASC_SGQ_LIST_BEG, align 4
  %156 = add nsw i32 %154, %155
  %157 = load %struct.TYPE_14__*, %struct.TYPE_14__** %9, align 8
  %158 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_11__*, %struct.TYPE_11__** %158, align 8
  %160 = load i32, i32* %15, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %159, i64 %161
  %163 = bitcast %struct.TYPE_11__* %162 to i8**
  %164 = load i32, i32* %14, align 4
  %165 = call i32 @AscMemDWordCopyPtrToLram(i32 %153, i32 %156, i8** %163, i32 %164)
  %166 = load i32, i32* @ASC_SG_LIST_PER_Q, align 4
  %167 = load i32, i32* %15, align 4
  %168 = add nsw i32 %167, %166
  store i32 %168, i32* %15, align 4
  %169 = load i32, i32* %15, align 4
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %170, i32 0, i32 0
  store i32 %169, i32* %171, align 8
  br label %172

172:                                              ; preds = %137
  %173 = load i32, i32* %8, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %8, align 4
  br label %78

175:                                              ; preds = %78
  br label %184

176:                                              ; preds = %3
  %177 = load i32, i32* @QC_SG_HEAD, align 4
  %178 = xor i32 %177, -1
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 1
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = and i32 %182, %178
  store i32 %183, i32* %181, align 8
  br label %184

184:                                              ; preds = %176, %175
  %185 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %187 = load i8*, i8** %6, align 8
  %188 = call i32 @AscPutReadyQueue(%struct.TYPE_16__* %185, %struct.TYPE_15__* %186, i8* %187)
  store i32 %188, i32* %7, align 4
  %189 = load i8*, i8** %11, align 8
  %190 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %191 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %190, i32 0, i32 1
  %192 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %191, i32 0, i32 2
  store i8* %189, i8** %192, align 8
  %193 = load i8*, i8** %12, align 8
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %195, i32 0, i32 1
  store i8* %193, i8** %196, align 8
  %197 = load i32, i32* %7, align 4
  ret i32 %197
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i32 @ASC_QNO_TO_QADDR(i8*) #1

declare dso_local i8* @AscReadLramByte(i32, i32) #1

declare dso_local i32 @AscMemWordCopyPtrToLram(i32, i32, i8**, i32) #1

declare dso_local i32 @AscMemDWordCopyPtrToLram(i32, i32, i8**, i32) #1

declare dso_local i32 @AscPutReadyQueue(%struct.TYPE_16__*, %struct.TYPE_15__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
