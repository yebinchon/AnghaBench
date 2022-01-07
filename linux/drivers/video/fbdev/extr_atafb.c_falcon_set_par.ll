; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atafb.c_falcon_set_par.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_atafb.c_falcon_set_par.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i32 (i64)* }
%struct.atafb_par = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@f_change_mode = common dso_local global i32 0, align 4
@current_par = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@fbhw = common dso_local global %struct.TYPE_5__* null, align 8
@DontCalcRes = common dso_local global i64 0, align 8
@f_new_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.atafb_par*)* @falcon_set_par to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @falcon_set_par(%struct.atafb_par* %0) #0 {
  %2 = alloca %struct.atafb_par*, align 8
  store %struct.atafb_par* %0, %struct.atafb_par** %2, align 8
  store i32 0, i32* @f_change_mode, align 4
  %3 = load i64, i64* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @current_par, i32 0, i32 0), align 8
  %4 = load %struct.atafb_par*, %struct.atafb_par** %2, align 8
  %5 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %3, %6
  br i1 %7, label %8, label %16

8:                                                ; preds = %1
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** @fbhw, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i32 (i64)*, i32 (i64)** %10, align 8
  %12 = load %struct.atafb_par*, %struct.atafb_par** %2, align 8
  %13 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = call i32 %11(i64 %14)
  br label %16

16:                                               ; preds = %8, %1
  %17 = load i64, i64* @DontCalcRes, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %25

20:                                               ; preds = %16
  %21 = load %struct.atafb_par*, %struct.atafb_par** %2, align 8
  %22 = getelementptr inbounds %struct.atafb_par, %struct.atafb_par* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  store i32 %24, i32* @f_new_mode, align 4
  store i32 1, i32* @f_change_mode, align 4
  br label %25

25:                                               ; preds = %20, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
