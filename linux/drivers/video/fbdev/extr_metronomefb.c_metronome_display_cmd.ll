; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_metronomefb.c_metronome_display_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_metronomefb.c_metronome_display_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.metronomefb_par = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { {}* }
%struct.TYPE_3__ = type { i32, i32*, i8* }

@metronome_display_cmd.borderval = internal global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.metronomefb_par*)* @metronome_display_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @metronome_display_cmd(%struct.metronomefb_par* %0) #0 {
  %2 = alloca %struct.metronomefb_par*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  store %struct.metronomefb_par* %0, %struct.metronomefb_par** %2, align 8
  %6 = load %struct.metronomefb_par*, %struct.metronomefb_par** %2, align 8
  %7 = getelementptr inbounds %struct.metronomefb_par, %struct.metronomefb_par* %6, i32 0, i32 2
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp eq i32 %10, 52288
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i8* inttoptr (i64 52289 to i8*), i8** %4, align 8
  store i8* inttoptr (i64 52289 to i8*), i8** %5, align 8
  br label %14

13:                                               ; preds = %1
  store i8* inttoptr (i64 52288 to i8*), i8** %4, align 8
  store i8* inttoptr (i64 52288 to i8*), i8** %5, align 8
  br label %14

14:                                               ; preds = %13, %12
  store i32 0, i32* %3, align 4
  %15 = load i32, i32* @metronome_display_cmd.borderval, align 4
  %16 = add nsw i32 %15, 1
  store i32 %16, i32* @metronome_display_cmd.borderval, align 4
  %17 = srem i32 %15, 4
  %18 = and i32 %17, 15
  %19 = shl i32 %18, 4
  %20 = or i32 8, %19
  %21 = load %struct.metronomefb_par*, %struct.metronomefb_par** %2, align 8
  %22 = getelementptr inbounds %struct.metronomefb_par, %struct.metronomefb_par* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 1
  %25 = shl i32 %24, 8
  %26 = or i32 %20, %25
  %27 = load %struct.metronomefb_par*, %struct.metronomefb_par** %2, align 8
  %28 = getelementptr inbounds %struct.metronomefb_par, %struct.metronomefb_par* %27, i32 0, i32 2
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = load i32, i32* %3, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  store i32 %26, i32* %34, align 4
  %35 = load %struct.metronomefb_par*, %struct.metronomefb_par** %2, align 8
  %36 = getelementptr inbounds %struct.metronomefb_par, %struct.metronomefb_par* %35, i32 0, i32 2
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  %42 = sext i32 %40 to i64
  %43 = getelementptr inbounds i32, i32* %39, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %4, align 8
  %46 = sext i32 %44 to i64
  %47 = getelementptr i8, i8* %45, i64 %46
  store i8* %47, i8** %4, align 8
  %48 = load %struct.metronomefb_par*, %struct.metronomefb_par** %2, align 8
  %49 = getelementptr inbounds %struct.metronomefb_par, %struct.metronomefb_par* %48, i32 0, i32 2
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %3, align 4
  %57 = sub nsw i32 32, %56
  %58 = mul nsw i32 %57, 2
  %59 = call i32 @memset(i32* %55, i32 0, i32 %58)
  %60 = load i8*, i8** %4, align 8
  %61 = load %struct.metronomefb_par*, %struct.metronomefb_par** %2, align 8
  %62 = getelementptr inbounds %struct.metronomefb_par, %struct.metronomefb_par* %61, i32 0, i32 2
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  store i8* %60, i8** %64, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = ptrtoint i8* %65 to i32
  %67 = load %struct.metronomefb_par*, %struct.metronomefb_par** %2, align 8
  %68 = getelementptr inbounds %struct.metronomefb_par, %struct.metronomefb_par* %67, i32 0, i32 2
  %69 = load %struct.TYPE_3__*, %struct.TYPE_3__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  store i32 %66, i32* %70, align 8
  %71 = load %struct.metronomefb_par*, %struct.metronomefb_par** %2, align 8
  %72 = getelementptr inbounds %struct.metronomefb_par, %struct.metronomefb_par* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = bitcast {}** %74 to i32 (%struct.metronomefb_par*)**
  %76 = load i32 (%struct.metronomefb_par*)*, i32 (%struct.metronomefb_par*)** %75, align 8
  %77 = load %struct.metronomefb_par*, %struct.metronomefb_par** %2, align 8
  %78 = call i32 %76(%struct.metronomefb_par* %77)
  ret i32 %78
}

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
