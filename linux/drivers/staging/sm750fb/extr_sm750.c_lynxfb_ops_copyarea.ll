; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750.c_lynxfb_ops_copyarea.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/sm750fb/extr_sm750.c_lynxfb_ops_copyarea.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.lynxfb_par* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.lynxfb_par = type { %struct.TYPE_5__, %struct.sm750_dev* }
%struct.TYPE_5__ = type { i32 }
%struct.sm750_dev = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_8__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)* }
%struct.fb_copyarea = type { i32, i32, i32, i32, i32, i32 }

@HW_ROP2_COPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fb_info*, %struct.fb_copyarea*)* @lynxfb_ops_copyarea to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lynxfb_ops_copyarea(%struct.fb_info* %0, %struct.fb_copyarea* %1) #0 {
  %3 = alloca %struct.fb_info*, align 8
  %4 = alloca %struct.fb_copyarea*, align 8
  %5 = alloca %struct.lynxfb_par*, align 8
  %6 = alloca %struct.sm750_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fb_info* %0, %struct.fb_info** %3, align 8
  store %struct.fb_copyarea* %1, %struct.fb_copyarea** %4, align 8
  %10 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %11 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %10, i32 0, i32 2
  %12 = load %struct.lynxfb_par*, %struct.lynxfb_par** %11, align 8
  store %struct.lynxfb_par* %12, %struct.lynxfb_par** %5, align 8
  %13 = load %struct.lynxfb_par*, %struct.lynxfb_par** %5, align 8
  %14 = getelementptr inbounds %struct.lynxfb_par, %struct.lynxfb_par* %13, i32 0, i32 1
  %15 = load %struct.sm750_dev*, %struct.sm750_dev** %14, align 8
  store %struct.sm750_dev* %15, %struct.sm750_dev** %6, align 8
  %16 = load %struct.lynxfb_par*, %struct.lynxfb_par** %5, align 8
  %17 = getelementptr inbounds %struct.lynxfb_par, %struct.lynxfb_par* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %7, align 4
  %20 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.fb_info*, %struct.fb_info** %3, align 8
  %25 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = ashr i32 %27, 3
  store i32 %28, i32* %9, align 4
  %29 = load %struct.sm750_dev*, %struct.sm750_dev** %6, align 8
  %30 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %29, i32 0, i32 0
  %31 = call i32 @spin_lock(i32* %30)
  %32 = load %struct.sm750_dev*, %struct.sm750_dev** %6, align 8
  %33 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 0
  %35 = load i32 (%struct.TYPE_8__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)*, i32 (%struct.TYPE_8__*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32)** %34, align 8
  %36 = load %struct.sm750_dev*, %struct.sm750_dev** %6, align 8
  %37 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %36, i32 0, i32 1
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %41 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %40, i32 0, i32 5
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %44 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %50 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %53 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %56 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.fb_copyarea*, %struct.fb_copyarea** %4, align 8
  %59 = getelementptr inbounds %struct.fb_copyarea, %struct.fb_copyarea* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @HW_ROP2_COPY, align 4
  %62 = call i32 %35(%struct.TYPE_8__* %37, i32 %38, i32 %39, i32 %42, i32 %45, i32 %46, i32 %47, i32 %48, i32 %51, i32 %54, i32 %57, i32 %60, i32 %61)
  %63 = load %struct.sm750_dev*, %struct.sm750_dev** %6, align 8
  %64 = getelementptr inbounds %struct.sm750_dev, %struct.sm750_dev* %63, i32 0, i32 0
  %65 = call i32 @spin_unlock(i32* %64)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
