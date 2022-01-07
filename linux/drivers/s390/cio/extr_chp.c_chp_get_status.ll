; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chp.c_chp_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_chp.c_chp_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.chp_id = type { i32 }
%struct.TYPE_2__ = type { i32 }

@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @chp_get_status(i32 %0) #0 {
  %2 = alloca %struct.chp_id, align 4
  %3 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %2, i32 0, i32 0
  store i32 %0, i32* %3, align 4
  %4 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %2, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = call %struct.TYPE_2__* @chpid_to_chp(i32 %5)
  %7 = icmp ne %struct.TYPE_2__* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct.chp_id, %struct.chp_id* %2, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.TYPE_2__* @chpid_to_chp(i32 %10)
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  br label %17

14:                                               ; preds = %1
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  br label %17

17:                                               ; preds = %14, %8
  %18 = phi i32 [ %13, %8 ], [ %16, %14 ]
  ret i32 %18
}

declare dso_local %struct.TYPE_2__* @chpid_to_chp(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
