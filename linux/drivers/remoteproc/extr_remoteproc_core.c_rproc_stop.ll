; ModuleID = '/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_stop.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/remoteproc/extr_remoteproc_core.c_rproc_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rproc = type { i32, i32, %struct.TYPE_2__*, i32, i32, %struct.device }
%struct.TYPE_2__ = type { i32 (%struct.rproc*)* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"can't stop rproc: %d\0A\00", align 1
@RPROC_OFFLINE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"stopped remote processor %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rproc*, i32)* @rproc_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rproc_stop(%struct.rproc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rproc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.rproc* %0, %struct.rproc** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.rproc*, %struct.rproc** %4, align 8
  %9 = getelementptr inbounds %struct.rproc, %struct.rproc* %8, i32 0, i32 5
  store %struct.device* %9, %struct.device** %6, align 8
  %10 = load %struct.rproc*, %struct.rproc** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 @rproc_stop_subdevices(%struct.rproc* %10, i32 %11)
  %13 = load %struct.rproc*, %struct.rproc** %4, align 8
  %14 = getelementptr inbounds %struct.rproc, %struct.rproc* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.rproc*, %struct.rproc** %4, align 8
  %17 = getelementptr inbounds %struct.rproc, %struct.rproc* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  %18 = load %struct.rproc*, %struct.rproc** %4, align 8
  %19 = getelementptr inbounds %struct.rproc, %struct.rproc* %18, i32 0, i32 2
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32 (%struct.rproc*)*, i32 (%struct.rproc*)** %21, align 8
  %23 = load %struct.rproc*, %struct.rproc** %4, align 8
  %24 = call i32 %22(%struct.rproc* %23)
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %2
  %28 = load %struct.device*, %struct.device** %6, align 8
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @dev_err(%struct.device* %28, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %7, align 4
  store i32 %31, i32* %3, align 4
  br label %43

32:                                               ; preds = %2
  %33 = load %struct.rproc*, %struct.rproc** %4, align 8
  %34 = call i32 @rproc_unprepare_subdevices(%struct.rproc* %33)
  %35 = load i32, i32* @RPROC_OFFLINE, align 4
  %36 = load %struct.rproc*, %struct.rproc** %4, align 8
  %37 = getelementptr inbounds %struct.rproc, %struct.rproc* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.device*, %struct.device** %6, align 8
  %39 = load %struct.rproc*, %struct.rproc** %4, align 8
  %40 = getelementptr inbounds %struct.rproc, %struct.rproc* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @dev_info(%struct.device* %38, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  store i32 0, i32* %3, align 4
  br label %43

43:                                               ; preds = %32, %27
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @rproc_stop_subdevices(%struct.rproc*, i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

declare dso_local i32 @rproc_unprepare_subdevices(%struct.rproc*) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
