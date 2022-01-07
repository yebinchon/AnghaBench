; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_regd.c_rtw_regd_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_regd.c_rtw_regd_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.wiphy* }
%struct.wiphy = type { i32 }
%struct.regulatory_request = type opaque
%struct.regulatory_request.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_regd_init(%struct.rtw_dev* %0, void (%struct.wiphy*, %struct.regulatory_request*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca void (%struct.wiphy*, %struct.regulatory_request*)*, align 8
  %6 = alloca %struct.wiphy*, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store void (%struct.wiphy*, %struct.regulatory_request*)* %1, void (%struct.wiphy*, %struct.regulatory_request*)** %5, align 8
  %7 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %8 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %7, i32 0, i32 2
  %9 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load %struct.wiphy*, %struct.wiphy** %10, align 8
  store %struct.wiphy* %11, %struct.wiphy** %6, align 8
  %12 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %13 = icmp ne %struct.wiphy* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %31

17:                                               ; preds = %2
  %18 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %19 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @rtw_regd_find_reg_by_name(i32 %21)
  %23 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %24 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %26 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %25, i32 0, i32 0
  %27 = load %struct.wiphy*, %struct.wiphy** %6, align 8
  %28 = load void (%struct.wiphy*, %struct.regulatory_request*)*, void (%struct.wiphy*, %struct.regulatory_request*)** %5, align 8
  %29 = bitcast void (%struct.wiphy*, %struct.regulatory_request*)* %28 to void (%struct.wiphy*, %struct.regulatory_request.0*)*
  %30 = call i32 @rtw_regd_init_wiphy(i32* %26, %struct.wiphy* %27, void (%struct.wiphy*, %struct.regulatory_request.0*)* %29)
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %17, %14
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @rtw_regd_find_reg_by_name(i32) #1

declare dso_local i32 @rtw_regd_init_wiphy(i32*, %struct.wiphy*, void (%struct.wiphy*, %struct.regulatory_request.0*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
