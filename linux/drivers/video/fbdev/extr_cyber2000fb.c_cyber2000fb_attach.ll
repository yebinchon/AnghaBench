; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cyber2000fb.c_cyber2000fb_attach.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_cyber2000fb.c_cyber2000fb_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_5__, i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.cyberpro_info = type { i32, %struct.TYPE_6__*, i32, i32, i32, i32, i32*, i32 }

@int_cfb_info = common dso_local global %struct.TYPE_6__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cyber2000fb_attach(%struct.cyberpro_info* %0, i32 %1) #0 {
  %3 = alloca %struct.cyberpro_info*, align 8
  %4 = alloca i32, align 4
  store %struct.cyberpro_info* %0, %struct.cyberpro_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.TYPE_6__*, %struct.TYPE_6__** @int_cfb_info, align 8
  %6 = icmp ne %struct.TYPE_6__* %5, null
  br i1 %6, label %7, label %51

7:                                                ; preds = %2
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** @int_cfb_info, align 8
  %9 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.cyberpro_info*, %struct.cyberpro_info** %3, align 8
  %13 = getelementptr inbounds %struct.cyberpro_info, %struct.cyberpro_info* %12, i32 0, i32 7
  store i32 %11, i32* %13, align 8
  %14 = load %struct.cyberpro_info*, %struct.cyberpro_info** %3, align 8
  %15 = getelementptr inbounds %struct.cyberpro_info, %struct.cyberpro_info* %14, i32 0, i32 6
  store i32* null, i32** %15, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** @int_cfb_info, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.cyberpro_info*, %struct.cyberpro_info** %3, align 8
  %20 = getelementptr inbounds %struct.cyberpro_info, %struct.cyberpro_info* %19, i32 0, i32 5
  store i32 %18, i32* %20, align 4
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** @int_cfb_info, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.cyberpro_info*, %struct.cyberpro_info** %3, align 8
  %25 = getelementptr inbounds %struct.cyberpro_info, %struct.cyberpro_info* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** @int_cfb_info, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.cyberpro_info*, %struct.cyberpro_info** %3, align 8
  %31 = getelementptr inbounds %struct.cyberpro_info, %struct.cyberpro_info* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** @int_cfb_info, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.cyberpro_info*, %struct.cyberpro_info** %3, align 8
  %38 = getelementptr inbounds %struct.cyberpro_info, %struct.cyberpro_info* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** @int_cfb_info, align 8
  %40 = load %struct.cyberpro_info*, %struct.cyberpro_info** %3, align 8
  %41 = getelementptr inbounds %struct.cyberpro_info, %struct.cyberpro_info* %40, i32 0, i32 1
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %41, align 8
  %42 = load %struct.cyberpro_info*, %struct.cyberpro_info** %3, align 8
  %43 = getelementptr inbounds %struct.cyberpro_info, %struct.cyberpro_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** @int_cfb_info, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @strlcpy(i32 %44, i32 %49, i32 4)
  br label %51

51:                                               ; preds = %7, %2
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** @int_cfb_info, align 8
  %53 = icmp ne %struct.TYPE_6__* %52, null
  %54 = zext i1 %53 to i32
  ret i32 %54
}

declare dso_local i32 @strlcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
