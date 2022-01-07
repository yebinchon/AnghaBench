; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_core_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_main.c_rtw_core_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_10__*, %struct.TYPE_9__, i32, i32, %struct.TYPE_8__, %struct.rtw_coex, %struct.TYPE_7__, %struct.TYPE_6__, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32 }
%struct.TYPE_8__ = type { i32 }
%struct.rtw_coex = type { i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@rtw_tx_report_purge_timer = common dso_local global i32 0, align 4
@rtw_watch_dog_work = common dso_local global i32 0, align 4
@rtw_lps_work = common dso_local global i32 0, align 4
@rtw_coex_bt_relink_work = common dso_local global i32 0, align 4
@rtw_coex_bt_reenable_work = common dso_local global i32 0, align 4
@rtw_coex_defreeze_work = common dso_local global i32 0, align 4
@rtw_c2h_work = common dso_local global i32 0, align 4
@RTW_BC_MC_MACID = common dso_local global i32 0, align 4
@RSVD_BEACON = common dso_local global i32 0, align 4
@BIT_APP_FCS = common dso_local global i32 0, align 4
@BIT_APP_MIC = common dso_local global i32 0, align 4
@BIT_APP_ICV = common dso_local global i32 0, align 4
@BIT_HTC_LOC_CTRL = common dso_local global i32 0, align 4
@BIT_APP_PHYSTS = common dso_local global i32 0, align 4
@BIT_AB = common dso_local global i32 0, align 4
@BIT_AM = common dso_local global i32 0, align 4
@BIT_APM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"no firmware loaded\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_core_init(%struct.rtw_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.rtw_coex*, align 8
  %5 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  %6 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %7 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %6, i32 0, i32 5
  store %struct.rtw_coex* %7, %struct.rtw_coex** %4, align 8
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %9 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %8, i32 0, i32 14
  %10 = call i32 @INIT_LIST_HEAD(i32* %9)
  %11 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %12 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %11, i32 0, i32 6
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 2
  %14 = load i32, i32* @rtw_tx_report_purge_timer, align 4
  %15 = call i32 @timer_setup(i32* %13, i32 %14, i32 0)
  %16 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %17 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %16, i32 0, i32 13
  %18 = load i32, i32* @rtw_watch_dog_work, align 4
  %19 = call i32 @INIT_DELAYED_WORK(i32* %17, i32 %18)
  %20 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %21 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %20, i32 0, i32 12
  %22 = load i32, i32* @rtw_lps_work, align 4
  %23 = call i32 @INIT_DELAYED_WORK(i32* %21, i32 %22)
  %24 = load %struct.rtw_coex*, %struct.rtw_coex** %4, align 8
  %25 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %24, i32 0, i32 5
  %26 = load i32, i32* @rtw_coex_bt_relink_work, align 4
  %27 = call i32 @INIT_DELAYED_WORK(i32* %25, i32 %26)
  %28 = load %struct.rtw_coex*, %struct.rtw_coex** %4, align 8
  %29 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %28, i32 0, i32 4
  %30 = load i32, i32* @rtw_coex_bt_reenable_work, align 4
  %31 = call i32 @INIT_DELAYED_WORK(i32* %29, i32 %30)
  %32 = load %struct.rtw_coex*, %struct.rtw_coex** %4, align 8
  %33 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %32, i32 0, i32 3
  %34 = load i32, i32* @rtw_coex_defreeze_work, align 4
  %35 = call i32 @INIT_DELAYED_WORK(i32* %33, i32 %34)
  %36 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %37 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %36, i32 0, i32 11
  %38 = load i32, i32* @rtw_c2h_work, align 4
  %39 = call i32 @INIT_WORK(i32* %37, i32 %38)
  %40 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %41 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %40, i32 0, i32 10
  %42 = call i32 @skb_queue_head_init(i32* %41)
  %43 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %44 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %43, i32 0, i32 5
  %45 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %44, i32 0, i32 2
  %46 = call i32 @skb_queue_head_init(i32* %45)
  %47 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %48 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %47, i32 0, i32 6
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 1
  %50 = call i32 @skb_queue_head_init(i32* %49)
  %51 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %52 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %51, i32 0, i32 9
  %53 = call i32 @spin_lock_init(i32* %52)
  %54 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %55 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %54, i32 0, i32 8
  %56 = call i32 @spin_lock_init(i32* %55)
  %57 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %58 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %57, i32 0, i32 7
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = call i32 @spin_lock_init(i32* %59)
  %61 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %62 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %61, i32 0, i32 6
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = call i32 @spin_lock_init(i32* %63)
  %65 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %66 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %65, i32 0, i32 2
  %67 = call i32 @mutex_init(i32* %66)
  %68 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %69 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %68, i32 0, i32 5
  %70 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %69, i32 0, i32 1
  %71 = call i32 @mutex_init(i32* %70)
  %72 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %73 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 2
  %75 = call i32 @mutex_init(i32* %74)
  %76 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %77 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %76, i32 0, i32 5
  %78 = getelementptr inbounds %struct.rtw_coex, %struct.rtw_coex* %77, i32 0, i32 0
  %79 = call i32 @init_waitqueue_head(i32* %78)
  %80 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %81 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %80, i32 0, i32 4
  %82 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %81, i32 0, i32 0
  store i32 32, i32* %82, align 4
  %83 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %84 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 0
  store i32 1, i32* %85, align 8
  %86 = load i32, i32* @RTW_BC_MC_MACID, align 4
  %87 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %88 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @set_bit(i32 %86, i32 %89)
  %91 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %92 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %91, i32 0, i32 2
  %93 = call i32 @mutex_lock(i32* %92)
  %94 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %95 = load i32, i32* @RSVD_BEACON, align 4
  %96 = call i32 @rtw_add_rsvd_page(%struct.rtw_dev* %94, i32 %95, i32 0)
  %97 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %98 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %97, i32 0, i32 2
  %99 = call i32 @mutex_unlock(i32* %98)
  %100 = load i32, i32* @BIT_APP_FCS, align 4
  %101 = load i32, i32* @BIT_APP_MIC, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* @BIT_APP_ICV, align 4
  %104 = or i32 %102, %103
  %105 = load i32, i32* @BIT_HTC_LOC_CTRL, align 4
  %106 = or i32 %104, %105
  %107 = load i32, i32* @BIT_APP_PHYSTS, align 4
  %108 = or i32 %106, %107
  %109 = load i32, i32* @BIT_AB, align 4
  %110 = or i32 %108, %109
  %111 = load i32, i32* @BIT_AM, align 4
  %112 = or i32 %110, %111
  %113 = load i32, i32* @BIT_APM, align 4
  %114 = or i32 %112, %113
  %115 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %116 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 1
  store i32 %114, i32* %117, align 4
  %118 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %119 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %120 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %119, i32 0, i32 0
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @rtw_load_firmware(%struct.rtw_dev* %118, i32 %123)
  store i32 %124, i32* %5, align 4
  %125 = load i32, i32* %5, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %1
  %128 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %129 = call i32 @rtw_warn(%struct.rtw_dev* %128, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %130 = load i32, i32* %5, align 4
  store i32 %130, i32* %2, align 4
  br label %132

131:                                              ; preds = %1
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %131, %127
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @rtw_add_rsvd_page(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @rtw_load_firmware(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_warn(%struct.rtw_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
