; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_module.c_alloc_rtllib.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_module.c_alloc_rtllib.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.rtllib_device = type { i32, i32, i32, i32, i32*, i32*, i64*, i32*, i32, i32, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, %struct.net_device* }

@.str = private unnamed_addr constant [25 x i8] c"rtllib: Initializing...\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Unable to allocate net_device.\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Unable to allocate beacon storage: %d\0A\00", align 1
@DEFAULT_FTS = common dso_local global i32 0, align 4
@DEFAULT_MAX_SCAN_AGE = common dso_local global i32 0, align 4
@rtllib_ap_sec_type = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [7 x i8] c"RTLLIB\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@IEEE_IBSS_MAC_HASH_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @alloc_rtllib(i32 %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.rtllib_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.rtllib_device* null, %struct.rtllib_device** %4, align 8
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = add i64 144, %10
  %12 = trunc i64 %11 to i32
  %13 = call %struct.net_device* @alloc_etherdev(i32 %12)
  store %struct.net_device* %13, %struct.net_device** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = icmp ne %struct.net_device* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store %struct.net_device* null, %struct.net_device** %2, align 8
  br label %151

18:                                               ; preds = %1
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call i64 @netdev_priv_rsl(%struct.net_device* %19)
  %21 = inttoptr i64 %20 to %struct.rtllib_device*
  store %struct.rtllib_device* %21, %struct.rtllib_device** %4, align 8
  %22 = load %struct.net_device*, %struct.net_device** %5, align 8
  %23 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %24 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %23, i32 0, i32 24
  store %struct.net_device* %22, %struct.net_device** %24, align 8
  %25 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %26 = call i32 @rtllib_networks_allocate(%struct.rtllib_device* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %18
  %30 = load i32, i32* %7, align 4
  %31 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %30)
  br label %148

32:                                               ; preds = %18
  %33 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %34 = call i32 @rtllib_networks_initialize(%struct.rtllib_device* %33)
  %35 = load i32, i32* @DEFAULT_FTS, align 4
  %36 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %37 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %36, i32 0, i32 23
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @DEFAULT_MAX_SCAN_AGE, align 4
  %39 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %40 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %39, i32 0, i32 22
  store i32 %38, i32* %40, align 8
  %41 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %42 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %41, i32 0, i32 0
  store i32 1, i32* %42, align 8
  %43 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %44 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %43, i32 0, i32 1
  store i32 1, i32* %44, align 4
  %45 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %46 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %45, i32 0, i32 2
  store i32 1, i32* %46, align 8
  %47 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %48 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %47, i32 0, i32 3
  store i32 1, i32* %48, align 4
  %49 = load i32, i32* @rtllib_ap_sec_type, align 4
  %50 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %51 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %50, i32 0, i32 21
  store i32 %49, i32* %51, align 4
  %52 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %53 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %52, i32 0, i32 16
  %54 = call i32 @spin_lock_init(i32* %53)
  %55 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %56 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %55, i32 0, i32 20
  %57 = call i32 @spin_lock_init(i32* %56)
  %58 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %59 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %58, i32 0, i32 19
  %60 = call i32 @spin_lock_init(i32* %59)
  %61 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %62 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %61, i32 0, i32 18
  %63 = call i32 @atomic_set(i32* %62, i32 0)
  %64 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %65 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %64, i32 0, i32 17
  %66 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %67 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %66, i32 0, i32 16
  %68 = call i32 @lib80211_crypt_info_init(i32* %65, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i32* %67)
  %69 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %70 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %69, i32 0, i32 15
  store i64 0, i64* %70, align 8
  %71 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %72 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %71, i32 0, i32 14
  store i64 0, i64* %72, align 8
  %73 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %74 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %73, i32 0, i32 13
  store i64 0, i64* %74, align 8
  %75 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %76 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %75, i32 0, i32 12
  store i64 0, i64* %76, align 8
  %77 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %78 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %77, i32 0, i32 3
  store i32 1, i32* %78, align 4
  %79 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %80 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %79, i32 0, i32 11
  store i64 0, i64* %80, align 8
  %81 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %82 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %81, i32 0, i32 10
  store i64 0, i64* %82, align 8
  %83 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %84 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %83, i32 0, i32 9
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @memset(i32 %85, i32 0, i32 128)
  %87 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %88 = call i32 @rtllib_softmac_init(%struct.rtllib_device* %87)
  %89 = load i32, i32* @GFP_KERNEL, align 4
  %90 = call i32 @kzalloc(i32 4, i32 %89)
  %91 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %92 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %91, i32 0, i32 8
  store i32 %90, i32* %92, align 8
  %93 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %94 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %93, i32 0, i32 8
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %32
  store %struct.net_device* null, %struct.net_device** %2, align 8
  br label %151

