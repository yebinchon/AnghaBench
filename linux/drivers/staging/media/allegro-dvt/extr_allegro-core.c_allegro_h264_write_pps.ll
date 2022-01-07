; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_h264_write_pps.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_h264_write_pps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.allegro_channel = type { %struct.allegro_dev* }
%struct.allegro_dev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nal_h264_pps = type { i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.allegro_channel*, i8*, i64)* @allegro_h264_write_pps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allegro_h264_write_pps(%struct.allegro_channel* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.allegro_channel*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.allegro_dev*, align 8
  %9 = alloca %struct.nal_h264_pps*, align 8
  %10 = alloca i32, align 4
  store %struct.allegro_channel* %0, %struct.allegro_channel** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.allegro_channel*, %struct.allegro_channel** %5, align 8
  %12 = getelementptr inbounds %struct.allegro_channel, %struct.allegro_channel* %11, i32 0, i32 0
  %13 = load %struct.allegro_dev*, %struct.allegro_dev** %12, align 8
  store %struct.allegro_dev* %13, %struct.allegro_dev** %8, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.nal_h264_pps* @kzalloc(i32 136, i32 %14)
  store %struct.nal_h264_pps* %15, %struct.nal_h264_pps** %9, align 8
  %16 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %9, align 8
  %17 = icmp ne %struct.nal_h264_pps* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %69

21:                                               ; preds = %3
  %22 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %9, align 8
  %23 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %22, i32 0, i32 17
  store i64 0, i64* %23, align 8
  %24 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %9, align 8
  %25 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %24, i32 0, i32 16
  store i64 0, i64* %25, align 8
  %26 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %9, align 8
  %27 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %26, i32 0, i32 15
  store i64 0, i64* %27, align 8
  %28 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %9, align 8
  %29 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %28, i32 0, i32 14
  store i64 0, i64* %29, align 8
  %30 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %9, align 8
  %31 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %30, i32 0, i32 13
  store i64 0, i64* %31, align 8
  %32 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %9, align 8
  %33 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %32, i32 0, i32 0
  store i32 2, i32* %33, align 8
  %34 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %9, align 8
  %35 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %34, i32 0, i32 1
  store i32 2, i32* %35, align 4
  %36 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %9, align 8
  %37 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %36, i32 0, i32 12
  store i64 0, i64* %37, align 8
  %38 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %9, align 8
  %39 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %38, i32 0, i32 11
  store i64 0, i64* %39, align 8
  %40 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %9, align 8
  %41 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %40, i32 0, i32 10
  store i64 0, i64* %41, align 8
  %42 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %9, align 8
  %43 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %42, i32 0, i32 9
  store i64 0, i64* %43, align 8
  %44 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %9, align 8
  %45 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %44, i32 0, i32 8
  store i64 0, i64* %45, align 8
  %46 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %9, align 8
  %47 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %46, i32 0, i32 2
  store i32 1, i32* %47, align 8
  %48 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %9, align 8
  %49 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %48, i32 0, i32 7
  store i64 0, i64* %49, align 8
  %50 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %9, align 8
  %51 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %50, i32 0, i32 6
  store i64 0, i64* %51, align 8
  %52 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %9, align 8
  %53 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %52, i32 0, i32 5
  store i64 0, i64* %53, align 8
  %54 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %9, align 8
  %55 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %54, i32 0, i32 4
  store i64 0, i64* %55, align 8
  %56 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %9, align 8
  %57 = getelementptr inbounds %struct.nal_h264_pps, %struct.nal_h264_pps* %56, i32 0, i32 3
  store i64 0, i64* %57, align 8
  %58 = load %struct.allegro_dev*, %struct.allegro_dev** %8, align 8
  %59 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i8*, i8** %6, align 8
  %63 = load i64, i64* %7, align 8
  %64 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %9, align 8
  %65 = call i32 @nal_h264_write_pps(i32* %61, i8* %62, i64 %63, %struct.nal_h264_pps* %64)
  store i32 %65, i32* %10, align 4
  %66 = load %struct.nal_h264_pps*, %struct.nal_h264_pps** %9, align 8
  %67 = call i32 @kfree(%struct.nal_h264_pps* %66)
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %4, align 4
  br label %69

69:                                               ; preds = %21, %18
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local %struct.nal_h264_pps* @kzalloc(i32, i32) #1

declare dso_local i32 @nal_h264_write_pps(i32*, i8*, i64, %struct.nal_h264_pps*) #1

declare dso_local i32 @kfree(%struct.nal_h264_pps*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
