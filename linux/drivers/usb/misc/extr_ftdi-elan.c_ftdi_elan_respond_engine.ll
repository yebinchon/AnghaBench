; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_respond_engine.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ftdi-elan.c_ftdi_elan_respond_engine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ftdi = type { i32*, i32, i32*, i32, i32, i32, %struct.u132_target*, %struct.TYPE_3__*, i64, %struct.u132_respond*, i32, i32, i32 }
%struct.u132_target = type { i32, i32, i32, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.u132_respond = type { i32*, i32, i64* }

@.str = private unnamed_addr constant [6 x i8] c" %02X\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c" ..\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"TIMED OUT with packet_bytes = %d with total %d bytes%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"ONLY %d bytes%s\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@EILSEQ = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [57 x i8] c"error = %d with packet_bytes = %d with total %d bytes%s\0A\00", align 1
@RESPOND_MASK = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [32 x i8] c"Uxxx unknown(%0X) value = %08X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ftdi*)* @ftdi_elan_respond_engine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftdi_elan_respond_engine(%struct.usb_ftdi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.usb_ftdi*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca [94 x i8], align 16
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.u132_target*, align 8
  %19 = alloca i32, align 4
  %20 = alloca [94 x i8], align 16
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca %struct.u132_respond*, align 8
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca %struct.u132_target*, align 8
  store %struct.usb_ftdi* %0, %struct.usb_ftdi** %3, align 8
  %33 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %34 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %37 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %35, i64 %39
  store i32* %40, i32** %4, align 8
  store i32 0, i32* %5, align 4
  store i32 1, i32* %6, align 4
  store i32 3, i32* %7, align 4
  br label %41

41:                                               ; preds = %185, %1
  store i32 0, i32* %8, align 4
  %42 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %43 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %42, i32 0, i32 7
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %46 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %45, i32 0, i32 7
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %49 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %48, i32 0, i32 12
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @usb_rcvbulkpipe(%struct.TYPE_3__* %47, i32 %50)
  %52 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %53 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %56 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %55, i32 0, i32 11
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @usb_bulk_msg(%struct.TYPE_3__* %44, i32 %51, i32* %54, i32 %57, i32* %8, i32 500)
  store i32 %58, i32* %9, align 4
  %59 = getelementptr inbounds [94 x i8], [94 x i8]* %10, i64 0, i64 0
  store i8* %59, i8** %11, align 8
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %12, align 4
  %61 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %62 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %61, i32 0, i32 2
  %63 = load i32*, i32** %62, align 8
  store i32* %63, i32** %13, align 8
  store i32 31, i32* %14, align 4
  %64 = getelementptr inbounds [94 x i8], [94 x i8]* %10, i64 0, i64 0
  store i8 0, i8* %64, align 16
  br label %65

65:                                               ; preds = %96, %41
  %66 = load i32, i32* %14, align 4
  %67 = add nsw i32 %66, -1
  store i32 %67, i32* %14, align 4
  %68 = icmp sgt i32 %66, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %65
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, -1
  store i32 %71, i32* %12, align 4
  %72 = icmp sgt i32 %70, 0
  br label %73

73:                                               ; preds = %69, %65
  %74 = phi i1 [ false, %65 ], [ %72, %69 ]
  br i1 %74, label %75, label %97

75:                                               ; preds = %73
  %76 = load i32, i32* %14, align 4
  %77 = icmp sgt i32 %76, 0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load i32, i32* %12, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %90

81:                                               ; preds = %78, %75
  %82 = load i8*, i8** %11, align 8
  %83 = load i32*, i32** %13, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %13, align 8
  %85 = load i32, i32* %83, align 4
  %86 = call i32 (i8*, i8*, ...) @sprintf(i8* %82, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %85)
  %87 = load i8*, i8** %11, align 8
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  store i8* %89, i8** %11, align 8
  br label %96

90:                                               ; preds = %78
  %91 = load i8*, i8** %11, align 8
  %92 = call i32 (i8*, i8*, ...) @sprintf(i8* %91, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %93 = load i8*, i8** %11, align 8
  %94 = sext i32 %92 to i64
  %95 = getelementptr inbounds i8, i8* %93, i64 %94
  store i8* %95, i8** %11, align 8
  br label %96

96:                                               ; preds = %90, %81
  br label %65

97:                                               ; preds = %73
  %98 = load i32, i32* %8, align 4
  %99 = icmp sgt i32 %98, 2
  br i1 %99, label %100, label %107

100:                                              ; preds = %97
  %101 = load i32, i32* %8, align 4
  %102 = sub nsw i32 %101, 2
  %103 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %104 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 8
  %105 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %106 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %105, i32 0, i32 4
  store i32 1, i32* %106, align 4
  br label %186

107:                                              ; preds = %97
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @ETIMEDOUT, align 4
  %110 = sub nsw i32 0, %109
  %111 = icmp eq i32 %108, %110
  br i1 %111, label %112, label %149

112:                                              ; preds = %107
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, -1
  store i32 %114, i32* %7, align 4
  %115 = icmp sgt i32 %113, 0
  br i1 %115, label %116, label %125

116:                                              ; preds = %112
  %117 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %118 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %117, i32 0, i32 7
  %119 = load %struct.TYPE_3__*, %struct.TYPE_3__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32, i32* %8, align 4
  %122 = load i32, i32* %5, align 4
  %123 = getelementptr inbounds [94 x i8], [94 x i8]* %10, i64 0, i64 0
  %124 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %120, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %121, i32 %122, i8* %123)
  br label %185

125:                                              ; preds = %112
  %126 = load i32, i32* %5, align 4
  %127 = icmp sgt i32 %126, 0
  br i1 %127, label %128, label %138

128:                                              ; preds = %125
  %129 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %130 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %129, i32 0, i32 7
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i32 0, i32 0
  %133 = load i32, i32* %5, align 4
  %134 = getelementptr inbounds [94 x i8], [94 x i8]* %10, i64 0, i64 0
  %135 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %132, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %133, i8* %134)
  %136 = load i32, i32* @ENOMEM, align 4
  %137 = sub nsw i32 0, %136
  store i32 %137, i32* %2, align 4
  br label %537

