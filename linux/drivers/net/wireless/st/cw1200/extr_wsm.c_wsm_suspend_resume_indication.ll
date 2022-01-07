; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_suspend_resume_indication.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_suspend_resume_indication.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { i32 }
%struct.wsm_buf = type { i32 }
%struct.wsm_suspend_resume = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cw1200_common*, i32, %struct.wsm_buf*)* @wsm_suspend_resume_indication to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wsm_suspend_resume_indication(%struct.cw1200_common* %0, i32 %1, %struct.wsm_buf* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cw1200_common*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wsm_buf*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.wsm_suspend_resume, align 4
  store %struct.cw1200_common* %0, %struct.cw1200_common** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.wsm_buf* %2, %struct.wsm_buf** %7, align 8
  %10 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %11 = call i32 @WSM_GET32(%struct.wsm_buf* %10)
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %6, align 4
  %13 = getelementptr inbounds %struct.wsm_suspend_resume, %struct.wsm_suspend_resume* %9, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load i32, i32* %8, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = getelementptr inbounds %struct.wsm_suspend_resume, %struct.wsm_suspend_resume* %9, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, 8
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = getelementptr inbounds %struct.wsm_suspend_resume, %struct.wsm_suspend_resume* %9, i32 0, i32 2
  store i32 %25, i32* %26, align 4
  %27 = load i32, i32* %8, align 4
  %28 = ashr i32 %27, 1
  %29 = and i32 %28, 3
  %30 = getelementptr inbounds %struct.wsm_suspend_resume, %struct.wsm_suspend_resume* %9, i32 0, i32 3
  store i32 %29, i32* %30, align 4
  %31 = load %struct.cw1200_common*, %struct.cw1200_common** %5, align 8
  %32 = call i32 @cw1200_suspend_resume(%struct.cw1200_common* %31, %struct.wsm_suspend_resume* %9)
  store i32 0, i32* %4, align 4
  br label %36

33:                                               ; No predecessors!
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %36

36:                                               ; preds = %33, %3
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local i32 @WSM_GET32(%struct.wsm_buf*) #1

declare dso_local i32 @cw1200_suspend_resume(%struct.cw1200_common*, %struct.wsm_suspend_resume*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
