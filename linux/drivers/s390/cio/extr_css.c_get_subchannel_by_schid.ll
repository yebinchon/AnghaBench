; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/cio/extr_css.c_get_subchannel_by_schid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/cio/extr_css.c_get_subchannel_by_schid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.subchannel = type { i32 }
%struct.subchannel_id = type { i32 }
%struct.device = type { i32 }

@css_bus_type = common dso_local global i32 0, align 4
@check_subchannel = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.subchannel* @get_subchannel_by_schid(i32 %0) #0 {
  %2 = alloca %struct.subchannel_id, align 4
  %3 = alloca %struct.device*, align 8
  %4 = getelementptr inbounds %struct.subchannel_id, %struct.subchannel_id* %2, i32 0, i32 0
  store i32 %0, i32* %4, align 4
  %5 = load i32, i32* @check_subchannel, align 4
  %6 = call %struct.device* @bus_find_device(i32* @css_bus_type, i32* null, %struct.subchannel_id* %2, i32 %5)
  store %struct.device* %6, %struct.device** %3, align 8
  %7 = load %struct.device*, %struct.device** %3, align 8
  %8 = icmp ne %struct.device* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.device*, %struct.device** %3, align 8
  %11 = call %struct.subchannel* @to_subchannel(%struct.device* %10)
  br label %13

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %12, %9
  %14 = phi %struct.subchannel* [ %11, %9 ], [ null, %12 ]
  ret %struct.subchannel* %14
}

declare dso_local %struct.device* @bus_find_device(i32*, i32*, %struct.subchannel_id*, i32) #1

declare dso_local %struct.subchannel* @to_subchannel(%struct.device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
