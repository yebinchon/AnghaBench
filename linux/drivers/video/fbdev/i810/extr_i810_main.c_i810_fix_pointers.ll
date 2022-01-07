; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_main.c_i810_fix_pointers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/i810/extr_i810_main.c_i810_fix_pointers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i810fb_par = type { %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { i32, i64, i64 }
%struct.TYPE_5__ = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i810fb_par*)* @i810_fix_pointers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i810_fix_pointers(%struct.i810fb_par* %0) #0 {
  %2 = alloca %struct.i810fb_par*, align 8
  store %struct.i810fb_par* %0, %struct.i810fb_par** %2, align 8
  %3 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %4 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 1
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %8 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = shl i32 %10, 12
  %12 = sext i32 %11 to i64
  %13 = add nsw i64 %6, %12
  %14 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %15 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 2
  store i64 %13, i64* %16, align 8
  %17 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %18 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %22 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = shl i32 %24, 12
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %20, %26
  %28 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %29 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %28, i32 0, i32 3
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  store i64 %27, i64* %30, align 8
  %31 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %32 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %36 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = shl i32 %38, 12
  %40 = sext i32 %39 to i64
  %41 = add nsw i64 %34, %40
  %42 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %43 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  store i64 %41, i64* %44, align 8
  %45 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %46 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %50 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = shl i32 %52, 12
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %48, %54
  %56 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %57 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  store i64 %55, i64* %58, align 8
  %59 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %60 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %64 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = shl i32 %66, 12
  %68 = sext i32 %67 to i64
  %69 = add nsw i64 %62, %68
  %70 = load %struct.i810fb_par*, %struct.i810fb_par** %2, align 8
  %71 = getelementptr inbounds %struct.i810fb_par, %struct.i810fb_par* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 1
  store i64 %69, i64* %72, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
