; ModuleID = '/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mem.c_spi_mem_exec_op.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spi/extr_spi-mem.c_spi_mem_exec_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spi_mem = type { %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.spi_controller* }
%struct.spi_controller = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { {}* }
%struct.spi_mem_op = type { %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32, i64, i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32*, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.spi_transfer = type { i32*, i32, i32, i32, i32 }
%struct.spi_message = type { i32 }

@ENOTSUPP = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@GFP_DMA = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@SPI_MEM_DATA_IN = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spi_mem_exec_op(%struct.spi_mem* %0, %struct.spi_mem_op* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.spi_mem*, align 8
  %5 = alloca %struct.spi_mem_op*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.spi_controller*, align 8
  %10 = alloca [4 x %struct.spi_transfer], align 16
  %11 = alloca %struct.spi_message, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.spi_mem* %0, %struct.spi_mem** %4, align 8
  store %struct.spi_mem_op* %1, %struct.spi_mem_op** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %15 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %16 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %15, i32 0, i32 0
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load %struct.spi_controller*, %struct.spi_controller** %18, align 8
  store %struct.spi_controller* %19, %struct.spi_controller** %9, align 8
  %20 = bitcast [4 x %struct.spi_transfer]* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 96, i1 false)
  %21 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %22 = call i32 @spi_mem_check_op(%struct.spi_mem_op* %21)
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %2
  %26 = load i32, i32* %13, align 4
  store i32 %26, i32* %3, align 4
  br label %346

27:                                               ; preds = %2
  %28 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %29 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %30 = call i32 @spi_mem_internal_supports_op(%struct.spi_mem* %28, %struct.spi_mem_op* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %27
  %33 = load i32, i32* @ENOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %346

35:                                               ; preds = %27
  %36 = load %struct.spi_controller*, %struct.spi_controller** %9, align 8
  %37 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = icmp ne %struct.TYPE_8__* %38, null
  br i1 %39, label %40, label %69

40:                                               ; preds = %35
  %41 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %42 = call i32 @spi_mem_access_start(%struct.spi_mem* %41)
  store i32 %42, i32* %13, align 4
  %43 = load i32, i32* %13, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %13, align 4
  store i32 %46, i32* %3, align 4
  br label %346

47:                                               ; preds = %40
  %48 = load %struct.spi_controller*, %struct.spi_controller** %9, align 8
  %49 = getelementptr inbounds %struct.spi_controller, %struct.spi_controller* %48, i32 0, i32 0
  %50 = load %struct.TYPE_8__*, %struct.TYPE_8__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 0
  %52 = bitcast {}** %51 to i32 (%struct.spi_mem*, %struct.spi_mem_op*)**
  %53 = load i32 (%struct.spi_mem*, %struct.spi_mem_op*)*, i32 (%struct.spi_mem*, %struct.spi_mem_op*)** %52, align 8
  %54 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %55 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %56 = call i32 %53(%struct.spi_mem* %54, %struct.spi_mem_op* %55)
  store i32 %56, i32* %13, align 4
  %57 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %58 = call i32 @spi_mem_access_end(%struct.spi_mem* %57)
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %66

61:                                               ; preds = %47
  %62 = load i32, i32* %13, align 4
  %63 = load i32, i32* @ENOTSUPP, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp ne i32 %62, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %61, %47
  %67 = load i32, i32* %13, align 4
  store i32 %67, i32* %3, align 4
  br label %346

68:                                               ; preds = %61
  br label %69

69:                                               ; preds = %68, %35
  %70 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %71 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = sext i32 %73 to i64
  %75 = add i64 4, %74
  %76 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %77 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = sext i32 %79 to i64
  %81 = add i64 %75, %80
  %82 = trunc i64 %81 to i32
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @GFP_KERNEL, align 4
  %85 = load i32, i32* @GFP_DMA, align 4
  %86 = or i32 %84, %85
  %87 = call i32* @kzalloc(i32 %83, i32 %86)
  store i32* %87, i32** %12, align 8
  %88 = load i32*, i32** %12, align 8
  %89 = icmp ne i32* %88, null
  br i1 %89, label %93, label %90

90:                                               ; preds = %69
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %346

93:                                               ; preds = %69
  %94 = call i32 @spi_message_init(%struct.spi_message* %11)
  %95 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %96 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i32*, i32** %12, align 8
  %100 = getelementptr inbounds i32, i32* %99, i64 0
  store i32 %98, i32* %100, align 4
  %101 = load i32*, i32** %12, align 8
  %102 = load i32, i32* %7, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %10, i64 0, i64 %103
  %105 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %104, i32 0, i32 0
  store i32* %101, i32** %105, align 8
  %106 = load i32, i32* %7, align 4
  %107 = zext i32 %106 to i64
  %108 = getelementptr inbounds [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %10, i64 0, i64 %107
  %109 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %108, i32 0, i32 1
  store i32 4, i32* %109, align 8
  %110 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %111 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %7, align 4
  %115 = zext i32 %114 to i64
  %116 = getelementptr inbounds [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %10, i64 0, i64 %115
  %117 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %116, i32 0, i32 2
  store i32 %113, i32* %117, align 4
  %118 = load i32, i32* %7, align 4
  %119 = zext i32 %118 to i64
  %120 = getelementptr inbounds [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %10, i64 0, i64 %119
  %121 = call i32 @spi_message_add_tail(%struct.spi_transfer* %120, %struct.spi_message* %11)
  %122 = load i32, i32* %7, align 4
  %123 = add i32 %122, 1
  store i32 %123, i32* %7, align 4
  %124 = load i32, i32* %8, align 4
  %125 = add i32 %124, 1
  store i32 %125, i32* %8, align 4
  %126 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %127 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %196

131:                                              ; preds = %93
  store i32 0, i32* %14, align 4
  br label %132

132:                                              ; preds = %158, %131
  %133 = load i32, i32* %14, align 4
  %134 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %135 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = icmp slt i32 %133, %137
  br i1 %138, label %139, label %161

139:                                              ; preds = %132
  %140 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %141 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %140, i32 0, i32 2
  %142 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %145 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %144, i32 0, i32 2
  %146 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = load i32, i32* %14, align 4
  %149 = sub nsw i32 %147, %148
  %150 = sub nsw i32 %149, 1
  %151 = mul nsw i32 8, %150
  %152 = ashr i32 %143, %151
  %153 = load i32*, i32** %12, align 8
  %154 = load i32, i32* %14, align 4
  %155 = add nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %153, i64 %156
  store i32 %152, i32* %157, align 4
  br label %158

158:                                              ; preds = %139
  %159 = load i32, i32* %14, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %14, align 4
  br label %132

161:                                              ; preds = %132
  %162 = load i32*, i32** %12, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  %164 = load i32, i32* %7, align 4
  %165 = zext i32 %164 to i64
  %166 = getelementptr inbounds [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %10, i64 0, i64 %165
  %167 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %166, i32 0, i32 0
  store i32* %163, i32** %167, align 8
  %168 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %169 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %168, i32 0, i32 2
  %170 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = load i32, i32* %7, align 4
  %173 = zext i32 %172 to i64
  %174 = getelementptr inbounds [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %10, i64 0, i64 %173
  %175 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %174, i32 0, i32 1
  store i32 %171, i32* %175, align 8
  %176 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %177 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %176, i32 0, i32 2
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %7, align 4
  %181 = zext i32 %180 to i64
  %182 = getelementptr inbounds [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %10, i64 0, i64 %181
  %183 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %182, i32 0, i32 2
  store i32 %179, i32* %183, align 4
  %184 = load i32, i32* %7, align 4
  %185 = zext i32 %184 to i64
  %186 = getelementptr inbounds [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %10, i64 0, i64 %185
  %187 = call i32 @spi_message_add_tail(%struct.spi_transfer* %186, %struct.spi_message* %11)
  %188 = load i32, i32* %7, align 4
  %189 = add i32 %188, 1
  store i32 %189, i32* %7, align 4
  %190 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %191 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %191, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* %8, align 4
  %195 = add i32 %194, %193
  store i32 %195, i32* %8, align 4
  br label %196

196:                                              ; preds = %161, %93
  %197 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %198 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %256

202:                                              ; preds = %196
  %203 = load i32*, i32** %12, align 8
  %204 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %205 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %204, i32 0, i32 2
  %206 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds i32, i32* %203, i64 %208
  %210 = getelementptr inbounds i32, i32* %209, i64 1
  %211 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %212 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = call i32 @memset(i32* %210, i32 255, i32 %214)
  %216 = load i32*, i32** %12, align 8
  %217 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %218 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %217, i32 0, i32 2
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 8
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %216, i64 %221
  %223 = getelementptr inbounds i32, i32* %222, i64 1
  %224 = load i32, i32* %7, align 4
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %10, i64 0, i64 %225
  %227 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %226, i32 0, i32 0
  store i32* %223, i32** %227, align 8
  %228 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %229 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %228, i32 0, i32 1
  %230 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %229, i32 0, i32 0
  %231 = load i32, i32* %230, align 8
  %232 = load i32, i32* %7, align 4
  %233 = zext i32 %232 to i64
  %234 = getelementptr inbounds [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %10, i64 0, i64 %233
  %235 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %234, i32 0, i32 1
  store i32 %231, i32* %235, align 8
  %236 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %237 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %236, i32 0, i32 1
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 1
  %239 = load i32, i32* %238, align 4
  %240 = load i32, i32* %7, align 4
  %241 = zext i32 %240 to i64
  %242 = getelementptr inbounds [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %10, i64 0, i64 %241
  %243 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %242, i32 0, i32 2
  store i32 %239, i32* %243, align 4
  %244 = load i32, i32* %7, align 4
  %245 = zext i32 %244 to i64
  %246 = getelementptr inbounds [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %10, i64 0, i64 %245
  %247 = call i32 @spi_message_add_tail(%struct.spi_transfer* %246, %struct.spi_message* %11)
  %248 = load i32, i32* %7, align 4
  %249 = add i32 %248, 1
  store i32 %249, i32* %7, align 4
  %250 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %251 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %250, i32 0, i32 1
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 0
  %253 = load i32, i32* %252, align 8
  %254 = load i32, i32* %8, align 4
  %255 = add i32 %254, %253
  store i32 %255, i32* %8, align 4
  br label %256

256:                                              ; preds = %202, %196
  %257 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %258 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %257, i32 0, i32 0
  %259 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 8
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %262, label %326

262:                                              ; preds = %256
  %263 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %264 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %264, i32 0, i32 1
  %266 = load i64, i64* %265, align 8
  %267 = load i64, i64* @SPI_MEM_DATA_IN, align 8
  %268 = icmp eq i64 %266, %267
  br i1 %268, label %269, label %287

269:                                              ; preds = %262
  %270 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %271 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %270, i32 0, i32 0
  %272 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %271, i32 0, i32 3
  %273 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %272, i32 0, i32 1
  %274 = load i32, i32* %273, align 8
  %275 = load i32, i32* %7, align 4
  %276 = zext i32 %275 to i64
  %277 = getelementptr inbounds [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %10, i64 0, i64 %276
  %278 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %277, i32 0, i32 4
  store i32 %274, i32* %278, align 4
  %279 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %280 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %279, i32 0, i32 0
  %281 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %280, i32 0, i32 2
  %282 = load i32, i32* %281, align 8
  %283 = load i32, i32* %7, align 4
  %284 = zext i32 %283 to i64
  %285 = getelementptr inbounds [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %10, i64 0, i64 %284
  %286 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %285, i32 0, i32 3
  store i32 %282, i32* %286, align 8
  br label %305

287:                                              ; preds = %262
  %288 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %289 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %288, i32 0, i32 0
  %290 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %289, i32 0, i32 3
  %291 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %290, i32 0, i32 0
  %292 = load i32*, i32** %291, align 8
  %293 = load i32, i32* %7, align 4
  %294 = zext i32 %293 to i64
  %295 = getelementptr inbounds [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %10, i64 0, i64 %294
  %296 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %295, i32 0, i32 0
  store i32* %292, i32** %296, align 8
  %297 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %298 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %297, i32 0, i32 0
  %299 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %298, i32 0, i32 2
  %300 = load i32, i32* %299, align 8
  %301 = load i32, i32* %7, align 4
  %302 = zext i32 %301 to i64
  %303 = getelementptr inbounds [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %10, i64 0, i64 %302
  %304 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %303, i32 0, i32 2
  store i32 %300, i32* %304, align 4
  br label %305

305:                                              ; preds = %287, %269
  %306 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %307 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %307, i32 0, i32 0
  %309 = load i32, i32* %308, align 8
  %310 = load i32, i32* %7, align 4
  %311 = zext i32 %310 to i64
  %312 = getelementptr inbounds [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %10, i64 0, i64 %311
  %313 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %312, i32 0, i32 1
  store i32 %309, i32* %313, align 8
  %314 = load i32, i32* %7, align 4
  %315 = zext i32 %314 to i64
  %316 = getelementptr inbounds [4 x %struct.spi_transfer], [4 x %struct.spi_transfer]* %10, i64 0, i64 %315
  %317 = call i32 @spi_message_add_tail(%struct.spi_transfer* %316, %struct.spi_message* %11)
  %318 = load i32, i32* %7, align 4
  %319 = add i32 %318, 1
  store i32 %319, i32* %7, align 4
  %320 = load %struct.spi_mem_op*, %struct.spi_mem_op** %5, align 8
  %321 = getelementptr inbounds %struct.spi_mem_op, %struct.spi_mem_op* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %321, i32 0, i32 0
  %323 = load i32, i32* %322, align 8
  %324 = load i32, i32* %8, align 4
  %325 = add i32 %324, %323
  store i32 %325, i32* %8, align 4
  br label %326

326:                                              ; preds = %305, %256
  %327 = load %struct.spi_mem*, %struct.spi_mem** %4, align 8
  %328 = getelementptr inbounds %struct.spi_mem, %struct.spi_mem* %327, i32 0, i32 0
  %329 = load %struct.TYPE_14__*, %struct.TYPE_14__** %328, align 8
  %330 = call i32 @spi_sync(%struct.TYPE_14__* %329, %struct.spi_message* %11)
  store i32 %330, i32* %13, align 4
  %331 = load i32*, i32** %12, align 8
  %332 = call i32 @kfree(i32* %331)
  %333 = load i32, i32* %13, align 4
  %334 = icmp ne i32 %333, 0
  br i1 %334, label %335, label %337

335:                                              ; preds = %326
  %336 = load i32, i32* %13, align 4
  store i32 %336, i32* %3, align 4
  br label %346

337:                                              ; preds = %326
  %338 = getelementptr inbounds %struct.spi_message, %struct.spi_message* %11, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* %8, align 4
  %341 = icmp ne i32 %339, %340
  br i1 %341, label %342, label %345

342:                                              ; preds = %337
  %343 = load i32, i32* @EIO, align 4
  %344 = sub nsw i32 0, %343
  store i32 %344, i32* %3, align 4
  br label %346

345:                                              ; preds = %337
  store i32 0, i32* %3, align 4
  br label %346

346:                                              ; preds = %345, %342, %335, %90, %66, %45, %32, %25
  %347 = load i32, i32* %3, align 4
  ret i32 %347
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @spi_mem_check_op(%struct.spi_mem_op*) #2

declare dso_local i32 @spi_mem_internal_supports_op(%struct.spi_mem*, %struct.spi_mem_op*) #2

declare dso_local i32 @spi_mem_access_start(%struct.spi_mem*) #2

declare dso_local i32 @spi_mem_access_end(%struct.spi_mem*) #2

declare dso_local i32* @kzalloc(i32, i32) #2

declare dso_local i32 @spi_message_init(%struct.spi_message*) #2

declare dso_local i32 @spi_message_add_tail(%struct.spi_transfer*, %struct.spi_message*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @spi_sync(%struct.TYPE_14__*, %struct.spi_message*) #2

declare dso_local i32 @kfree(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
