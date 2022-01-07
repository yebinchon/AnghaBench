; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_flush_buffers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_qeth_core_main.c_qeth_flush_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qeth_qdio_out_q = type { i32, %struct.qeth_card*, i32, i32, i32, i32, %struct.TYPE_4__*, %struct.qeth_qdio_out_buffer** }
%struct.qeth_card = type { i32 }
%struct.TYPE_4__ = type { %struct.qeth_qdio_out_buffer* }
%struct.qeth_qdio_out_buffer = type { i32, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@SBAL_EFLAGS_LAST_ENTRY = common dso_local global i32 0, align 4
@QETH_HIGH_WATERMARK_PACK = common dso_local global i64 0, align 8
@QETH_WATERMARK_PACK_FUZZ = common dso_local global i64 0, align 8
@SBAL_SFLAGS0_PCI_REQ = common dso_local global i32 0, align 4
@QDIO_FLAG_SYNC_OUTPUT = common dso_local global i32 0, align 4
@QDIO_FLAG_PCI_OUT = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"flushbuf\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" q%d\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c" idx%d\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c" c%d\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c" err%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qeth_qdio_out_q*, i32, i32)* @qeth_flush_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qeth_flush_buffers(%struct.qeth_qdio_out_q* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.qeth_qdio_out_q*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qeth_card*, align 8
  %8 = alloca %struct.qeth_qdio_out_buffer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.qeth_qdio_out_q* %0, %struct.qeth_qdio_out_q** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %14 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %13, i32 0, i32 1
  %15 = load %struct.qeth_card*, %struct.qeth_card** %14, align 8
  store %struct.qeth_card* %15, %struct.qeth_card** %7, align 8
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %10, align 4
  br label %17

17:                                               ; preds = %123, %3
  %18 = load i32, i32* %10, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %6, align 4
  %21 = add nsw i32 %19, %20
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %126

23:                                               ; preds = %17
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %26 = srem i32 %24, %25
  store i32 %26, i32* %12, align 4
  %27 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %28 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %27, i32 0, i32 7
  %29 = load %struct.qeth_qdio_out_buffer**, %struct.qeth_qdio_out_buffer*** %28, align 8
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %29, i64 %31
  %33 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %32, align 8
  store %struct.qeth_qdio_out_buffer* %33, %struct.qeth_qdio_out_buffer** %8, align 8
  %34 = load i32, i32* @SBAL_EFLAGS_LAST_ENTRY, align 4
  %35 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %8, align 8
  %36 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %35, i32 0, i32 1
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_5__*, %struct.TYPE_5__** %38, align 8
  %40 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %8, align 8
  %41 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sub nsw i32 %42, 1
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i64 %44
  %46 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %34
  store i32 %48, i32* %46, align 4
  %49 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %50 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %49, i32 0, i32 6
  %51 = load %struct.TYPE_4__*, %struct.TYPE_4__** %50, align 8
  %52 = icmp ne %struct.TYPE_4__* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %23
  %54 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %8, align 8
  %55 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %56 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %55, i32 0, i32 6
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  store %struct.qeth_qdio_out_buffer* %54, %struct.qeth_qdio_out_buffer** %61, align 8
  br label %62

62:                                               ; preds = %53, %23
  %63 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %64 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %63, i32 0, i32 1
  %65 = load %struct.qeth_card*, %struct.qeth_card** %64, align 8
  %66 = call i64 @IS_IQD(%struct.qeth_card* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %123

69:                                               ; preds = %62
  %70 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %71 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %70, i32 0, i32 5
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %102, label %74

74:                                               ; preds = %69
  %75 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %76 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %75, i32 0, i32 4
  %77 = call i64 @atomic_read(i32* %76)
  %78 = load i64, i64* @QETH_HIGH_WATERMARK_PACK, align 8
  %79 = load i64, i64* @QETH_WATERMARK_PACK_FUZZ, align 8
  %80 = sub nsw i64 %78, %79
  %81 = icmp sge i64 %77, %80
  br i1 %81, label %82, label %101

82:                                               ; preds = %74
  %83 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %84 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %83, i32 0, i32 3
  %85 = call i64 @atomic_read(i32* %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %101, label %87

87:                                               ; preds = %82
  %88 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %89 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %88, i32 0, i32 3
  %90 = call i32 @atomic_inc(i32* %89)
  %91 = load i32, i32* @SBAL_SFLAGS0_PCI_REQ, align 4
  %92 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %8, align 8
  %93 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %92, i32 0, i32 1
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i64 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = or i32 %99, %91
  store i32 %100, i32* %98, align 4
  br label %101

101:                                              ; preds = %87, %82, %74
  br label %122

102:                                              ; preds = %69
  %103 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %104 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %103, i32 0, i32 3
  %105 = call i64 @atomic_read(i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %121, label %107

107:                                              ; preds = %102
  %108 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %109 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %108, i32 0, i32 3
  %110 = call i32 @atomic_inc(i32* %109)
  %111 = load i32, i32* @SBAL_SFLAGS0_PCI_REQ, align 4
  %112 = load %struct.qeth_qdio_out_buffer*, %struct.qeth_qdio_out_buffer** %8, align 8
  %113 = getelementptr inbounds %struct.qeth_qdio_out_buffer, %struct.qeth_qdio_out_buffer* %112, i32 0, i32 1
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i64 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %111
  store i32 %120, i32* %118, align 4
  br label %121

121:                                              ; preds = %107, %102
  br label %122

122:                                              ; preds = %121, %101
  br label %123

123:                                              ; preds = %122, %68
  %124 = load i32, i32* %10, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %10, align 4
  br label %17

126:                                              ; preds = %17
  %127 = load i32, i32* @QDIO_FLAG_SYNC_OUTPUT, align 4
  store i32 %127, i32* %11, align 4
  %128 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %129 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %128, i32 0, i32 3
  %130 = call i64 @atomic_read(i32* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %136

132:                                              ; preds = %126
  %133 = load i32, i32* @QDIO_FLAG_PCI_OUT, align 4
  %134 = load i32, i32* %11, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %11, align 4
  br label %136

136:                                              ; preds = %132, %126
  %137 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %138 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %137, i32 0, i32 1
  %139 = load %struct.qeth_card*, %struct.qeth_card** %138, align 8
  %140 = call i32 @CARD_DDEV(%struct.qeth_card* %139)
  %141 = load i32, i32* %11, align 4
  %142 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %143 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* %6, align 4
  %147 = call i32 @do_QDIO(i32 %140, i32 %141, i32 %144, i32 %145, i32 %146)
  store i32 %147, i32* %9, align 4
  %148 = load %struct.qeth_card*, %struct.qeth_card** %7, align 8
  %149 = call i64 @IS_IQD(%struct.qeth_card* %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %155

151:                                              ; preds = %136
  %152 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %153 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %152, i32 0, i32 2
  %154 = call i32 @napi_schedule(i32* %153)
  br label %155

155:                                              ; preds = %151, %136
  %156 = load i32, i32* %9, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %195

158:                                              ; preds = %155
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* @ENOBUFS, align 4
  %161 = sub nsw i32 0, %160
  %162 = icmp eq i32 %159, %161
  br i1 %162, label %163, label %164

163:                                              ; preds = %158
  br label %195

164:                                              ; preds = %158
  %165 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %166 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %165, i32 0, i32 1
  %167 = load %struct.qeth_card*, %struct.qeth_card** %166, align 8
  %168 = call i32 @QETH_CARD_TEXT(%struct.qeth_card* %167, i32 2, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %169 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %170 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %169, i32 0, i32 1
  %171 = load %struct.qeth_card*, %struct.qeth_card** %170, align 8
  %172 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %173 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 8
  %175 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %171, i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %174)
  %176 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %177 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %176, i32 0, i32 1
  %178 = load %struct.qeth_card*, %struct.qeth_card** %177, align 8
  %179 = load i32, i32* %5, align 4
  %180 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %178, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %179)
  %181 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %182 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %181, i32 0, i32 1
  %183 = load %struct.qeth_card*, %struct.qeth_card** %182, align 8
  %184 = load i32, i32* %6, align 4
  %185 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %183, i32 2, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %184)
  %186 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %187 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %186, i32 0, i32 1
  %188 = load %struct.qeth_card*, %struct.qeth_card** %187, align 8
  %189 = load i32, i32* %9, align 4
  %190 = call i32 @QETH_CARD_TEXT_(%struct.qeth_card* %188, i32 2, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.4, i64 0, i64 0), i32 %189)
  %191 = load %struct.qeth_qdio_out_q*, %struct.qeth_qdio_out_q** %4, align 8
  %192 = getelementptr inbounds %struct.qeth_qdio_out_q, %struct.qeth_qdio_out_q* %191, i32 0, i32 1
  %193 = load %struct.qeth_card*, %struct.qeth_card** %192, align 8
  %194 = call i32 @qeth_schedule_recovery(%struct.qeth_card* %193)
  br label %195

195:                                              ; preds = %163, %164, %155
  ret void
}

declare dso_local i64 @IS_IQD(%struct.qeth_card*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @do_QDIO(i32, i32, i32, i32, i32) #1

declare dso_local i32 @CARD_DDEV(%struct.qeth_card*) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @QETH_CARD_TEXT(%struct.qeth_card*, i32, i8*) #1

declare dso_local i32 @QETH_CARD_TEXT_(%struct.qeth_card*, i32, i8*, i32) #1

declare dso_local i32 @qeth_schedule_recovery(%struct.qeth_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
