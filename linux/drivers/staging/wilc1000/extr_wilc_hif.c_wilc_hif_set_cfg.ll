; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_hif_set_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_hif_set_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc_vif = type { i32 }
%struct.cfg_param_attr = type { i32, i32, i32, i32, i32 }
%struct.wid = type { i32, i8*, i32*, i32 }

@WILC_CFG_PARAM_RETRY_SHORT = common dso_local global i32 0, align 4
@WID_SHORT_RETRY_LIMIT = common dso_local global i32 0, align 4
@WID_SHORT = common dso_local global i8* null, align 8
@WILC_CFG_PARAM_RETRY_LONG = common dso_local global i32 0, align 4
@WID_LONG_RETRY_LIMIT = common dso_local global i32 0, align 4
@WILC_CFG_PARAM_FRAG_THRESHOLD = common dso_local global i32 0, align 4
@WID_FRAG_THRESHOLD = common dso_local global i32 0, align 4
@WILC_CFG_PARAM_RTS_THRESHOLD = common dso_local global i32 0, align 4
@WID_RTS_THRESHOLD = common dso_local global i32 0, align 4
@WILC_SET_CFG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wilc_hif_set_cfg(%struct.wilc_vif* %0, %struct.cfg_param_attr* %1) #0 {
  %3 = alloca %struct.wilc_vif*, align 8
  %4 = alloca %struct.cfg_param_attr*, align 8
  %5 = alloca [4 x %struct.wid], align 16
  %6 = alloca i32, align 4
  store %struct.wilc_vif* %0, %struct.wilc_vif** %3, align 8
  store %struct.cfg_param_attr* %1, %struct.cfg_param_attr** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.cfg_param_attr*, %struct.cfg_param_attr** %4, align 8
  %8 = getelementptr inbounds %struct.cfg_param_attr, %struct.cfg_param_attr* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @WILC_CFG_PARAM_RETRY_SHORT, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %36

13:                                               ; preds = %2
  %14 = load i32, i32* @WID_SHORT_RETRY_LIMIT, align 4
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds [4 x %struct.wid], [4 x %struct.wid]* %5, i64 0, i64 %16
  %18 = getelementptr inbounds %struct.wid, %struct.wid* %17, i32 0, i32 3
  store i32 %14, i32* %18, align 8
  %19 = load %struct.cfg_param_attr*, %struct.cfg_param_attr** %4, align 8
  %20 = getelementptr inbounds %struct.cfg_param_attr, %struct.cfg_param_attr* %19, i32 0, i32 4
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [4 x %struct.wid], [4 x %struct.wid]* %5, i64 0, i64 %22
  %24 = getelementptr inbounds %struct.wid, %struct.wid* %23, i32 0, i32 2
  store i32* %20, i32** %24, align 16
  %25 = load i8*, i8** @WID_SHORT, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x %struct.wid], [4 x %struct.wid]* %5, i64 0, i64 %27
  %29 = getelementptr inbounds %struct.wid, %struct.wid* %28, i32 0, i32 1
  store i8* %25, i8** %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x %struct.wid], [4 x %struct.wid]* %5, i64 0, i64 %31
  %33 = getelementptr inbounds %struct.wid, %struct.wid* %32, i32 0, i32 0
  store i32 4, i32* %33, align 16
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %13, %2
  %37 = load %struct.cfg_param_attr*, %struct.cfg_param_attr** %4, align 8
  %38 = getelementptr inbounds %struct.cfg_param_attr, %struct.cfg_param_attr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @WILC_CFG_PARAM_RETRY_LONG, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %66

43:                                               ; preds = %36
  %44 = load i32, i32* @WID_LONG_RETRY_LIMIT, align 4
  %45 = load i32, i32* %6, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [4 x %struct.wid], [4 x %struct.wid]* %5, i64 0, i64 %46
  %48 = getelementptr inbounds %struct.wid, %struct.wid* %47, i32 0, i32 3
  store i32 %44, i32* %48, align 8
  %49 = load %struct.cfg_param_attr*, %struct.cfg_param_attr** %4, align 8
  %50 = getelementptr inbounds %struct.cfg_param_attr, %struct.cfg_param_attr* %49, i32 0, i32 3
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [4 x %struct.wid], [4 x %struct.wid]* %5, i64 0, i64 %52
  %54 = getelementptr inbounds %struct.wid, %struct.wid* %53, i32 0, i32 2
  store i32* %50, i32** %54, align 16
  %55 = load i8*, i8** @WID_SHORT, align 8
  %56 = load i32, i32* %6, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [4 x %struct.wid], [4 x %struct.wid]* %5, i64 0, i64 %57
  %59 = getelementptr inbounds %struct.wid, %struct.wid* %58, i32 0, i32 1
  store i8* %55, i8** %59, align 8
  %60 = load i32, i32* %6, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [4 x %struct.wid], [4 x %struct.wid]* %5, i64 0, i64 %61
  %63 = getelementptr inbounds %struct.wid, %struct.wid* %62, i32 0, i32 0
  store i32 4, i32* %63, align 16
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %43, %36
  %67 = load %struct.cfg_param_attr*, %struct.cfg_param_attr** %4, align 8
  %68 = getelementptr inbounds %struct.cfg_param_attr, %struct.cfg_param_attr* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @WILC_CFG_PARAM_FRAG_THRESHOLD, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %96

