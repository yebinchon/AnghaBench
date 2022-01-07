; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_softmac_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8192e/extr_rtllib_softmac.c_rtllib_softmac_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtllib_device = type { i32, i32, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, %struct.TYPE_3__, i32, i32, i64*, i32, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i64, i64, i64, i64, i64, i64 }

@RTLLIB_NOLINK = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Can't alloc memory for DOT11D\0A\00", align 1
@RTLLIB_DEFAULT_BASIC_RATE = common dso_local global i32 0, align 4
@RTLLIB_PS_DISABLED = common dso_local global i32 0, align 4
@LPS_IS_WAKE = common dso_local global i32 0, align 4
@rtllib_associate_abort_cb = common dso_local global i32 0, align 4
@rtllib_send_beacon_cb = common dso_local global i32 0, align 4
@rtllib_link_change_wq = common dso_local global i64 0, align 8
@rtllib_start_ibss_wq = common dso_local global i64 0, align 8
@rtllib_associate_complete_wq = common dso_local global i64 0, align 8
@rtllib_associate_procedure_wq = common dso_local global i64 0, align 8
@rtllib_softmac_scan_wq = common dso_local global i64 0, align 8
@rtllib_associate_retry_wq = common dso_local global i64 0, align 8
@rtllib_wx_sync_scan_wq = common dso_local global i64 0, align 8
@rtllib_sta_ps = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rtllib_softmac_init(%struct.rtllib_device* %0) #0 {
  %2 = alloca %struct.rtllib_device*, align 8
  %3 = alloca i32, align 4
  store %struct.rtllib_device* %0, %struct.rtllib_device** %2, align 8
  %4 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %5 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %4, i32 0, i32 40
  %6 = call i32 @memset(i32* %5, i32 0, i32 4)
  %7 = load i32, i32* @RTLLIB_NOLINK, align 4
  %8 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %9 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %8, i32 0, i32 39
  store i32 %7, i32* %9, align 8
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %20, %1
  %11 = load i32, i32* %3, align 4
  %12 = icmp slt i32 %11, 5
  br i1 %12, label %13, label %23

13:                                               ; preds = %10
  %14 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %15 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %14, i32 0, i32 38
  %16 = load i64*, i64** %15, align 8
  %17 = load i32, i32* %3, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i64, i64* %16, i64 %18
  store i64 0, i64* %19, align 8
  br label %20

20:                                               ; preds = %13
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %10

23:                                               ; preds = %10
  %24 = load i32, i32* @GFP_ATOMIC, align 4
  %25 = call i32 @kzalloc(i32 4, i32 %24)
  %26 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %27 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %26, i32 0, i32 37
  store i32 %25, i32* %27, align 4
  %28 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %29 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %28, i32 0, i32 37
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %37, label %32

