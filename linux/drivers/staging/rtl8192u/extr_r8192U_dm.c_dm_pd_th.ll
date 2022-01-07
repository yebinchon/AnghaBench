; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_dm.c_dm_pd_th.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/extr_r8192U_dm.c_dm_pd_th.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.net_device = type { i32 }
%struct.r8192_priv = type { i64, i64 }

@dm_pd_th.initialized = internal global i32 0, align 4
@dm_pd_th.force_write = internal global i32 0, align 4
@dm_pd_th.reset_cnt = internal global i64 0, align 8
@dm_digtable = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@DIG_CONNECT = common dso_local global i64 0, align 8
@DIG_PD_AT_HIGH_POWER = common dso_local global i64 0, align 8
@DIG_PD_AT_LOW_POWER = common dso_local global i64 0, align 8
@DIG_PD_AT_NORMAL_POWER = common dso_local global i64 0, align 8
@HT_CHANNEL_WIDTH_20 = common dso_local global i64 0, align 8
@rOFDM0_XATxAFE = common dso_local global i64 0, align 8
@rOFDM0_RxDetector1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @dm_pd_th to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dm_pd_th(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.r8192_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.r8192_priv* @ieee80211_priv(%struct.net_device* %4)
  store %struct.r8192_priv* %5, %struct.r8192_priv** %3, align 8
  %6 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 9), align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* @dm_pd_th.initialized, align 4
  store i64 0, i64* @dm_pd_th.reset_cnt, align 8
  br label %9

9:                                                ; preds = %8, %1
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 0), align 8
  %11 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 1), align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %47

13:                                               ; preds = %9
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 1), align 8
  %15 = load i64, i64* @DIG_CONNECT, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %44

17:                                               ; preds = %13
  %18 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 2), align 8
  %19 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 3), align 8
  %20 = icmp sge i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %17
  %22 = load i64, i64* @DIG_PD_AT_HIGH_POWER, align 8
  store i64 %22, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 4), align 8
  br label %43

23:                                               ; preds = %17
  %24 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 2), align 8
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 5), align 8
  %26 = icmp sle i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i64, i64* @DIG_PD_AT_LOW_POWER, align 8
  store i64 %28, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 4), align 8
  br label %42

29:                                               ; preds = %23
  %30 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 2), align 8
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 6), align 8
  %32 = icmp sge i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %29
  %34 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 2), align 8
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 7), align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i64, i64* @DIG_PD_AT_NORMAL_POWER, align 8
  store i64 %38, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 4), align 8
  br label %41

39:                                               ; preds = %33, %29
  %40 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 8), align 8
  store i64 %40, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 4), align 8
  br label %41

41:                                               ; preds = %39, %37
  br label %42

42:                                               ; preds = %41, %27
  br label %43

43:                                               ; preds = %42, %21
  br label %46

44:                                               ; preds = %13
  %45 = load i64, i64* @DIG_PD_AT_LOW_POWER, align 8
  store i64 %45, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 4), align 8
  br label %46

46:                                               ; preds = %44, %43
  br label %49

47:                                               ; preds = %9
  %48 = load i64, i64* @DIG_PD_AT_LOW_POWER, align 8
  store i64 %48, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 4), align 8
  br label %49

49:                                               ; preds = %47, %46
  %50 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %51 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @dm_pd_th.reset_cnt, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  store i32 1, i32* @dm_pd_th.force_write, align 4
  %56 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %57 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  store i64 %58, i64* @dm_pd_th.reset_cnt, align 8
  br label %59

59:                                               ; preds = %55, %49
  %60 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 8), align 8
  %61 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 4), align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %69, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* @dm_pd_th.initialized, align 4
  %65 = icmp sle i32 %64, 3
  br i1 %65, label %69, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* @dm_pd_th.force_write, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %139

