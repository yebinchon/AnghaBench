; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_vnt_start.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_device_main.c_vnt_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hw = type { %struct.vnt_private* }
%struct.vnt_private = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@PKT_BUF_SZ = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@vnt_interrupt = common dso_local global i32 0, align 4
@IRQF_SHARED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"vt6655\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"failed to start irq\0A\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"call device init rd0 ring\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"call MACvIntEnable\0A\00", align 1
@IMR_MASK_VALUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hw*)* @vnt_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vnt_start(%struct.ieee80211_hw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_hw*, align 8
  %4 = alloca %struct.vnt_private*, align 8
  %5 = alloca i32, align 4
  store %struct.ieee80211_hw* %0, %struct.ieee80211_hw** %3, align 8
  %6 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_hw, %struct.ieee80211_hw* %6, i32 0, i32 0
  %8 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  store %struct.vnt_private* %8, %struct.vnt_private** %4, align 8
  %9 = load i32, i32* @PKT_BUF_SZ, align 4
  %10 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %11 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %10, i32 0, i32 2
  store i32 %9, i32* %11, align 4
  %12 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %13 = call i32 @device_init_rings(%struct.vnt_private* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %101

18:                                               ; preds = %1
  %19 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %20 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @vnt_interrupt, align 4
  %25 = load i32, i32* @IRQF_SHARED, align 4
  %26 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %27 = call i32 @request_irq(i32 %23, i32 %24, i32 %25, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.vnt_private* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %18
  %31 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %32 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = call i32 @dev_dbg(i32* %34, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  br label %97

36:                                               ; preds = %18
  %37 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %38 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = call i32 @dev_dbg(i32* %40, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0))
  %42 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %43 = call i32 @device_init_rd0_ring(%struct.vnt_private* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  br label %89

47:                                               ; preds = %36
  %48 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %49 = call i32 @device_init_rd1_ring(%struct.vnt_private* %48)
  store i32 %49, i32* %5, align 4
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %86

53:                                               ; preds = %47
  %54 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %55 = call i32 @device_init_td0_ring(%struct.vnt_private* %54)
  store i32 %55, i32* %5, align 4
  %56 = load i32, i32* %5, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %83

59:                                               ; preds = %53
  %60 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %61 = call i32 @device_init_td1_ring(%struct.vnt_private* %60)
  store i32 %61, i32* %5, align 4
  %62 = load i32, i32* %5, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %80

65:                                               ; preds = %59
  %66 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %67 = call i32 @device_init_registers(%struct.vnt_private* %66)
  %68 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %69 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %68, i32 0, i32 0
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 1
  %72 = call i32 @dev_dbg(i32* %71, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %73 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %74 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @IMR_MASK_VALUE, align 4
  %77 = call i32 @MACvIntEnable(i32 %75, i32 %76)
  %78 = load %struct.ieee80211_hw*, %struct.ieee80211_hw** %3, align 8
  %79 = call i32 @ieee80211_wake_queues(%struct.ieee80211_hw* %78)
  store i32 0, i32* %2, align 4
  br label %101

80:                                               ; preds = %64
  %81 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %82 = call i32 @device_free_td0_ring(%struct.vnt_private* %81)
  br label %83

83:                                               ; preds = %80, %58
  %84 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %85 = call i32 @device_free_rd1_ring(%struct.vnt_private* %84)
  br label %86

86:                                               ; preds = %83, %52
  %87 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %88 = call i32 @device_free_rd0_ring(%struct.vnt_private* %87)
  br label %89

89:                                               ; preds = %86, %46
  %90 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %91 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %96 = call i32 @free_irq(i32 %94, %struct.vnt_private* %95)
  br label %97

97:                                               ; preds = %89, %30
  %98 = load %struct.vnt_private*, %struct.vnt_private** %4, align 8
  %99 = call i32 @device_free_rings(%struct.vnt_private* %98)
  %100 = load i32, i32* %5, align 4
  store i32 %100, i32* %2, align 4
  br label %101

101:                                              ; preds = %97, %65, %15
  %102 = load i32, i32* %2, align 4
  ret i32 %102
}

declare dso_local i32 @device_init_rings(%struct.vnt_private*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.vnt_private*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @device_init_rd0_ring(%struct.vnt_private*) #1

declare dso_local i32 @device_init_rd1_ring(%struct.vnt_private*) #1

declare dso_local i32 @device_init_td0_ring(%struct.vnt_private*) #1

declare dso_local i32 @device_init_td1_ring(%struct.vnt_private*) #1

declare dso_local i32 @device_init_registers(%struct.vnt_private*) #1

declare dso_local i32 @MACvIntEnable(i32, i32) #1

declare dso_local i32 @ieee80211_wake_queues(%struct.ieee80211_hw*) #1

declare dso_local i32 @device_free_td0_ring(%struct.vnt_private*) #1

declare dso_local i32 @device_free_rd1_ring(%struct.vnt_private*) #1

declare dso_local i32 @device_free_rd0_ring(%struct.vnt_private*) #1

declare dso_local i32 @free_irq(i32, %struct.vnt_private*) #1

declare dso_local i32 @device_free_rings(%struct.vnt_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