32:                                               ; preds = %23
  %33 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %34 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %33, i32 0, i32 36
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @netdev_err(i32 %35, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %37

37:                                               ; preds = %32, %23
  %38 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %39 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %38, i32 0, i32 35
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 6
  store i64 0, i64* %40, align 8
  %41 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %42 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %41, i32 0, i32 35
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 2, i32* %43, align 8
  %44 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %45 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %44, i32 0, i32 35
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 5
  store i64 0, i64* %46, align 8
  %47 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %48 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %47, i32 0, i32 35
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 4
  store i64 0, i64* %49, align 8
  %50 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %51 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %50, i32 0, i32 35
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 3
  store i64 0, i64* %52, align 8
  %53 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %54 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %53, i32 0, i32 35
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 2
  store i64 0, i64* %55, align 8
  %56 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %57 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %56, i32 0, i32 35
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  %59 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %60 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %59, i32 0, i32 0
  store i32 0, i32* %60, align 8
  %61 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %62 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %61, i32 0, i32 34
  store i64 0, i64* %62, align 8
  %63 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %64 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %63, i32 0, i32 33
  store i64 0, i64* %64, align 8
  %65 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %66 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %65, i32 0, i32 32
  store i64 0, i64* %66, align 8
  %67 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %68 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %67, i32 0, i32 31
  store i64 0, i64* %68, align 8
  %69 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %70 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %69, i32 0, i32 30
  store i64 0, i64* %70, align 8
  %71 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %72 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %71, i32 0, i32 29
  store i64 0, i64* %72, align 8
  %73 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %74 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %73, i32 0, i32 28
  store i64 0, i64* %74, align 8
  %75 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %76 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %75, i32 0, i32 27
  store i64 0, i64* %76, align 8
  %77 = load i32, i32* @RTLLIB_DEFAULT_BASIC_RATE, align 4
  %78 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %79 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %78, i32 0, i32 26
  store i32 %77, i32* %79, align 8
  %80 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %81 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %80, i32 0, i32 1
  store i32 22, i32* %81, align 4
  %82 = load i32, i32* @RTLLIB_PS_DISABLED, align 4
  %83 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %84 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %83, i32 0, i32 25
  store i32 %82, i32* %84, align 4
  %85 = load i32, i32* @LPS_IS_WAKE, align 4
  %86 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %87 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %86, i32 0, i32 24
  store i32 %85, i32* %87, align 8
  %88 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %89 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  store i32 255, i32* %91, align 4
  %92 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %93 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %92, i32 0, i32 2
  %94 = load i32*, i32** %93, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  store i32 255, i32* %95, align 4
  %96 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %97 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %96, i32 0, i32 2
  %98 = load i32*, i32** %97, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 4
  store i32 1, i32* %99, align 4
  %100 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %101 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 0
  store i32 255, i32* %103, align 4
  %104 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %105 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %104, i32 0, i32 3
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  store i32 255, i32* %107, align 4
  %108 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %109 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 4
  store i32 1, i32* %111, align 4
  %112 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %113 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %112, i32 0, i32 4
  store i32 0, i32* %113, align 8
  %114 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %115 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %114, i32 0, i32 5
  store i32 0, i32* %115, align 4
  %116 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %117 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %116, i32 0, i32 6
  store i32 0, i32* %117, align 8
  %118 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %119 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %118, i32 0, i32 7
  store i32 0, i32* %119, align 4
  %120 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %121 = call i32 @init_mgmt_queue(%struct.rtllib_device* %120)
  %122 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %123 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %122, i32 0, i32 23
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  store i32* null, i32** %124, align 8
  %125 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %126 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %125, i32 0, i32 22
  %127 = load i32, i32* @rtllib_associate_abort_cb, align 4
  %128 = call i32 @timer_setup(i32* %126, i32 %127, i32 0)
  %129 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %130 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %129, i32 0, i32 21
  %131 = load i32, i32* @rtllib_send_beacon_cb, align 4
  %132 = call i32 @timer_setup(i32* %130, i32 %131, i32 0)
  %133 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %134 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %133, i32 0, i32 20
  %135 = load i64, i64* @rtllib_link_change_wq, align 8
  %136 = inttoptr i64 %135 to i8*
  %137 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %138 = call i32 @INIT_DELAYED_WORK_RSL(i32* %134, i8* %136, %struct.rtllib_device* %137)
  %139 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %140 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %139, i32 0, i32 19
  %141 = load i64, i64* @rtllib_start_ibss_wq, align 8
  %142 = inttoptr i64 %141 to i8*
  %143 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %144 = call i32 @INIT_DELAYED_WORK_RSL(i32* %140, i8* %142, %struct.rtllib_device* %143)
  %145 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %146 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %145, i32 0, i32 18
  %147 = load i64, i64* @rtllib_associate_complete_wq, align 8
  %148 = inttoptr i64 %147 to i8*
  %149 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %150 = call i32 @INIT_WORK_RSL(i32* %146, i8* %148, %struct.rtllib_device* %149)
  %151 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %152 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %151, i32 0, i32 17
  %153 = load i64, i64* @rtllib_associate_procedure_wq, align 8
  %154 = inttoptr i64 %153 to i8*
  %155 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %156 = call i32 @INIT_DELAYED_WORK_RSL(i32* %152, i8* %154, %struct.rtllib_device* %155)
  %157 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %158 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %157, i32 0, i32 16
  %159 = load i64, i64* @rtllib_softmac_scan_wq, align 8
  %160 = inttoptr i64 %159 to i8*
  %161 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %162 = call i32 @INIT_DELAYED_WORK_RSL(i32* %158, i8* %160, %struct.rtllib_device* %161)
  %163 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %164 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %163, i32 0, i32 15
  %165 = load i64, i64* @rtllib_associate_retry_wq, align 8
  %166 = inttoptr i64 %165 to i8*
  %167 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %168 = call i32 @INIT_DELAYED_WORK_RSL(i32* %164, i8* %166, %struct.rtllib_device* %167)
  %169 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %170 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %169, i32 0, i32 14
  %171 = load i64, i64* @rtllib_wx_sync_scan_wq, align 8
  %172 = inttoptr i64 %171 to i8*
  %173 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %174 = call i32 @INIT_WORK_RSL(i32* %170, i8* %172, %struct.rtllib_device* %173)
  %175 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %176 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %175, i32 0, i32 13
  %177 = call i32 @mutex_init(i32* %176)
  %178 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %179 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %178, i32 0, i32 12
  %180 = call i32 @mutex_init(i32* %179)
  %181 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %182 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %181, i32 0, i32 11
  %183 = call i32 @mutex_init(i32* %182)
  %184 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %185 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %184, i32 0, i32 10
  %186 = call i32 @spin_lock_init(i32* %185)
  %187 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %188 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %187, i32 0, i32 9
  %189 = call i32 @spin_lock_init(i32* %188)
  %190 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %191 = getelementptr inbounds %struct.rtllib_device, %struct.rtllib_device* %190, i32 0, i32 8
  %192 = load i64, i64* @rtllib_sta_ps, align 8
  %193 = inttoptr i64 %192 to void (i64)*
  %194 = load %struct.rtllib_device*, %struct.rtllib_device** %2, align 8
  %195 = ptrtoint %struct.rtllib_device* %194 to i64
  %196 = call i32 @tasklet_init(i32* %191, void (i64)* %193, i64 %195)
  ret void
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local i32 @init_mgmt_queue(%struct.rtllib_device*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK_RSL(i32*, i8*, %struct.rtllib_device*) #1

declare dso_local i32 @INIT_WORK_RSL(i32*, i8*, %struct.rtllib_device*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @tasklet_init(i32*, void (i64)*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
