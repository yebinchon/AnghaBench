; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_softmac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192u/ieee80211/extr_ieee80211_softmac.c_ieee80211_softmac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_device = type { i32, i32*, i32, i32, i32, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i64, i32, i32, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_3__, i32, i64*, i64, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i64, i64 }

@IEEE80211_NOLINK = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IEEE80211_DL_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"can't alloc memory for DOT11D\0A\00", align 1
@IEEE80211_DEFAULT_BASIC_RATE = common dso_local global i32 0, align 4
@IEEE80211_PS_DISABLED = common dso_local global i32 0, align 4
@ieee80211_associate_abort_cb = common dso_local global i32 0, align 4
@ieee80211_send_beacon_cb = common dso_local global i32 0, align 4
@ieee80211_start_ibss_wq = common dso_local global i32 0, align 4
@ieee80211_associate_complete_wq = common dso_local global i32 0, align 4
@ieee80211_associate_procedure_wq = common dso_local global i32 0, align 4
@ieee80211_softmac_scan_wq = common dso_local global i32 0, align 4
@ieee80211_associate_retry_wq = common dso_local global i32 0, align 4
@ieee80211_wx_sync_scan_wq = common dso_local global i32 0, align 4
@ieee80211_sta_ps = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_softmac_init(%struct.ieee80211_device* %0) #0 {
  %2 = alloca %struct.ieee80211_device*, align 8
  %3 = alloca i32, align 4
  store %struct.ieee80211_device* %0, %struct.ieee80211_device** %2, align 8
  %4 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %4, i32 0, i32 37
  %6 = call i32 @memset(i32* %5, i32 0, i32 4)
  %7 = load i32, i32* @IEEE80211_NOLINK, align 4
  %8 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %8, i32 0, i32 36
  store i32 %7, i32* %9, align 8
  %10 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %10, i32 0, i32 35
  store i64 0, i64* %11, align 8
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %22, %1
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %13, 5
  br i1 %14, label %15, label %25

15:                                               ; preds = %12
  %16 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %17 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %16, i32 0, i32 34
  %18 = load i64*, i64** %17, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i64, i64* %18, i64 %20
  store i64 0, i64* %21, align 8
  br label %22

22:                                               ; preds = %15
  %23 = load i32, i32* %3, align 4
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %3, align 4
  br label %12

