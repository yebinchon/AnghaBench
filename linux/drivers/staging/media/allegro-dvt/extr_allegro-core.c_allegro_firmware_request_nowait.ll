; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_firmware_request_nowait.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/allegro-dvt/extr_allegro-core.c_allegro_firmware_request_nowait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.allegro_dev = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"al5e_b.fw\00", align 1
@debug = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"requesting firmware '%s'\0A\00", align 1
@THIS_MODULE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@allegro_fw_callback = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.allegro_dev*)* @allegro_firmware_request_nowait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @allegro_firmware_request_nowait(%struct.allegro_dev* %0) #0 {
  %2 = alloca %struct.allegro_dev*, align 8
  %3 = alloca i8*, align 8
  store %struct.allegro_dev* %0, %struct.allegro_dev** %2, align 8
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8** %3, align 8
  %4 = load i32, i32* @debug, align 4
  %5 = load %struct.allegro_dev*, %struct.allegro_dev** %2, align 8
  %6 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %5, i32 0, i32 1
  %7 = load i8*, i8** %3, align 8
  %8 = call i32 @v4l2_dbg(i32 1, i32 %4, i32* %6, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %7)
  %9 = load i32, i32* @THIS_MODULE, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = load %struct.allegro_dev*, %struct.allegro_dev** %2, align 8
  %12 = getelementptr inbounds %struct.allegro_dev, %struct.allegro_dev* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = load %struct.allegro_dev*, %struct.allegro_dev** %2, align 8
  %17 = load i32, i32* @allegro_fw_callback, align 4
  %18 = call i32 @request_firmware_nowait(i32 %9, i32 1, i8* %10, i32* %14, i32 %15, %struct.allegro_dev* %16, i32 %17)
  ret i32 %18
}

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, i8*) #1

declare dso_local i32 @request_firmware_nowait(i32, i32, i8*, i32*, i32, %struct.allegro_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
