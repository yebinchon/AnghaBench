; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_stat_human_status_show.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/atm/extr_ueagle-atm.c_stat_human_status_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.uea_softc = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4
@uea_mutex = common dso_local global i32 0, align 4
@EAGLE_IV = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"Modem is booting\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Modem is initializing\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"Modem is operational\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Modem synchronization failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [24 x i8] c"Modem state is unknown\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*)* @stat_human_status_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stat_human_status_show(%struct.device* %0, %struct.device_attribute* %1, i8* %2) #0 {
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.device_attribute*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.uea_softc*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* @ENODEV, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %7, align 4
  %12 = call i32 @mutex_lock(i32* @uea_mutex)
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = call %struct.uea_softc* @dev_to_uea(%struct.device* %13)
  store %struct.uea_softc* %14, %struct.uea_softc** %9, align 8
  %15 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %16 = icmp ne %struct.uea_softc* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  br label %60

18:                                               ; preds = %3
  %19 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %20 = call i64 @UEA_CHIP_VERSION(%struct.uea_softc* %19)
  %21 = load i64, i64* @EAGLE_IV, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %35

23:                                               ; preds = %18
  %24 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %25 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %33 [
    i32 0, label %29
    i32 1, label %29
    i32 3, label %29
    i32 4, label %29
    i32 5, label %30
    i32 6, label %30
    i32 9, label %30
    i32 10, label %30
    i32 7, label %31
    i32 2, label %32
  ]

29:                                               ; preds = %23, %23, %23, %23
  store i32 0, i32* %8, align 4
  br label %34

30:                                               ; preds = %23, %23, %23, %23
  store i32 1, i32* %8, align 4
  br label %34

31:                                               ; preds = %23
  store i32 2, i32* %8, align 4
  br label %34

32:                                               ; preds = %23
  store i32 3, i32* %8, align 4
  br label %34

33:                                               ; preds = %23
  store i32 4, i32* %8, align 4
  br label %34

34:                                               ; preds = %33, %32, %31, %30, %29
  br label %42

35:                                               ; preds = %18
  %36 = load %struct.uea_softc*, %struct.uea_softc** %9, align 8
  %37 = getelementptr inbounds %struct.uea_softc, %struct.uea_softc* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @GET_STATUS(i32 %40)
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %35, %34
  %43 = load i32, i32* %8, align 4
  switch i32 %43, label %56 [
    i32 0, label %44
    i32 1, label %47
    i32 2, label %50
    i32 3, label %53
  ]

44:                                               ; preds = %42
  %45 = load i8*, i8** %6, align 8
  %46 = call i32 @sprintf(i8* %45, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %46, i32* %7, align 4
  br label %59

47:                                               ; preds = %42
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @sprintf(i8* %48, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  store i32 %49, i32* %7, align 4
  br label %59

50:                                               ; preds = %42
  %51 = load i8*, i8** %6, align 8
  %52 = call i32 @sprintf(i8* %51, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  store i32 %52, i32* %7, align 4
  br label %59

53:                                               ; preds = %42
  %54 = load i8*, i8** %6, align 8
  %55 = call i32 @sprintf(i8* %54, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  store i32 %55, i32* %7, align 4
  br label %59

56:                                               ; preds = %42
  %57 = load i8*, i8** %6, align 8
  %58 = call i32 @sprintf(i8* %57, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %56, %53, %50, %47, %44
  br label %60

60:                                               ; preds = %59, %17
  %61 = call i32 @mutex_unlock(i32* @uea_mutex)
  %62 = load i32, i32* %7, align 4
  ret i32 %62
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.uea_softc* @dev_to_uea(%struct.device*) #1

declare dso_local i64 @UEA_CHIP_VERSION(%struct.uea_softc*) #1

declare dso_local i32 @GET_STATUS(i32) #1

declare dso_local i32 @sprintf(i8*, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
