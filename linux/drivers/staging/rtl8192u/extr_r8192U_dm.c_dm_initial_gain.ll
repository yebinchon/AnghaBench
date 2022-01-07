; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_dm.c_dm_initial_gain.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_dm.c_dm_initial_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64*, i64 }

@dm_initial_gain.initialized = internal global i64 0, align 8
@dm_initial_gain.force_write = internal global i64 0, align 8
@dm_initial_gain.reset_cnt = internal global i64 0, align 8
@dm_digtable = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DIG_CONNECT = common dso_local global i64 0, align 8
@DM_DIG_MAX = common dso_local global i64 0, align 8
@rOFDM0_XAAGCCore1 = common dso_local global i32 0, align 4
@rOFDM0_XBAGCCore1 = common dso_local global i32 0, align 4
@rOFDM0_XCAGCCore1 = common dso_local global i32 0, align 4
@rOFDM0_XDAGCCore1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @dm_initial_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_initial_gain(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %6)
  store %struct.r8192_priv* %7, %struct.r8192_priv** %3, align 8
  store i64 0, i64* %4, align 8
  %8 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 7), align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i64 0, i64* @dm_initial_gain.initialized, align 8
  store i64 0, i64* @dm_initial_gain.reset_cnt, align 8
  br label %11

11:                                               ; preds = %10, %1
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 0), align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 1), align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %57

15:                                               ; preds = %11
  %16 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 1), align 8
  %17 = load i64, i64* @DIG_CONNECT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %44

19:                                               ; preds = %15
  %20 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 2), align 8
  %21 = add nsw i64 %20, 10
  %22 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 3), align 8
  %23 = sub nsw i64 %21, %22
  %24 = load i64, i64* @DM_DIG_MAX, align 8
  %25 = icmp sgt i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i64, i64* @DM_DIG_MAX, align 8
  store i64 %27, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 4), align 8
  br label %43

28:                                               ; preds = %19
  %29 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 2), align 8
  %30 = add nsw i64 %29, 10
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 3), align 8
  %32 = sub nsw i64 %30, %31
  %33 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 5), align 8
  %34 = icmp slt i64 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 5), align 8
  store i64 %36, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 4), align 8
  br label %42

37:                                               ; preds = %28
  %38 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 2), align 8
  %39 = add nsw i64 %38, 10
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 3), align 8
  %41 = sub nsw i64 %39, %40
  store i64 %41, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 4), align 8
  br label %42

42:                                               ; preds = %37, %35
  br label %43

43:                                               ; preds = %42, %26
  br label %56

44:                                               ; preds = %15
  %45 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 4), align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %44
  %48 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %49 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %48, i32 0, i32 0
  %50 = load i64*, i64** %49, align 8
  %51 = getelementptr inbounds i64, i64* %50, i64 0
  %52 = load i64, i64* %51, align 8
  store i64 %52, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 4), align 8
  br label %55

53:                                               ; preds = %44
  %54 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 6), align 8
  store i64 %54, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 4), align 8
  br label %55

55:                                               ; preds = %53, %47
  br label %56

56:                                               ; preds = %55, %43
  br label %63

57:                                               ; preds = %11
  %58 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %59 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 0
  %62 = load i64, i64* %61, align 8
  store i64 %62, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 4), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 6), align 8
  br label %63

63:                                               ; preds = %57, %56
  %64 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %65 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @dm_initial_gain.reset_cnt, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  store i64 1, i64* @dm_initial_gain.force_write, align 8
  %70 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %71 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  store i64 %72, i64* @dm_initial_gain.reset_cnt, align 8
  br label %73

73:                                               ; preds = %69, %63
  %74 = load %struct.net_device*, %struct.net_device** %2, align 8
  %75 = load i32, i32* @rOFDM0_XAAGCCore1, align 4
  %76 = call i32 @read_nic_byte(%struct.net_device* %74, i32 %75, i64* %5)
  %77 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 6), align 8
  %78 = load i64, i64* %5, align 8
  %79 = icmp ne i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %73
  store i64 1, i64* @dm_initial_gain.force_write, align 8
  br label %81

81:                                               ; preds = %80, %73
  %82 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 6), align 8
  %83 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 4), align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %91, label %85

85:                                               ; preds = %81
  %86 = load i64, i64* @dm_initial_gain.initialized, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %85
  %89 = load i64, i64* @dm_initial_gain.force_write, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %110

91:                                               ; preds = %88, %85, %81
  %92 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 4), align 8
  store i64 %92, i64* %4, align 8
  %93 = load %struct.net_device*, %struct.net_device** %2, align 8
  %94 = load i32, i32* @rOFDM0_XAAGCCore1, align 4
  %95 = load i64, i64* %4, align 8
  %96 = call i32 @write_nic_byte(%struct.net_device* %93, i32 %94, i64 %95)
  %97 = load %struct.net_device*, %struct.net_device** %2, align 8
  %98 = load i32, i32* @rOFDM0_XBAGCCore1, align 4
  %99 = load i64, i64* %4, align 8
  %100 = call i32 @write_nic_byte(%struct.net_device* %97, i32 %98, i64 %99)
  %101 = load %struct.net_device*, %struct.net_device** %2, align 8
  %102 = load i32, i32* @rOFDM0_XCAGCCore1, align 4
  %103 = load i64, i64* %4, align 8
  %104 = call i32 @write_nic_byte(%struct.net_device* %101, i32 %102, i64 %103)
  %105 = load %struct.net_device*, %struct.net_device** %2, align 8
  %106 = load i32, i32* @rOFDM0_XDAGCCore1, align 4
  %107 = load i64, i64* %4, align 8
  %108 = call i32 @write_nic_byte(%struct.net_device* %105, i32 %106, i64 %107)
  %109 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 4), align 8
  store i64 %109, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 6), align 8
  store i64 1, i64* @dm_initial_gain.initialized, align 8
  store i64 0, i64* @dm_initial_gain.force_write, align 8
  br label %110

110:                                              ; preds = %91, %88
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @read_nic_byte(%struct.net_device*, i32, i64*) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
