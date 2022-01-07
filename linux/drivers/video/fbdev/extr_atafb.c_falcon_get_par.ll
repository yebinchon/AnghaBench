; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atafb.c_falcon_get_par.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atafb.c_falcon_get_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32 }
%struct.atafb_par = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.falcon_hw }
%struct.falcon_hw = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@shifter_f030 = common dso_local global %struct.TYPE_8__ zeroinitializer, align 4
@videl = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@shifter_st = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atafb_par*)* @falcon_get_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @falcon_get_par(%struct.atafb_par* %0) #0 {
  %2 = alloca %struct.atafb_par*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.falcon_hw*, align 8
  store %struct.atafb_par* %0, %struct.atafb_par** %2, align 8
  %5 = load %struct.atafb_par*, %struct.atafb_par** %2, align 8
  %6 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %5, i32 0, i32 1
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store %struct.falcon_hw* %7, %struct.falcon_hw** %4, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @shifter_f030, i32 0, i32 1), align 4
  %9 = load %struct.falcon_hw*, %struct.falcon_hw** %4, align 8
  %10 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %9, i32 0, i32 21
  store i32 %8, i32* %10, align 4
  %11 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @shifter_f030, i32 0, i32 0), align 4
  %12 = load %struct.falcon_hw*, %struct.falcon_hw** %4, align 8
  %13 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %12, i32 0, i32 20
  store i32 %11, i32* %13, align 4
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @videl, i32 0, i32 0), align 4
  %15 = and i32 %14, 768
  %16 = load %struct.falcon_hw*, %struct.falcon_hw** %4, align 8
  %17 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @videl, i32 0, i32 1), align 4
  %19 = load %struct.falcon_hw*, %struct.falcon_hw** %4, align 8
  %20 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @videl, i32 0, i32 16), align 4
  %22 = load %struct.falcon_hw*, %struct.falcon_hw** %4, align 8
  %23 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %22, i32 0, i32 19
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @videl, i32 0, i32 15), align 4
  %25 = load %struct.falcon_hw*, %struct.falcon_hw** %4, align 8
  %26 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %25, i32 0, i32 18
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shifter_st, i32 0, i32 0), align 4
  %28 = and i32 %27, 1
  %29 = load %struct.falcon_hw*, %struct.falcon_hw** %4, align 8
  %30 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %29, i32 0, i32 2
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @videl, i32 0, i32 2), align 4
  %32 = and i32 %31, 15
  %33 = load %struct.falcon_hw*, %struct.falcon_hw** %4, align 8
  %34 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %33, i32 0, i32 3
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @videl, i32 0, i32 14), align 4
  %36 = load %struct.falcon_hw*, %struct.falcon_hw** %4, align 8
  %37 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %36, i32 0, i32 17
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @videl, i32 0, i32 13), align 4
  %39 = load %struct.falcon_hw*, %struct.falcon_hw** %4, align 8
  %40 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %39, i32 0, i32 16
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @videl, i32 0, i32 12), align 4
  %42 = load %struct.falcon_hw*, %struct.falcon_hw** %4, align 8
  %43 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %42, i32 0, i32 15
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @videl, i32 0, i32 11), align 4
  %45 = load %struct.falcon_hw*, %struct.falcon_hw** %4, align 8
  %46 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %45, i32 0, i32 14
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @videl, i32 0, i32 10), align 4
  %48 = load %struct.falcon_hw*, %struct.falcon_hw** %4, align 8
  %49 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %48, i32 0, i32 13
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @videl, i32 0, i32 9), align 4
  %51 = load %struct.falcon_hw*, %struct.falcon_hw** %4, align 8
  %52 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %51, i32 0, i32 12
  store i32 %50, i32* %52, align 4
  %53 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @videl, i32 0, i32 8), align 4
  %54 = load %struct.falcon_hw*, %struct.falcon_hw** %4, align 8
  %55 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %54, i32 0, i32 11
  store i32 %53, i32* %55, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @videl, i32 0, i32 7), align 4
  %57 = load %struct.falcon_hw*, %struct.falcon_hw** %4, align 8
  %58 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %57, i32 0, i32 10
  store i32 %56, i32* %58, align 4
  %59 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @videl, i32 0, i32 6), align 4
  %60 = load %struct.falcon_hw*, %struct.falcon_hw** %4, align 8
  %61 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %60, i32 0, i32 9
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @videl, i32 0, i32 5), align 4
  %63 = load %struct.falcon_hw*, %struct.falcon_hw** %4, align 8
  %64 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %63, i32 0, i32 8
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @videl, i32 0, i32 4), align 4
  %66 = load %struct.falcon_hw*, %struct.falcon_hw** %4, align 8
  %67 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %66, i32 0, i32 7
  store i32 %65, i32* %67, align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @videl, i32 0, i32 3), align 4
  %69 = load %struct.falcon_hw*, %struct.falcon_hw** %4, align 8
  %70 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %69, i32 0, i32 6
  store i32 %68, i32* %70, align 4
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shifter_st, i32 0, i32 1), align 4
  %72 = and i32 %71, 255
  %73 = shl i32 %72, 16
  %74 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shifter_st, i32 0, i32 2), align 4
  %75 = and i32 %74, 255
  %76 = shl i32 %75, 8
  %77 = or i32 %73, %76
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_7__, %struct.TYPE_7__* @shifter_st, i32 0, i32 3), align 4
  %79 = and i32 %78, 255
  %80 = or i32 %77, %79
  %81 = sext i32 %80 to i64
  store i64 %81, i64* %3, align 8
  %82 = load i64, i64* %3, align 8
  %83 = call i32 @atari_stram_to_virt(i64 %82)
  %84 = load %struct.atafb_par*, %struct.atafb_par** %2, align 8
  %85 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.falcon_hw*, %struct.falcon_hw** %4, align 8
  %87 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = and i32 %88, 1296
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %96

91:                                               ; preds = %1
  %92 = load %struct.falcon_hw*, %struct.falcon_hw** %4, align 8
  %93 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 256
  br label %96

96:                                               ; preds = %91, %1
  %97 = phi i1 [ false, %1 ], [ %95, %91 ]
  %98 = zext i1 %97 to i32
  %99 = load %struct.falcon_hw*, %struct.falcon_hw** %4, align 8
  %100 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %99, i32 0, i32 4
  store i32 %98, i32* %100, align 4
  %101 = load %struct.falcon_hw*, %struct.falcon_hw** %4, align 8
  %102 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 1024
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %119, label %106

106:                                              ; preds = %96
  %107 = load %struct.falcon_hw*, %struct.falcon_hw** %4, align 8
  %108 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = and i32 %109, 1296
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %106
  %113 = load %struct.falcon_hw*, %struct.falcon_hw** %4, align 8
  %114 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 512
  br label %117

117:                                              ; preds = %112, %106
  %118 = phi i1 [ false, %106 ], [ %116, %112 ]
  br label %119

119:                                              ; preds = %117, %96
  %120 = phi i1 [ true, %96 ], [ %118, %117 ]
  %121 = zext i1 %120 to i32
  %122 = load %struct.falcon_hw*, %struct.falcon_hw** %4, align 8
  %123 = getelementptr inbounds %struct.falcon_hw, %struct.falcon_hw* %122, i32 0, i32 5
  store i32 %121, i32* %123, align 4
  ret void
}

declare dso_local i32 @atari_stram_to_virt(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
