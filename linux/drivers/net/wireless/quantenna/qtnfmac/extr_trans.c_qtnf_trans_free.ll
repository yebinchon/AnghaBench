; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_trans.c_qtnf_trans_free.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/quantenna/qtnfmac/extr_trans.c_qtnf_trans_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qtnf_bus = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"invalid bus pointer\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qtnf_trans_free(%struct.qtnf_bus* %0) #0 {
  %2 = alloca %struct.qtnf_bus*, align 8
  store %struct.qtnf_bus* %0, %struct.qtnf_bus** %2, align 8
  %3 = load %struct.qtnf_bus*, %struct.qtnf_bus** %2, align 8
  %4 = icmp ne %struct.qtnf_bus* %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %10

7:                                                ; preds = %1
  %8 = load %struct.qtnf_bus*, %struct.qtnf_bus** %2, align 8
  %9 = call i32 @qtnf_trans_free_events(%struct.qtnf_bus* %8)
  br label %10

10:                                               ; preds = %7, %5
  ret void
}

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @qtnf_trans_free_events(%struct.qtnf_bus*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
