; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mv-usb.c_a_bus_drop_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mv-usb.c_a_bus_drop_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.mv_otg = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"User request: a_bus_drop = 0\0A\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"User request: a_bus_drop = 1\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"User request: and a_bus_req = 0\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @a_bus_drop_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a_bus_drop_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.mv_otg*, align 8
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.device*, %struct.device** %6, align 8
  %12 = call %struct.mv_otg* @dev_get_drvdata(%struct.device* %11)
  store %struct.mv_otg* %12, %struct.mv_otg** %10, align 8
  %13 = load %struct.mv_otg*, %struct.mv_otg** %10, align 8
  %14 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %78

21:                                               ; preds = %4
  %22 = load i64, i64* %9, align 8
  %23 = icmp ugt i64 %22, 2
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 -1, i32* %5, align 4
  br label %78

25:                                               ; preds = %21
  %26 = load i8*, i8** %8, align 8
  %27 = getelementptr inbounds i8, i8* %26, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = sext i8 %28 to i32
  %30 = icmp eq i32 %29, 48
  br i1 %30, label %31, label %40

31:                                               ; preds = %25
  %32 = load %struct.mv_otg*, %struct.mv_otg** %10, align 8
  %33 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  store i32 0, i32* %34, align 8
  %35 = load %struct.mv_otg*, %struct.mv_otg** %10, align 8
  %36 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %35, i32 0, i32 1
  %37 = load %struct.TYPE_8__*, %struct.TYPE_8__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = call i32 @dev_dbg(i32* %38, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %64

40:                                               ; preds = %25
  %41 = load i8*, i8** %8, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 49
  br i1 %45, label %46, label %63

46:                                               ; preds = %40
  %47 = load %struct.mv_otg*, %struct.mv_otg** %10, align 8
  %48 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  store i32 1, i32* %49, align 8
  %50 = load %struct.mv_otg*, %struct.mv_otg** %10, align 8
  %51 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  %53 = load %struct.mv_otg*, %struct.mv_otg** %10, align 8
  %54 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %53, i32 0, i32 1
  %55 = load %struct.TYPE_8__*, %struct.TYPE_8__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %55, i32 0, i32 0
  %57 = call i32 @dev_dbg(i32* %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %58 = load %struct.mv_otg*, %struct.mv_otg** %10, align 8
  %59 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %58, i32 0, i32 1
  %60 = load %struct.TYPE_8__*, %struct.TYPE_8__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %60, i32 0, i32 0
  %62 = call i32 @dev_dbg(i32* %61, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  br label %63

63:                                               ; preds = %46, %40
  br label %64

64:                                               ; preds = %63, %31
  %65 = load %struct.mv_otg*, %struct.mv_otg** %10, align 8
  %66 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %65, i32 0, i32 0
  %67 = call i64 @spin_trylock(i32* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %75

69:                                               ; preds = %64
  %70 = load %struct.mv_otg*, %struct.mv_otg** %10, align 8
  %71 = call i32 @mv_otg_run_state_machine(%struct.mv_otg* %70, i32 0)
  %72 = load %struct.mv_otg*, %struct.mv_otg** %10, align 8
  %73 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %72, i32 0, i32 0
  %74 = call i32 @spin_unlock(i32* %73)
  br label %75

75:                                               ; preds = %69, %64
  %76 = load i64, i64* %9, align 8
  %77 = trunc i64 %76 to i32
  store i32 %77, i32* %5, align 4
  br label %78

78:                                               ; preds = %75, %24, %20
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local %struct.mv_otg* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i64 @spin_trylock(i32*) #1

declare dso_local i32 @mv_otg_run_state_machine(%struct.mv_otg*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
