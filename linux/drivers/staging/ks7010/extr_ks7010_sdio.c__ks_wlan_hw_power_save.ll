; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c__ks_wlan_hw_power_save.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/ks7010/extr_ks7010_sdio.c__ks_wlan_hw_power_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_wlan_private = type { i64, i32, i32, %struct.TYPE_4__, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { i64, i64 }

@POWER_MGMT_ACTIVE = common dso_local global i64 0, align 8
@MODE_INFRASTRUCTURE = common dso_local global i64 0, align 8
@DEVICE_STATE_SLEEP = common dso_local global i64 0, align 8
@PS_SNOOZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [107 x i8] c"STATUS:\0A- psstatus.status = %d\0A- psstatus.confirm_wait = %d\0A- psstatus.snooze_guard = %d\0A- txq_count = %d\0A\00", align 1
@INT_PENDING_REG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"read INT_PENDING_REG\0A\00", align 1
@GCR_B_REG = common dso_local global i32 0, align 4
@GCR_B_DOZE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"write GCR_B_REG\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_wlan_private*)* @_ks_wlan_hw_power_save to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_ks_wlan_hw_power_save(%struct.ks_wlan_private* %0) #0 {
  %2 = alloca %struct.ks_wlan_private*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.ks_wlan_private* %0, %struct.ks_wlan_private** %2, align 8
  %5 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %6 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %5, i32 0, i32 6
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @POWER_MGMT_ACTIVE, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %123

12:                                               ; preds = %1
  %13 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %14 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %13, i32 0, i32 6
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MODE_INFRASTRUCTURE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %123

20:                                               ; preds = %12
  %21 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %22 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @is_connect_status(i32 %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %20
  br label %123

27:                                               ; preds = %20
  %28 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %29 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @DEVICE_STATE_SLEEP, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27
  br label %123

34:                                               ; preds = %27
  %35 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %36 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = call i64 @atomic_read(i32* %37)
  %39 = load i64, i64* @PS_SNOOZE, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %123

42:                                               ; preds = %34
  %43 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %44 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %47 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call i64 @atomic_read(i32* %48)
  %50 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %51 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %50, i32 0, i32 3
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  %53 = call i64 @atomic_read(i32* %52)
  %54 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %55 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 1
  %57 = call i64 @atomic_read(i32* %56)
  %58 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %59 = call i32 @txq_count(%struct.ks_wlan_private* %58)
  %60 = call i32 @netdev_dbg(i32 %45, i8* getelementptr inbounds ([107 x i8], [107 x i8]* @.str, i64 0, i64 0), i64 %49, i64 %53, i64 %57, i32 %59)
  %61 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %62 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = call i64 @atomic_read(i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %76, label %66

66:                                               ; preds = %42
  %67 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %68 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %67, i32 0, i32 3
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 1
  %70 = call i64 @atomic_read(i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %76, label %72

72:                                               ; preds = %66
  %73 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %74 = call i64 @txq_has_space(%struct.ks_wlan_private* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %72, %66, %42
  %77 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %78 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %81 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %80, i32 0, i32 1
  %82 = call i32 @queue_delayed_work(i32 %79, i32* %81, i32 0)
  br label %123

83:                                               ; preds = %72
  %84 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %85 = load i32, i32* @INT_PENDING_REG, align 4
  %86 = call i32 @ks7010_sdio_readb(%struct.ks_wlan_private* %84, i32 %85, i64* %3)
  store i32 %86, i32* %4, align 4
  %87 = load i32, i32* %4, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %94

89:                                               ; preds = %83
  %90 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %91 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %90, i32 0, i32 4
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @netdev_err(i32 %92, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %116

94:                                               ; preds = %83
  %95 = load i64, i64* %3, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  br label %116

98:                                               ; preds = %94
  %99 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %100 = load i32, i32* @GCR_B_REG, align 4
  %101 = load i32, i32* @GCR_B_DOZE, align 4
  %102 = call i32 @ks7010_sdio_writeb(%struct.ks_wlan_private* %99, i32 %100, i32 %101)
  store i32 %102, i32* %4, align 4
  %103 = load i32, i32* %4, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %110

105:                                              ; preds = %98
  %106 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %107 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @netdev_err(i32 %108, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  br label %116

110:                                              ; preds = %98
  %111 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %112 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %111, i32 0, i32 3
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i64, i64* @PS_SNOOZE, align 8
  %115 = call i32 @atomic_set(i32* %113, i64 %114)
  br label %123

116:                                              ; preds = %105, %97, %89
  %117 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %118 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.ks_wlan_private*, %struct.ks_wlan_private** %2, align 8
  %121 = getelementptr inbounds %struct.ks_wlan_private, %struct.ks_wlan_private* %120, i32 0, i32 1
  %122 = call i32 @queue_delayed_work(i32 %119, i32* %121, i32 1)
  br label %123

123:                                              ; preds = %116, %110, %76, %41, %33, %26, %19, %11
  ret void
}

declare dso_local i32 @is_connect_status(i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i64, i64, i64, i32) #1

declare dso_local i32 @txq_count(%struct.ks_wlan_private*) #1

declare dso_local i64 @txq_has_space(%struct.ks_wlan_private*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @ks7010_sdio_readb(%struct.ks_wlan_private*, i32, i64*) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @ks7010_sdio_writeb(%struct.ks_wlan_private*, i32, i32) #1

declare dso_local i32 @atomic_set(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
