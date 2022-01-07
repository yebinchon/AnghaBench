; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_del_allstation.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wilc1000/extr_wilc_hif.c_wilc_del_allstation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wilc_vif = type { i32 }
%struct.wid = type { i32, i32*, i32, i32 }
%struct.wilc_del_all_sta = type { i32, i32* }

@ETH_ALEN = common dso_local global i32 0, align 4
@WILC_MAX_NUM_STA = common dso_local global i32 0, align 4
@WID_DEL_ALL_STA = common dso_local global i32 0, align 4
@WID_STR = common dso_local global i32 0, align 4
@WILC_SET_CFG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Failed to send delete all station\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wilc_del_allstation(%struct.wilc_vif* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.wilc_vif*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.wid, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.wilc_del_all_sta, align 8
  store %struct.wilc_vif* %0, %struct.wilc_vif** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32, i32* @ETH_ALEN, align 4
  %12 = zext i32 %11 to i64
  store i32 0, i32* %9, align 4
  %13 = call i32 @memset(%struct.wilc_del_all_sta* %10, i32 0, i32 16)
  store i32 0, i32* %8, align 4
  br label %14

14:                                               ; preds = %42, %2
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @WILC_MAX_NUM_STA, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %45

18:                                               ; preds = %14
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* %8, align 4
  %21 = sext i32 %20 to i64
  %22 = mul nsw i64 %21, %12
  %23 = getelementptr inbounds i32, i32* %19, i64 %22
  %24 = call i32 @is_zero_ether_addr(i32* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %41, label %26

26:                                               ; preds = %18
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  %29 = getelementptr inbounds %struct.wilc_del_all_sta, %struct.wilc_del_all_sta* %10, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = load i32*, i32** %5, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = mul nsw i64 %37, %12
  %39 = getelementptr inbounds i32, i32* %35, i64 %38
  %40 = call i32 @ether_addr_copy(i32 %34, i32* %39)
  br label %41

41:                                               ; preds = %26, %18
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  br label %14

45:                                               ; preds = %14
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %75

49:                                               ; preds = %45
  %50 = load i32, i32* %9, align 4
  %51 = getelementptr inbounds %struct.wilc_del_all_sta, %struct.wilc_del_all_sta* %10, i32 0, i32 0
  store i32 %50, i32* %51, align 8
  %52 = load i32, i32* @WID_DEL_ALL_STA, align 4
  %53 = getelementptr inbounds %struct.wid, %struct.wid* %6, i32 0, i32 3
  store i32 %52, i32* %53, align 4
  %54 = load i32, i32* @WID_STR, align 4
  %55 = getelementptr inbounds %struct.wid, %struct.wid* %6, i32 0, i32 2
  store i32 %54, i32* %55, align 8
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* @ETH_ALEN, align 4
  %58 = mul nsw i32 %56, %57
  %59 = add nsw i32 %58, 1
  %60 = getelementptr inbounds %struct.wid, %struct.wid* %6, i32 0, i32 0
  store i32 %59, i32* %60, align 8
  %61 = bitcast %struct.wilc_del_all_sta* %10 to i32*
  %62 = getelementptr inbounds %struct.wid, %struct.wid* %6, i32 0, i32 1
  store i32* %61, i32** %62, align 8
  %63 = load %struct.wilc_vif*, %struct.wilc_vif** %4, align 8
  %64 = load i32, i32* @WILC_SET_CFG, align 4
  %65 = call i32 @wilc_send_config_pkt(%struct.wilc_vif* %63, i32 %64, %struct.wid* %6, i32 1)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %73

68:                                               ; preds = %49
  %69 = load %struct.wilc_vif*, %struct.wilc_vif** %4, align 8
  %70 = getelementptr inbounds %struct.wilc_vif, %struct.wilc_vif* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @netdev_err(i32 %71, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  br label %73

73:                                               ; preds = %68, %49
  %74 = load i32, i32* %7, align 4
  store i32 %74, i32* %3, align 4
  br label %75

75:                                               ; preds = %73, %48
  %76 = load i32, i32* %3, align 4
  ret i32 %76
}

declare dso_local i32 @memset(%struct.wilc_del_all_sta*, i32, i32) #1

declare dso_local i32 @is_zero_ether_addr(i32*) #1

declare dso_local i32 @ether_addr_copy(i32, i32*) #1

declare dso_local i32 @wilc_send_config_pkt(%struct.wilc_vif*, i32, %struct.wid*, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
