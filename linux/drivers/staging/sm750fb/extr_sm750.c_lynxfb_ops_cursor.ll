; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750.c_lynxfb_ops_cursor.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750.c_lynxfb_ops_cursor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_5__, %struct.TYPE_4__, %struct.lynxfb_par* }
%struct.TYPE_5__ = type { i32*, i32*, i32* }
%struct.TYPE_4__ = type { i64, i64 }
%struct.lynxfb_par = type { %struct.lynxfb_crtc }
%struct.lynxfb_crtc = type { %struct.lynx_cursor }
%struct.lynx_cursor = type { i64, i64 }
%struct.fb_cursor = type { i32, i64, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_6__ = type { i64, i64, i32, i64, i64, i32, i64, i64 }

@ENXIO = common dso_local global i32 0, align 4
@FB_CUR_SETSIZE = common dso_local global i32 0, align 4
@FB_CUR_SETPOS = common dso_local global i32 0, align 4
@FB_CUR_SETCMAP = common dso_local global i32 0, align 4
@FB_CUR_SETSHAPE = common dso_local global i32 0, align 4
@FB_CUR_SETIMAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_info*, %struct.fb_cursor*)* @lynxfb_ops_cursor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lynxfb_ops_cursor(%struct.fb_info* %0, %struct.fb_cursor* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_info*, align 8
  %5 = alloca %struct.fb_cursor*, align 8
  %6 = alloca %struct.lynxfb_par*, align 8
  %7 = alloca %struct.lynxfb_crtc*, align 8
  %8 = alloca %struct.lynx_cursor*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %4, align 8
  store %struct.fb_cursor* %1, %struct.fb_cursor** %5, align 8
  %11 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %12 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %11, i32 0, i32 2
  %13 = load %struct.lynxfb_par*, %struct.lynxfb_par** %12, align 8
  store %struct.lynxfb_par* %13, %struct.lynxfb_par** %6, align 8
  %14 = load %struct.lynxfb_par*, %struct.lynxfb_par** %6, align 8
  %15 = getelementptr inbounds %struct.lynxfb_par, %struct.lynxfb_par* %14, i32 0, i32 0
  store %struct.lynxfb_crtc* %15, %struct.lynxfb_crtc** %7, align 8
  %16 = load %struct.lynxfb_crtc*, %struct.lynxfb_crtc** %7, align 8
  %17 = getelementptr inbounds %struct.lynxfb_crtc, %struct.lynxfb_crtc* %16, i32 0, i32 0
  store %struct.lynx_cursor* %17, %struct.lynx_cursor** %8, align 8
  %18 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %19 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.lynx_cursor*, %struct.lynx_cursor** %8, align 8
  %23 = getelementptr inbounds %struct.lynx_cursor, %struct.lynx_cursor* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %21, %24
  br i1 %25, label %41, label %26

26:                                               ; preds = %2
  %27 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %28 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.lynx_cursor*, %struct.lynx_cursor** %8, align 8
  %32 = getelementptr inbounds %struct.lynx_cursor, %struct.lynx_cursor* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp sgt i64 %30, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %26
  %36 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %37 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = icmp sgt i32 %39, 1
  br i1 %40, label %41, label %44

41:                                               ; preds = %35, %26, %2
  %42 = load i32, i32* @ENXIO, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %209

44:                                               ; preds = %35
  %45 = load %struct.lynx_cursor*, %struct.lynx_cursor** %8, align 8
  %46 = call i32 @sm750_hw_cursor_disable(%struct.lynx_cursor* %45)
  %47 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %48 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @FB_CUR_SETSIZE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %64

53:                                               ; preds = %44
  %54 = load %struct.lynx_cursor*, %struct.lynx_cursor** %8, align 8
  %55 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %56 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %55, i32 0, i32 3
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %60 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @sm750_hw_cursor_setSize(%struct.lynx_cursor* %54, i64 %58, i64 %62)
  br label %64

64:                                               ; preds = %53, %44
  %65 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %66 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @FB_CUR_SETPOS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %92

71:                                               ; preds = %64
  %72 = load %struct.lynx_cursor*, %struct.lynx_cursor** %8, align 8
  %73 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %74 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %73, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 7
  %76 = load i64, i64* %75, align 8
  %77 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %78 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %76, %80
  %82 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %83 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 6
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %87 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = sub nsw i64 %85, %89
  %91 = call i32 @sm750_hw_cursor_setPos(%struct.lynx_cursor* %72, i64 %81, i64 %90)
  br label %92

92:                                               ; preds = %71, %64
  %93 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %94 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @FB_CUR_SETCMAP, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %178

99:                                               ; preds = %92
  %100 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %101 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32*, i32** %102, align 8
  %104 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %105 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %104, i32 0, i32 3
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 3
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i32, i32* %103, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 63488
  %111 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %112 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 1
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %116 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %115, i32 0, i32 3
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 3
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds i32, i32* %114, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = and i32 %120, 64512
  %122 = ashr i32 %121, 5
  %123 = or i32 %110, %122
  %124 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %125 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %129 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %128, i32 0, i32 3
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 3
  %131 = load i64, i64* %130, align 8
  %132 = getelementptr inbounds i32, i32* %127, i64 %131
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, 63488
  %135 = ashr i32 %134, 11
  %136 = or i32 %123, %135
  store i32 %136, i32* %9, align 4
  %137 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %138 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %138, i32 0, i32 0
  %140 = load i32*, i32** %139, align 8
  %141 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %142 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 4
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds i32, i32* %140, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = and i32 %146, 63488
  %148 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %149 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %149, i32 0, i32 1
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %153 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  %156 = getelementptr inbounds i32, i32* %151, i64 %155
  %157 = load i32, i32* %156, align 4
  %158 = and i32 %157, 64512
  %159 = ashr i32 %158, 5
  %160 = or i32 %147, %159
  %161 = load %struct.fb_info*, %struct.fb_info** %4, align 8
  %162 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 2
  %164 = load i32*, i32** %163, align 8
  %165 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %166 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %165, i32 0, i32 3
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 4
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds i32, i32* %164, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = and i32 %170, 63488
  %172 = ashr i32 %171, 11
  %173 = or i32 %160, %172
  store i32 %173, i32* %10, align 4
  %174 = load %struct.lynx_cursor*, %struct.lynx_cursor** %8, align 8
  %175 = load i32, i32* %9, align 4
  %176 = load i32, i32* %10, align 4
  %177 = call i32 @sm750_hw_cursor_setColor(%struct.lynx_cursor* %174, i32 %175, i32 %176)
  br label %178

178:                                              ; preds = %99, %92
  %179 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %180 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @FB_CUR_SETSHAPE, align 4
  %183 = load i32, i32* @FB_CUR_SETIMAGE, align 4
  %184 = or i32 %182, %183
  %185 = and i32 %181, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %200

187:                                              ; preds = %178
  %188 = load %struct.lynx_cursor*, %struct.lynx_cursor** %8, align 8
  %189 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %190 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %189, i32 0, i32 4
  %191 = load i32, i32* %190, align 8
  %192 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %193 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %192, i32 0, i32 3
  %194 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %193, i32 0, i32 5
  %195 = load i32, i32* %194, align 8
  %196 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %197 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %196, i32 0, i32 2
  %198 = load i32, i32* %197, align 8
  %199 = call i32 @sm750_hw_cursor_setData(%struct.lynx_cursor* %188, i32 %191, i32 %195, i32 %198)
  br label %200

200:                                              ; preds = %187, %178
  %201 = load %struct.fb_cursor*, %struct.fb_cursor** %5, align 8
  %202 = getelementptr inbounds %struct.fb_cursor, %struct.fb_cursor* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = icmp ne i64 %203, 0
  br i1 %204, label %205, label %208

205:                                              ; preds = %200
  %206 = load %struct.lynx_cursor*, %struct.lynx_cursor** %8, align 8
  %207 = call i32 @sm750_hw_cursor_enable(%struct.lynx_cursor* %206)
  br label %208

208:                                              ; preds = %205, %200
  store i32 0, i32* %3, align 4
  br label %209

209:                                              ; preds = %208, %41
  %210 = load i32, i32* %3, align 4
  ret i32 %210
}

declare dso_local i32 @sm750_hw_cursor_disable(%struct.lynx_cursor*) #1

declare dso_local i32 @sm750_hw_cursor_setSize(%struct.lynx_cursor*, i64, i64) #1

declare dso_local i32 @sm750_hw_cursor_setPos(%struct.lynx_cursor*, i64, i64) #1

declare dso_local i32 @sm750_hw_cursor_setColor(%struct.lynx_cursor*, i32, i32) #1

declare dso_local i32 @sm750_hw_cursor_setData(%struct.lynx_cursor*, i32, i32, i32) #1

declare dso_local i32 @sm750_hw_cursor_enable(%struct.lynx_cursor*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
