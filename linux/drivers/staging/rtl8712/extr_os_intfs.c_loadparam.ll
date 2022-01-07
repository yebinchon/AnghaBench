; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_os_intfs.c_loadparam.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_os_intfs.c_loadparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.registry_priv }
%struct.registry_priv = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_2__, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.net_device = type { i32 }

@chip_version = common dso_local global i64 0, align 8
@rfintfs = common dso_local global i64 0, align 8
@lbkmode = common dso_local global i64 0, align 8
@hci = common dso_local global i64 0, align 8
@network_mode = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"ANY\00", align 1
@channel = common dso_local global i64 0, align 8
@wireless_mode = common dso_local global i64 0, align 8
@vrtl_carrier_sense = common dso_local global i64 0, align 8
@vcs_type = common dso_local global i64 0, align 8
@frag_thresh = common dso_local global i64 0, align 8
@preamble = common dso_local global i64 0, align 8
@scan_mode = common dso_local global i64 0, align 8
@adhoc_tx_pwr = common dso_local global i64 0, align 8
@soft_ap = common dso_local global i64 0, align 8
@smart_ps = common dso_local global i64 0, align 8
@power_mgnt = common dso_local global i64 0, align 8
@radio_enable = common dso_local global i64 0, align 8
@long_retry_lmt = common dso_local global i64 0, align 8
@short_retry_lmt = common dso_local global i64 0, align 8
@busy_thresh = common dso_local global i64 0, align 8
@ack_policy = common dso_local global i64 0, align 8
@mp_mode = common dso_local global i64 0, align 8
@software_encrypt = common dso_local global i64 0, align 8
@software_decrypt = common dso_local global i64 0, align 8
@wmm_enable = common dso_local global i64 0, align 8
@uapsd_enable = common dso_local global i64 0, align 8
@uapsd_max_sp = common dso_local global i64 0, align 8
@uapsd_acbk_en = common dso_local global i64 0, align 8
@uapsd_acbe_en = common dso_local global i64 0, align 8
@uapsd_acvi_en = common dso_local global i64 0, align 8
@uapsd_acvo_en = common dso_local global i64 0, align 8
@ht_enable = common dso_local global i64 0, align 8
@cbw40_enable = common dso_local global i64 0, align 8
@ampdu_enable = common dso_local global i64 0, align 8
@rf_config = common dso_local global i64 0, align 8
@low_power = common dso_local global i64 0, align 8
@wifi_test = common dso_local global i64 0, align 8
@initmac = common dso_local global i32 0, align 4
@r8712_initmac = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct._adapter*, %struct.net_device*)* @loadparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loadparam(%struct._adapter* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.registry_priv*, align 8
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %6 = load %struct._adapter*, %struct._adapter** %3, align 8
  %7 = getelementptr inbounds %struct._adapter, %struct._adapter* %6, i32 0, i32 0
  store %struct.registry_priv* %7, %struct.registry_priv** %5, align 8
  %8 = load i64, i64* @chip_version, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %11 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %10, i32 0, i32 37
  store i8* %9, i8** %11, align 8
  %12 = load i64, i64* @rfintfs, align 8
  %13 = inttoptr i64 %12 to i8*
  %14 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %15 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %14, i32 0, i32 36
  store i8* %13, i8** %15, align 8
  %16 = load i64, i64* @lbkmode, align 8
  %17 = inttoptr i64 %16 to i8*
  %18 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %19 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %18, i32 0, i32 35
  store i8* %17, i8** %19, align 8
  %20 = load i64, i64* @hci, align 8
  %21 = inttoptr i64 %20 to i8*
  %22 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %23 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %22, i32 0, i32 34
  store i8* %21, i8** %23, align 8
  %24 = load i64, i64* @network_mode, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %27 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %26, i32 0, i32 33
  store i8* %25, i8** %27, align 8
  %28 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %29 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %28, i32 0, i32 32
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @memcpy(i32 %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 3)
  %33 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %34 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %33, i32 0, i32 32
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  store i32 3, i32* %35, align 8
  %36 = load i64, i64* @channel, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %39 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %38, i32 0, i32 31
  store i8* %37, i8** %39, align 8
  %40 = load i64, i64* @wireless_mode, align 8
  %41 = inttoptr i64 %40 to i8*
  %42 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %43 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %42, i32 0, i32 30
  store i8* %41, i8** %43, align 8
  %44 = load i64, i64* @vrtl_carrier_sense, align 8
  %45 = inttoptr i64 %44 to i8*
  %46 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %47 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %46, i32 0, i32 29
  store i8* %45, i8** %47, align 8
  %48 = load i64, i64* @vcs_type, align 8
  %49 = inttoptr i64 %48 to i8*
  %50 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %51 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %50, i32 0, i32 28
  store i8* %49, i8** %51, align 8
  %52 = load i64, i64* @frag_thresh, align 8
  %53 = inttoptr i64 %52 to i8*
  %54 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %55 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %54, i32 0, i32 27
  store i8* %53, i8** %55, align 8
  %56 = load i64, i64* @preamble, align 8
  %57 = inttoptr i64 %56 to i8*
  %58 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %59 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %58, i32 0, i32 26
  store i8* %57, i8** %59, align 8
  %60 = load i64, i64* @scan_mode, align 8
  %61 = inttoptr i64 %60 to i8*
  %62 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %63 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %62, i32 0, i32 25
  store i8* %61, i8** %63, align 8
  %64 = load i64, i64* @adhoc_tx_pwr, align 8
  %65 = inttoptr i64 %64 to i8*
  %66 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %67 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %66, i32 0, i32 24
  store i8* %65, i8** %67, align 8
  %68 = load i64, i64* @soft_ap, align 8
  %69 = inttoptr i64 %68 to i8*
  %70 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %71 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %70, i32 0, i32 23
  store i8* %69, i8** %71, align 8
  %72 = load i64, i64* @smart_ps, align 8
  %73 = inttoptr i64 %72 to i8*
  %74 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %75 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %74, i32 0, i32 22
  store i8* %73, i8** %75, align 8
  %76 = load i64, i64* @power_mgnt, align 8
  %77 = inttoptr i64 %76 to i8*
  %78 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %79 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %78, i32 0, i32 21
  store i8* %77, i8** %79, align 8
  %80 = load i64, i64* @radio_enable, align 8
  %81 = inttoptr i64 %80 to i8*
  %82 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %83 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %82, i32 0, i32 20
  store i8* %81, i8** %83, align 8
  %84 = load i64, i64* @long_retry_lmt, align 8
  %85 = inttoptr i64 %84 to i8*
  %86 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %87 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %86, i32 0, i32 19
  store i8* %85, i8** %87, align 8
  %88 = load i64, i64* @short_retry_lmt, align 8
  %89 = inttoptr i64 %88 to i8*
  %90 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %91 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %90, i32 0, i32 18
  store i8* %89, i8** %91, align 8
  %92 = load i64, i64* @busy_thresh, align 8
  %93 = inttoptr i64 %92 to i8*
  %94 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %95 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %94, i32 0, i32 17
  store i8* %93, i8** %95, align 8
  %96 = load i64, i64* @ack_policy, align 8
  %97 = inttoptr i64 %96 to i8*
  %98 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %99 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %98, i32 0, i32 16
  store i8* %97, i8** %99, align 8
  %100 = load i64, i64* @mp_mode, align 8
  %101 = inttoptr i64 %100 to i8*
  %102 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %103 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %102, i32 0, i32 15
  store i8* %101, i8** %103, align 8
  %104 = load i64, i64* @software_encrypt, align 8
  %105 = inttoptr i64 %104 to i8*
  %106 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %107 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %106, i32 0, i32 14
  store i8* %105, i8** %107, align 8
  %108 = load i64, i64* @software_decrypt, align 8
  %109 = inttoptr i64 %108 to i8*
  %110 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %111 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %110, i32 0, i32 13
  store i8* %109, i8** %111, align 8
  %112 = load i64, i64* @wmm_enable, align 8
  %113 = inttoptr i64 %112 to i8*
  %114 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %115 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %114, i32 0, i32 12
  store i8* %113, i8** %115, align 8
  %116 = load i64, i64* @uapsd_enable, align 8
  %117 = inttoptr i64 %116 to i8*
  %118 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %119 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %118, i32 0, i32 11
  store i8* %117, i8** %119, align 8
  %120 = load i64, i64* @uapsd_max_sp, align 8
  %121 = inttoptr i64 %120 to i8*
  %122 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %123 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %122, i32 0, i32 10
  store i8* %121, i8** %123, align 8
  %124 = load i64, i64* @uapsd_acbk_en, align 8
  %125 = inttoptr i64 %124 to i8*
  %126 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %127 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %126, i32 0, i32 9
  store i8* %125, i8** %127, align 8
  %128 = load i64, i64* @uapsd_acbe_en, align 8
  %129 = inttoptr i64 %128 to i8*
  %130 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %131 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %130, i32 0, i32 8
  store i8* %129, i8** %131, align 8
  %132 = load i64, i64* @uapsd_acvi_en, align 8
  %133 = inttoptr i64 %132 to i8*
  %134 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %135 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %134, i32 0, i32 7
  store i8* %133, i8** %135, align 8
  %136 = load i64, i64* @uapsd_acvo_en, align 8
  %137 = inttoptr i64 %136 to i8*
  %138 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %139 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %138, i32 0, i32 6
  store i8* %137, i8** %139, align 8
  %140 = load i64, i64* @ht_enable, align 8
  %141 = inttoptr i64 %140 to i8*
  %142 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %143 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %142, i32 0, i32 5
  store i8* %141, i8** %143, align 8
  %144 = load i64, i64* @cbw40_enable, align 8
  %145 = inttoptr i64 %144 to i8*
  %146 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %147 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %146, i32 0, i32 4
  store i8* %145, i8** %147, align 8
  %148 = load i64, i64* @ampdu_enable, align 8
  %149 = inttoptr i64 %148 to i8*
  %150 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %151 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %150, i32 0, i32 3
  store i8* %149, i8** %151, align 8
  %152 = load i64, i64* @rf_config, align 8
  %153 = inttoptr i64 %152 to i8*
  %154 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %155 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %154, i32 0, i32 2
  store i8* %153, i8** %155, align 8
  %156 = load i64, i64* @low_power, align 8
  %157 = inttoptr i64 %156 to i8*
  %158 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %159 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %158, i32 0, i32 1
  store i8* %157, i8** %159, align 8
  %160 = load i64, i64* @wifi_test, align 8
  %161 = inttoptr i64 %160 to i8*
  %162 = load %struct.registry_priv*, %struct.registry_priv** %5, align 8
  %163 = getelementptr inbounds %struct.registry_priv, %struct.registry_priv* %162, i32 0, i32 0
  store i8* %161, i8** %163, align 8
  %164 = load i32, i32* @initmac, align 4
  store i32 %164, i32* @r8712_initmac, align 4
  ret void
}

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
