; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_sh1106.c_init_display.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_sh1106.c_init_display.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i64, i32, i64 }
%struct.TYPE_4__ = type { i32 (%struct.fbtft_par.0*)* }
%struct.fbtft_par.0 = type opaque

@WIDTH = common dso_local global i64 0, align 8
@HEIGHT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Invalid screen size\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Display rotation not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fbtft_par*)* @init_display to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_display(%struct.fbtft_par* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fbtft_par*, align 8
  store %struct.fbtft_par* %0, %struct.fbtft_par** %3, align 8
  %4 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %5 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %4, i32 0, i32 0
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %46

11:                                               ; preds = %1
  %12 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %13 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %12, i32 0, i32 0
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @WIDTH, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %46, label %20

20:                                               ; preds = %11
  %21 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %22 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %21, i32 0, i32 0
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %46

28:                                               ; preds = %20
  %29 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %30 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @HEIGHT, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %46, label %37

37:                                               ; preds = %28
  %38 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %39 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = srem i32 %43, 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %37, %28, %20, %11, %1
  %47 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %48 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @dev_err(i32 %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %53 = load i32, i32* @EINVAL, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %134

55:                                               ; preds = %37
  %56 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %57 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %56, i32 0, i32 0
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %72

63:                                               ; preds = %55
  %64 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %65 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %64, i32 0, i32 0
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @dev_err(i32 %68, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @EINVAL, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %2, align 4
  br label %134

72:                                               ; preds = %55
  %73 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %74 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i32 0, i32 0
  %76 = load i32 (%struct.fbtft_par.0*)*, i32 (%struct.fbtft_par.0*)** %75, align 8
  %77 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %78 = bitcast %struct.fbtft_par* %77 to %struct.fbtft_par.0*
  %79 = call i32 %76(%struct.fbtft_par.0* %78)
  %80 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %81 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %80, i32 174)
  %82 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %83 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %82, i32 213, i32 128)
  %84 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %85 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %86 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %85, i32 0, i32 0
  %87 = load %struct.TYPE_6__*, %struct.TYPE_6__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = sub nsw i32 %90, 1
  %92 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %84, i32 168, i32 %91)
  %93 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %94 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %93, i32 211, i32 0)
  %95 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %96 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %95, i32 64)
  %97 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %98 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %97, i32 161)
  %99 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %100 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %99, i32 200)
  %101 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %102 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %101, i32 0, i32 0
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = icmp eq i32 %106, 64
  br i1 %107, label %108, label %111

108:                                              ; preds = %72
  %109 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %110 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %109, i32 218, i32 18)
  br label %126

111:                                              ; preds = %72
  %112 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %113 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %112, i32 0, i32 0
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = icmp eq i32 %117, 48
  br i1 %118, label %119, label %122

119:                                              ; preds = %111
  %120 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %121 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %120, i32 218, i32 18)
  br label %125

122:                                              ; preds = %111
  %123 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %124 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %123, i32 218, i32 2)
  br label %125

125:                                              ; preds = %122, %119
  br label %126

126:                                              ; preds = %125, %108
  %127 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %128 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %127, i32 217, i32 241)
  %129 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %130 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %129, i32 219, i32 64)
  %131 = load %struct.fbtft_par*, %struct.fbtft_par** %3, align 8
  %132 = call i32 (%struct.fbtft_par*, i32, ...) @write_reg(%struct.fbtft_par* %131, i32 175)
  %133 = call i32 @msleep(i32 150)
  store i32 0, i32* %2, align 4
  br label %134

134:                                              ; preds = %126, %63, %46
  %135 = load i32, i32* %2, align 4
  ret i32 %135
}

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32, ...) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