73:                                               ; preds = %66
  %74 = load i32, i32* @WID_FRAG_THRESHOLD, align 4
  %75 = load i32, i32* %6, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [4 x %struct.wid], [4 x %struct.wid]* %5, i64 0, i64 %76
  %78 = getelementptr inbounds %struct.wid, %struct.wid* %77, i32 0, i32 3
  store i32 %74, i32* %78, align 8
  %79 = load %struct.cfg_param_attr*, %struct.cfg_param_attr** %4, align 8
  %80 = getelementptr inbounds %struct.cfg_param_attr, %struct.cfg_param_attr* %79, i32 0, i32 2
  %81 = load i32, i32* %6, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [4 x %struct.wid], [4 x %struct.wid]* %5, i64 0, i64 %82
  %84 = getelementptr inbounds %struct.wid, %struct.wid* %83, i32 0, i32 2
  store i32* %80, i32** %84, align 16
  %85 = load i8*, i8** @WID_SHORT, align 8
  %86 = load i32, i32* %6, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [4 x %struct.wid], [4 x %struct.wid]* %5, i64 0, i64 %87
  %89 = getelementptr inbounds %struct.wid, %struct.wid* %88, i32 0, i32 1
  store i8* %85, i8** %89, align 8
  %90 = load i32, i32* %6, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [4 x %struct.wid], [4 x %struct.wid]* %5, i64 0, i64 %91
  %93 = getelementptr inbounds %struct.wid, %struct.wid* %92, i32 0, i32 0
  store i32 4, i32* %93, align 16
  %94 = load i32, i32* %6, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %6, align 4
  br label %96

96:                                               ; preds = %73, %66
  %97 = load %struct.cfg_param_attr*, %struct.cfg_param_attr** %4, align 8
  %98 = getelementptr inbounds %struct.cfg_param_attr, %struct.cfg_param_attr* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @WILC_CFG_PARAM_RTS_THRESHOLD, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %126

103:                                              ; preds = %96
  %104 = load i32, i32* @WID_RTS_THRESHOLD, align 4
  %105 = load i32, i32* %6, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [4 x %struct.wid], [4 x %struct.wid]* %5, i64 0, i64 %106
  %108 = getelementptr inbounds %struct.wid, %struct.wid* %107, i32 0, i32 3
  store i32 %104, i32* %108, align 8
  %109 = load %struct.cfg_param_attr*, %struct.cfg_param_attr** %4, align 8
  %110 = getelementptr inbounds %struct.cfg_param_attr, %struct.cfg_param_attr* %109, i32 0, i32 1
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [4 x %struct.wid], [4 x %struct.wid]* %5, i64 0, i64 %112
  %114 = getelementptr inbounds %struct.wid, %struct.wid* %113, i32 0, i32 2
  store i32* %110, i32** %114, align 16
  %115 = load i8*, i8** @WID_SHORT, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds [4 x %struct.wid], [4 x %struct.wid]* %5, i64 0, i64 %117
  %119 = getelementptr inbounds %struct.wid, %struct.wid* %118, i32 0, i32 1
  store i8* %115, i8** %119, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [4 x %struct.wid], [4 x %struct.wid]* %5, i64 0, i64 %121
  %123 = getelementptr inbounds %struct.wid, %struct.wid* %122, i32 0, i32 0
  store i32 4, i32* %123, align 16
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %103, %96
  %127 = load %struct.wilc_vif*, %struct.wilc_vif** %3, align 8
  %128 = load i32, i32* @WILC_SET_CFG, align 4
  %129 = getelementptr inbounds [4 x %struct.wid], [4 x %struct.wid]* %5, i64 0, i64 0
  %130 = load i32, i32* %6, align 4
  %131 = call i32 @wilc_send_config_pkt(%struct.wilc_vif* %127, i32 %128, %struct.wid* %129, i32 %130)
  ret i32 %131
}

declare dso_local i32 @wilc_send_config_pkt(%struct.wilc_vif*, i32, %struct.wid*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