138:                                              ; preds = %125
  %139 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %140 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %139, i32 0, i32 7
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i32 0, i32 0
  %143 = load i32, i32* %8, align 4
  %144 = load i32, i32* %5, align 4
  %145 = getelementptr inbounds [94 x i8], [94 x i8]* %10, i64 0, i64 0
  %146 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %142, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %143, i32 %144, i8* %145)
  %147 = load i32, i32* @ENOMEM, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %2, align 4
  br label %537

149:                                              ; preds = %107
  %150 = load i32, i32* %9, align 4
  %151 = load i32, i32* @EILSEQ, align 4
  %152 = sub nsw i32 0, %151
  %153 = icmp eq i32 %150, %152
  br i1 %153, label %154, label %165

154:                                              ; preds = %149
  %155 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %156 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %155, i32 0, i32 7
  %157 = load %struct.TYPE_3__*, %struct.TYPE_3__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %157, i32 0, i32 0
  %159 = load i32, i32* %9, align 4
  %160 = load i32, i32* %8, align 4
  %161 = load i32, i32* %5, align 4
  %162 = getelementptr inbounds [94 x i8], [94 x i8]* %10, i64 0, i64 0
  %163 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %158, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %159, i32 %160, i32 %161, i8* %162)
  %164 = load i32, i32* %9, align 4
  store i32 %164, i32* %2, align 4
  br label %537

165:                                              ; preds = %149
  %166 = load i32, i32* %9, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %179

