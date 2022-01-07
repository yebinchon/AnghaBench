; ModuleID = '/home/carl/AnghaBench/linux/drivers/opp/extr_core.c__add_opp_dev_unlocked.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/opp/extr_core.c__add_opp_dev_unlocked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.opp_device = type { i32, %struct.device* }
%struct.device = type { i32 }
%struct.opp_table = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.opp_device* (%struct.device*, %struct.opp_table*)* @_add_opp_dev_unlocked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.opp_device* @_add_opp_dev_unlocked(%struct.device* %0, %struct.opp_table* %1) #0 {
  %3 = alloca %struct.opp_device*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.opp_table*, align 8
  %6 = alloca %struct.opp_device*, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.opp_table* %1, %struct.opp_table** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.opp_device* @kzalloc(i32 16, i32 %7)
  store %struct.opp_device* %8, %struct.opp_device** %6, align 8
  %9 = load %struct.opp_device*, %struct.opp_device** %6, align 8
  %10 = icmp ne %struct.opp_device* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.opp_device* null, %struct.opp_device** %3, align 8
  br label %25

12:                                               ; preds = %2
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = load %struct.opp_device*, %struct.opp_device** %6, align 8
  %15 = getelementptr inbounds %struct.opp_device, %struct.opp_device* %14, i32 0, i32 1
  store %struct.device* %13, %struct.device** %15, align 8
  %16 = load %struct.opp_device*, %struct.opp_device** %6, align 8
  %17 = getelementptr inbounds %struct.opp_device, %struct.opp_device* %16, i32 0, i32 0
  %18 = load %struct.opp_table*, %struct.opp_table** %5, align 8
  %19 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %18, i32 0, i32 0
  %20 = call i32 @list_add(i32* %17, i32* %19)
  %21 = load %struct.opp_device*, %struct.opp_device** %6, align 8
  %22 = load %struct.opp_table*, %struct.opp_table** %5, align 8
  %23 = call i32 @opp_debug_register(%struct.opp_device* %21, %struct.opp_table* %22)
  %24 = load %struct.opp_device*, %struct.opp_device** %6, align 8
  store %struct.opp_device* %24, %struct.opp_device** %3, align 8
  br label %25

25:                                               ; preds = %12, %11
  %26 = load %struct.opp_device*, %struct.opp_device** %3, align 8
  ret %struct.opp_device* %26
}

declare dso_local %struct.opp_device* @kzalloc(i32, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @opp_debug_register(%struct.opp_device*, %struct.opp_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
