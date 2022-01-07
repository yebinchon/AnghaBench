; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_rx.c_rtllib_rx_get_crypt.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_rx.c_rtllib_rx_get_crypt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32, %struct.TYPE_3__, i64 }
%struct.TYPE_3__ = type { %struct.lib80211_crypt_data** }
%struct.sk_buff = type { i32*, i64 }
%struct.lib80211_crypt_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.rtllib_hdr_4addr = type { i32, i32 }

@RTLLIB_FCTL_WEP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"Decryption failed (not set) (SA= %pM)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtllib_device*, %struct.sk_buff*, %struct.lib80211_crypt_data**, i64)* @rtllib_rx_get_crypt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtllib_rx_get_crypt(%struct.rtllib_device* %0, %struct.sk_buff* %1, %struct.lib80211_crypt_data** %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtllib_device*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca %struct.lib80211_crypt_data**, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.rtllib_hdr_4addr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rtllib_device* %0, %struct.rtllib_device** %6, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %7, align 8
  store %struct.lib80211_crypt_data** %2, %struct.lib80211_crypt_data*** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = bitcast i32* %15 to %struct.rtllib_hdr_4addr*
  store %struct.rtllib_hdr_4addr* %16, %struct.rtllib_hdr_4addr** %10, align 8
  %17 = load %struct.rtllib_hdr_4addr*, %struct.rtllib_hdr_4addr** %10, align 8
  %18 = getelementptr inbounds %struct.rtllib_hdr_4addr, %struct.rtllib_hdr_4addr* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @le16_to_cpu(i32 %19)
  store i32 %20, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %21 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %22 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %88

25:                                               ; preds = %4
  %26 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %27 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* %9, align 8
  %30 = add i64 %29, 3
  %31 = icmp uge i64 %28, %30
  br i1 %31, label %32, label %41

32:                                               ; preds = %25
  %33 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %34 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* %9, align 8
  %37 = add i64 %36, 3
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %39, 6
  store i32 %40, i32* %12, align 4
  br label %41

41:                                               ; preds = %32, %25
  %42 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %43 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %44, align 8
  %46 = load i32, i32* %12, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %45, i64 %47
  %49 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %48, align 8
  %50 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %8, align 8
  store %struct.lib80211_crypt_data* %49, %struct.lib80211_crypt_data** %50, align 8
  %51 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %8, align 8
  %52 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %51, align 8
  %53 = icmp ne %struct.lib80211_crypt_data* %52, null
  br i1 %53, label %54, label %70

54:                                               ; preds = %41
  %55 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %8, align 8
  %56 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %55, align 8
  %57 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %56, i32 0, i32 0
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = icmp eq %struct.TYPE_4__* %58, null
  br i1 %59, label %68, label %60

60:                                               ; preds = %54
  %61 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %8, align 8
  %62 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %61, align 8
  %63 = getelementptr inbounds %struct.lib80211_crypt_data, %struct.lib80211_crypt_data* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = icmp eq i32* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %60, %54
  %69 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %8, align 8
  store %struct.lib80211_crypt_data* null, %struct.lib80211_crypt_data** %69, align 8
  br label %70

70:                                               ; preds = %68, %60, %41
  %71 = load %struct.lib80211_crypt_data**, %struct.lib80211_crypt_data*** %8, align 8
  %72 = load %struct.lib80211_crypt_data*, %struct.lib80211_crypt_data** %71, align 8
  %73 = icmp ne %struct.lib80211_crypt_data* %72, null
  br i1 %73, label %87, label %74

74:                                               ; preds = %70
  %75 = load i32, i32* %11, align 4
  %76 = load i32, i32* @RTLLIB_FCTL_WEP, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %87

79:                                               ; preds = %74
  %80 = load %struct.rtllib_device*, %struct.rtllib_device** %6, align 8
  %81 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.rtllib_hdr_4addr*, %struct.rtllib_hdr_4addr** %10, align 8
  %84 = getelementptr inbounds %struct.rtllib_hdr_4addr, %struct.rtllib_hdr_4addr* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @netdev_dbg(i32 %82, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %85)
  store i32 -1, i32* %5, align 4
  br label %89

87:                                               ; preds = %74, %70
  br label %88

88:                                               ; preds = %87, %4
  store i32 0, i32* %5, align 4
  br label %89

89:                                               ; preds = %88, %79
  %90 = load i32, i32* %5, align 4
  ret i32 %90
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @netdev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
