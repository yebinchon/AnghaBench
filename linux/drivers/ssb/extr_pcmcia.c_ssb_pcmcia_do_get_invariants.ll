; ModuleID = '/home/carl/AnghaBench/linux/drivers/ssb/extr_pcmcia.c_ssb_pcmcia_do_get_invariants.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/ssb/extr_pcmcia.c_ssb_pcmcia_do_get_invariants.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_device = type { i32 }
%struct.TYPE_5__ = type { i32, i32* }
%struct.ssb_init_invariants = type { %struct.ssb_boardinfo, %struct.ssb_sprom }
%struct.ssb_boardinfo = type { i32 }
%struct.ssb_sprom = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"VEN tpl < 1\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"id tpl size\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"boardrev tpl size\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"pa tpl size\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"ccode tpl size\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"ant tpl size\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"antg tpl size\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"bfl tpl size\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"leds tpl size\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [47 x i8] c"PCMCIA: Failed to fetch device invariants: %s\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_device*, %struct.TYPE_5__*, i8*)* @ssb_pcmcia_do_get_invariants to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ssb_pcmcia_do_get_invariants(%struct.pcmcia_device* %0, %struct.TYPE_5__* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcmcia_device*, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ssb_init_invariants*, align 8
  %9 = alloca %struct.ssb_sprom*, align 8
  %10 = alloca %struct.ssb_boardinfo*, align 8
  %11 = alloca i8*, align 8
  store %struct.pcmcia_device* %0, %struct.pcmcia_device** %5, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %7, align 8
  %13 = bitcast i8* %12 to %struct.ssb_init_invariants*
  store %struct.ssb_init_invariants* %13, %struct.ssb_init_invariants** %8, align 8
  %14 = load %struct.ssb_init_invariants*, %struct.ssb_init_invariants** %8, align 8
  %15 = getelementptr inbounds %struct.ssb_init_invariants, %struct.ssb_init_invariants* %14, i32 0, i32 1
  store %struct.ssb_sprom* %15, %struct.ssb_sprom** %9, align 8
  %16 = load %struct.ssb_init_invariants*, %struct.ssb_init_invariants** %8, align 8
  %17 = getelementptr inbounds %struct.ssb_init_invariants, %struct.ssb_init_invariants* %16, i32 0, i32 0
  store %struct.ssb_boardinfo* %17, %struct.ssb_boardinfo** %10, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %20, 1
  %22 = zext i1 %21 to i32
  %23 = call i32 @GOTO_ERROR_ON(i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %293 [
    i32 131, label %29
    i32 133, label %57
    i32 128, label %71
    i32 129, label %155
    i32 132, label %156
    i32 136, label %170
    i32 135, label %191
    i32 134, label %230
    i32 130, label %258
  ]

29:                                               ; preds = %3
  %30 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 5
  br i1 %33, label %34, label %39

34:                                               ; preds = %29
  %35 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 7
  br label %39

39:                                               ; preds = %34, %29
  %40 = phi i1 [ false, %29 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @GOTO_ERROR_ON(i32 %41, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 2
  %52 = load i32, i32* %51, align 4
  %53 = shl i32 %52, 8
  %54 = or i32 %47, %53
  %55 = load %struct.ssb_boardinfo*, %struct.ssb_boardinfo** %10, align 8
  %56 = getelementptr inbounds %struct.ssb_boardinfo, %struct.ssb_boardinfo* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  br label %293

57:                                               ; preds = %3
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 2
  %62 = zext i1 %61 to i32
  %63 = call i32 @GOTO_ERROR_ON(i32 %62, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %70 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  br label %293

71:                                               ; preds = %3
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %74, 9
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 10
  br label %81

81:                                               ; preds = %76, %71
  %82 = phi i1 [ false, %71 ], [ %80, %76 ]
  %83 = zext i1 %82 to i32
  %84 = call i32 @GOTO_ERROR_ON(i32 %83, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %85 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  %94 = load i32, i32* %93, align 4
  %95 = shl i32 %94, 8
  %96 = or i32 %89, %95
  %97 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %98 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %97, i32 0, i32 1
  store i32 %96, i32* %98, align 4
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 3
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 4
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 %108, 8
  %110 = or i32 %103, %109
  %111 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %112 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 4
  %113 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %114 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %113, i32 0, i32 1
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 5
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 1
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 6
  %122 = load i32, i32* %121, align 4
  %123 = shl i32 %122, 8
  %124 = or i32 %117, %123
  %125 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %126 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %125, i32 0, i32 3
  store i32 %124, i32* %126, align 4
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 7
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %133 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %132, i32 0, i32 4
  store i32 %131, i32* %133, align 4
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i32 0, i32 1
  %136 = load i32*, i32** %135, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 7
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %140 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %139, i32 0, i32 5
  store i32 %138, i32* %140, align 4
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 1
  %143 = load i32*, i32** %142, align 8
  %144 = getelementptr inbounds i32, i32* %143, i64 8
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %147 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %146, i32 0, i32 6
  store i32 %145, i32* %147, align 4
  %148 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %148, i32 0, i32 1
  %150 = load i32*, i32** %149, align 8
  %151 = getelementptr inbounds i32, i32* %150, i64 8
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %154 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %153, i32 0, i32 7
  store i32 %152, i32* %154, align 4
  br label %293

155:                                              ; preds = %3
  br label %293

156:                                              ; preds = %3
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = icmp ne i32 %159, 2
  %161 = zext i1 %160 to i32
  %162 = call i32 @GOTO_ERROR_ON(i32 %161, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %163 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %164 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %163, i32 0, i32 1
  %165 = load i32*, i32** %164, align 8
  %166 = getelementptr inbounds i32, i32* %165, i64 1
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %169 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %168, i32 0, i32 8
  store i32 %167, i32* %169, align 4
  br label %293

170:                                              ; preds = %3
  %171 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %172 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = icmp ne i32 %173, 2
  %175 = zext i1 %174 to i32
  %176 = call i32 @GOTO_ERROR_ON(i32 %175, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 1
  %179 = load i32*, i32** %178, align 8
  %180 = getelementptr inbounds i32, i32* %179, i64 1
  %181 = load i32, i32* %180, align 4
  %182 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %183 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %182, i32 0, i32 9
  store i32 %181, i32* %183, align 4
  %184 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %184, i32 0, i32 1
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %190 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %189, i32 0, i32 10
  store i32 %188, i32* %190, align 4
  br label %293

191:                                              ; preds = %3
  %192 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 8
  %195 = icmp ne i32 %194, 2
  %196 = zext i1 %195 to i32
  %197 = call i32 @GOTO_ERROR_ON(i32 %196, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %198 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %199 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %198, i32 0, i32 1
  %200 = load i32*, i32** %199, align 8
  %201 = getelementptr inbounds i32, i32* %200, i64 1
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %204 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %203, i32 0, i32 16
  %205 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %204, i32 0, i32 0
  store i32 %202, i32* %205, align 4
  %206 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %206, i32 0, i32 1
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 1
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %212 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %211, i32 0, i32 16
  %213 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %212, i32 0, i32 1
  store i32 %210, i32* %213, align 4
  %214 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %215 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %214, i32 0, i32 1
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 1
  %218 = load i32, i32* %217, align 4
  %219 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %220 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %219, i32 0, i32 16
  %221 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %220, i32 0, i32 2
  store i32 %218, i32* %221, align 4
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %223 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %222, i32 0, i32 1
  %224 = load i32*, i32** %223, align 8
  %225 = getelementptr inbounds i32, i32* %224, i64 1
  %226 = load i32, i32* %225, align 4
  %227 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %228 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %227, i32 0, i32 16
  %229 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %228, i32 0, i32 3
  store i32 %226, i32* %229, align 4
  br label %293

230:                                              ; preds = %3
  %231 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %232 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = icmp ne i32 %233, 3
  br i1 %234, label %235, label %240

235:                                              ; preds = %230
  %236 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %237 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %236, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = icmp ne i32 %238, 5
  br label %240

240:                                              ; preds = %235, %230
  %241 = phi i1 [ false, %230 ], [ %239, %235 ]
  %242 = zext i1 %241 to i32
  %243 = call i32 @GOTO_ERROR_ON(i32 %242, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0))
  %244 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %245 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %244, i32 0, i32 1
  %246 = load i32*, i32** %245, align 8
  %247 = getelementptr inbounds i32, i32* %246, i64 1
  %248 = load i32, i32* %247, align 4
  %249 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %250 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %249, i32 0, i32 1
  %251 = load i32*, i32** %250, align 8
  %252 = getelementptr inbounds i32, i32* %251, i64 2
  %253 = load i32, i32* %252, align 4
  %254 = shl i32 %253, 8
  %255 = or i32 %248, %254
  %256 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %257 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %256, i32 0, i32 11
  store i32 %255, i32* %257, align 4
  br label %293

258:                                              ; preds = %3
  %259 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %260 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %259, i32 0, i32 0
  %261 = load i32, i32* %260, align 8
  %262 = icmp ne i32 %261, 5
  %263 = zext i1 %262 to i32
  %264 = call i32 @GOTO_ERROR_ON(i32 %263, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0))
  %265 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %266 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %265, i32 0, i32 1
  %267 = load i32*, i32** %266, align 8
  %268 = getelementptr inbounds i32, i32* %267, i64 1
  %269 = load i32, i32* %268, align 4
  %270 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %271 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %270, i32 0, i32 12
  store i32 %269, i32* %271, align 4
  %272 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %273 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %272, i32 0, i32 1
  %274 = load i32*, i32** %273, align 8
  %275 = getelementptr inbounds i32, i32* %274, i64 2
  %276 = load i32, i32* %275, align 4
  %277 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %278 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %277, i32 0, i32 13
  store i32 %276, i32* %278, align 4
  %279 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %280 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %279, i32 0, i32 1
  %281 = load i32*, i32** %280, align 8
  %282 = getelementptr inbounds i32, i32* %281, i64 3
  %283 = load i32, i32* %282, align 4
  %284 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %285 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %284, i32 0, i32 14
  store i32 %283, i32* %285, align 4
  %286 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %287 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %286, i32 0, i32 1
  %288 = load i32*, i32** %287, align 8
  %289 = getelementptr inbounds i32, i32* %288, i64 4
  %290 = load i32, i32* %289, align 4
  %291 = load %struct.ssb_sprom*, %struct.ssb_sprom** %9, align 8
  %292 = getelementptr inbounds %struct.ssb_sprom, %struct.ssb_sprom* %291, i32 0, i32 15
  store i32 %290, i32* %292, align 4
  br label %293

293:                                              ; preds = %3, %258, %240, %191, %170, %156, %155, %81, %57, %39
  %294 = load i32, i32* @ENOSPC, align 4
  %295 = sub nsw i32 0, %294
  store i32 %295, i32* %4, align 4
  br label %301

296:                                              ; No predecessors!
  %297 = load i8*, i8** %11, align 8
  %298 = call i32 @pr_err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i8* %297)
  %299 = load i32, i32* @ENODEV, align 4
  %300 = sub nsw i32 0, %299
  store i32 %300, i32* %4, align 4
  br label %301

301:                                              ; preds = %296, %293
  %302 = load i32, i32* %4, align 4
  ret i32 %302
}

declare dso_local i32 @GOTO_ERROR_ON(i32, i8*) #1

declare dso_local i32 @pr_err(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
