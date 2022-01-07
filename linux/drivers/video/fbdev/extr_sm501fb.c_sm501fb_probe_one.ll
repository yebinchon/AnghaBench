; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm501fb.c_sm501fb_probe_one.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_sm501fb.c_sm501fb_probe_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm501fb_info = type { %struct.fb_info**, i32, %struct.TYPE_2__* }
%struct.fb_info = type { i32*, %struct.sm501fb_par* }
%struct.sm501fb_par = type { i32, i32, %struct.sm501fb_info* }
%struct.TYPE_2__ = type { %struct.sm501_platdata_fbsub*, %struct.sm501_platdata_fbsub* }
%struct.sm501_platdata_fbsub = type { i32 }

@HEAD_CRT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"crt\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"panel\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"no data for fb %s (disabled)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sm501fb_info*, i32)* @sm501fb_probe_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm501fb_probe_one(%struct.sm501fb_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sm501fb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sm501_platdata_fbsub*, align 8
  %8 = alloca %struct.sm501fb_par*, align 8
  %9 = alloca %struct.fb_info*, align 8
  store %struct.sm501fb_info* %0, %struct.sm501fb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @HEAD_CRT, align 4
  %12 = icmp eq i32 %10, %11
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0)
  store i8* %14, i8** %6, align 8
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @HEAD_CRT, align 4
  %17 = icmp eq i32 %15, %16
  br i1 %17, label %18, label %24

18:                                               ; preds = %2
  %19 = load %struct.sm501fb_info*, %struct.sm501fb_info** %4, align 8
  %20 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %19, i32 0, i32 2
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load %struct.sm501_platdata_fbsub*, %struct.sm501_platdata_fbsub** %22, align 8
  br label %30

24:                                               ; preds = %2
  %25 = load %struct.sm501fb_info*, %struct.sm501fb_info** %4, align 8
  %26 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %25, i32 0, i32 2
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load %struct.sm501_platdata_fbsub*, %struct.sm501_platdata_fbsub** %28, align 8
  br label %30

30:                                               ; preds = %24, %18
  %31 = phi %struct.sm501_platdata_fbsub* [ %23, %18 ], [ %29, %24 ]
  store %struct.sm501_platdata_fbsub* %31, %struct.sm501_platdata_fbsub** %7, align 8
  %32 = load %struct.sm501_platdata_fbsub*, %struct.sm501_platdata_fbsub** %7, align 8
  %33 = icmp eq %struct.sm501_platdata_fbsub* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load %struct.sm501fb_info*, %struct.sm501fb_info** %4, align 8
  %36 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = load i8*, i8** %6, align 8
  %39 = call i32 @dev_info(i32 %37, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8* %38)
  store i32 0, i32* %3, align 4
  br label %71

40:                                               ; preds = %30
  %41 = load %struct.sm501fb_info*, %struct.sm501fb_info** %4, align 8
  %42 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call %struct.fb_info* @framebuffer_alloc(i32 16, i32 %43)
  store %struct.fb_info* %44, %struct.fb_info** %9, align 8
  %45 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %46 = icmp ne %struct.fb_info* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %71

50:                                               ; preds = %40
  %51 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %52 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %51, i32 0, i32 1
  %53 = load %struct.sm501fb_par*, %struct.sm501fb_par** %52, align 8
  store %struct.sm501fb_par* %53, %struct.sm501fb_par** %8, align 8
  %54 = load %struct.sm501fb_info*, %struct.sm501fb_info** %4, align 8
  %55 = load %struct.sm501fb_par*, %struct.sm501fb_par** %8, align 8
  %56 = getelementptr inbounds %struct.sm501fb_par, %struct.sm501fb_par* %55, i32 0, i32 2
  store %struct.sm501fb_info* %54, %struct.sm501fb_info** %56, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.sm501fb_par*, %struct.sm501fb_par** %8, align 8
  %59 = getelementptr inbounds %struct.sm501fb_par, %struct.sm501fb_par* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.sm501fb_par*, %struct.sm501fb_par** %8, align 8
  %61 = getelementptr inbounds %struct.sm501fb_par, %struct.sm501fb_par* %60, i32 0, i32 1
  %62 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %63 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %62, i32 0, i32 0
  store i32* %61, i32** %63, align 8
  %64 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %65 = load %struct.sm501fb_info*, %struct.sm501fb_info** %4, align 8
  %66 = getelementptr inbounds %struct.sm501fb_info, %struct.sm501fb_info* %65, i32 0, i32 0
  %67 = load %struct.fb_info**, %struct.fb_info*** %66, align 8
  %68 = load i32, i32* %5, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.fb_info*, %struct.fb_info** %67, i64 %69
  store %struct.fb_info* %64, %struct.fb_info** %70, align 8
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %50, %47, %34
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @dev_info(i32, i8*, i8*) #1

declare dso_local %struct.fb_info* @framebuffer_alloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
