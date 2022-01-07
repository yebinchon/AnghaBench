; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/aspeed/extr_aspeed-p2a-ctrl.c_aspeed_p2a_region_acquire.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/aspeed/extr_aspeed-p2a-ctrl.c_aspeed_p2a_region_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aspeed_p2a_user = type { i32* }
%struct.aspeed_p2a_ctrl = type { i32*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.region* }
%struct.region = type { i64, i64, i32 }
%struct.aspeed_p2a_ctrl_mapping = type { i64, i32 }

@P2A_REGION_COUNT = common dso_local global i32 0, align 4
@SCU2C = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.aspeed_p2a_user*, %struct.aspeed_p2a_ctrl*, %struct.aspeed_p2a_ctrl_mapping*)* @aspeed_p2a_region_acquire to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aspeed_p2a_region_acquire(%struct.aspeed_p2a_user* %0, %struct.aspeed_p2a_ctrl* %1, %struct.aspeed_p2a_ctrl_mapping* %2) #0 {
  %4 = alloca %struct.aspeed_p2a_user*, align 8
  %5 = alloca %struct.aspeed_p2a_ctrl*, align 8
  %6 = alloca %struct.aspeed_p2a_ctrl_mapping*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.region*, align 8
  store %struct.aspeed_p2a_user* %0, %struct.aspeed_p2a_user** %4, align 8
  store %struct.aspeed_p2a_ctrl* %1, %struct.aspeed_p2a_ctrl** %5, align 8
  store %struct.aspeed_p2a_ctrl_mapping* %2, %struct.aspeed_p2a_ctrl_mapping** %6, align 8
  store i32 0, i32* %10, align 4
  %12 = load %struct.aspeed_p2a_ctrl_mapping*, %struct.aspeed_p2a_ctrl_mapping** %6, align 8
  %13 = getelementptr inbounds %struct.aspeed_p2a_ctrl_mapping, %struct.aspeed_p2a_ctrl_mapping* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  store i64 %14, i64* %8, align 8
  %15 = load %struct.aspeed_p2a_ctrl_mapping*, %struct.aspeed_p2a_ctrl_mapping** %6, align 8
  %16 = getelementptr inbounds %struct.aspeed_p2a_ctrl_mapping, %struct.aspeed_p2a_ctrl_mapping* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load %struct.aspeed_p2a_ctrl_mapping*, %struct.aspeed_p2a_ctrl_mapping** %6, align 8
  %19 = getelementptr inbounds %struct.aspeed_p2a_ctrl_mapping, %struct.aspeed_p2a_ctrl_mapping* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %17, %22
  store i64 %23, i64* %9, align 8
  store i32 0, i32* %7, align 4
  br label %24

24:                                               ; preds = %81, %3
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @P2A_REGION_COUNT, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %84

28:                                               ; preds = %24
  %29 = load %struct.aspeed_p2a_ctrl*, %struct.aspeed_p2a_ctrl** %5, align 8
  %30 = getelementptr inbounds %struct.aspeed_p2a_ctrl, %struct.aspeed_p2a_ctrl* %29, i32 0, i32 3
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load %struct.region*, %struct.region** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.region, %struct.region* %33, i64 %35
  store %struct.region* %36, %struct.region** %11, align 8
  %37 = load %struct.region*, %struct.region** %11, align 8
  %38 = getelementptr inbounds %struct.region, %struct.region* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* %8, align 8
  %41 = icmp slt i64 %39, %40
  br i1 %41, label %42, label %43

42:                                               ; preds = %28
  br label %81

43:                                               ; preds = %28
  %44 = load %struct.region*, %struct.region** %11, align 8
  %45 = getelementptr inbounds %struct.region, %struct.region* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* %9, align 8
  %48 = icmp sgt i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  br label %84

50:                                               ; preds = %43
  %51 = load %struct.aspeed_p2a_ctrl*, %struct.aspeed_p2a_ctrl** %5, align 8
  %52 = getelementptr inbounds %struct.aspeed_p2a_ctrl, %struct.aspeed_p2a_ctrl* %51, i32 0, i32 2
  %53 = call i32 @mutex_lock(i32* %52)
  %54 = load %struct.aspeed_p2a_ctrl*, %struct.aspeed_p2a_ctrl** %5, align 8
  %55 = getelementptr inbounds %struct.aspeed_p2a_ctrl, %struct.aspeed_p2a_ctrl* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 4
  %62 = load %struct.aspeed_p2a_ctrl*, %struct.aspeed_p2a_ctrl** %5, align 8
  %63 = getelementptr inbounds %struct.aspeed_p2a_ctrl, %struct.aspeed_p2a_ctrl* %62, i32 0, i32 2
  %64 = call i32 @mutex_unlock(i32* %63)
  %65 = load %struct.aspeed_p2a_user*, %struct.aspeed_p2a_user** %4, align 8
  %66 = getelementptr inbounds %struct.aspeed_p2a_user, %struct.aspeed_p2a_user* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %7, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  %71 = load i32, i32* %70, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 4
  %73 = load %struct.aspeed_p2a_ctrl*, %struct.aspeed_p2a_ctrl** %5, align 8
  %74 = getelementptr inbounds %struct.aspeed_p2a_ctrl, %struct.aspeed_p2a_ctrl* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @SCU2C, align 4
  %77 = load %struct.region*, %struct.region** %11, align 8
  %78 = getelementptr inbounds %struct.region, %struct.region* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @regmap_update_bits(i32 %75, i32 %76, i32 %79, i32 0)
  store i32 1, i32* %10, align 4
  br label %81

81:                                               ; preds = %50, %42
  %82 = load i32, i32* %7, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %7, align 4
  br label %24

84:                                               ; preds = %49, %24
  %85 = load i32, i32* %10, align 4
  ret i32 %85
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @regmap_update_bits(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