168:                                              ; preds = %165
  %169 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %170 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %169, i32 0, i32 7
  %171 = load %struct.TYPE_3__*, %struct.TYPE_3__** %170, align 8
  %172 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %171, i32 0, i32 0
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* %8, align 4
  %175 = load i32, i32* %5, align 4
  %176 = getelementptr inbounds [94 x i8], [94 x i8]* %10, i64 0, i64 0
  %177 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %172, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.4, i64 0, i64 0), i32 %173, i32 %174, i32 %175, i8* %176)
  %178 = load i32, i32* %9, align 4
  store i32 %178, i32* %2, align 4
  br label %537

179:                                              ; preds = %165
  %180 = load i32, i32* %6, align 4
  %181 = add nsw i32 %180, -1
  store i32 %181, i32* %6, align 4
  %182 = icmp sgt i32 %180, 0
  br i1 %182, label %183, label %184

183:                                              ; preds = %179
  br label %185

184:                                              ; preds = %179
  store i32 0, i32* %2, align 4
  br label %537

185:                                              ; preds = %536, %183, %116
  br label %41

186:                                              ; preds = %528, %520, %432, %423, %303, %229, %215, %100
  %187 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %188 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 8
  %190 = icmp sgt i32 %189, 0
  br i1 %190, label %191, label %536

191:                                              ; preds = %186
  %192 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %193 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %192, i32 0, i32 2
  %194 = load i32*, i32** %193, align 8
  %195 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %196 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %195, i32 0, i32 4
  %197 = load i32, i32* %196, align 4
  %198 = add nsw i32 %197, 1
  store i32 %198, i32* %196, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %194, i64 %199
  %201 = load i32, i32* %200, align 4
  store i32 %201, i32* %15, align 4
  %202 = load i32, i32* %5, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %5, align 4
  %204 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %205 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %204, i32 0, i32 3
  %206 = load i32, i32* %205, align 8
  %207 = sub nsw i32 %206, 1
  store i32 %207, i32* %205, align 8
  %208 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %209 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %191
  %213 = load i32, i32* %15, align 4
  %214 = icmp eq i32 %213, 255
  br i1 %214, label %215, label %216

215:                                              ; preds = %212
  br label %186

216:                                              ; preds = %212, %191
  %217 = load i32, i32* %15, align 4
  %218 = load i32*, i32** %4, align 8
  %219 = getelementptr inbounds i32, i32* %218, i32 1
  store i32* %219, i32** %4, align 8
  store i32 %217, i32* %218, align 4
  br label %220

220:                                              ; preds = %216
  %221 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %222 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %221, i32 0, i32 1
  %223 = load i32, i32* %222, align 8
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %222, align 8
  %225 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %226 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %225, i32 0, i32 5
  %227 = load i32, i32* %226, align 8
  %228 = icmp slt i32 %224, %227
  br i1 %228, label %229, label %230

229:                                              ; preds = %220
  br label %186

230:                                              ; preds = %220
  %231 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %232 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %231, i32 0, i32 8
  %233 = load i64, i64* %232, align 8
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %321

235:                                              ; preds = %230
  %236 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %237 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %236, i32 0, i32 0
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 0
  %240 = load i32, i32* %239, align 4
  %241 = ashr i32 %240, 5
  %242 = and i32 %241, 3
  store i32 %242, i32* %16, align 4
  %243 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %244 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = getelementptr inbounds i32, i32* %245, i64 2
  %247 = load i32, i32* %246, align 4
  %248 = shl i32 %247, 8
  %249 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %250 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %249, i32 0, i32 0
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 1
  %253 = load i32, i32* %252, align 4
  %254 = or i32 %248, %253
  store i32 %254, i32* %17, align 4
  %255 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %256 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %255, i32 0, i32 6
  %257 = load %struct.u132_target*, %struct.u132_target** %256, align 8
  %258 = load i32, i32* %16, align 4
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %257, i64 %259
  store %struct.u132_target* %260, %struct.u132_target** %18, align 8
  %261 = load i32, i32* %17, align 4
  %262 = ashr i32 %261, 0
  %263 = and i32 %262, 2047
  store i32 %263, i32* %19, align 4
  %264 = getelementptr inbounds [94 x i8], [94 x i8]* %20, i64 0, i64 0
  store i8* %264, i8** %21, align 8
  %265 = load i32, i32* %19, align 4
  store i32 %265, i32* %22, align 4
  %266 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %267 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %266, i32 0, i32 0
  %268 = load i32*, i32** %267, align 8
  %269 = getelementptr inbounds i32, i32* %268, i64 4
  store i32* %269, i32** %23, align 8
  store i32 31, i32* %24, align 4
  %270 = getelementptr inbounds [94 x i8], [94 x i8]* %20, i64 0, i64 0
  store i8 0, i8* %270, align 16
  br label %271

