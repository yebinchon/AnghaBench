; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/console/extr_newport_con.c_newport_clear_screen.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/console/extr_newport_con.c_newport_clear_screen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__, %struct.TYPE_6__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@logo_active = common dso_local global i64 0, align 8
@npregs = common dso_local global %struct.TYPE_7__* null, align 8
@NPORT_DMODE0_DRAW = common dso_local global i32 0, align 4
@NPORT_DMODE0_BLOCK = common dso_local global i32 0, align 4
@NPORT_DMODE0_DOSETUP = common dso_local global i32 0, align 4
@NPORT_DMODE0_STOPX = common dso_local global i32 0, align 4
@NPORT_DMODE0_STOPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32, i32)* @newport_clear_screen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @newport_clear_screen(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load i64, i64* @logo_active, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  br label %50

14:                                               ; preds = %5
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** @npregs, align 8
  %16 = call i32 @newport_wait(%struct.TYPE_7__* %15)
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** @npregs, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 -1, i32* %19, align 4
  %20 = load i32, i32* @NPORT_DMODE0_DRAW, align 4
  %21 = load i32, i32* @NPORT_DMODE0_BLOCK, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @NPORT_DMODE0_DOSETUP, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @NPORT_DMODE0_STOPX, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @NPORT_DMODE0_STOPY, align 4
  %28 = or i32 %26, %27
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** @npregs, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** @npregs, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 2
  store i32 %32, i32* %35, align 4
  %36 = load i32, i32* %6, align 4
  %37 = shl i32 %36, 16
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %37, %38
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** @npregs, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 3
  store i32 %39, i32* %42, align 4
  %43 = load i32, i32* %8, align 4
  %44 = shl i32 %43, 16
  %45 = load i32, i32* %9, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** @npregs, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  br label %50

50:                                               ; preds = %14, %13
  ret void
}

declare dso_local i32 @newport_wait(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
