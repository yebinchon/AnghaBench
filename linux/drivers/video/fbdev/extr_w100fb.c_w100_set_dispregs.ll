; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_w100fb.c_w100_set_dispregs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_w100fb.c_w100_set_dispregs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32 }
%struct.w100fb_par = type { i32, i32, i32, %struct.TYPE_9__*, i64 }
%struct.TYPE_9__ = type { i32, i64, i64, i32 }
%union.graphic_ctrl_u = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32 }

@w100_pwr_state = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@remapped_regs = common dso_local global i64 0, align 8
@mmPCLK_CNTL = common dso_local global i64 0, align 8
@mmGRAPHIC_CTRL = common dso_local global i64 0, align 8
@W100_FB_BASE = common dso_local global i64 0, align 8
@BITS_PER_PIXEL = common dso_local global i64 0, align 8
@mmGRAPHIC_OFFSET = common dso_local global i64 0, align 8
@mmGRAPHIC_PITCH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.w100fb_par*)* @w100_set_dispregs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @w100_set_dispregs(%struct.w100fb_par* %0) #0 {
  %2 = alloca %struct.w100fb_par*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %union.graphic_ctrl_u, align 8
  store %struct.w100fb_par* %0, %struct.w100fb_par** %2, align 8
  store i64 0, i64* %3, align 8
  store i64 0, i64* %5, align 8
  %7 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %8 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %11 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %10, i32 0, i32 3
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp eq i32 %9, %14
  br i1 %15, label %16, label %37

16:                                               ; preds = %1
  %17 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %18 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %17, i32 0, i32 4
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %16
  store i64 3, i64* %3, align 8
  %22 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %23 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %26 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %24, %27
  %29 = sub nsw i32 %28, 1
  %30 = sext i32 %29 to i64
  store i64 %30, i64* %5, align 8
  br label %31

31:                                               ; preds = %21, %16
  %32 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %33 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %32, i32 0, i32 3
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  store i64 %36, i64* %4, align 8
  br label %64

37:                                               ; preds = %1
  %38 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %39 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %38, i32 0, i32 4
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  store i64 2, i64* %3, align 8
  %43 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %44 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = sub nsw i32 %45, 1
  %47 = sext i32 %46 to i64
  store i64 %47, i64* %5, align 8
  br label %58

48:                                               ; preds = %37
  store i64 1, i64* %3, align 8
  %49 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %50 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %53 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = sub nsw i32 %54, 1
  %56 = mul nsw i32 %51, %55
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %5, align 8
  br label %58

58:                                               ; preds = %48, %42
  %59 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %60 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %59, i32 0, i32 3
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  store i64 %63, i64* %4, align 8
  br label %64

64:                                               ; preds = %58, %31
  %65 = bitcast %union.graphic_ctrl_u* %6 to i64*
  store i64 0, i64* %65, align 8
  %66 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %67 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  switch i32 %68, label %139 [
    i32 130, label %69
    i32 129, label %111
    i32 128, label %111
  ]

69:                                               ; preds = %64
  %70 = bitcast %union.graphic_ctrl_u* %6 to %struct.TYPE_7__*
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  store i32 6, i32* %71, align 8
  %72 = bitcast %union.graphic_ctrl_u* %6 to %struct.TYPE_7__*
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 1
  store i32 1, i32* %73, align 4
  %74 = bitcast %union.graphic_ctrl_u* %6 to %struct.TYPE_7__*
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 2
  store i32 1, i32* %75, align 8
  %76 = bitcast %union.graphic_ctrl_u* %6 to %struct.TYPE_7__*
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 3
  store i32 1, i32* %77, align 4
  %78 = bitcast %union.graphic_ctrl_u* %6 to %struct.TYPE_7__*
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 4
  store i32 1, i32* %79, align 8
  %80 = bitcast %union.graphic_ctrl_u* %6 to %struct.TYPE_7__*
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 5
  store i32 1, i32* %81, align 4
  %82 = bitcast %union.graphic_ctrl_u* %6 to %struct.TYPE_7__*
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 6
  store i32 0, i32* %83, align 8
  %84 = bitcast %union.graphic_ctrl_u* %6 to %struct.TYPE_7__*
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 7
  store i32 0, i32* %85, align 4
  %86 = load i64, i64* %3, align 8
  %87 = bitcast %union.graphic_ctrl_u* %6 to %struct.TYPE_7__*
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 8
  store i64 %86, i64* %88, align 8
  %89 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %90 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  switch i32 %91, label %93 [
    i32 240, label %92
    i32 320, label %92
    i32 480, label %96
    i32 640, label %96
  ]

92:                                               ; preds = %69, %69
  br label %93

93:                                               ; preds = %69, %92
  %94 = bitcast %union.graphic_ctrl_u* %6 to %struct.TYPE_7__*
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 9
  store i32 160, i32* %95, align 8
  br label %110

96:                                               ; preds = %69, %69
  %97 = load i64, i64* %3, align 8
  switch i64 %97, label %106 [
    i64 0, label %98
    i64 3, label %98
    i64 1, label %103
    i64 2, label %103
  ]

