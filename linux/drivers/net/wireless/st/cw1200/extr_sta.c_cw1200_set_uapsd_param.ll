; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_set_uapsd_param.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c_cw1200_set_uapsd_param.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64, i64, i32 }
%struct.wsm_edca_params = type { i64* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cw1200_set_uapsd_param(%struct.cw1200_common* %0, %struct.wsm_edca_params* %1) #0 {
  %3 = alloca %struct.cw1200_common*, align 8
  %4 = alloca %struct.wsm_edca_params*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %3, align 8
  store %struct.wsm_edca_params* %1, %struct.wsm_edca_params** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.wsm_edca_params*, %struct.wsm_edca_params** %4, align 8
  %8 = getelementptr inbounds %struct.wsm_edca_params, %struct.wsm_edca_params* %7, i32 0, i32 0
  %9 = load i64*, i64** %8, align 8
  %10 = getelementptr inbounds i64, i64* %9, i64 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = or i32 %14, 8
  store i32 %15, i32* %6, align 4
  br label %16

16:                                               ; preds = %13, %2
  %17 = load %struct.wsm_edca_params*, %struct.wsm_edca_params** %4, align 8
  %18 = getelementptr inbounds %struct.wsm_edca_params, %struct.wsm_edca_params* %17, i32 0, i32 0
  %19 = load i64*, i64** %18, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load i32, i32* %6, align 4
  %25 = or i32 %24, 4
  store i32 %25, i32* %6, align 4
  br label %26

26:                                               ; preds = %23, %16
  %27 = load %struct.wsm_edca_params*, %struct.wsm_edca_params** %4, align 8
  %28 = getelementptr inbounds %struct.wsm_edca_params, %struct.wsm_edca_params* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 2
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* %6, align 4
  %35 = or i32 %34, 2
  store i32 %35, i32* %6, align 4
  br label %36

36:                                               ; preds = %33, %26
  %37 = load %struct.wsm_edca_params*, %struct.wsm_edca_params** %4, align 8
  %38 = getelementptr inbounds %struct.wsm_edca_params, %struct.wsm_edca_params* %37, i32 0, i32 0
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %36
  %44 = load i32, i32* %6, align 4
  %45 = or i32 %44, 1
  store i32 %45, i32* %6, align 4
  br label %46

46:                                               ; preds = %43, %36
  %47 = load i32, i32* %6, align 4
  %48 = call i32 @cpu_to_le16(i32 %47)
  %49 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %50 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 3
  store i32 %48, i32* %51, align 8
  %52 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %53 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 2
  store i64 0, i64* %54, align 8
  %55 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %56 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i64 0, i64* %57, align 8
  %58 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %59 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  store i64 0, i64* %60, align 8
  %61 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %62 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %63 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %62, i32 0, i32 0
  %64 = call i32 @wsm_set_uapsd_info(%struct.cw1200_common* %61, %struct.TYPE_2__* %63)
  store i32 %64, i32* %5, align 4
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @wsm_set_uapsd_info(%struct.cw1200_common*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
