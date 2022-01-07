; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_config_common.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/netlogic/extr_xlr_net.c_xlr_config_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xlr_net_priv = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32*, %struct.xlr_fmn_info* }
%struct.xlr_fmn_info = type { i32, i32, i32* }

@R_GMAC_RFR0_BUCKET_SIZE = common dso_local global i64 0, align 8
@R_CC_CPU0_0 = common dso_local global i64 0, align 8
@R_MSG_TX_THRESHOLD = common dso_local global i64 0, align 8
@R_DMACR0 = common dso_local global i64 0, align 8
@R_DMACR1 = common dso_local global i64 0, align 8
@R_DMACR2 = common dso_local global i64 0, align 8
@R_DMACR3 = common dso_local global i64 0, align 8
@R_FREEQCARVE = common dso_local global i64 0, align 8
@xlr_net_fmn_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xlr_net_priv*)* @xlr_config_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlr_config_common(%struct.xlr_net_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.xlr_net_priv*, align 8
  %4 = alloca %struct.xlr_fmn_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.xlr_net_priv* %0, %struct.xlr_net_priv** %3, align 8
  %11 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %3, align 8
  %12 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %11, i32 0, i32 3
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.xlr_fmn_info*, %struct.xlr_fmn_info** %14, align 8
  store %struct.xlr_fmn_info* %15, %struct.xlr_fmn_info** %4, align 8
  %16 = load %struct.xlr_fmn_info*, %struct.xlr_fmn_info** %4, align 8
  %17 = getelementptr inbounds %struct.xlr_fmn_info, %struct.xlr_fmn_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %5, align 4
  %19 = load %struct.xlr_fmn_info*, %struct.xlr_fmn_info** %4, align 8
  %20 = getelementptr inbounds %struct.xlr_fmn_info, %struct.xlr_fmn_info* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %6, align 4
  %22 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %3, align 8
  %23 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  store i32* %26, i32** %7, align 8
  %27 = load i32, i32* %5, align 4
  store i32 %27, i32* %8, align 4
  br label %28

28:                                               ; preds = %49, %1
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp sle i32 %29, %30
  br i1 %31, label %32, label %52

32:                                               ; preds = %28
  %33 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %3, align 8
  %34 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load i64, i64* @R_GMAC_RFR0_BUCKET_SIZE, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = add nsw i64 %36, %38
  %40 = load i32, i32* %5, align 4
  %41 = sext i32 %40 to i64
  %42 = sub nsw i64 %39, %41
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @xlr_nae_wreg(i32 %35, i64 %42, i32 %47)
  br label %49

49:                                               ; preds = %32
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %8, align 4
  br label %28

52:                                               ; preds = %28
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %87, %52
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 8
  br i1 %55, label %56, label %90

56:                                               ; preds = %53
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %83, %56
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 8
  br i1 %59, label %60, label %86

60:                                               ; preds = %57
  %61 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %3, align 8
  %62 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = load i64, i64* @R_CC_CPU0_0, align 8
  %65 = load i32, i32* %8, align 4
  %66 = mul nsw i32 %65, 8
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %64, %67
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = add nsw i64 %68, %70
  %72 = load %struct.xlr_fmn_info*, %struct.xlr_fmn_info** %4, align 8
  %73 = getelementptr inbounds %struct.xlr_fmn_info, %struct.xlr_fmn_info* %72, i32 0, i32 2
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %8, align 4
  %76 = mul nsw i32 %75, 8
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %74, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @xlr_nae_wreg(i32 %63, i64 %71, i32 %81)
  br label %83

83:                                               ; preds = %60
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %57

86:                                               ; preds = %57
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* %8, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %8, align 4
  br label %53

90:                                               ; preds = %53
  %91 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %3, align 8
  %92 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %91, i32 0, i32 2
  %93 = load i32, i32* %92, align 8
  %94 = load i64, i64* @R_MSG_TX_THRESHOLD, align 8
  %95 = call i32 @xlr_nae_wreg(i32 %93, i64 %94, i32 3)
  %96 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %3, align 8
  %97 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = load i64, i64* @R_DMACR0, align 8
  %100 = call i32 @xlr_nae_wreg(i32 %98, i64 %99, i32 -1)
  %101 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %3, align 8
  %102 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 8
  %104 = load i64, i64* @R_DMACR1, align 8
  %105 = call i32 @xlr_nae_wreg(i32 %103, i64 %104, i32 -1)
  %106 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %3, align 8
  %107 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = load i64, i64* @R_DMACR2, align 8
  %110 = call i32 @xlr_nae_wreg(i32 %108, i64 %109, i32 -1)
  %111 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %3, align 8
  %112 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 8
  %114 = load i64, i64* @R_DMACR3, align 8
  %115 = call i32 @xlr_nae_wreg(i32 %113, i64 %114, i32 -1)
  %116 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %3, align 8
  %117 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %116, i32 0, i32 2
  %118 = load i32, i32* %117, align 8
  %119 = load i64, i64* @R_FREEQCARVE, align 8
  %120 = call i32 @xlr_nae_wreg(i32 %118, i64 %119, i32 0)
  %121 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %3, align 8
  %122 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %121, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @xlr_net_fill_rx_ring(i32 %123)
  store i32 %124, i32* %10, align 4
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %90
  %128 = load i32, i32* %10, align 4
  store i32 %128, i32* %2, align 4
  br label %137

129:                                              ; preds = %90
  %130 = load i32, i32* %5, align 4
  %131 = load i32, i32* %6, align 4
  %132 = load i32, i32* @xlr_net_fmn_handler, align 4
  %133 = load %struct.xlr_net_priv*, %struct.xlr_net_priv** %3, align 8
  %134 = getelementptr inbounds %struct.xlr_net_priv, %struct.xlr_net_priv* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @nlm_register_fmn_handler(i32 %130, i32 %131, i32 %132, i32 %135)
  store i32 0, i32* %2, align 4
  br label %137

137:                                              ; preds = %129, %127
  %138 = load i32, i32* %2, align 4
  ret i32 %138
}

declare dso_local i32 @xlr_nae_wreg(i32, i64, i32) #1

declare dso_local i32 @xlr_net_fill_rx_ring(i32) #1

declare dso_local i32 @nlm_register_fmn_handler(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
