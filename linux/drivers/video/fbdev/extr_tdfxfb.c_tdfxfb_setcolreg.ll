; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tdfxfb.c_tdfxfb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tdfxfb.c_tdfxfb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_14__, %struct.TYPE_9__, %struct.TYPE_8__, %struct.tdfx_par* }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, i64 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.tdfx_par = type { i32* }

@.str = private unnamed_addr constant [14 x i8] c"bad depth %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @tdfxfb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tdfxfb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.tdfx_par*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %16 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %17 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %16, i32 0, i32 3
  %18 = load %struct.tdfx_par*, %struct.tdfx_par** %17, align 8
  store %struct.tdfx_par* %18, %struct.tdfx_par** %14, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = icmp uge i32 %19, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %6
  %26 = load i32, i32* %8, align 4
  %27 = icmp ugt i32 %26, 255
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %6
  store i32 1, i32* %7, align 4
  br label %142

29:                                               ; preds = %25
  %30 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %31 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 5
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load i32, i32* %9, align 4
  %37 = mul i32 %36, 77
  %38 = load i32, i32* %10, align 4
  %39 = mul i32 %38, 151
  %40 = add i32 %37, %39
  %41 = load i32, i32* %11, align 4
  %42 = mul i32 %41, 28
  %43 = add i32 %40, %42
  %44 = lshr i32 %43, 8
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %11, align 4
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %11, align 4
  store i32 %46, i32* %9, align 4
  br label %47

47:                                               ; preds = %35, %29
  %48 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %49 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  switch i32 %51, label %135 [
    i32 129, label %52
    i32 128, label %68
  ]

52:                                               ; preds = %47
  %53 = load i32, i32* %9, align 4
  %54 = and i32 %53, 65280
  %55 = shl i32 %54, 8
  %56 = load i32, i32* %10, align 4
  %57 = and i32 %56, 65280
  %58 = shl i32 %57, 0
  %59 = or i32 %55, %58
  %60 = load i32, i32* %11, align 4
  %61 = and i32 %60, 65280
  %62 = ashr i32 %61, 8
  %63 = or i32 %59, %62
  store i32 %63, i32* %15, align 4
  %64 = load %struct.tdfx_par*, %struct.tdfx_par** %14, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @do_setpalentry(%struct.tdfx_par* %64, i32 %65, i32 %66)
  br label %141

68:                                               ; preds = %47
  %69 = load i32, i32* %8, align 4
  %70 = icmp ult i32 %69, 16
  br i1 %70, label %71, label %134

71:                                               ; preds = %68
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %74 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @CNVT_TOHW(i32 %72, i32 %77)
  %79 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %80 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = shl i32 %78, %83
  %85 = load i32, i32* %10, align 4
  %86 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %87 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 3
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @CNVT_TOHW(i32 %85, i32 %90)
  %92 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %93 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %91, %96
  %98 = or i32 %84, %97
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %101 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @CNVT_TOHW(i32 %99, i32 %104)
  %106 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %107 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = shl i32 %105, %110
  %112 = or i32 %98, %111
  %113 = load i32, i32* %12, align 4
  %114 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %115 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 1
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @CNVT_TOHW(i32 %113, i32 %118)
  %120 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %121 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = shl i32 %119, %124
  %126 = or i32 %112, %125
  store i32 %126, i32* %15, align 4
  %127 = load i32, i32* %15, align 4
  %128 = load %struct.tdfx_par*, %struct.tdfx_par** %14, align 8
  %129 = getelementptr inbounds %struct.tdfx_par, %struct.tdfx_par* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = load i32, i32* %8, align 4
  %132 = zext i32 %131 to i64
  %133 = getelementptr inbounds i32, i32* %130, i64 %132
  store i32 %127, i32* %133, align 4
  br label %134

134:                                              ; preds = %71, %68
  br label %141

135:                                              ; preds = %47
  %136 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %137 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @DPRINTK(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %139)
  br label %141

141:                                              ; preds = %135, %134, %52
  store i32 0, i32* %7, align 4
  br label %142

142:                                              ; preds = %141, %28
  %143 = load i32, i32* %7, align 4
  ret i32 %143
}

declare dso_local i32 @do_setpalentry(%struct.tdfx_par*, i32, i32) #1

declare dso_local i32 @CNVT_TOHW(i32, i32) #1

declare dso_local i32 @DPRINTK(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