25:                                               ; preds = %12
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call i32 @kzalloc(i32 4, i32 %26)
  %28 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %29 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %28, i32 0, i32 33
  store i32 %27, i32* %29, align 8
  %30 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %31 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %30, i32 0, i32 33
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* @IEEE80211_DL_ERR, align 4
  %36 = call i32 @IEEE80211_DEBUG(i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %34, %25
  %38 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %39 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %38, i32 0, i32 32
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  store i32 2, i32* %40, align 8
  %41 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %42 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %41, i32 0, i32 32
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 2
  store i64 0, i64* %43, align 8
  %44 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %45 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %44, i32 0, i32 32
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  store i64 0, i64* %46, align 8
  %47 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %48 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %47, i32 0, i32 31
  store i64 0, i64* %48, align 8
  %49 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %50 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %49, i32 0, i32 30
  store i64 0, i64* %50, align 8
  %51 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %52 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %51, i32 0, i32 29
  store i64 0, i64* %52, align 8
  %53 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %54 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %53, i32 0, i32 28
  store i64 0, i64* %54, align 8
  %55 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %56 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %55, i32 0, i32 27
  store i64 0, i64* %56, align 8
  %57 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %58 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %57, i32 0, i32 26
  store i64 0, i64* %58, align 8
  %59 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %60 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %59, i32 0, i32 25
  store i64 0, i64* %60, align 8
  %61 = load i32, i32* @IEEE80211_DEFAULT_BASIC_RATE, align 4
  %62 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %63 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %62, i32 0, i32 24
  store i32 %61, i32* %63, align 4
  %64 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %65 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %64, i32 0, i32 0
  store i32 22, i32* %65, align 8
  %66 = load i32, i32* @IEEE80211_PS_DISABLED, align 4
  %67 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %68 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %67, i32 0, i32 23
  store i32 %66, i32* %68, align 8
  %69 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %70 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %69, i32 0, i32 22
  store i64 0, i64* %70, align 8
  %71 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %72 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 0
  store i32 255, i32* %74, align 4
  %75 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %76 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  store i32 255, i32* %78, align 4
  %79 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %80 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 4
  store i32 1, i32* %82, align 4
  %83 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %84 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %83, i32 0, i32 2
  store i32 0, i32* %84, align 8
  %85 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %86 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %85, i32 0, i32 3
  store i32 0, i32* %86, align 4
  %87 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %88 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %87, i32 0, i32 4
  store i32 0, i32* %88, align 8
  %89 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %90 = call i32 @init_mgmt_queue(%struct.ieee80211_device* %89)
  %91 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %92 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %91, i32 0, i32 5
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 0
  store i32 41987, i32* %94, align 4
  %95 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %96 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %95, i32 0, i32 5
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  store i32 42023, i32* %98, align 4
  %99 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %100 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %99, i32 0, i32 5
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  store i32 6177602, i32* %102, align 4
  %103 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %104 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %103, i32 0, i32 5
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 3
  store i32 3093090, i32* %106, align 4
  %107 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %108 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %107, i32 0, i32 6
  store i32 1, i32* %108, align 8
  %109 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %110 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %109, i32 0, i32 7
  store i32 1, i32* %110, align 4
  %111 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %112 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %111, i32 0, i32 21
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  store i32* null, i32** %113, align 8
  %114 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %115 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %114, i32 0, i32 20
  %116 = load i32, i32* @ieee80211_associate_abort_cb, align 4
  %117 = call i32 @timer_setup(i32* %115, i32 %116, i32 0)
  %118 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %119 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %118, i32 0, i32 19
  %120 = load i32, i32* @ieee80211_send_beacon_cb, align 4
  %121 = call i32 @timer_setup(i32* %119, i32 %120, i32 0)
  %122 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %123 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %122, i32 0, i32 18
  %124 = load i32, i32* @ieee80211_start_ibss_wq, align 4
  %125 = call i32 @INIT_DELAYED_WORK(i32* %123, i32 %124)
  %126 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %127 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %126, i32 0, i32 17
  %128 = load i32, i32* @ieee80211_associate_complete_wq, align 4
  %129 = call i32 @INIT_WORK(i32* %127, i32 %128)
  %130 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %131 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %130, i32 0, i32 16
  %132 = load i32, i32* @ieee80211_associate_procedure_wq, align 4
  %133 = call i32 @INIT_WORK(i32* %131, i32 %132)
  %134 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %135 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %134, i32 0, i32 15
  %136 = load i32, i32* @ieee80211_softmac_scan_wq, align 4
  %137 = call i32 @INIT_DELAYED_WORK(i32* %135, i32 %136)
  %138 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %139 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %138, i32 0, i32 14
  %140 = load i32, i32* @ieee80211_associate_retry_wq, align 4
  %141 = call i32 @INIT_DELAYED_WORK(i32* %139, i32 %140)
  %142 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %143 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %142, i32 0, i32 13
  %144 = load i32, i32* @ieee80211_wx_sync_scan_wq, align 4
  %145 = call i32 @INIT_WORK(i32* %143, i32 %144)
  %146 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %147 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %146, i32 0, i32 12
  %148 = call i32 @mutex_init(i32* %147)
  %149 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %150 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %149, i32 0, i32 11
  %151 = call i32 @mutex_init(i32* %150)
  %152 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %153 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %152, i32 0, i32 10
  %154 = call i32 @spin_lock_init(i32* %153)
  %155 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %156 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %155, i32 0, i32 9
  %157 = call i32 @spin_lock_init(i32* %156)
  %158 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %159 = getelementptr inbounds %struct.ieee80211_device, %struct.ieee80211_device* %158, i32 0, i32 8
  %160 = load i64, i64* @ieee80211_sta_ps, align 8
  %161 = inttoptr i64 %160 to void (i64)*
  %162 = load %struct.ieee80211_device*, %struct.ieee80211_device** %2, align 8
  %163 = ptrtoint %struct.ieee80211_device* %162 to i64
  %164 = call i32 @tasklet_init(i32* %159, void (i64)* %161, i64 %163)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @IEEE80211_DEBUG(i32, i8*) #1

declare dso_local i32 @init_mgmt_queue(%struct.ieee80211_device*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, void (i64)*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
