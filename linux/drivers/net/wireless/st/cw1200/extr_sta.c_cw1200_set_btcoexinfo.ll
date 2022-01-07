; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_set_btcoexinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_set_btcoexinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i64, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.wsm_override_internal_txrate = type { i8*, i8* }

@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [25 x i8] c"[STA] STA has ERP rates\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"[STA] STA has non ERP rates\0A\00", align 1
@.str.2 = private unnamed_addr constant [74 x i8] c"[STA] BTCOEX_INFO MODE %d, internalTxRate : %x, nonErpInternalTxRate: %x\0A\00", align 1
@WSM_MIB_ID_OVERRIDE_INTERNAL_TX_RATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*)* @cw1200_set_btcoexinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cw1200_set_btcoexinfo(%struct.cw1200_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cw1200_common*, align 8
  %4 = alloca %struct.wsm_override_internal_txrate, align 8
  %5 = alloca i32, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %3, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %7 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %18

11:                                               ; preds = %1
  %12 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %13 = call i32 @cw1200_upload_pspoll(%struct.cw1200_common* %12)
  %14 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %15 = call i32 @cw1200_upload_null(%struct.cw1200_common* %14)
  %16 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %17 = call i32 @cw1200_upload_qosnull(%struct.cw1200_common* %16)
  br label %19

18:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %88

19:                                               ; preds = %11
  %20 = call i32 @memset(%struct.wsm_override_internal_txrate* %4, i32 0, i32 16)
  %21 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %22 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %21, i32 0, i32 3
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %60, label %27

27:                                               ; preds = %19
  %28 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %29 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %31, -16
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %43

34:                                               ; preds = %27
  %35 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %37 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %36, i32 0, i32 1
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, -16
  %41 = call i8* @__ffs(i32 %40)
  %42 = getelementptr inbounds %struct.wsm_override_internal_txrate, %struct.wsm_override_internal_txrate* %4, i32 0, i32 1
  store i8* %41, i8** %42, align 8
  br label %52

43:                                               ; preds = %27
  %44 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %46 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @le32_to_cpu(i32 %48)
  %50 = call i8* @__ffs(i32 %49)
  %51 = getelementptr inbounds %struct.wsm_override_internal_txrate, %struct.wsm_override_internal_txrate* %4, i32 0, i32 1
  store i8* %50, i8** %51, align 8
  br label %52

52:                                               ; preds = %43, %34
  %53 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %54 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @le32_to_cpu(i32 %56)
  %58 = call i8* @__ffs(i32 %57)
  %59 = getelementptr inbounds %struct.wsm_override_internal_txrate, %struct.wsm_override_internal_txrate* %4, i32 0, i32 0
  store i8* %58, i8** %59, align 8
  br label %75

60:                                               ; preds = %19
  %61 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %62 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = and i32 %64, -16
  %66 = call i8* @__ffs(i32 %65)
  %67 = getelementptr inbounds %struct.wsm_override_internal_txrate, %struct.wsm_override_internal_txrate* %4, i32 0, i32 1
  store i8* %66, i8** %67, align 8
  %68 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %69 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, -16
  %73 = call i8* @__ffs(i32 %72)
  %74 = getelementptr inbounds %struct.wsm_override_internal_txrate, %struct.wsm_override_internal_txrate* %4, i32 0, i32 0
  store i8* %73, i8** %74, align 8
  br label %75

75:                                               ; preds = %60, %52
  %76 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %77 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds %struct.wsm_override_internal_txrate, %struct.wsm_override_internal_txrate* %4, i32 0, i32 1
  %80 = load i8*, i8** %79, align 8
  %81 = getelementptr inbounds %struct.wsm_override_internal_txrate, %struct.wsm_override_internal_txrate* %4, i32 0, i32 0
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.2, i64 0, i64 0), i64 %78, i8* %80, i8* %82)
  %84 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %85 = load i32, i32* @WSM_MIB_ID_OVERRIDE_INTERNAL_TX_RATE, align 4
  %86 = call i32 @wsm_write_mib(%struct.cw1200_common* %84, i32 %85, %struct.wsm_override_internal_txrate* %4, i32 16)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  store i32 %87, i32* %2, align 4
  br label %88

88:                                               ; preds = %75, %18
  %89 = load i32, i32* %2, align 4
  ret i32 %89
}

declare dso_local i32 @cw1200_upload_pspoll(%struct.cw1200_common*) #1

declare dso_local i32 @cw1200_upload_null(%struct.cw1200_common*) #1

declare dso_local i32 @cw1200_upload_qosnull(%struct.cw1200_common*) #1

declare dso_local i32 @memset(%struct.wsm_override_internal_txrate*, i32, i32) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local i8* @__ffs(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @wsm_write_mib(%struct.cw1200_common*, i32, %struct.wsm_override_internal_txrate*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
