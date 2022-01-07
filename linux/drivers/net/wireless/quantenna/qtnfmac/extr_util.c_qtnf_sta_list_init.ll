; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_util.c_qtnf_sta_list_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_util.c_qtnf_sta_list_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_sta_list = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qtnf_sta_list_init(%struct.qtnf_sta_list* %0) #0 {
  %2 = alloca %struct.qtnf_sta_list*, align 8
  store %struct.qtnf_sta_list* %0, %struct.qtnf_sta_list** %2, align 8
  %3 = load %struct.qtnf_sta_list*, %struct.qtnf_sta_list** %2, align 8
  %4 = icmp ne %struct.qtnf_sta_list* %3, null
  %5 = xor i1 %4, true
  %6 = zext i1 %5 to i32
  %7 = call i64 @unlikely(i32 %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %17

10:                                               ; preds = %1
  %11 = load %struct.qtnf_sta_list*, %struct.qtnf_sta_list** %2, align 8
  %12 = getelementptr inbounds %struct.qtnf_sta_list, %struct.qtnf_sta_list* %11, i32 0, i32 1
  %13 = call i32 @INIT_LIST_HEAD(i32* %12)
  %14 = load %struct.qtnf_sta_list*, %struct.qtnf_sta_list** %2, align 8
  %15 = getelementptr inbounds %struct.qtnf_sta_list, %struct.qtnf_sta_list* %14, i32 0, i32 0
  %16 = call i32 @atomic_set(i32* %15, i32 0)
  br label %17

17:                                               ; preds = %10, %9
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