69:                                               ; preds = %66, %63, %59
  %70 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 4), align 8
  %71 = load i64, i64* @DIG_PD_AT_LOW_POWER, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %69
  %74 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %75 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @HT_CHANNEL_WIDTH_20, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %73
  %80 = load %struct.net_device*, %struct.net_device** %2, align 8
  %81 = load i64, i64* @rOFDM0_XATxAFE, align 8
  %82 = add nsw i64 %81, 3
  %83 = call i32 @write_nic_byte(%struct.net_device* %80, i64 %82, i32 0)
  br label %88

84:                                               ; preds = %73
  %85 = load %struct.net_device*, %struct.net_device** %2, align 8
  %86 = load i64, i64* @rOFDM0_RxDetector1, align 8
  %87 = call i32 @write_nic_byte(%struct.net_device* %85, i64 %86, i32 66)
  br label %88

88:                                               ; preds = %84, %79
  br label %131

89:                                               ; preds = %69
  %90 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 4), align 8
  %91 = load i64, i64* @DIG_PD_AT_NORMAL_POWER, align 8
  %92 = icmp eq i64 %90, %91
  br i1 %92, label %93, label %109

93:                                               ; preds = %89
  %94 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %95 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @HT_CHANNEL_WIDTH_20, align 8
  %98 = icmp ne i64 %96, %97
  br i1 %98, label %99, label %104

99:                                               ; preds = %93
  %100 = load %struct.net_device*, %struct.net_device** %2, align 8
  %101 = load i64, i64* @rOFDM0_XATxAFE, align 8
  %102 = add nsw i64 %101, 3
  %103 = call i32 @write_nic_byte(%struct.net_device* %100, i64 %102, i32 32)
  br label %108

104:                                              ; preds = %93
  %105 = load %struct.net_device*, %struct.net_device** %2, align 8
  %106 = load i64, i64* @rOFDM0_RxDetector1, align 8
  %107 = call i32 @write_nic_byte(%struct.net_device* %105, i64 %106, i32 68)
  br label %108

108:                                              ; preds = %104, %99
  br label %130

109:                                              ; preds = %89
  %110 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 4), align 8
  %111 = load i64, i64* @DIG_PD_AT_HIGH_POWER, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %129

113:                                              ; preds = %109
  %114 = load %struct.r8192_priv*, %struct.r8192_priv** %3, align 8
  %115 = getelementptr inbounds %struct.r8192_priv, %struct.r8192_priv* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @HT_CHANNEL_WIDTH_20, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %124

119:                                              ; preds = %113
  %120 = load %struct.net_device*, %struct.net_device** %2, align 8
  %121 = load i64, i64* @rOFDM0_XATxAFE, align 8
  %122 = add nsw i64 %121, 3
  %123 = call i32 @write_nic_byte(%struct.net_device* %120, i64 %122, i32 16)
  br label %128

124:                                              ; preds = %113
  %125 = load %struct.net_device*, %struct.net_device** %2, align 8
  %126 = load i64, i64* @rOFDM0_RxDetector1, align 8
  %127 = call i32 @write_nic_byte(%struct.net_device* %125, i64 %126, i32 67)
  br label %128

128:                                              ; preds = %124, %119
  br label %129

129:                                              ; preds = %128, %109
  br label %130

130:                                              ; preds = %129, %108
  br label %131

131:                                              ; preds = %130, %88
  %132 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 4), align 8
  store i64 %132, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @dm_digtable, i32 0, i32 8), align 8
  %133 = load i32, i32* @dm_pd_th.initialized, align 4
  %134 = icmp sle i32 %133, 3
  br i1 %134, label %135, label %138

135:                                              ; preds = %131
  %136 = load i32, i32* @dm_pd_th.initialized, align 4
  %137 = add nsw i32 %136, 1
  store i32 %137, i32* @dm_pd_th.initialized, align 4
  br label %138

138:                                              ; preds = %135, %131
  store i32 0, i32* @dm_pd_th.force_write, align 4
  br label %139

139:                                              ; preds = %138, %66
  ret void
}

declare dso_local %struct.r8192_priv* @ieee80211_priv(%struct.net_device*) #1

declare dso_local i32 @write_nic_byte(%struct.net_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