271:                                              ; preds = %302, %235
  %272 = load i32, i32* %24, align 4
  %273 = add nsw i32 %272, -1
  store i32 %273, i32* %24, align 4
  %274 = icmp sgt i32 %272, 0
  br i1 %274, label %275, label %279

275:                                              ; preds = %271
  %276 = load i32, i32* %22, align 4
  %277 = add nsw i32 %276, -1
  store i32 %277, i32* %22, align 4
  %278 = icmp sgt i32 %276, 0
  br label %279

279:                                              ; preds = %275, %271
  %280 = phi i1 [ false, %271 ], [ %278, %275 ]
  br i1 %280, label %281, label %303

281:                                              ; preds = %279
  %282 = load i32, i32* %24, align 4
  %283 = icmp sgt i32 %282, 0
  br i1 %283, label %287, label %284

284:                                              ; preds = %281
  %285 = load i32, i32* %22, align 4
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %287, label %296

287:                                              ; preds = %284, %281
  %288 = load i8*, i8** %21, align 8
  %289 = load i32*, i32** %23, align 8
  %290 = getelementptr inbounds i32, i32* %289, i32 1
  store i32* %290, i32** %23, align 8
  %291 = load i32, i32* %289, align 4
  %292 = call i32 (i8*, i8*, ...) @sprintf(i8* %288, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %291)
  %293 = load i8*, i8** %21, align 8
  %294 = sext i32 %292 to i64
  %295 = getelementptr inbounds i8, i8* %293, i64 %294
  store i8* %295, i8** %21, align 8
  br label %302

