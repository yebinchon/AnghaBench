; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_setup_mac.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_setup_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32, %struct.TYPE_2__*, i32, i32, i32* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.wsm_rcpi_rssi_threshold = type { i32, i32 }
%struct.wsm_configuration = type { i32, i32, i32* }

@WSM_RCPI_RSSI_THRESHOLD_ENABLE = common dso_local global i32 0, align 4
@WSM_RCPI_RSSI_DONT_USE_UPPER = common dso_local global i32 0, align 4
@WSM_RCPI_RSSI_DONT_USE_LOWER = common dso_local global i32 0, align 4
@WSM_RCPI_RSSI_USE_RSSI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Can't load sdd file %s.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cw1200_setup_mac(%struct.cw1200_common* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cw1200_common*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.wsm_rcpi_rssi_threshold, align 4
  %6 = alloca %struct.wsm_configuration, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %3, align 8
  store i32 0, i32* %4, align 4
  %7 = getelementptr inbounds %struct.wsm_rcpi_rssi_threshold, %struct.wsm_rcpi_rssi_threshold* %5, i32 0, i32 0
  %8 = load i32, i32* @WSM_RCPI_RSSI_THRESHOLD_ENABLE, align 4
  %9 = load i32, i32* @WSM_RCPI_RSSI_DONT_USE_UPPER, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @WSM_RCPI_RSSI_DONT_USE_LOWER, align 4
  %12 = or i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = getelementptr inbounds %struct.wsm_rcpi_rssi_threshold, %struct.wsm_rcpi_rssi_threshold* %5, i32 0, i32 1
  store i32 16, i32* %13, align 4
  %14 = getelementptr inbounds %struct.wsm_configuration, %struct.wsm_configuration* %6, i32 0, i32 0
  store i32 0, i32* %14, align 8
  %15 = getelementptr inbounds %struct.wsm_configuration, %struct.wsm_configuration* %6, i32 0, i32 1
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds %struct.wsm_configuration, %struct.wsm_configuration* %6, i32 0, i32 2
  %17 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %18 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %17, i32 0, i32 4
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  store i32* %20, i32** %16, align 8
  %21 = getelementptr inbounds %struct.wsm_rcpi_rssi_threshold, %struct.wsm_rcpi_rssi_threshold* %5, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @WSM_RCPI_RSSI_USE_RSSI, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %28 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %27, i32 0, i32 0
  store i32 1, i32* %28, align 8
  br label %29

29:                                               ; preds = %26, %1
  %30 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %31 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = icmp ne %struct.TYPE_2__* %32, null
  br i1 %33, label %55, label %34

34:                                               ; preds = %29
  %35 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %36 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %35, i32 0, i32 1
  %37 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %38 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %41 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @request_firmware(%struct.TYPE_2__** %36, i32 %39, i32 %42)
  store i32 %43, i32* %4, align 4
  %44 = load i32, i32* %4, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %52

46:                                               ; preds = %34
  %47 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %48 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %49)
  %51 = load i32, i32* %4, align 4
  store i32 %51, i32* %2, align 4
  br label %77

52:                                               ; preds = %34
  %53 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %54 = call i32 @cw1200_parse_sdd_file(%struct.cw1200_common* %53)
  br label %55

55:                                               ; preds = %52, %29
  %56 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %57 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.wsm_configuration, %struct.wsm_configuration* %6, i32 0, i32 1
  store i32 %60, i32* %61, align 4
  %62 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %63 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %62, i32 0, i32 1
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.wsm_configuration, %struct.wsm_configuration* %6, i32 0, i32 0
  store i32 %66, i32* %67, align 8
  %68 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %69 = call i32 @wsm_configuration(%struct.cw1200_common* %68, %struct.wsm_configuration* %6)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %55
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %2, align 4
  br label %77

74:                                               ; preds = %55
  %75 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %76 = call i32 @wsm_set_rcpi_rssi_threshold(%struct.cw1200_common* %75, %struct.wsm_rcpi_rssi_threshold* %5)
  store i32 0, i32* %2, align 4
  br label %77

77:                                               ; preds = %74, %72, %46
  %78 = load i32, i32* %2, align 4
  ret i32 %78
}

declare dso_local i32 @request_firmware(%struct.TYPE_2__**, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @cw1200_parse_sdd_file(%struct.cw1200_common*) #1

declare dso_local i32 @wsm_configuration(%struct.cw1200_common*, %struct.wsm_configuration*) #1

declare dso_local i32 @wsm_set_rcpi_rssi_threshold(%struct.cw1200_common*, %struct.wsm_rcpi_rssi_threshold*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
