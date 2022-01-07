; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_exhalbtc_periodical.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/btcoexist/extr_halbtcoutsrc.c_exhalbtc_periodical.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btc_coexist = type { %struct.TYPE_4__, i32, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exhalbtc_periodical(%struct.btc_coexist* %0) #0 {
  %2 = alloca %struct.btc_coexist*, align 8
  store %struct.btc_coexist* %0, %struct.btc_coexist** %2, align 8
  %3 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %4 = call i32 @halbtc_is_bt_coexist_available(%struct.btc_coexist* %3)
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %92

7:                                                ; preds = %1
  %8 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %9 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = add nsw i32 %11, 1
  store i32 %12, i32* %10, align 4
  %13 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %14 = call i32 @halbtc_leave_low_power(%struct.btc_coexist* %13)
  %15 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %16 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @IS_HARDWARE_TYPE_8821(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %45

20:                                               ; preds = %7
  %21 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %22 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %28 = call i32 @ex_btc8821a2ant_periodical(%struct.btc_coexist* %27)
  br label %44

29:                                               ; preds = %20
  %30 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %31 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 1
  br i1 %34, label %35, label %43

35:                                               ; preds = %29
  %36 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %37 = call i32 @halbtc_under_ips(%struct.btc_coexist* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %35
  %40 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %41 = call i32 @ex_btc8821a1ant_periodical(%struct.btc_coexist* %40)
  br label %42

42:                                               ; preds = %39, %35
  br label %43

43:                                               ; preds = %42, %29
  br label %44

44:                                               ; preds = %43, %26
  br label %89

45:                                               ; preds = %7
  %46 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %47 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @IS_HARDWARE_TYPE_8723B(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %71

51:                                               ; preds = %45
  %52 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %53 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 2
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %59 = call i32 @ex_btc8723b2ant_periodical(%struct.btc_coexist* %58)
  br label %70

60:                                               ; preds = %51
  %61 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %62 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %66, label %69

66:                                               ; preds = %60
  %67 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %68 = call i32 @ex_btc8723b1ant_periodical(%struct.btc_coexist* %67)
  br label %69

69:                                               ; preds = %66, %60
  br label %70

70:                                               ; preds = %69, %57
  br label %88

71:                                               ; preds = %45
  %72 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %73 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @IS_HARDWARE_TYPE_8192E(i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %87

77:                                               ; preds = %71
  %78 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %79 = getelementptr inbounds %struct.btc_coexist, %struct.btc_coexist* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %83, label %86

83:                                               ; preds = %77
  %84 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %85 = call i32 @ex_btc8192e2ant_periodical(%struct.btc_coexist* %84)
  br label %86

86:                                               ; preds = %83, %77
  br label %87

87:                                               ; preds = %86, %71
  br label %88

88:                                               ; preds = %87, %70
  br label %89

89:                                               ; preds = %88, %44
  %90 = load %struct.btc_coexist*, %struct.btc_coexist** %2, align 8
  %91 = call i32 @halbtc_normal_low_power(%struct.btc_coexist* %90)
  br label %92

92:                                               ; preds = %89, %6
  ret void
}

declare dso_local i32 @halbtc_is_bt_coexist_available(%struct.btc_coexist*) #1

declare dso_local i32 @halbtc_leave_low_power(%struct.btc_coexist*) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8821(i32) #1

declare dso_local i32 @ex_btc8821a2ant_periodical(%struct.btc_coexist*) #1

declare dso_local i32 @halbtc_under_ips(%struct.btc_coexist*) #1

declare dso_local i32 @ex_btc8821a1ant_periodical(%struct.btc_coexist*) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8723B(i32) #1

declare dso_local i32 @ex_btc8723b2ant_periodical(%struct.btc_coexist*) #1

declare dso_local i32 @ex_btc8723b1ant_periodical(%struct.btc_coexist*) #1

declare dso_local i64 @IS_HARDWARE_TYPE_8192E(i32) #1

declare dso_local i32 @ex_btc8192e2ant_periodical(%struct.btc_coexist*) #1

declare dso_local i32 @halbtc_normal_low_power(%struct.btc_coexist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