98:                                               ; preds = %32
  %99 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %100 = call i32 @HTUpdateDefaultSetting(%struct.rtllib_device* %99)
  %101 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %102 = call i32 @HTInitializeHTInfo(%struct.rtllib_device* %101)
  %103 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %104 = call i32 @TSInitialize(%struct.rtllib_device* %103)
  store i32 0, i32* %6, align 4
  br label %105

105:                                              ; preds = %117, %98
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* @IEEE_IBSS_MAC_HASH_SIZE, align 4
  %108 = icmp slt i32 %106, %107
  br i1 %108, label %109, label %120

109:                                              ; preds = %105
  %110 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %111 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %110, i32 0, i32 7
  %112 = load i32*, i32** %111, align 8
  %113 = load i32, i32* %6, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = call i32 @INIT_LIST_HEAD(i32* %115)
  br label %117

117:                                              ; preds = %109
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %105

120:                                              ; preds = %105
  store i32 0, i32* %6, align 4
  br label %121

121:                                              ; preds = %143, %120
  %122 = load i32, i32* %6, align 4
  %123 = icmp slt i32 %122, 17
  br i1 %123, label %124, label %146

124:                                              ; preds = %121
  %125 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %126 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %125, i32 0, i32 4
  %127 = load i32*, i32** %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i32, i32* %127, i64 %129
  store i32 -1, i32* %130, align 4
  %131 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %132 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %131, i32 0, i32 5
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 -1, i32* %136, align 4
  %137 = load %struct.rtllib_device*, %struct.rtllib_device** %4, align 8
  %138 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %137, i32 0, i32 6
  %139 = load i64*, i64** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i64, i64* %139, i64 %141
  store i64 0, i64* %142, align 8
  br label %143

143:                                              ; preds = %124
  %144 = load i32, i32* %6, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %6, align 4
  br label %121

146:                                              ; preds = %121
  %147 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %147, %struct.net_device** %2, align 8
  br label %151

148:                                              ; preds = %29
  %149 = load %struct.net_device*, %struct.net_device** %5, align 8
  %150 = call i32 @free_netdev(%struct.net_device* %149)
  store %struct.net_device* null, %struct.net_device** %2, align 8
  br label %151

151:                                              ; preds = %148, %146, %97, %16
  %152 = load %struct.net_device*, %struct.net_device** %2, align 8
  ret %struct.net_device* %152
}

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @pr_err(i8*, ...) #1

declare dso_local i64 @netdev_priv_rsl(%struct.net_device*) #1

declare dso_local i32 @rtllib_networks_allocate(%struct.rtllib_device*) #1

declare dso_local i32 @rtllib_networks_initialize(%struct.rtllib_device*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @lib80211_crypt_info_init(i32*, i8*, i32*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @rtllib_softmac_init(%struct.rtllib_device*) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @HTUpdateDefaultSetting(%struct.rtllib_device*) #1

declare dso_local i32 @HTInitializeHTInfo(%struct.rtllib_device*) #1

declare dso_local i32 @TSInitialize(%struct.rtllib_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
