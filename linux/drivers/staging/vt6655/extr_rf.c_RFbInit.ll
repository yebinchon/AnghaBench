; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_rf.c_RFbInit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_rf.c_RFbInit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32, i32 }

@AL2230_PWR_IDX_LEN = common dso_local global i32 0, align 4
@AL7230_PWR_IDX_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @RFbInit(%struct.vnt_private* %0) #0 {
  %2 = alloca %struct.vnt_private*, align 8
  %3 = alloca i32, align 4
  store %struct.vnt_private* %0, %struct.vnt_private** %2, align 8
  store i32 1, i32* %3, align 4
  %4 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %5 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %20 [
    i32 131, label %7
    i32 129, label %7
    i32 130, label %13
    i32 128, label %19
  ]

7:                                                ; preds = %1, %1
  %8 = load i32, i32* @AL2230_PWR_IDX_LEN, align 4
  %9 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %10 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %9, i32 0, i32 1
  store i32 %8, i32* %10, align 4
  %11 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %12 = call i32 @RFbAL2230Init(%struct.vnt_private* %11)
  store i32 %12, i32* %3, align 4
  br label %21

13:                                               ; preds = %1
  %14 = load i32, i32* @AL7230_PWR_IDX_LEN, align 4
  %15 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %16 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.vnt_private*, %struct.vnt_private** %2, align 8
  %18 = call i32 @s_bAL7230Init(%struct.vnt_private* %17)
  store i32 %18, i32* %3, align 4
  br label %21

19:                                               ; preds = %1
  store i32 1, i32* %3, align 4
  br label %21

20:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %21

21:                                               ; preds = %20, %19, %13, %7
  %22 = load i32, i32* %3, align 4
  ret i32 %22
}

declare dso_local i32 @RFbAL2230Init(%struct.vnt_private*) #1

declare dso_local i32 @s_bAL7230Init(%struct.vnt_private*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
