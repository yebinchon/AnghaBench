; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c___cw1200_cqm_bssloss_sm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_sta.c___cw1200_cqm_bssloss_sm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i64, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [75 x i8] c"[STA] CQM BSSLOSS_SM: state: %d init %d good %d bad: %d txlock: %d uj: %d\0A\00", align 1
@HZ = common dso_local global i32 0, align 4
@cw1200_bssloss_mitigation = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__cw1200_cqm_bssloss_sm(%struct.cw1200_common* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.cw1200_common*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %11 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %12 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %11, i32 0, i32 8
  store i64 0, i64* %12, align 8
  %13 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %14 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %13, i32 0, i32 4
  %15 = call i32 @cancel_work_sync(i32* %14)
  %16 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %17 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %23 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %22, i32 0, i32 6
  %24 = call i32 @atomic_read(i32* %23)
  %25 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %26 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %25, i32 0, i32 7
  %27 = load i64, i64* %26, align 8
  %28 = call i32 @pr_debug(i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19, i32 %20, i32 %21, i32 %24, i64 %27)
  %29 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %30 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %29, i32 0, i32 7
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %4
  br label %126

34:                                               ; preds = %4
  %35 = load i32, i32* %6, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %60

37:                                               ; preds = %34
  %38 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %39 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %38, i32 0, i32 5
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %42 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %41, i32 0, i32 3
  %43 = load i32, i32* @HZ, align 4
  %44 = call i32 @queue_delayed_work(i32 %40, i32* %42, i32 %43)
  %45 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %46 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %45, i32 0, i32 0
  store i32 0, i32* %46, align 8
  %47 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %48 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %47, i32 0, i32 2
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %37
  %54 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %55 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %54, i32 0, i32 6
  %56 = call i32 @atomic_read(i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %53
  store i32 1, i32* %9, align 4
  br label %59

59:                                               ; preds = %58, %53, %37
  br label %93

60:                                               ; preds = %34
  %61 = load i32, i32* %7, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %75

63:                                               ; preds = %60
  %64 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %65 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %64, i32 0, i32 3
  %66 = call i32 @cancel_delayed_work_sync(i32* %65)
  %67 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %68 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %67, i32 0, i32 0
  store i32 0, i32* %68, align 8
  %69 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %70 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %69, i32 0, i32 5
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %73 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %72, i32 0, i32 4
  %74 = call i32 @queue_work(i32 %71, i32* %73)
  br label %92

75:                                               ; preds = %60
  %76 = load i32, i32* %8, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %75
  %79 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %80 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp slt i32 %81, 3
  br i1 %82, label %83, label %84

83:                                               ; preds = %78
  store i32 1, i32* %9, align 4
  br label %84

84:                                               ; preds = %83, %78
  br label %91

85:                                               ; preds = %75
  %86 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %87 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %86, i32 0, i32 3
  %88 = call i32 @cancel_delayed_work_sync(i32* %87)
  %89 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %90 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %89, i32 0, i32 0
  store i32 0, i32* %90, align 8
  br label %91

91:                                               ; preds = %85, %84
  br label %92

92:                                               ; preds = %91, %63
  br label %93

93:                                               ; preds = %92, %59
  %94 = load i32, i32* @cw1200_bssloss_mitigation, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %93
  store i32 0, i32* %9, align 4
  br label %97

97:                                               ; preds = %96, %93
  %98 = load i32, i32* %9, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %126

100:                                              ; preds = %97
  %101 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %102 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %102, align 8
  %105 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %106 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %109 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %108, i32 0, i32 2
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = call %struct.sk_buff* @ieee80211_nullfunc_get(i32 %107, %struct.TYPE_2__* %110, i32 0)
  store %struct.sk_buff* %111, %struct.sk_buff** %10, align 8
  %112 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %113 = icmp ne %struct.sk_buff* %112, null
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  %116 = call i32 @WARN_ON(i32 %115)
  %117 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %118 = icmp ne %struct.sk_buff* %117, null
  br i1 %118, label %119, label %125

119:                                              ; preds = %100
  %120 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %121 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %124 = call i32 @cw1200_tx(i32 %122, i32* null, %struct.sk_buff* %123)
  br label %125

125:                                              ; preds = %119, %100
  br label %126

126:                                              ; preds = %33, %125, %97
  ret void
}

declare dso_local i32 @cancel_work_sync(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, i32, i32, i32, i32, i64) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @cancel_delayed_work_sync(i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local %struct.sk_buff* @ieee80211_nullfunc_get(i32, %struct.TYPE_2__*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @cw1200_tx(i32, i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
