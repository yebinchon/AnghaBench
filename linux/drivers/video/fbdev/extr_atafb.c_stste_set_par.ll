; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atafb.c_stste_set_par.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atafb.c_stste_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_11__ = type { i32 (i64)* }
%struct.atafb_par = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@shifter_tt = common dso_local global %struct.TYPE_9__ zeroinitializer, align 4
@shifter_st = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@current_par = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@fbhw = common dso_local global %struct.TYPE_11__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atafb_par*)* @stste_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stste_set_par(%struct.atafb_par* %0) #0 {
  %2 = alloca %struct.atafb_par*, align 8
  store %struct.atafb_par* %0, %struct.atafb_par** %2, align 8
  %3 = load %struct.atafb_par*, %struct.atafb_par** %2, align 8
  %4 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %7 = load i32, i32* %6, align 4
  store i32 %7, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @shifter_tt, i32 0, i32 0), align 4
  %8 = load %struct.atafb_par*, %struct.atafb_par** %2, align 8
  %9 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @shifter_st, i32 0, i32 0), align 4
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @current_par, i32 0, i32 0), align 8
  %14 = load %struct.atafb_par*, %struct.atafb_par** %2, align 8
  %15 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %13, %16
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** @fbhw, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32 (i64)*, i32 (i64)** %20, align 8
  %22 = load %struct.atafb_par*, %struct.atafb_par** %2, align 8
  %23 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 %21(i64 %24)
  br label %26

26:                                               ; preds = %18, %1
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
