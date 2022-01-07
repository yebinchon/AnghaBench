; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css.c_imgu_css_buf_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/ipu3/extr_ipu3-css.c_imgu_css_buf_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, i32 }
%struct.imgu_css = type { i32, %struct.imgu_css_pipe*, i32 }
%struct.imgu_css_pipe = type { %struct.TYPE_16__**, i32, %struct.TYPE_14__* }
%struct.TYPE_16__ = type { i32, %struct.imgu_abi_buffer* }
%struct.imgu_abi_buffer = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.imgu_css_buffer = type { i64, i64, i32, i32, i32 }
%struct.imgu_addr_t = type { i32 }

@EPROTO = common dso_local global i32 0, align 4
@IPU3_CSS_QUEUES = common dso_local global i64 0, align 8
@imgu_css_queues = common dso_local global %struct.TYPE_15__* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@IPU3_CSS_QUEUE_STAT_3A = common dso_local global i64 0, align 8
@IPU3_CSS_QUEUE_OUT = common dso_local global i64 0, align 8
@IPU3_CSS_QUEUE_VF = common dso_local global i64 0, align 8
@IPU3_CSS_BUFFER_QUEUED = common dso_local global i32 0, align 4
@IMGU_ABI_QUEUE_EVENT_ID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"queued buffer %p to css queue %i in pipe %d\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@IPU3_CSS_BUFFER_NEW = common dso_local global i32 0, align 4
@IPU3_CSS_BUFFER_FAILED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @imgu_css_buf_queue(%struct.imgu_css* %0, i32 %1, %struct.imgu_css_buffer* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.imgu_css*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.imgu_css_buffer*, align 8
  %8 = alloca %struct.imgu_abi_buffer*, align 8
  %9 = alloca %struct.imgu_addr_t*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.imgu_css_pipe*, align 8
  store %struct.imgu_css* %0, %struct.imgu_css** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.imgu_css_buffer* %2, %struct.imgu_css_buffer** %7, align 8
  %13 = load %struct.imgu_css*, %struct.imgu_css** %5, align 8
  %14 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %13, i32 0, i32 1
  %15 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %15, i64 %17
  store %struct.imgu_css_pipe* %18, %struct.imgu_css_pipe** %12, align 8
  %19 = load %struct.imgu_css*, %struct.imgu_css** %5, align 8
  %20 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EPROTO, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %272

26:                                               ; preds = %3
  %27 = load %struct.imgu_css_buffer*, %struct.imgu_css_buffer** %7, align 8
  %28 = getelementptr inbounds %struct.imgu_css_buffer, %struct.imgu_css_buffer* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @IPU3_CSS_QUEUES, align 8
  %31 = icmp uge i64 %29, %30
  br i1 %31, label %41, label %32

32:                                               ; preds = %26
  %33 = load %struct.TYPE_15__*, %struct.TYPE_15__** @imgu_css_queues, align 8
  %34 = load %struct.imgu_css_buffer*, %struct.imgu_css_buffer** %7, align 8
  %35 = getelementptr inbounds %struct.imgu_css_buffer, %struct.imgu_css_buffer* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %32, %26
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %272

44:                                               ; preds = %32
  %45 = load %struct.imgu_css*, %struct.imgu_css** %5, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** @imgu_css_queues, align 8
  %47 = load %struct.imgu_css_buffer*, %struct.imgu_css_buffer** %7, align 8
  %48 = getelementptr inbounds %struct.imgu_css_buffer, %struct.imgu_css_buffer* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %46, i64 %49
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* %6, align 4
  %54 = call i64 @imgu_css_queue_pos(%struct.imgu_css* %45, i32 %52, i32 %53)
  %55 = load %struct.imgu_css_buffer*, %struct.imgu_css_buffer** %7, align 8
  %56 = getelementptr inbounds %struct.imgu_css_buffer, %struct.imgu_css_buffer* %55, i32 0, i32 1
  store i64 %54, i64* %56, align 8
  %57 = load %struct.imgu_css_buffer*, %struct.imgu_css_buffer** %7, align 8
  %58 = getelementptr inbounds %struct.imgu_css_buffer, %struct.imgu_css_buffer* %57, i32 0, i32 1
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.imgu_css*, %struct.imgu_css** %5, align 8
  %61 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %60, i32 0, i32 1
  %62 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %62, i64 %64
  %66 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %65, i32 0, i32 0
  %67 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %66, align 8
  %68 = load %struct.imgu_css_buffer*, %struct.imgu_css_buffer** %7, align 8
  %69 = getelementptr inbounds %struct.imgu_css_buffer, %struct.imgu_css_buffer* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %67, i64 %70
  %72 = load %struct.TYPE_16__*, %struct.TYPE_16__** %71, align 8
  %73 = call i64 @ARRAY_SIZE(%struct.TYPE_16__* %72)
  %74 = icmp uge i64 %59, %73
  br i1 %74, label %75, label %78

75:                                               ; preds = %44
  %76 = load i32, i32* @EIO, align 4
  %77 = sub nsw i32 0, %76
  store i32 %77, i32* %4, align 4
  br label %272

78:                                               ; preds = %44
  %79 = load %struct.imgu_css*, %struct.imgu_css** %5, align 8
  %80 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %79, i32 0, i32 1
  %81 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %81, i64 %83
  %85 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %84, i32 0, i32 0
  %86 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %85, align 8
  %87 = load %struct.imgu_css_buffer*, %struct.imgu_css_buffer** %7, align 8
  %88 = getelementptr inbounds %struct.imgu_css_buffer, %struct.imgu_css_buffer* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %86, i64 %89
  %91 = load %struct.TYPE_16__*, %struct.TYPE_16__** %90, align 8
  %92 = load %struct.imgu_css_buffer*, %struct.imgu_css_buffer** %7, align 8
  %93 = getelementptr inbounds %struct.imgu_css_buffer, %struct.imgu_css_buffer* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %91, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 1
  %97 = load %struct.imgu_abi_buffer*, %struct.imgu_abi_buffer** %96, align 8
  store %struct.imgu_abi_buffer* %97, %struct.imgu_abi_buffer** %8, align 8
  %98 = load %struct.imgu_abi_buffer*, %struct.imgu_abi_buffer** %8, align 8
  %99 = call i32 @memset(%struct.imgu_abi_buffer* %98, i32 0, i32 8)
  %100 = load %struct.imgu_abi_buffer*, %struct.imgu_abi_buffer** %8, align 8
  %101 = bitcast %struct.imgu_abi_buffer* %100 to i8*
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** @imgu_css_queues, align 8
  %103 = load %struct.imgu_css_buffer*, %struct.imgu_css_buffer** %7, align 8
  %104 = getelementptr inbounds %struct.imgu_css_buffer, %struct.imgu_css_buffer* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr i8, i8* %101, i64 %109
  %111 = bitcast i8* %110 to %struct.imgu_addr_t*
  store %struct.imgu_addr_t* %111, %struct.imgu_addr_t** %9, align 8
  %112 = load %struct.imgu_css_buffer*, %struct.imgu_css_buffer** %7, align 8
  %113 = getelementptr inbounds %struct.imgu_css_buffer, %struct.imgu_css_buffer* %112, i32 0, i32 4
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.imgu_addr_t*, %struct.imgu_addr_t** %9, align 8
  %116 = bitcast %struct.imgu_addr_t* %115 to i32*
  store i32 %114, i32* %116, align 4
  %117 = load %struct.imgu_css_buffer*, %struct.imgu_css_buffer** %7, align 8
  %118 = getelementptr inbounds %struct.imgu_css_buffer, %struct.imgu_css_buffer* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load i64, i64* @IPU3_CSS_QUEUE_STAT_3A, align 8
  %121 = icmp eq i64 %119, %120
  br i1 %121, label %122, label %132

122:                                              ; preds = %78
  %123 = load %struct.imgu_css_buffer*, %struct.imgu_css_buffer** %7, align 8
  %124 = getelementptr inbounds %struct.imgu_css_buffer, %struct.imgu_css_buffer* %123, i32 0, i32 4
  %125 = load i32, i32* %124, align 8
  %126 = load %struct.imgu_abi_buffer*, %struct.imgu_abi_buffer** %8, align 8
  %127 = getelementptr inbounds %struct.imgu_abi_buffer, %struct.imgu_abi_buffer* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  store i32 %125, i32* %131, align 4
  br label %132

132:                                              ; preds = %122, %78
  %133 = load %struct.imgu_css_buffer*, %struct.imgu_css_buffer** %7, align 8
  %134 = getelementptr inbounds %struct.imgu_css_buffer, %struct.imgu_css_buffer* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load i64, i64* @IPU3_CSS_QUEUE_OUT, align 8
  %137 = icmp eq i64 %135, %136
  br i1 %137, label %138, label %150

138:                                              ; preds = %132
  %139 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %12, align 8
  %140 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %139, i32 0, i32 2
  %141 = load %struct.TYPE_14__*, %struct.TYPE_14__** %140, align 8
  %142 = load i64, i64* @IPU3_CSS_QUEUE_OUT, align 8
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %141, i64 %142
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 1
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.imgu_abi_buffer*, %struct.imgu_abi_buffer** %8, align 8
  %147 = getelementptr inbounds %struct.imgu_abi_buffer, %struct.imgu_abi_buffer* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %148, i32 0, i32 0
  store i32 %145, i32* %149, align 4
  br label %150

150:                                              ; preds = %138, %132
  %151 = load %struct.imgu_css_buffer*, %struct.imgu_css_buffer** %7, align 8
  %152 = getelementptr inbounds %struct.imgu_css_buffer, %struct.imgu_css_buffer* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @IPU3_CSS_QUEUE_VF, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %168

156:                                              ; preds = %150
  %157 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %12, align 8
  %158 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %157, i32 0, i32 2
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %158, align 8
  %160 = load i64, i64* @IPU3_CSS_QUEUE_VF, align 8
  %161 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i64 %160
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.imgu_abi_buffer*, %struct.imgu_abi_buffer** %8, align 8
  %165 = getelementptr inbounds %struct.imgu_abi_buffer, %struct.imgu_abi_buffer* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %166, i32 0, i32 0
  store i32 %163, i32* %167, align 4
  br label %168

168:                                              ; preds = %156, %150
  %169 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %12, align 8
  %170 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %169, i32 0, i32 1
  %171 = call i32 @spin_lock(i32* %170)
  %172 = load %struct.imgu_css_buffer*, %struct.imgu_css_buffer** %7, align 8
  %173 = getelementptr inbounds %struct.imgu_css_buffer, %struct.imgu_css_buffer* %172, i32 0, i32 2
  %174 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %12, align 8
  %175 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %174, i32 0, i32 2
  %176 = load %struct.TYPE_14__*, %struct.TYPE_14__** %175, align 8
  %177 = load %struct.imgu_css_buffer*, %struct.imgu_css_buffer** %7, align 8
  %178 = getelementptr inbounds %struct.imgu_css_buffer, %struct.imgu_css_buffer* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i64 %179
  %181 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %180, i32 0, i32 0
  %182 = call i32 @list_add_tail(i32* %173, i32* %181)
  %183 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %12, align 8
  %184 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %183, i32 0, i32 1
  %185 = call i32 @spin_unlock(i32* %184)
  %186 = load i32, i32* @IPU3_CSS_BUFFER_QUEUED, align 4
  %187 = load %struct.imgu_css_buffer*, %struct.imgu_css_buffer** %7, align 8
  %188 = getelementptr inbounds %struct.imgu_css_buffer, %struct.imgu_css_buffer* %187, i32 0, i32 3
  store i32 %186, i32* %188, align 4
  %189 = load %struct.imgu_css*, %struct.imgu_css** %5, align 8
  %190 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %189, i32 0, i32 1
  %191 = load %struct.imgu_css_pipe*, %struct.imgu_css_pipe** %190, align 8
  %192 = load i32, i32* %6, align 4
  %193 = zext i32 %192 to i64
  %194 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %191, i64 %193
  %195 = getelementptr inbounds %struct.imgu_css_pipe, %struct.imgu_css_pipe* %194, i32 0, i32 0
  %196 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %195, align 8
  %197 = load %struct.imgu_css_buffer*, %struct.imgu_css_buffer** %7, align 8
  %198 = getelementptr inbounds %struct.imgu_css_buffer, %struct.imgu_css_buffer* %197, i32 0, i32 0
  %199 = load i64, i64* %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %196, i64 %199
  %201 = load %struct.TYPE_16__*, %struct.TYPE_16__** %200, align 8
  %202 = load %struct.imgu_css_buffer*, %struct.imgu_css_buffer** %7, align 8
  %203 = getelementptr inbounds %struct.imgu_css_buffer, %struct.imgu_css_buffer* %202, i32 0, i32 1
  %204 = load i64, i64* %203, align 8
  %205 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %201, i64 %204
  %206 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  store i32 %207, i32* %10, align 4
  %208 = load %struct.imgu_css*, %struct.imgu_css** %5, align 8
  %209 = load %struct.TYPE_15__*, %struct.TYPE_15__** @imgu_css_queues, align 8
  %210 = load %struct.imgu_css_buffer*, %struct.imgu_css_buffer** %7, align 8
  %211 = getelementptr inbounds %struct.imgu_css_buffer, %struct.imgu_css_buffer* %210, i32 0, i32 0
  %212 = load i64, i64* %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %209, i64 %212
  %214 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = load i32, i32* %6, align 4
  %217 = load i32, i32* %10, align 4
  %218 = call i32 @imgu_css_queue_data(%struct.imgu_css* %208, i32 %215, i32 %216, i32 %217)
  store i32 %218, i32* %11, align 4
  %219 = load i32, i32* %11, align 4
  %220 = icmp slt i32 %219, 0
  br i1 %220, label %221, label %222

221:                                              ; preds = %168
  br label %250

222:                                              ; preds = %168
  %223 = load i32, i32* %6, align 4
  %224 = load %struct.TYPE_15__*, %struct.TYPE_15__** @imgu_css_queues, align 8
  %225 = load %struct.imgu_css_buffer*, %struct.imgu_css_buffer** %7, align 8
  %226 = getelementptr inbounds %struct.imgu_css_buffer, %struct.imgu_css_buffer* %225, i32 0, i32 0
  %227 = load i64, i64* %226, align 8
  %228 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %224, i64 %227
  %229 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = call i32 @IMGU_ABI_EVENT_BUFFER_ENQUEUED(i32 %223, i32 %230)
  store i32 %231, i32* %10, align 4
  %232 = load %struct.imgu_css*, %struct.imgu_css** %5, align 8
  %233 = load i32, i32* @IMGU_ABI_QUEUE_EVENT_ID, align 4
  %234 = load i32, i32* %6, align 4
  %235 = load i32, i32* %10, align 4
  %236 = call i32 @imgu_css_queue_data(%struct.imgu_css* %232, i32 %233, i32 %234, i32 %235)
  store i32 %236, i32* %11, align 4
  %237 = load i32, i32* %11, align 4
  %238 = icmp slt i32 %237, 0
  br i1 %238, label %239, label %240

239:                                              ; preds = %222
  br label %250

240:                                              ; preds = %222
  %241 = load %struct.imgu_css*, %struct.imgu_css** %5, align 8
  %242 = getelementptr inbounds %struct.imgu_css, %struct.imgu_css* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 8
  %244 = load %struct.imgu_css_buffer*, %struct.imgu_css_buffer** %7, align 8
  %245 = load %struct.imgu_css_buffer*, %struct.imgu_css_buffer** %7, align 8
  %246 = getelementptr inbounds %struct.imgu_css_buffer, %struct.imgu_css_buffer* %245, i32 0, i32 0
  %247 = load i64, i64* %246, align 8
  %248 = load i32, i32* %6, align 4
  %249 = call i32 @dev_dbg(i32 %243, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), %struct.imgu_css_buffer* %244, i64 %247, i32 %248)
  store i32 0, i32* %4, align 4
  br label %272

