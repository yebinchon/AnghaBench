; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/matrox/extr_matroxfb_maven.c_maven_shutdown_client.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/matrox/extr_matroxfb_maven.c_maven_shutdown_client.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.maven_data = type { %struct.matrox_fb_info* }
%struct.matrox_fb_info = type { %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32*, i32*, i32 }

@MATROXFB_SRC_NONE = common dso_local global i32 0, align 4
@MATROXFB_OUTPUT_MODE_MONITOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @maven_shutdown_client to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @maven_shutdown_client(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.maven_data*, align 8
  %4 = alloca %struct.matrox_fb_info*, align 8
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.maven_data* @i2c_get_clientdata(%struct.i2c_client* %5)
  store %struct.maven_data* %6, %struct.maven_data** %3, align 8
  %7 = load %struct.maven_data*, %struct.maven_data** %3, align 8
  %8 = getelementptr inbounds %struct.maven_data, %struct.maven_data* %7, i32 0, i32 0
  %9 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %8, align 8
  %10 = icmp ne %struct.matrox_fb_info* %9, null
  br i1 %10, label %11, label %47

11:                                               ; preds = %1
  %12 = load %struct.maven_data*, %struct.maven_data** %3, align 8
  %13 = getelementptr inbounds %struct.maven_data, %struct.maven_data* %12, i32 0, i32 0
  %14 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %13, align 8
  store %struct.matrox_fb_info* %14, %struct.matrox_fb_info** %4, align 8
  %15 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %4, align 8
  %16 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i32 @down_write(i32* %17)
  %19 = load i32, i32* @MATROXFB_SRC_NONE, align 4
  %20 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %4, align 8
  %21 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %20, i32 0, i32 1
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 1
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 3
  store i32 %19, i32* %24, align 8
  %25 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %4, align 8
  %26 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %25, i32 0, i32 1
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 1
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 2
  store i32* null, i32** %29, align 8
  %30 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %4, align 8
  %31 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %30, i32 0, i32 1
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 1
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  store i32* null, i32** %34, align 8
  %35 = load i32, i32* @MATROXFB_OUTPUT_MODE_MONITOR, align 4
  %36 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %4, align 8
  %37 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %36, i32 0, i32 1
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i64 1
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 %35, i32* %40, align 8
  %41 = load %struct.matrox_fb_info*, %struct.matrox_fb_info** %4, align 8
  %42 = getelementptr inbounds %struct.matrox_fb_info, %struct.matrox_fb_info* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = call i32 @up_write(i32* %43)
  %45 = load %struct.maven_data*, %struct.maven_data** %3, align 8
  %46 = getelementptr inbounds %struct.maven_data, %struct.maven_data* %45, i32 0, i32 0
  store %struct.matrox_fb_info* null, %struct.matrox_fb_info** %46, align 8
  br label %47

47:                                               ; preds = %11, %1
  ret i32 0
}

declare dso_local %struct.maven_data* @i2c_get_clientdata(%struct.i2c_client*) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
