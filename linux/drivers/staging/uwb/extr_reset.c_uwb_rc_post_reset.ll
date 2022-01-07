; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_reset.c_uwb_rc_post_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/extr_reset.c_uwb_rc_post_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_rc = type { {}*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @uwb_rc_post_reset(%struct.uwb_rc* %0) #0 {
  %2 = alloca %struct.uwb_rc*, align 8
  %3 = alloca i32, align 4
  store %struct.uwb_rc* %0, %struct.uwb_rc** %2, align 8
  %4 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %5 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %4, i32 0, i32 0
  %6 = bitcast {}** %5 to i32 (%struct.uwb_rc*)**
  %7 = load i32 (%struct.uwb_rc*)*, i32 (%struct.uwb_rc*)** %6, align 8
  %8 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %9 = call i32 %7(%struct.uwb_rc* %8)
  store i32 %9, i32* %3, align 4
  %10 = load i32, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %32

13:                                               ; preds = %1
  %14 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %15 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %16 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = call i32 @uwb_rc_mac_addr_set(%struct.uwb_rc* %14, i32* %17)
  store i32 %18, i32* %3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %13
  br label %32

22:                                               ; preds = %13
  %23 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %24 = load %struct.uwb_rc*, %struct.uwb_rc** %2, align 8
  %25 = getelementptr inbounds %struct.uwb_rc, %struct.uwb_rc* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @uwb_rc_dev_addr_set(%struct.uwb_rc* %23, i32* %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %22
  br label %32

31:                                               ; preds = %22
  br label %32

32:                                               ; preds = %31, %30, %21, %12
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @uwb_rc_mac_addr_set(%struct.uwb_rc*, i32*) #1

declare dso_local i32 @uwb_rc_dev_addr_set(%struct.uwb_rc*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
