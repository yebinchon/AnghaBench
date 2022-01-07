; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_metronomefb.c_metronome_powerup_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_metronomefb.c_metronome_powerup_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.metronomefb_par = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { {}*, i32 (%struct.metronomefb_par*, i32)*, i32 (%struct.metronomefb_par*, i32)* }
%struct.TYPE_3__ = type { i32, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.metronomefb_par*)* @metronome_powerup_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @metronome_powerup_cmd(%struct.metronomefb_par* %0) #0 {
  %2 = alloca %struct.metronomefb_par*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.metronomefb_par* %0, %struct.metronomefb_par** %2, align 8
  %5 = load %struct.metronomefb_par*, %struct.metronomefb_par** %2, align 8
  %6 = getelementptr inbounds %struct.metronomefb_par, %struct.metronomefb_par* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  store i32 4660, i32* %8, align 8
  %9 = load %struct.metronomefb_par*, %struct.metronomefb_par** %2, align 8
  %10 = getelementptr inbounds %struct.metronomefb_par, %struct.metronomefb_par* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %37, %1
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 3
  br i1 %16, label %17, label %40

17:                                               ; preds = %14
  %18 = load %struct.metronomefb_par*, %struct.metronomefb_par** %2, align 8
  %19 = getelementptr inbounds %struct.metronomefb_par, %struct.metronomefb_par* %18, i32 0, i32 1
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %3, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32 1024, i32* %25, align 4
  %26 = load %struct.metronomefb_par*, %struct.metronomefb_par** %2, align 8
  %27 = getelementptr inbounds %struct.metronomefb_par, %struct.metronomefb_par* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %17
  %38 = load i32, i32* %3, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %3, align 4
  br label %14

40:                                               ; preds = %14
  %41 = load %struct.metronomefb_par*, %struct.metronomefb_par** %2, align 8
  %42 = getelementptr inbounds %struct.metronomefb_par, %struct.metronomefb_par* %41, i32 0, i32 1
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 1
  %45 = load i32*, i32** %44, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i32, i32* %45, i64 %47
  %49 = load %struct.metronomefb_par*, %struct.metronomefb_par** %2, align 8
  %50 = getelementptr inbounds %struct.metronomefb_par, %struct.metronomefb_par* %49, i32 0, i32 1
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @ARRAY_SIZE(i32* %53)
  %55 = load i32, i32* %3, align 4
  %56 = sub nsw i32 %54, %55
  %57 = mul nsw i32 %56, 2
  %58 = call i32 @memset(i32* %48, i32 0, i32 %57)
  %59 = load i32, i32* %4, align 4
  %60 = load %struct.metronomefb_par*, %struct.metronomefb_par** %2, align 8
  %61 = getelementptr inbounds %struct.metronomefb_par, %struct.metronomefb_par* %60, i32 0, i32 1
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 2
  store i32 %59, i32* %63, align 8
  %64 = call i32 @msleep(i32 1)
  %65 = load %struct.metronomefb_par*, %struct.metronomefb_par** %2, align 8
  %66 = getelementptr inbounds %struct.metronomefb_par, %struct.metronomefb_par* %65, i32 0, i32 0
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = load i32 (%struct.metronomefb_par*, i32)*, i32 (%struct.metronomefb_par*, i32)** %68, align 8
  %70 = load %struct.metronomefb_par*, %struct.metronomefb_par** %2, align 8
  %71 = call i32 %69(%struct.metronomefb_par* %70, i32 1)
  %72 = call i32 @msleep(i32 1)
  %73 = load %struct.metronomefb_par*, %struct.metronomefb_par** %2, align 8
  %74 = getelementptr inbounds %struct.metronomefb_par, %struct.metronomefb_par* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load i32 (%struct.metronomefb_par*, i32)*, i32 (%struct.metronomefb_par*, i32)** %76, align 8
  %78 = load %struct.metronomefb_par*, %struct.metronomefb_par** %2, align 8
  %79 = call i32 %77(%struct.metronomefb_par* %78, i32 1)
  %80 = load %struct.metronomefb_par*, %struct.metronomefb_par** %2, align 8
  %81 = getelementptr inbounds %struct.metronomefb_par, %struct.metronomefb_par* %80, i32 0, i32 0
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = bitcast {}** %83 to i32 (%struct.metronomefb_par*)**
  %85 = load i32 (%struct.metronomefb_par*)*, i32 (%struct.metronomefb_par*)** %84, align 8
  %86 = load %struct.metronomefb_par*, %struct.metronomefb_par** %2, align 8
  %87 = call i32 %85(%struct.metronomefb_par* %86)
  ret i32 %87
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
