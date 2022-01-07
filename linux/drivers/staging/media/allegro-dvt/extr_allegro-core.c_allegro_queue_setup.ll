; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_queue_setup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_queue_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vb2_queue = type { i32 }
%struct.device = type { i32 }
%struct.allegro_channel = type { i32, i32, %struct.allegro_dev* }
%struct.allegro_dev = type { i32 }

@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"%s: queue setup[%s]: nplanes = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"capture\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"REQBUFS\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"CREATE_BUFS\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vb2_queue*, i32*, i32*, i32*, %struct.device**)* @allegro_queue_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allegro_queue_setup(%struct.vb2_queue* %0, i32* %1, i32* %2, i32* %3, %struct.device** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vb2_queue*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.device**, align 8
  %12 = alloca %struct.allegro_channel*, align 8
  %13 = alloca %struct.allegro_dev*, align 8
  store %struct.vb2_queue* %0, %struct.vb2_queue** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store %struct.device** %4, %struct.device*** %11, align 8
  %14 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %15 = call %struct.allegro_channel* @vb2_get_drv_priv(%struct.vb2_queue* %14)
  store %struct.allegro_channel* %15, %struct.allegro_channel** %12, align 8
  %16 = load %struct.allegro_channel*, %struct.allegro_channel** %12, align 8
  %17 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %16, i32 0, i32 2
  %18 = load %struct.allegro_dev*, %struct.allegro_dev** %17, align 8
  store %struct.allegro_dev* %18, %struct.allegro_dev** %13, align 8
  %19 = load i32, i32* @debug, align 4
  %20 = load %struct.allegro_dev*, %struct.allegro_dev** %13, align 8
  %21 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %20, i32 0, i32 0
  %22 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %23 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %24)
  %26 = icmp ne i64 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0)
  %29 = load i32*, i32** %9, align 8
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i64 0, i64 0)
  %34 = load i32*, i32** %9, align 8
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @v4l2_dbg(i32 2, i32 %19, i32* %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i8* %28, i8* %33, i32 %35)
  %37 = load i32*, i32** %9, align 8
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %71

40:                                               ; preds = %5
  %41 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %42 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %40
  %47 = load i32*, i32** %10, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.allegro_channel*, %struct.allegro_channel** %12, align 8
  %51 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp ult i32 %49, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %46
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %6, align 4
  br label %92

57:                                               ; preds = %46
  br label %70

58:                                               ; preds = %40
  %59 = load i32*, i32** %10, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.allegro_channel*, %struct.allegro_channel** %12, align 8
  %63 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = icmp ult i32 %61, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %6, align 4
  br label %92

69:                                               ; preds = %58
  br label %70

70:                                               ; preds = %69, %57
  br label %91

71:                                               ; preds = %5
  %72 = load i32*, i32** %9, align 8
  store i32 1, i32* %72, align 4
  %73 = load %struct.vb2_queue*, %struct.vb2_queue** %7, align 8
  %74 = getelementptr inbounds %struct.vb2_queue, %struct.vb2_queue* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @V4L2_TYPE_IS_OUTPUT(i32 %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %71
  %79 = load %struct.allegro_channel*, %struct.allegro_channel** %12, align 8
  %80 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load i32*, i32** %10, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  store i32 %81, i32* %83, align 4
  br label %90

84:                                               ; preds = %71
  %85 = load %struct.allegro_channel*, %struct.allegro_channel** %12, align 8
  %86 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32*, i32** %10, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 0
  store i32 %87, i32* %89, align 4
  br label %90

90:                                               ; preds = %84, %78
  br label %91

91:                                               ; preds = %90, %70
  store i32 0, i32* %6, align 4
  br label %92

92:                                               ; preds = %91, %66, %54
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local %struct.allegro_channel* @vb2_get_drv_priv(%struct.vb2_queue*) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i8*, i8*, i32) #1

declare dso_local i64 @V4L2_TYPE_IS_OUTPUT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