296:                                              ; preds = %284
  %297 = load i8*, i8** %21, align 8
  %298 = call i32 (i8*, i8*, ...) @sprintf(i8* %297, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %299 = load i8*, i8** %21, align 8
  %300 = sext i32 %298 to i64
  %301 = getelementptr inbounds i8, i8* %299, i64 %300
  store i8* %301, i8** %21, align 8
  br label %302

302:                                              ; preds = %296, %287
  br label %271

303:                                              ; preds = %279
  %304 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %305 = load %struct.u132_target*, %struct.u132_target** %18, align 8
  %306 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %307 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %306, i32 0, i32 0
  %308 = load i32*, i32** %307, align 8
  %309 = getelementptr inbounds i32, i32* %308, i64 4
  %310 = load i32, i32* %19, align 4
  %311 = call i32 @ftdi_elan_do_callback(%struct.usb_ftdi* %304, %struct.u132_target* %305, i32* %309, i32 %310)
  %312 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %313 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %312, i32 0, i32 1
  store i32 0, i32* %313, align 8
  %314 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %315 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %314, i32 0, i32 5
  store i32 4, i32* %315, align 8
  %316 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %317 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %316, i32 0, i32 8
  store i64 0, i64* %317, align 8
  %318 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %319 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %318, i32 0, i32 0
  %320 = load i32*, i32** %319, align 8
  store i32* %320, i32** %4, align 8
  br label %186

321:                                              ; preds = %230
  %322 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %323 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %322, i32 0, i32 5
  %324 = load i32, i32* %323, align 8
  %325 = icmp eq i32 %324, 8
  br i1 %325, label %326, label %424

326:                                              ; preds = %321
  %327 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %328 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %327, i32 0, i32 10
  %329 = load i32, i32* %328, align 8
  %330 = add nsw i32 %329, 1
  store i32 %330, i32* %328, align 8
  store i32 %329, i32* %26, align 4
  %331 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %332 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %331, i32 0, i32 9
  %333 = load %struct.u132_respond*, %struct.u132_respond** %332, align 8
  %334 = load i32, i32* @RESPOND_MASK, align 4
  %335 = load i32, i32* %26, align 4
  %336 = and i32 %334, %335
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds %struct.u132_respond, %struct.u132_respond* %333, i64 %337
  store %struct.u132_respond* %338, %struct.u132_respond** %27, align 8
  %339 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %340 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %339, i32 0, i32 0
  %341 = load i32*, i32** %340, align 8
  %342 = getelementptr inbounds i32, i32* %341, i64 7
  %343 = load i32, i32* %342, align 4
  store i32 %343, i32* %28, align 4
  %344 = load i32, i32* %28, align 4
  %345 = shl i32 %344, 8
  store i32 %345, i32* %28, align 4
  %346 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %347 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %346, i32 0, i32 0
  %348 = load i32*, i32** %347, align 8
  %349 = getelementptr inbounds i32, i32* %348, i64 6
  %350 = load i32, i32* %349, align 4
  %351 = load i32, i32* %28, align 4
  %352 = or i32 %351, %350
  store i32 %352, i32* %28, align 4
  %353 = load i32, i32* %28, align 4
  %354 = shl i32 %353, 8
  store i32 %354, i32* %28, align 4
  %355 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %356 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %355, i32 0, i32 0
  %357 = load i32*, i32** %356, align 8
  %358 = getelementptr inbounds i32, i32* %357, i64 5
  %359 = load i32, i32* %358, align 4
  %360 = load i32, i32* %28, align 4
  %361 = or i32 %360, %359
  store i32 %361, i32* %28, align 4
  %362 = load i32, i32* %28, align 4
  %363 = shl i32 %362, 8
  store i32 %363, i32* %28, align 4
  %364 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %365 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %364, i32 0, i32 0
  %366 = load i32*, i32** %365, align 8
  %367 = getelementptr inbounds i32, i32* %366, i64 4
  %368 = load i32, i32* %367, align 4
  %369 = load i32, i32* %28, align 4
  %370 = or i32 %369, %368
  store i32 %370, i32* %28, align 4
  %371 = load i32, i32* %28, align 4
  %372 = load %struct.u132_respond*, %struct.u132_respond** %27, align 8
  %373 = getelementptr inbounds %struct.u132_respond, %struct.u132_respond* %372, i32 0, i32 0
  %374 = load i32*, i32** %373, align 8
  store i32 %371, i32* %374, align 4
  %375 = load %struct.u132_respond*, %struct.u132_respond** %27, align 8
  %376 = getelementptr inbounds %struct.u132_respond, %struct.u132_respond* %375, i32 0, i32 2
  %377 = load i64*, i64** %376, align 8
  store i64 0, i64* %377, align 8
  %378 = load %struct.u132_respond*, %struct.u132_respond** %27, align 8
  %379 = getelementptr inbounds %struct.u132_respond, %struct.u132_respond* %378, i32 0, i32 1
  %380 = call i32 @complete(i32* %379)
  %381 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %382 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %381, i32 0, i32 1
  store i32 0, i32* %382, align 8
  %383 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %384 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %383, i32 0, i32 5
  store i32 4, i32* %384, align 8
  %385 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %386 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %385, i32 0, i32 8
  store i64 0, i64* %386, align 8
  %387 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %388 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %387, i32 0, i32 0
  %389 = load i32*, i32** %388, align 8
  store i32* %389, i32** %4, align 8
  %390 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %391 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %390, i32 0, i32 0
  %392 = load i32*, i32** %391, align 8
  %393 = getelementptr inbounds i32, i32* %392, i64 0
  %394 = load i32, i32* %393, align 4
  %395 = ashr i32 %394, 0
  %396 = and i32 %395, 15
  store i32 %396, i32* %25, align 4
  %397 = load i32, i32* %25, align 4
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %400

399:                                              ; preds = %326
  br label %423

400:                                              ; preds = %326
  %401 = load i32, i32* %25, align 4
  %402 = icmp eq i32 %401, 2
  br i1 %402, label %403, label %404

403:                                              ; preds = %400
  br label %422

404:                                              ; preds = %400
  %405 = load i32, i32* %25, align 4
  %406 = icmp eq i32 %405, 6
  br i1 %406, label %407, label %408

407:                                              ; preds = %404
  br label %421

408:                                              ; preds = %404
  %409 = load i32, i32* %25, align 4
  %410 = icmp eq i32 %409, 10
  br i1 %410, label %411, label %412

411:                                              ; preds = %408
  br label %420

412:                                              ; preds = %408
  %413 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %414 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %413, i32 0, i32 7
  %415 = load %struct.TYPE_3__*, %struct.TYPE_3__** %414, align 8
  %416 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %415, i32 0, i32 0
  %417 = load i32, i32* %25, align 4
  %418 = load i32, i32* %28, align 4
  %419 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %416, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.5, i64 0, i64 0), i32 %417, i32 %418)
  br label %420