250:                                              ; preds = %239, %221
  %251 = load i32, i32* %11, align 4
  %252 = load i32, i32* @EBUSY, align 4
  %253 = sub nsw i32 0, %252
  %254 = icmp eq i32 %251, %253
  br i1 %254, label %260, label %255

255:                                              ; preds = %250
  %256 = load i32, i32* %11, align 4
  %257 = load i32, i32* @EAGAIN, align 4
  %258 = sub nsw i32 0, %257
  %259 = icmp eq i32 %256, %258
  br i1 %259, label %260, label %262

260:                                              ; preds = %255, %250
  %261 = load i32, i32* @IPU3_CSS_BUFFER_NEW, align 4
  br label %264

262:                                              ; preds = %255
  %263 = load i32, i32* @IPU3_CSS_BUFFER_FAILED, align 4
  br label %264

264:                                              ; preds = %262, %260
  %265 = phi i32 [ %261, %260 ], [ %263, %262 ]
  %266 = load %struct.imgu_css_buffer*, %struct.imgu_css_buffer** %7, align 8
  %267 = getelementptr inbounds %struct.imgu_css_buffer, %struct.imgu_css_buffer* %266, i32 0, i32 3
  store i32 %265, i32* %267, align 4
  %268 = load %struct.imgu_css_buffer*, %struct.imgu_css_buffer** %7, align 8
  %269 = getelementptr inbounds %struct.imgu_css_buffer, %struct.imgu_css_buffer* %268, i32 0, i32 2
  %270 = call i32 @list_del(i32* %269)
  %271 = load i32, i32* %11, align 4
  store i32 %271, i32* %4, align 4
  br label %272

272:                                              ; preds = %264, %240, %75, %41, %23
  %273 = load i32, i32* %4, align 4
  ret i32 %273
}

declare dso_local i64 @imgu_css_queue_pos(%struct.imgu_css*, i32, i32) #1

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_16__*) #1

declare dso_local i32 @memset(%struct.imgu_abi_buffer*, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @imgu_css_queue_data(%struct.imgu_css*, i32, i32, i32) #1

declare dso_local i32 @IMGU_ABI_EVENT_BUFFER_ENQUEUED(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, %struct.imgu_css_buffer*, i64, i32) #1

declare dso_local i32 @list_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
