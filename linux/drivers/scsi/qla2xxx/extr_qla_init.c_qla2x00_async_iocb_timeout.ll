; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_async_iocb_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_init.c_qla2x00_async_iocb_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32, i32 (%struct.TYPE_19__*, i32)*, %struct.TYPE_18__*, i32, i32, %struct.TYPE_13__, %struct.TYPE_20__* }
%struct.TYPE_18__ = type { i32, %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i32, %struct.TYPE_19__** }
%struct.TYPE_13__ = type { %struct.srb_iocb }
%struct.srb_iocb = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32* }
%struct.TYPE_20__ = type { i32, i32, %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { i32 }

@ql_dbg_disc = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"Async-%s timeout - hdl=%x portid=%06x %8phC.\0A\00", align 1
@FCF_ASYNC_SENT = common dso_local global i32 0, align 4
@FCF_ASYNC_ACTIVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"Async-%s timeout - hdl=%x.\0A\00", align 1
@MBS_COMMAND_ERROR = common dso_local global i32 0, align 4
@SRB_LOGIN_RETRIED = common dso_local global i32 0, align 4
@QLA_LOGIO_LOGIN_RETRIED = common dso_local global i32 0, align 4
@QLA_FUNCTION_TIMEOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla2x00_async_iocb_timeout(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_19__*, align 8
  %4 = alloca %struct.TYPE_20__*, align 8
  %5 = alloca %struct.srb_iocb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = bitcast i8* %9 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %10, %struct.TYPE_19__** %3, align 8
  %11 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %11, i32 0, i32 6
  %13 = load %struct.TYPE_20__*, %struct.TYPE_20__** %12, align 8
  store %struct.TYPE_20__* %13, %struct.TYPE_20__** %4, align 8
  %14 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %14, i32 0, i32 5
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 0
  store %struct.srb_iocb* %16, %struct.srb_iocb** %5, align 8
  %17 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %18 = icmp ne %struct.TYPE_20__* %17, null
  br i1 %18, label %19, label %46

19:                                               ; preds = %1
  %20 = load i32, i32* @ql_dbg_disc, align 4
  %21 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %25 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %35 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @ql_dbg(i32 %20, i32 %23, i32 8305, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %29, i32 %33, i32 %36)
  %38 = load i32, i32* @FCF_ASYNC_SENT, align 4
  %39 = load i32, i32* @FCF_ASYNC_ACTIVE, align 4
  %40 = or i32 %38, %39
  %41 = xor i32 %40, -1
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = and i32 %44, %41
  store i32 %45, i32* %43, align 4
  br label %54

46:                                               ; preds = %1
  %47 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %51 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %50, i32 0, i32 3
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @pr_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %49, i32 %52)
  br label %54

54:                                               ; preds = %46, %19
  %55 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %56 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  switch i32 %57, label %218 [
    i32 133, label %58
    i32 132, label %151
    i32 134, label %151
    i32 131, label %151
    i32 129, label %151
    i32 128, label %151
    i32 130, label %151
    i32 135, label %151
  ]

58:                                               ; preds = %54
  %59 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %60 = call i32 @qla24xx_async_abort_cmd(%struct.TYPE_19__* %59, i32 0)
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %150

63:                                               ; preds = %58
  %64 = load i32, i32* @MBS_COMMAND_ERROR, align 4
  %65 = load %struct.srb_iocb*, %struct.srb_iocb** %5, align 8
  %66 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  store i32 %64, i32* %70, align 4
  %71 = load %struct.srb_iocb*, %struct.srb_iocb** %5, align 8
  %72 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @SRB_LOGIN_RETRIED, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %63
  %80 = load i32, i32* @QLA_LOGIO_LOGIN_RETRIED, align 4
  br label %82

81:                                               ; preds = %63
  br label %82

82:                                               ; preds = %81, %79
  %83 = phi i32 [ %80, %79 ], [ 0, %81 ]
  %84 = load %struct.srb_iocb*, %struct.srb_iocb** %5, align 8
  %85 = getelementptr inbounds %struct.srb_iocb, %struct.srb_iocb* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  store i32 %83, i32* %89, align 4
  %90 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %91 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %90, i32 0, i32 2
  %92 = load %struct.TYPE_18__*, %struct.TYPE_18__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i64, i64* %8, align 8
  %96 = call i32 @spin_lock_irqsave(i32 %94, i64 %95)
  store i32 1, i32* %7, align 4
  br label %97

97:                                               ; preds = %133, %82
  %98 = load i32, i32* %7, align 4
  %99 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %100 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %99, i32 0, i32 2
  %101 = load %struct.TYPE_18__*, %struct.TYPE_18__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %101, i32 0, i32 1
  %103 = load %struct.TYPE_17__*, %struct.TYPE_17__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp slt i32 %98, %105
  br i1 %106, label %107, label %136

107:                                              ; preds = %97
  %108 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %109 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %108, i32 0, i32 2
  %110 = load %struct.TYPE_18__*, %struct.TYPE_18__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 1
  %114 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %113, align 8
  %115 = load i32, i32* %7, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %114, i64 %116
  %118 = load %struct.TYPE_19__*, %struct.TYPE_19__** %117, align 8
  %119 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %120 = icmp eq %struct.TYPE_19__* %118, %119
  br i1 %120, label %121, label %132

121:                                              ; preds = %107
  %122 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %123 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %122, i32 0, i32 2
  %124 = load %struct.TYPE_18__*, %struct.TYPE_18__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_17__*, %struct.TYPE_17__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %127, align 8
  %129 = load i32, i32* %7, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %128, i64 %130
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %131, align 8
  br label %136

132:                                              ; preds = %107
  br label %133

133:                                              ; preds = %132
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %7, align 4
  br label %97

136:                                              ; preds = %121, %97
  %137 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %138 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %137, i32 0, i32 2
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i64, i64* %8, align 8
  %143 = call i32 @spin_unlock_irqrestore(i32 %141, i64 %142)
  %144 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 1
  %146 = load i32 (%struct.TYPE_19__*, i32)*, i32 (%struct.TYPE_19__*, i32)** %145, align 8
  %147 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %148 = load i32, i32* @QLA_FUNCTION_TIMEOUT, align 4
  %149 = call i32 %146(%struct.TYPE_19__* %147, i32 %148)
  br label %150

150:                                              ; preds = %136, %58
  br label %226

151:                                              ; preds = %54, %54, %54, %54, %54, %54, %54
  %152 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %153 = call i32 @qla24xx_async_abort_cmd(%struct.TYPE_19__* %152, i32 0)
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* %6, align 4
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %217

156:                                              ; preds = %151
  %157 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %158 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %157, i32 0, i32 2
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i64, i64* %8, align 8
  %163 = call i32 @spin_lock_irqsave(i32 %161, i64 %162)
  store i32 1, i32* %7, align 4
  br label %164

164:                                              ; preds = %200, %156
  %165 = load i32, i32* %7, align 4
  %166 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %167 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %166, i32 0, i32 2
  %168 = load %struct.TYPE_18__*, %struct.TYPE_18__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %168, i32 0, i32 1
  %170 = load %struct.TYPE_17__*, %struct.TYPE_17__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp slt i32 %165, %172
  br i1 %173, label %174, label %203

174:                                              ; preds = %164
  %175 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 2
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %176, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 1
  %179 = load %struct.TYPE_17__*, %struct.TYPE_17__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %180, align 8
  %182 = load i32, i32* %7, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %181, i64 %183
  %185 = load %struct.TYPE_19__*, %struct.TYPE_19__** %184, align 8
  %186 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %187 = icmp eq %struct.TYPE_19__* %185, %186
  br i1 %187, label %188, label %199

188:                                              ; preds = %174
  %189 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %190 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %189, i32 0, i32 2
  %191 = load %struct.TYPE_18__*, %struct.TYPE_18__** %190, align 8
  %192 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %191, i32 0, i32 1
  %193 = load %struct.TYPE_17__*, %struct.TYPE_17__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %193, i32 0, i32 1
  %195 = load %struct.TYPE_19__**, %struct.TYPE_19__*** %194, align 8
  %196 = load i32, i32* %7, align 4
  %197 = sext i32 %196 to i64
  %198 = getelementptr inbounds %struct.TYPE_19__*, %struct.TYPE_19__** %195, i64 %197
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %198, align 8
  br label %203

199:                                              ; preds = %174
  br label %200

200:                                              ; preds = %199
  %201 = load i32, i32* %7, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %7, align 4
  br label %164

203:                                              ; preds = %188, %164
  %204 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %205 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %204, i32 0, i32 2
  %206 = load %struct.TYPE_18__*, %struct.TYPE_18__** %205, align 8
  %207 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i64, i64* %8, align 8
  %210 = call i32 @spin_unlock_irqrestore(i32 %208, i64 %209)
  %211 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %212 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %211, i32 0, i32 1
  %213 = load i32 (%struct.TYPE_19__*, i32)*, i32 (%struct.TYPE_19__*, i32)** %212, align 8
  %214 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %215 = load i32, i32* @QLA_FUNCTION_TIMEOUT, align 4
  %216 = call i32 %213(%struct.TYPE_19__* %214, i32 %215)
  br label %217

217:                                              ; preds = %203, %151
  br label %226

218:                                              ; preds = %54
  %219 = call i32 @WARN_ON_ONCE(i32 1)
  %220 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %221 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %220, i32 0, i32 1
  %222 = load i32 (%struct.TYPE_19__*, i32)*, i32 (%struct.TYPE_19__*, i32)** %221, align 8
  %223 = load %struct.TYPE_19__*, %struct.TYPE_19__** %3, align 8
  %224 = load i32, i32* @QLA_FUNCTION_TIMEOUT, align 4
  %225 = call i32 %222(%struct.TYPE_19__* %223, i32 %224)
  br label %226

226:                                              ; preds = %218, %217, %150
  ret void
}

declare dso_local i32 @ql_dbg(i32, i32, i32, i8*, i32, i32, i32, i32) #1

declare dso_local i32 @pr_info(i8*, i32, i32) #1

declare dso_local i32 @qla24xx_async_abort_cmd(%struct.TYPE_19__*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