420:                                              ; preds = %412, %411
  br label %421

421:                                              ; preds = %420, %407
  br label %422

422:                                              ; preds = %421, %403
  br label %423

423:                                              ; preds = %422, %399
  br label %186

424:                                              ; preds = %321
  %425 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %426 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %425, i32 0, i32 0
  %427 = load i32*, i32** %426, align 8
  %428 = getelementptr inbounds i32, i32* %427, i64 0
  %429 = load i32, i32* %428, align 4
  %430 = and i32 %429, 128
  %431 = icmp eq i32 %430, 0
  br i1 %431, label %432, label %435

432:                                              ; preds = %424
  %433 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %434 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %433, i32 0, i32 5
  store i32 8, i32* %434, align 8
  br label %186

435:                                              ; preds = %424
  %436 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %437 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %436, i32 0, i32 0
  %438 = load i32*, i32** %437, align 8
  %439 = getelementptr inbounds i32, i32* %438, i64 0
  %440 = load i32, i32* %439, align 4
  %441 = ashr i32 %440, 5
  %442 = and i32 %441, 3
  store i32 %442, i32* %29, align 4
  %443 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %444 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %443, i32 0, i32 0
  %445 = load i32*, i32** %444, align 8
  %446 = getelementptr inbounds i32, i32* %445, i64 0
  %447 = load i32, i32* %446, align 4
  %448 = ashr i32 %447, 0
  %449 = and i32 %448, 3
  store i32 %449, i32* %30, align 4
  %450 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %451 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %450, i32 0, i32 0
  %452 = load i32*, i32** %451, align 8
  %453 = getelementptr inbounds i32, i32* %452, i64 2
  %454 = load i32, i32* %453, align 4
  %455 = shl i32 %454, 8
  %456 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %457 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %456, i32 0, i32 0
  %458 = load i32*, i32** %457, align 8
  %459 = getelementptr inbounds i32, i32* %458, i64 1
  %460 = load i32, i32* %459, align 4
  %461 = or i32 %455, %460
  store i32 %461, i32* %31, align 4
  %462 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %463 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %462, i32 0, i32 6
  %464 = load %struct.u132_target*, %struct.u132_target** %463, align 8
  %465 = load i32, i32* %29, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %464, i64 %466
  store %struct.u132_target* %467, %struct.u132_target** %32, align 8
  %468 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %469 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %468, i32 0, i32 0
  %470 = load i32*, i32** %469, align 8
  %471 = getelementptr inbounds i32, i32* %470, i64 0
  %472 = load i32, i32* %471, align 4
  %473 = ashr i32 %472, 3
  %474 = and i32 %473, 1
  %475 = load %struct.u132_target*, %struct.u132_target** %32, align 8
  %476 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %475, i32 0, i32 0
  store i32 %474, i32* %476, align 4
  %477 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %478 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %477, i32 0, i32 0
  %479 = load i32*, i32** %478, align 8
  %480 = getelementptr inbounds i32, i32* %479, i64 0
  %481 = load i32, i32* %480, align 4
  %482 = ashr i32 %481, 2
  %483 = and i32 %482, 1
  %484 = load %struct.u132_target*, %struct.u132_target** %32, align 8
  %485 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %484, i32 0, i32 1
  store i32 %483, i32* %485, align 4
  %486 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %487 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %486, i32 0, i32 0
  %488 = load i32*, i32** %487, align 8
  %489 = getelementptr inbounds i32, i32* %488, i64 3
  %490 = load i32, i32* %489, align 4
  %491 = ashr i32 %490, 6
  %492 = and i32 %491, 3
  %493 = load %struct.u132_target*, %struct.u132_target** %32, align 8
  %494 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %493, i32 0, i32 2
  store i32 %492, i32* %494, align 4
  %495 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %496 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %495, i32 0, i32 0
  %497 = load i32*, i32** %496, align 8
  %498 = getelementptr inbounds i32, i32* %497, i64 3
  %499 = load i32, i32* %498, align 4
  %500 = ashr i32 %499, 4
  %501 = and i32 %500, 3
  %502 = load %struct.u132_target*, %struct.u132_target** %32, align 8
  %503 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %502, i32 0, i32 3
  store i32 %501, i32* %503, align 4
  %504 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %505 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %504, i32 0, i32 0
  %506 = load i32*, i32** %505, align 8
  %507 = getelementptr inbounds i32, i32* %506, i64 3
  %508 = load i32, i32* %507, align 4
  %509 = ashr i32 %508, 0
  %510 = and i32 %509, 15
  %511 = load %struct.u132_target*, %struct.u132_target** %32, align 8
  %512 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %511, i32 0, i32 4
  store i32 %510, i32* %512, align 4
  %513 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %514 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %513, i32 0, i32 0
  %515 = load i32*, i32** %514, align 8
  %516 = getelementptr inbounds i32, i32* %515, i64 0
  %517 = load i32, i32* %516, align 4
  %518 = and i32 %517, 16
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %520, label %528