98:                                               ; preds = %96, %96
  %99 = bitcast %union.graphic_ctrl_u* %6 to %struct.TYPE_7__*
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 6
  store i32 1, i32* %100, align 8
  %101 = bitcast %union.graphic_ctrl_u* %6 to %struct.TYPE_7__*
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 7
  store i32 5, i32* %102, align 4
  br label %107

103:                                              ; preds = %96, %96
  %104 = bitcast %union.graphic_ctrl_u* %6 to %struct.TYPE_7__*
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 7
  store i32 4, i32* %105, align 4
  br label %107

106:                                              ; preds = %96
  br label %107

107:                                              ; preds = %106, %103, %98
  %108 = bitcast %union.graphic_ctrl_u* %6 to %struct.TYPE_7__*
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 9
  store i32 240, i32* %109, align 8
  br label %110

110:                                              ; preds = %107, %93
  br label %139

111:                                              ; preds = %64, %64
  %112 = bitcast %union.graphic_ctrl_u* %6 to %struct.TYPE_8__*
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 0
  store i32 6, i32* %113, align 8
  %114 = bitcast %union.graphic_ctrl_u* %6 to %struct.TYPE_8__*
  %115 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %114, i32 0, i32 1
  store i32 1, i32* %115, align 4
  %116 = bitcast %union.graphic_ctrl_u* %6 to %struct.TYPE_8__*
  %117 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %116, i32 0, i32 2
  store i32 1, i32* %117, align 8
  %118 = bitcast %union.graphic_ctrl_u* %6 to %struct.TYPE_8__*
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 3
  store i32 1, i32* %119, align 4
  %120 = bitcast %union.graphic_ctrl_u* %6 to %struct.TYPE_8__*
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 4
  store i32 1, i32* %121, align 8
  %122 = bitcast %union.graphic_ctrl_u* %6 to %struct.TYPE_8__*
  %123 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %122, i32 0, i32 5
  store i32 1, i32* %123, align 4
  %124 = bitcast %union.graphic_ctrl_u* %6 to %struct.TYPE_8__*
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 9
  store i32 0, i32* %125, align 4
  %126 = bitcast %union.graphic_ctrl_u* %6 to %struct.TYPE_8__*
  %127 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %126, i32 0, i32 8
  store i32 0, i32* %127, align 8
  %128 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %129 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %128, i32 0, i32 3
  %130 = load %struct.TYPE_9__*, %struct.TYPE_9__** %129, align 8
  %131 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = ashr i32 %132, 1
  %134 = bitcast %union.graphic_ctrl_u* %6 to %struct.TYPE_8__*
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 6
  store i32 %133, i32* %135, align 8
  %136 = load i64, i64* %3, align 8
  %137 = bitcast %union.graphic_ctrl_u* %6 to %struct.TYPE_8__*
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 7
  store i64 %136, i64* %138, align 8
  br label %139

139:                                              ; preds = %64, %111, %110
  %140 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %141 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %140, i32 0, i32 3
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 8
  store i32 %144, i32* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @w100_pwr_state, i32 0, i32 0, i32 1, i32 1), align 8
  %145 = load i64, i64* %4, align 8
  store i64 %145, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @w100_pwr_state, i32 0, i32 0, i32 1, i32 0), align 8
  %146 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @w100_pwr_state, i32 0, i32 0, i32 0), align 8
  %147 = load i64, i64* @remapped_regs, align 8
  %148 = load i64, i64* @mmPCLK_CNTL, align 8
  %149 = add nsw i64 %147, %148
  %150 = call i32 @writel(i64 %146, i64 %149)
  %151 = bitcast %union.graphic_ctrl_u* %6 to i64*
  %152 = load i64, i64* %151, align 8
  %153 = load i64, i64* @remapped_regs, align 8
  %154 = load i64, i64* @mmGRAPHIC_CTRL, align 8
  %155 = add nsw i64 %153, %154
  %156 = call i32 @writel(i64 %152, i64 %155)
  %157 = load i64, i64* @W100_FB_BASE, align 8
  %158 = load i64, i64* %5, align 8
  %159 = load i64, i64* @BITS_PER_PIXEL, align 8
  %160 = mul i64 %158, %159
  %161 = udiv i64 %160, 8
  %162 = and i64 %161, -4
  %163 = add i64 %157, %162
  %164 = load i64, i64* @remapped_regs, align 8
  %165 = load i64, i64* @mmGRAPHIC_OFFSET, align 8
  %166 = add nsw i64 %164, %165
  %167 = call i32 @writel(i64 %163, i64 %166)
  %168 = load %struct.w100fb_par*, %struct.w100fb_par** %2, align 8
  %169 = getelementptr inbounds %struct.w100fb_par, %struct.w100fb_par* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 8
  %171 = sext i32 %170 to i64
  %172 = load i64, i64* @BITS_PER_PIXEL, align 8
  %173 = mul i64 %171, %172
  %174 = udiv i64 %173, 8
  %175 = load i64, i64* @remapped_regs, align 8
  %176 = load i64, i64* @mmGRAPHIC_PITCH, align 8
  %177 = add nsw i64 %175, %176
  %178 = call i32 @writel(i64 %174, i64 %177)
  ret void
}

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
