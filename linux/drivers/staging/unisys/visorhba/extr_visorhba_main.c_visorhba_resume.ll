; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/unisys/visorhba/extr_visorhba_main.c_visorhba_resume.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/unisys/visorhba/extr_visorhba_main.c_visorhba_resume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.visor_device = type { i32 }
%struct.visorhba_devdata = type { i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@process_incoming_rsps = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"vhba_incming\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.visor_device*, i32)* @visorhba_resume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @visorhba_resume(%struct.visor_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.visor_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.visorhba_devdata*, align 8
  store %struct.visor_device* %0, %struct.visor_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.visor_device*, %struct.visor_device** %4, align 8
  %8 = getelementptr inbounds %struct.visor_device, %struct.visor_device* %7, i32 0, i32 0
  %9 = call %struct.visorhba_devdata* @dev_get_drvdata(i32* %8)
  store %struct.visorhba_devdata* %9, %struct.visorhba_devdata** %6, align 8
  %10 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %6, align 8
  %11 = icmp ne %struct.visorhba_devdata* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %38

15:                                               ; preds = %2
  %16 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %6, align 8
  %17 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %6, align 8
  %22 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %20
  %26 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %6, align 8
  %27 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %26, i32 0, i32 1
  store i32 1, i32* %27, align 4
  br label %28

28:                                               ; preds = %25, %20, %15
  %29 = load i32, i32* @process_incoming_rsps, align 4
  %30 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %6, align 8
  %31 = call i32 @visor_thread_start(i32 %29, %struct.visorhba_devdata* %30, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %6, align 8
  %33 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %6, align 8
  %35 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %34, i32 0, i32 0
  store i32 0, i32* %35, align 4
  %36 = load %struct.visorhba_devdata*, %struct.visorhba_devdata** %6, align 8
  %37 = getelementptr inbounds %struct.visorhba_devdata, %struct.visorhba_devdata* %36, i32 0, i32 1
  store i32 0, i32* %37, align 4
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %28, %12
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.visorhba_devdata* @dev_get_drvdata(i32*) #1

declare dso_local i32 @visor_thread_start(i32, %struct.visorhba_devdata*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