520:                                              ; preds = %435
  %521 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %522 = load %struct.u132_target*, %struct.u132_target** %32, align 8
  %523 = load i32, i32* %31, align 4
  %524 = load i32, i32* %29, align 4
  %525 = load i32, i32* %30, align 4
  %526 = load i32*, i32** %4, align 8
  %527 = call i32* @have_ed_set_response(%struct.usb_ftdi* %521, %struct.u132_target* %522, i32 %523, i32 %524, i32 %525, i32* %526)
  store i32* %527, i32** %4, align 8
  br label %186

528:                                              ; preds = %435
  %529 = load %struct.usb_ftdi*, %struct.usb_ftdi** %3, align 8
  %530 = load %struct.u132_target*, %struct.u132_target** %32, align 8
  %531 = load i32, i32* %31, align 4
  %532 = load i32, i32* %29, align 4
  %533 = load i32, i32* %30, align 4
  %534 = load i32*, i32** %4, align 8
  %535 = call i32* @have_ed_get_response(%struct.usb_ftdi* %529, %struct.u132_target* %530, i32 %531, i32 %532, i32 %533, i32* %534)
  store i32* %535, i32** %4, align 8
  br label %186

536:                                              ; preds = %186
  br label %185

537:                                              ; preds = %184, %168, %154, %138, %128
  %538 = load i32, i32* %2, align 4
  ret i32 %538
}

declare dso_local i32 @usb_bulk_msg(%struct.TYPE_3__*, i32, i32*, i32, i32*, i32) #1

declare dso_local i32 @usb_rcvbulkpipe(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @ftdi_elan_do_callback(%struct.usb_ftdi*, %struct.u132_target*, i32*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32* @have_ed_set_response(%struct.usb_ftdi*, %struct.u132_target*, i32, i32, i32, i32*) #1

declare dso_local i32* @have_ed_get_response(%struct.usb_ftdi*, %struct.u132_target*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
