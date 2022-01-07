; ModuleID = '/home/carl/AnghaBench/linux/drivers/nubus/extr_nubus.c_nubus_next_rsrc_or_null.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nubus/extr_nubus.c_nubus_next_rsrc_or_null.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nubus_rsrc = type { i32 }

@nubus_func_rsrcs = common dso_local global i32 0, align 4
@list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nubus_rsrc* @nubus_next_rsrc_or_null(%struct.nubus_rsrc* %0) #0 {
  %2 = alloca %struct.nubus_rsrc*, align 8
  %3 = alloca %struct.nubus_rsrc*, align 8
  store %struct.nubus_rsrc* %0, %struct.nubus_rsrc** %3, align 8
  %4 = load %struct.nubus_rsrc*, %struct.nubus_rsrc** %3, align 8
  %5 = getelementptr inbounds %struct.nubus_rsrc, %struct.nubus_rsrc* %4, i32 0, i32 0
  %6 = call i64 @list_is_last(i32* %5, i32* @nubus_func_rsrcs)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store %struct.nubus_rsrc* null, %struct.nubus_rsrc** %2, align 8
  br label %13

9:                                                ; preds = %1
  %10 = load %struct.nubus_rsrc*, %struct.nubus_rsrc** %3, align 8
  %11 = load i32, i32* @list, align 4
  %12 = call %struct.nubus_rsrc* @list_next_entry(%struct.nubus_rsrc* %10, i32 %11)
  store %struct.nubus_rsrc* %12, %struct.nubus_rsrc** %2, align 8
  br label %13

13:                                               ; preds = %9, %8
  %14 = load %struct.nubus_rsrc*, %struct.nubus_rsrc** %2, align 8
  ret %struct.nubus_rsrc* %14
}

declare dso_local i64 @list_is_last(i32*, i32*) #1

declare dso_local %struct.nubus_rsrc* @list_next_entry(%struct.nubus_rsrc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
