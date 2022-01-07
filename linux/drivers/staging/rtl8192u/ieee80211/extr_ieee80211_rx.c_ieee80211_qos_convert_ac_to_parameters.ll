; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_rx.c_ieee80211_qos_convert_ac_to_parameters.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_rx.c_ieee80211_qos_convert_ac_to_parameters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_qos_parameter_info = type { %struct.ieee80211_qos_ac_parameter* }
%struct.ieee80211_qos_ac_parameter = type { i32, i32, i32 }
%struct.ieee80211_qos_parameters = type { i32*, i32*, i32*, i8**, i8** }

@QOS_QUEUE_NUM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_qos_parameter_info*, %struct.ieee80211_qos_parameters*)* @ieee80211_qos_convert_ac_to_parameters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_qos_convert_ac_to_parameters(%struct.ieee80211_qos_parameter_info* %0, %struct.ieee80211_qos_parameters* %1) #0 {
  %3 = alloca %struct.ieee80211_qos_parameter_info*, align 8
  %4 = alloca %struct.ieee80211_qos_parameters*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_qos_ac_parameter*, align 8
  %7 = alloca i32, align 4
  store %struct.ieee80211_qos_parameter_info* %0, %struct.ieee80211_qos_parameter_info** %3, align 8
  store %struct.ieee80211_qos_parameters* %1, %struct.ieee80211_qos_parameters** %4, align 8
  store i32 0, i32* %5, align 4
  br label %8

8:                                                ; preds = %109, %2
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @QOS_QUEUE_NUM, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %112

12:                                               ; preds = %8
  %13 = load %struct.ieee80211_qos_parameter_info*, %struct.ieee80211_qos_parameter_info** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_qos_parameter_info, %struct.ieee80211_qos_parameter_info* %13, i32 0, i32 0
  %15 = load %struct.ieee80211_qos_ac_parameter*, %struct.ieee80211_qos_ac_parameter** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ieee80211_qos_ac_parameter, %struct.ieee80211_qos_ac_parameter* %15, i64 %17
  store %struct.ieee80211_qos_ac_parameter* %18, %struct.ieee80211_qos_ac_parameter** %6, align 8
  %19 = load %struct.ieee80211_qos_ac_parameter*, %struct.ieee80211_qos_ac_parameter** %6, align 8
  %20 = getelementptr inbounds %struct.ieee80211_qos_ac_parameter, %struct.ieee80211_qos_ac_parameter* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, 96
  %23 = ashr i32 %22, 5
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @QOS_QUEUE_NUM, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %12
  br label %109

28:                                               ; preds = %12
  %29 = load %struct.ieee80211_qos_ac_parameter*, %struct.ieee80211_qos_ac_parameter** %6, align 8
  %30 = getelementptr inbounds %struct.ieee80211_qos_ac_parameter, %struct.ieee80211_qos_ac_parameter* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 15
  %33 = load %struct.ieee80211_qos_parameters*, %struct.ieee80211_qos_parameters** %4, align 8
  %34 = getelementptr inbounds %struct.ieee80211_qos_parameters, %struct.ieee80211_qos_parameters* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %32, i32* %38, align 4
  %39 = load %struct.ieee80211_qos_parameters*, %struct.ieee80211_qos_parameters** %4, align 8
  %40 = getelementptr inbounds %struct.ieee80211_qos_parameters, %struct.ieee80211_qos_parameters* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %7, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp slt i32 %45, 2
  br i1 %46, label %47, label %48

47:                                               ; preds = %28
  br label %56

48:                                               ; preds = %28
  %49 = load %struct.ieee80211_qos_parameters*, %struct.ieee80211_qos_parameters** %4, align 8
  %50 = getelementptr inbounds %struct.ieee80211_qos_parameters, %struct.ieee80211_qos_parameters* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %7, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  %55 = load i32, i32* %54, align 4
  br label %56

56:                                               ; preds = %48, %47
  %57 = phi i32 [ 2, %47 ], [ %55, %48 ]
  %58 = load %struct.ieee80211_qos_parameters*, %struct.ieee80211_qos_parameters** %4, align 8
  %59 = getelementptr inbounds %struct.ieee80211_qos_parameters, %struct.ieee80211_qos_parameters* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  store i32 %57, i32* %63, align 4
  %64 = load %struct.ieee80211_qos_ac_parameter*, %struct.ieee80211_qos_ac_parameter** %6, align 8
  %65 = getelementptr inbounds %struct.ieee80211_qos_ac_parameter, %struct.ieee80211_qos_ac_parameter* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, 15
  %68 = call i8* @cpu_to_le16(i32 %67)
  %69 = load %struct.ieee80211_qos_parameters*, %struct.ieee80211_qos_parameters** %4, align 8
  %70 = getelementptr inbounds %struct.ieee80211_qos_parameters, %struct.ieee80211_qos_parameters* %69, i32 0, i32 4
  %71 = load i8**, i8*** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i8*, i8** %71, i64 %73
  store i8* %68, i8** %74, align 8
  %75 = load %struct.ieee80211_qos_ac_parameter*, %struct.ieee80211_qos_ac_parameter** %6, align 8
  %76 = getelementptr inbounds %struct.ieee80211_qos_ac_parameter, %struct.ieee80211_qos_ac_parameter* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 240
  %79 = ashr i32 %78, 4
  %80 = call i8* @cpu_to_le16(i32 %79)
  %81 = load %struct.ieee80211_qos_parameters*, %struct.ieee80211_qos_parameters** %4, align 8
  %82 = getelementptr inbounds %struct.ieee80211_qos_parameters, %struct.ieee80211_qos_parameters* %81, i32 0, i32 3
  %83 = load i8**, i8*** %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i8*, i8** %83, i64 %85
  store i8* %80, i8** %86, align 8
  %87 = load %struct.ieee80211_qos_ac_parameter*, %struct.ieee80211_qos_ac_parameter** %6, align 8
  %88 = getelementptr inbounds %struct.ieee80211_qos_ac_parameter, %struct.ieee80211_qos_ac_parameter* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 16
  %91 = icmp ne i32 %90, 0
  %92 = zext i1 %91 to i64
  %93 = select i1 %91, i32 1, i32 0
  %94 = load %struct.ieee80211_qos_parameters*, %struct.ieee80211_qos_parameters** %4, align 8
  %95 = getelementptr inbounds %struct.ieee80211_qos_parameters, %struct.ieee80211_qos_parameters* %94, i32 0, i32 1
  %96 = load i32*, i32** %95, align 8
  %97 = load i32, i32* %7, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i32, i32* %96, i64 %98
  store i32 %93, i32* %99, align 4
  %100 = load %struct.ieee80211_qos_ac_parameter*, %struct.ieee80211_qos_ac_parameter** %6, align 8
  %101 = getelementptr inbounds %struct.ieee80211_qos_ac_parameter, %struct.ieee80211_qos_ac_parameter* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ieee80211_qos_parameters*, %struct.ieee80211_qos_parameters** %4, align 8
  %104 = getelementptr inbounds %struct.ieee80211_qos_parameters, %struct.ieee80211_qos_parameters* %103, i32 0, i32 2
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* %7, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  store i32 %102, i32* %108, align 4
  br label %109

109:                                              ; preds = %56, %27
  %110 = load i32, i32* %5, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %5, align 4
  br label %8

112:                                              ; preds = %8
  ret i32 0
}

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
