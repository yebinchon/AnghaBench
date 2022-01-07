; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_module.c_alloc_ieee80211_rsl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_module.c_alloc_ieee80211_rsl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ieee80211_device = type { i32, i32, i32, i32, i32*, i32*, i64*, i32*, i32, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.net_device* }

@.str = private unnamed_addr constant [17 x i8] c"Initializing...\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Unable to network device.\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Unable to allocate beacon storage: %d\0A\00", align 1
@DEFAULT_FTS = common dso_local global i32 0, align 4
@DEFAULT_MAX_SCAN_AGE = common dso_local global i32 0, align 4
@ieee80211_crypt_deinit_handler = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IEEE80211_DL_ERR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"can't alloc memory for HTInfo\0A\00", align 1
@IEEE_IBSS_MAC_HASH_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.net_device* @alloc_ieee80211(i32 %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_device*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = call i32 @IEEE80211_DEBUG_INFO(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = add i64 160, %10
  %12 = trunc i64 %11 to i32
  %13 = call %struct.net_device* @alloc_etherdev(i32 %12)
  store %struct.net_device* %13, %struct.net_device** %5, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = icmp ne %struct.net_device* %14, null
  br i1 %15, label %18, label %16

16:                                               ; preds = %1
  %17 = call i32 (i8*, ...) @IEEE80211_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  br label %155

18:                                               ; preds = %1
  %19 = load %struct.net_device*, %struct.net_device** %5, align 8
  %20 = call %struct.ieee80211_device* @netdev_priv(%struct.net_device* %19)
  store %struct.ieee80211_device* %20, %struct.ieee80211_device** %4, align 8
  %21 = load %struct.net_device*, %struct.net_device** %5, align 8
  %22 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %23 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %22, i32 0, i32 26
  store %struct.net_device* %21, %struct.net_device** %23, align 8
  %24 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %25 = call i32 @ieee80211_networks_allocate(%struct.ieee80211_device* %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %18
  %29 = load i32, i32* %7, align 4
  %30 = call i32 (i8*, ...) @IEEE80211_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  br label %155

31:                                               ; preds = %18
  %32 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %33 = call i32 @ieee80211_networks_initialize(%struct.ieee80211_device* %32)
  %34 = load i32, i32* @DEFAULT_FTS, align 4
  %35 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %36 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %35, i32 0, i32 25
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @DEFAULT_MAX_SCAN_AGE, align 4
  %38 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %38, i32 0, i32 24
  store i32 %37, i32* %39, align 8
  %40 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %41 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %43 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %42, i32 0, i32 1
  store i32 1, i32* %43, align 4
  %44 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %45 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %44, i32 0, i32 2
  store i32 1, i32* %45, align 8
  %46 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %47 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %46, i32 0, i32 3
  store i32 1, i32* %47, align 4
  %48 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %49 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %48, i32 0, i32 23
  %50 = call i32 @INIT_LIST_HEAD(i32* %49)
  %51 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %52 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %51, i32 0, i32 22
  %53 = load i32, i32* @ieee80211_crypt_deinit_handler, align 4
  %54 = call i32 @timer_setup(i32* %52, i32 %53, i32 0)
  %55 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %56 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %55, i32 0, i32 21
  %57 = call i32 @spin_lock_init(i32* %56)
  %58 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %59 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %58, i32 0, i32 20
  %60 = call i32 @spin_lock_init(i32* %59)
  %61 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %62 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %61, i32 0, i32 19
  %63 = call i32 @spin_lock_init(i32* %62)
  %64 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %65 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %64, i32 0, i32 18
  %66 = call i32 @spin_lock_init(i32* %65)
  %67 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %68 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %67, i32 0, i32 17
  %69 = call i32 @atomic_set(i32* %68, i32 0)
  %70 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %71 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %70, i32 0, i32 16
  %72 = call i32 @atomic_set(i32* %71, i32 0)
  %73 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %74 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %73, i32 0, i32 15
  store i64 0, i64* %74, align 8
  %75 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %76 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %75, i32 0, i32 14
  store i64 0, i64* %76, align 8
  %77 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %78 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %77, i32 0, i32 13
  store i64 0, i64* %78, align 8
  %79 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %80 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %79, i32 0, i32 12
  store i64 0, i64* %80, align 8
  %81 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %82 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %81, i32 0, i32 11
  store i64 0, i64* %82, align 8
  %83 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %84 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %83, i32 0, i32 3
  store i32 1, i32* %84, align 4
  %85 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %86 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %85, i32 0, i32 10
  store i64 0, i64* %86, align 8
  %87 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %88 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %87, i32 0, i32 9
  store i64 0, i64* %88, align 8
  %89 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %90 = call i32 @ieee80211_softmac_init(%struct.ieee80211_device* %89)
  %91 = load i32, i32* @GFP_KERNEL, align 4
  %92 = call i32 @kzalloc(i32 4, i32 %91)
  %93 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %94 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %93, i32 0, i32 8
  store i32 %92, i32* %94, align 8
  %95 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %96 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %95, i32 0, i32 8
  %97 = load i32, i32* %96, align 8
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %104, label %99

99:                                               ; preds = %31
  %100 = load i32, i32* @IEEE80211_DL_ERR, align 4
  %101 = call i32 @IEEE80211_DEBUG(i32 %100, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %102 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %103 = call i32 @ieee80211_networks_free(%struct.ieee80211_device* %102)
  br label %155

104:                                              ; preds = %31
  %105 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %106 = call i32 @HTUpdateDefaultSetting(%struct.ieee80211_device* %105)
  %107 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %108 = call i32 @HTInitializeHTInfo(%struct.ieee80211_device* %107)
  %109 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %110 = call i32 @TSInitialize(%struct.ieee80211_device* %109)
  store i32 0, i32* %6, align 4
  br label %111

111:                                              ; preds = %123, %104
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* @IEEE_IBSS_MAC_HASH_SIZE, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %126

115:                                              ; preds = %111
  %116 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %117 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %116, i32 0, i32 7
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %6, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = call i32 @INIT_LIST_HEAD(i32* %121)
  br label %123

123:                                              ; preds = %115
  %124 = load i32, i32* %6, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %6, align 4
  br label %111

126:                                              ; preds = %111
  store i32 0, i32* %6, align 4
  br label %127

127:                                              ; preds = %149, %126
  %128 = load i32, i32* %6, align 4
  %129 = icmp slt i32 %128, 17
  br i1 %129, label %130, label %152

130:                                              ; preds = %127
  %131 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %132 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %131, i32 0, i32 4
  %133 = load i32*, i32** %132, align 8
  %134 = load i32, i32* %6, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds i32, i32* %133, i64 %135
  store i32 -1, i32* %136, align 4
  %137 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %138 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %137, i32 0, i32 5
  %139 = load i32*, i32** %138, align 8
  %140 = load i32, i32* %6, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32 -1, i32* %142, align 4
  %143 = load %struct.ieee80211_device*, %struct.ieee80211_device** %4, align 8
  %144 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %143, i32 0, i32 6
  %145 = load i64*, i64** %144, align 8
  %146 = load i32, i32* %6, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds i64, i64* %145, i64 %147
  store i64 0, i64* %148, align 8
  br label %149

149:                                              ; preds = %130
  %150 = load i32, i32* %6, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %6, align 4
  br label %127

152:                                              ; preds = %127
  %153 = call i32 (...) @ieee80211_tkip_null()
  %154 = load %struct.net_device*, %struct.net_device** %5, align 8
  store %struct.net_device* %154, %struct.net_device** %2, align 8
  br label %162

155:                                              ; preds = %99, %28, %16
  %156 = load %struct.net_device*, %struct.net_device** %5, align 8
  %157 = icmp ne %struct.net_device* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %155
  %159 = load %struct.net_device*, %struct.net_device** %5, align 8
  %160 = call i32 @free_netdev(%struct.net_device* %159)
  br label %161

161:                                              ; preds = %158, %155
  store %struct.net_device* null, %struct.net_device** %2, align 8
  br label %162

162:                                              ; preds = %161, %152
  %163 = load %struct.net_device*, %struct.net_device** %2, align 8
  ret %struct.net_device* %163
}

declare dso_local i32 @IEEE80211_DEBUG_INFO(i8*) #1

declare dso_local %struct.net_device* @alloc_etherdev(i32) #1

declare dso_local i32 @IEEE80211_ERROR(i8*, ...) #1

declare dso_local %struct.ieee80211_device* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ieee80211_networks_allocate(%struct.ieee80211_device*) #1

declare dso_local i32 @ieee80211_networks_initialize(%struct.ieee80211_device*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @ieee80211_softmac_init(%struct.ieee80211_device*) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @IEEE80211_DEBUG(i32, i8*) #1

declare dso_local i32 @ieee80211_networks_free(%struct.ieee80211_device*) #1

declare dso_local i32 @HTUpdateDefaultSetting(%struct.ieee80211_device*) #1

declare dso_local i32 @HTInitializeHTInfo(%struct.ieee80211_device*) #1

declare dso_local i32 @TSInitialize(%struct.ieee80211_device*) #1

declare dso_local i32 @ieee80211_tkip_null(...) #1

declare dso_local i32 @free_netdev(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
