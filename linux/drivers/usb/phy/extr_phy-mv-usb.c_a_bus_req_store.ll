; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mv-usb.c_a_bus_req_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/phy/extr_phy-mv-usb.c_a_bus_req_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.mv_otg = type { i32, %struct.TYPE_8__*, %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }

@OTG_STATE_B_IDLE = common dso_local global i64 0, align 8
@OTG_STATE_A_IDLE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"User request: a_bus_req = 1\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @a_bus_req_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a_bus_req_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
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
  %13 = load i64, i64* %9, align 8
  %14 = icmp ugt i64 %13, 2
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %71

16:                                               ; preds = %4
  %17 = load %struct.mv_otg*, %struct.mv_otg** %10, align 8
  %18 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %17, i32 0, i32 3
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @OTG_STATE_B_IDLE, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %35

25:                                               ; preds = %16
  %26 = load %struct.mv_otg*, %struct.mv_otg** %10, align 8
  %27 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @OTG_STATE_A_IDLE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 -1, i32* %5, align 4
  br label %71

35:                                               ; preds = %25, %16
  %36 = load %struct.mv_otg*, %struct.mv_otg** %10, align 8
  %37 = call i32 @mv_otg_enable(%struct.mv_otg* %36)
  %38 = load %struct.mv_otg*, %struct.mv_otg** %10, align 8
  %39 = call i32 @mv_otg_init_irq(%struct.mv_otg* %38)
  %40 = load i8*, i8** %8, align 8
  %41 = getelementptr inbounds i8, i8* %40, i64 0
  %42 = load i8, i8* %41, align 1
  %43 = sext i8 %42 to i32
  %44 = icmp eq i32 %43, 49
  br i1 %44, label %45, label %68

45:                                               ; preds = %35
  %46 = load %struct.mv_otg*, %struct.mv_otg** %10, align 8
  %47 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.mv_otg*, %struct.mv_otg** %10, align 8
  %50 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 1
  store i64 0, i64* %51, align 8
  %52 = load %struct.mv_otg*, %struct.mv_otg** %10, align 8
  %53 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %52, i32 0, i32 1
  %54 = load %struct.TYPE_8__*, %struct.TYPE_8__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  %56 = call i32 @dev_dbg(i32* %55, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  %57 = load %struct.mv_otg*, %struct.mv_otg** %10, align 8
  %58 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %57, i32 0, i32 0
  %59 = call i64 @spin_trylock(i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %45
  %62 = load %struct.mv_otg*, %struct.mv_otg** %10, align 8
  %63 = call i32 @mv_otg_run_state_machine(%struct.mv_otg* %62, i32 0)
  %64 = load %struct.mv_otg*, %struct.mv_otg** %10, align 8
  %65 = getelementptr inbounds %struct.mv_otg, %struct.mv_otg* %64, i32 0, i32 0
  %66 = call i32 @spin_unlock(i32* %65)
  br label %67

67:                                               ; preds = %61, %45
  br label %68

68:                                               ; preds = %67, %35
  %69 = load i64, i64* %9, align 8
  %70 = trunc i64 %69 to i32
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %68, %34, %15
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local %struct.mv_otg* @dev_get_drvdata(%struct.device*) #1

declare dso_local i32 @mv_otg_enable(%struct.mv_otg*) #1

declare dso_local i32 @mv_otg_init_irq(%struct.mv_otg*) #1

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
