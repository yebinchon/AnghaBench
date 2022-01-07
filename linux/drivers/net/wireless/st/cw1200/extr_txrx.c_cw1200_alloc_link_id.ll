; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_cw1200_alloc_link_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_txrx.c_cw1200_alloc_link_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32, %struct.TYPE_4__*, i32, i32, %struct.cw1200_link_entry*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.cw1200_link_entry = type { i64, i64, i32, i32, i32 }
%struct.TYPE_3__ = type { i32* }

@jiffies = common dso_local global i64 0, align 8
@CW1200_MAX_STA_IN_AP_MODE = common dso_local global i32 0, align 4
@CW1200_LINK_HARD = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"[AP] STA added, link_id: %d\0A\00", align 1
@CW1200_LINK_RESERVE = common dso_local global i64 0, align 8
@ETH_ALEN = common dso_local global i32 0, align 4
@CW1200_MAX_TID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"[AP] Early: no more link IDs available.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cw1200_alloc_link_id(%struct.cw1200_common* %0, i32* %1) #0 {
  %3 = alloca %struct.cw1200_common*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.cw1200_link_entry*, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %11 = load i64, i64* @jiffies, align 8
  store i64 %11, i64* %8, align 8
  %12 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %13 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %12, i32 0, i32 0
  %14 = call i32 @spin_lock_bh(i32* %13)
  store i32 0, i32* %5, align 4
  br label %15

15:                                               ; preds = %75, %2
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* @CW1200_MAX_STA_IN_AP_MODE, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %78

19:                                               ; preds = %15
  %20 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %21 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %20, i32 0, i32 4
  %22 = load %struct.cw1200_link_entry*, %struct.cw1200_link_entry** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.cw1200_link_entry, %struct.cw1200_link_entry* %22, i64 %24
  %26 = getelementptr inbounds %struct.cw1200_link_entry, %struct.cw1200_link_entry* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %19
  %30 = load i32, i32* %5, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %6, align 4
  br label %78

32:                                               ; preds = %19
  %33 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %34 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %33, i32 0, i32 4
  %35 = load %struct.cw1200_link_entry*, %struct.cw1200_link_entry** %34, align 8
  %36 = load i32, i32* %5, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.cw1200_link_entry, %struct.cw1200_link_entry* %35, i64 %37
  %39 = getelementptr inbounds %struct.cw1200_link_entry, %struct.cw1200_link_entry* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @CW1200_LINK_HARD, align 8
  %42 = icmp ne i64 %40, %41
  br i1 %42, label %43, label %73

43:                                               ; preds = %32
  %44 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %45 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %5, align 4
  %49 = add nsw i32 %48, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %47, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %73, label %54

54:                                               ; preds = %43
  %55 = load i64, i64* %8, align 8
  %56 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %57 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %56, i32 0, i32 4
  %58 = load %struct.cw1200_link_entry*, %struct.cw1200_link_entry** %57, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.cw1200_link_entry, %struct.cw1200_link_entry* %58, i64 %60
  %62 = getelementptr inbounds %struct.cw1200_link_entry, %struct.cw1200_link_entry* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = sub i64 %55, %63
  store i64 %64, i64* %9, align 8
  %65 = load i64, i64* %9, align 8
  %66 = load i64, i64* %7, align 8
  %67 = icmp ult i64 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %54
  br label %75

69:                                               ; preds = %54
  %70 = load i64, i64* %9, align 8
  store i64 %70, i64* %7, align 8
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %6, align 4
  br label %73

73:                                               ; preds = %69, %43, %32
  br label %74

74:                                               ; preds = %73
  br label %75

75:                                               ; preds = %74, %68
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %15

78:                                               ; preds = %29, %15
  %79 = load i32, i32* %6, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %119

81:                                               ; preds = %78
  %82 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %83 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %82, i32 0, i32 4
  %84 = load %struct.cw1200_link_entry*, %struct.cw1200_link_entry** %83, align 8
  %85 = load i32, i32* %6, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.cw1200_link_entry, %struct.cw1200_link_entry* %84, i64 %87
  store %struct.cw1200_link_entry* %88, %struct.cw1200_link_entry** %10, align 8
  %89 = load i32, i32* %6, align 4
  %90 = call i32 @pr_debug(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %89)
  %91 = load i64, i64* @CW1200_LINK_RESERVE, align 8
  %92 = load %struct.cw1200_link_entry*, %struct.cw1200_link_entry** %10, align 8
  %93 = getelementptr inbounds %struct.cw1200_link_entry, %struct.cw1200_link_entry* %92, i32 0, i32 0
  store i64 %91, i64* %93, align 8
  %94 = load %struct.cw1200_link_entry*, %struct.cw1200_link_entry** %10, align 8
  %95 = getelementptr inbounds %struct.cw1200_link_entry, %struct.cw1200_link_entry* %94, i32 0, i32 4
  %96 = load i32*, i32** %4, align 8
  %97 = load i32, i32* @ETH_ALEN, align 4
  %98 = call i32 @memcpy(i32* %95, i32* %96, i32 %97)
  %99 = load %struct.cw1200_link_entry*, %struct.cw1200_link_entry** %10, align 8
  %100 = getelementptr inbounds %struct.cw1200_link_entry, %struct.cw1200_link_entry* %99, i32 0, i32 3
  %101 = load i32, i32* @CW1200_MAX_TID, align 4
  %102 = call i32 @memset(i32* %100, i32 0, i32 %101)
  %103 = load %struct.cw1200_link_entry*, %struct.cw1200_link_entry** %10, align 8
  %104 = getelementptr inbounds %struct.cw1200_link_entry, %struct.cw1200_link_entry* %103, i32 0, i32 2
  %105 = call i32 @skb_queue_head_init(i32* %104)
  %106 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %107 = call i32 @wsm_lock_tx_async(%struct.cw1200_common* %106)
  %108 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %109 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %112 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %111, i32 0, i32 2
  %113 = call i64 @queue_work(i32 %110, i32* %112)
  %114 = icmp sle i64 %113, 0
  br i1 %114, label %115, label %118

115:                                              ; preds = %81
  %116 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %117 = call i32 @wsm_unlock_tx(%struct.cw1200_common* %116)
  br label %118

118:                                              ; preds = %115, %81
  br label %126

119:                                              ; preds = %78
  %120 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %121 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %120, i32 0, i32 1
  %122 = load %struct.TYPE_4__*, %struct.TYPE_4__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @wiphy_info(i32 %124, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %126

126:                                              ; preds = %119, %118
  %127 = load %struct.cw1200_common*, %struct.cw1200_common** %3, align 8
  %128 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %127, i32 0, i32 0
  %129 = call i32 @spin_unlock_bh(i32* %128)
  %130 = load i32, i32* %6, align 4
  ret i32 %130
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @wsm_lock_tx_async(%struct.cw1200_common*) #1

declare dso_local i64 @queue_work(i32, i32*) #1

declare dso_local i32 @wsm_unlock_tx(%struct.cw1200_common*) #1

declare dso_local i32 @wiphy_info(i32, i8*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
