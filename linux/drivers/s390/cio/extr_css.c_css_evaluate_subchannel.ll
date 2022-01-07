; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_css.c_css_evaluate_subchannel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_css.c_css_evaluate_subchannel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel_id = type { i32 }
%struct.subchannel = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32)* @css_evaluate_subchannel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @css_evaluate_subchannel(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.subchannel_id, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.subchannel*, align 8
  %6 = alloca i32, align 4
  %7 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %3, i32 0, i32 0
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %4, align 4
  %8 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %3, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call %struct.subchannel* @get_subchannel_by_schid(i32 %9)
  store %struct.subchannel* %10, %struct.subchannel** %5, align 8
  %11 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %12 = icmp ne %struct.subchannel* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @css_evaluate_known_subchannel(%struct.subchannel* %14, i32 %15)
  store i32 %16, i32* %6, align 4
  %17 = load %struct.subchannel*, %struct.subchannel** %5, align 8
  %18 = getelementptr inbounds %struct.subchannel, %struct.subchannel* %17, i32 0, i32 0
  %19 = call i32 @put_device(i32* %18)
  br label %25

20:                                               ; preds = %2
  %21 = load i32, i32* %4, align 4
  %22 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %3, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @css_evaluate_new_subchannel(i32 %23, i32 %21)
  store i32 %24, i32* %6, align 4
  br label %25

25:                                               ; preds = %20, %13
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @EAGAIN, align 4
  %28 = sub nsw i32 0, %27
  %29 = icmp eq i32 %26, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %3, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @css_schedule_eval(i32 %32)
  br label %34

34:                                               ; preds = %30, %25
  ret void
}

declare dso_local %struct.subchannel* @get_subchannel_by_schid(i32) #1

declare dso_local i32 @css_evaluate_known_subchannel(%struct.subchannel*, i32) #1

declare dso_local i32 @put_device(i32*) #1

declare dso_local i32 @css_evaluate_new_subchannel(i32, i32) #1

declare dso_local i32 @css_schedule_eval(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
