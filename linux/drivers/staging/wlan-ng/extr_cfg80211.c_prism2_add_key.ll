; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_cfg80211.c_prism2_add_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wlan-ng/extr_cfg80211.c_prism2_add_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { %struct.wlandevice* }
%struct.wlandevice = type { i32 }
%struct.key_params = type { i64, i32, i32 }

@NUM_WEPKEYS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@WLAN_CIPHER_SUITE_WEP40 = common dso_local global i64 0, align 8
@WLAN_CIPHER_SUITE_WEP104 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [26 x i8] c"Unsupported cipher suite\0A\00", align 1
@EFAULT = common dso_local global i32 0, align 4
@DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i64, i32, i64*, %struct.key_params*)* @prism2_add_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prism2_add_key(%struct.wiphy* %0, %struct.net_device* %1, i64 %2, i32 %3, i64* %4, %struct.key_params* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.wiphy*, align 8
  %9 = alloca %struct.net_device*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64*, align 8
  %13 = alloca %struct.key_params*, align 8
  %14 = alloca %struct.wlandevice*, align 8
  %15 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %8, align 8
  store %struct.net_device* %1, %struct.net_device** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i64* %4, i64** %12, align 8
  store %struct.key_params* %5, %struct.key_params** %13, align 8
  %16 = load %struct.net_device*, %struct.net_device** %9, align 8
  %17 = getelementptr inbounds %struct.net_device, %struct.net_device* %16, i32 0, i32 0
  %18 = load %struct.wlandevice*, %struct.wlandevice** %17, align 8
  store %struct.wlandevice* %18, %struct.wlandevice** %14, align 8
  %19 = load i64, i64* %10, align 8
  %20 = load i64, i64* @NUM_WEPKEYS, align 8
  %21 = icmp sge i64 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %6
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %7, align 4
  br label %68

25:                                               ; preds = %6
  %26 = load %struct.key_params*, %struct.key_params** %13, align 8
  %27 = getelementptr inbounds %struct.key_params, %struct.key_params* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @WLAN_CIPHER_SUITE_WEP40, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %41

31:                                               ; preds = %25
  %32 = load %struct.key_params*, %struct.key_params** %13, align 8
  %33 = getelementptr inbounds %struct.key_params, %struct.key_params* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @WLAN_CIPHER_SUITE_WEP104, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = call i32 @pr_debug(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %39 = load i32, i32* @EFAULT, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %7, align 4
  br label %68

41:                                               ; preds = %31, %25
  %42 = load %struct.wlandevice*, %struct.wlandevice** %14, align 8
  %43 = load i32, i32* @DIDMIB_DOT11SMT_PRIVACYTABLE_WEPDEFAULTKEYID, align 4
  %44 = load i64, i64* %10, align 8
  %45 = call i64 @prism2_domibset_uint32(%struct.wlandevice* %42, i32 %43, i64 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* @EFAULT, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %7, align 4
  br label %68

50:                                               ; preds = %41
  %51 = load i64, i64* %10, align 8
  %52 = add nsw i64 %51, 1
  %53 = call i32 @didmib_dot11smt_wepdefaultkeystable_key(i64 %52)
  store i32 %53, i32* %15, align 4
  %54 = load %struct.wlandevice*, %struct.wlandevice** %14, align 8
  %55 = load i32, i32* %15, align 4
  %56 = load %struct.key_params*, %struct.key_params** %13, align 8
  %57 = getelementptr inbounds %struct.key_params, %struct.key_params* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.key_params*, %struct.key_params** %13, align 8
  %60 = getelementptr inbounds %struct.key_params, %struct.key_params* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @prism2_domibset_pstr32(%struct.wlandevice* %54, i32 %55, i32 %58, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %67

64:                                               ; preds = %50
  %65 = load i32, i32* @EFAULT, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %7, align 4
  br label %68

67:                                               ; preds = %50
  store i32 0, i32* %7, align 4
  br label %68

68:                                               ; preds = %67, %64, %47, %37, %22
  %69 = load i32, i32* %7, align 4
  ret i32 %69
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i64 @prism2_domibset_uint32(%struct.wlandevice*, i32, i64) #1

declare dso_local i32 @didmib_dot11smt_wepdefaultkeystable_key(i64) #1

declare dso_local i64 @prism2_domibset_pstr32(%struct.wlandevice*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
