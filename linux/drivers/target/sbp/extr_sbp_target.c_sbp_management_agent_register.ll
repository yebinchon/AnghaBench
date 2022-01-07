; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_management_agent_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_management_agent_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp_management_agent = type { %struct.TYPE_2__, i32*, i64, i32, i32, %struct.sbp_tport*, i32 }
%struct.TYPE_2__ = type { i32, %struct.sbp_management_agent*, i32 }
%struct.sbp_tport = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@sbp_mgt_agent_rw = common dso_local global i32 0, align 4
@MANAGEMENT_AGENT_STATE_IDLE = common dso_local global i32 0, align 4
@sbp_mgt_agent_process = common dso_local global i32 0, align 4
@sbp_register_region = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sbp_management_agent* (%struct.sbp_tport*)* @sbp_management_agent_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sbp_management_agent* @sbp_management_agent_register(%struct.sbp_tport* %0) #0 {
  %2 = alloca %struct.sbp_management_agent*, align 8
  %3 = alloca %struct.sbp_tport*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sbp_management_agent*, align 8
  store %struct.sbp_tport* %0, %struct.sbp_tport** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.sbp_management_agent* @kmalloc(i32 64, i32 %6)
  store %struct.sbp_management_agent* %7, %struct.sbp_management_agent** %5, align 8
  %8 = load %struct.sbp_management_agent*, %struct.sbp_management_agent** %5, align 8
  %9 = icmp ne %struct.sbp_management_agent* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.sbp_management_agent* @ERR_PTR(i32 %12)
  store %struct.sbp_management_agent* %13, %struct.sbp_management_agent** %2, align 8
  br label %55

14:                                               ; preds = %1
  %15 = load %struct.sbp_management_agent*, %struct.sbp_management_agent** %5, align 8
  %16 = getelementptr inbounds %struct.sbp_management_agent, %struct.sbp_management_agent* %15, i32 0, i32 6
  %17 = call i32 @spin_lock_init(i32* %16)
  %18 = load %struct.sbp_tport*, %struct.sbp_tport** %3, align 8
  %19 = load %struct.sbp_management_agent*, %struct.sbp_management_agent** %5, align 8
  %20 = getelementptr inbounds %struct.sbp_management_agent, %struct.sbp_management_agent* %19, i32 0, i32 5
  store %struct.sbp_tport* %18, %struct.sbp_tport** %20, align 8
  %21 = load %struct.sbp_management_agent*, %struct.sbp_management_agent** %5, align 8
  %22 = getelementptr inbounds %struct.sbp_management_agent, %struct.sbp_management_agent* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 8, i32* %23, align 8
  %24 = load i32, i32* @sbp_mgt_agent_rw, align 4
  %25 = load %struct.sbp_management_agent*, %struct.sbp_management_agent** %5, align 8
  %26 = getelementptr inbounds %struct.sbp_management_agent, %struct.sbp_management_agent* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 2
  store i32 %24, i32* %27, align 8
  %28 = load %struct.sbp_management_agent*, %struct.sbp_management_agent** %5, align 8
  %29 = load %struct.sbp_management_agent*, %struct.sbp_management_agent** %5, align 8
  %30 = getelementptr inbounds %struct.sbp_management_agent, %struct.sbp_management_agent* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  store %struct.sbp_management_agent* %28, %struct.sbp_management_agent** %31, align 8
  %32 = load i32, i32* @MANAGEMENT_AGENT_STATE_IDLE, align 4
  %33 = load %struct.sbp_management_agent*, %struct.sbp_management_agent** %5, align 8
  %34 = getelementptr inbounds %struct.sbp_management_agent, %struct.sbp_management_agent* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load %struct.sbp_management_agent*, %struct.sbp_management_agent** %5, align 8
  %36 = getelementptr inbounds %struct.sbp_management_agent, %struct.sbp_management_agent* %35, i32 0, i32 3
  %37 = load i32, i32* @sbp_mgt_agent_process, align 4
  %38 = call i32 @INIT_WORK(i32* %36, i32 %37)
  %39 = load %struct.sbp_management_agent*, %struct.sbp_management_agent** %5, align 8
  %40 = getelementptr inbounds %struct.sbp_management_agent, %struct.sbp_management_agent* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load %struct.sbp_management_agent*, %struct.sbp_management_agent** %5, align 8
  %42 = getelementptr inbounds %struct.sbp_management_agent, %struct.sbp_management_agent* %41, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = load %struct.sbp_management_agent*, %struct.sbp_management_agent** %5, align 8
  %44 = getelementptr inbounds %struct.sbp_management_agent, %struct.sbp_management_agent* %43, i32 0, i32 0
  %45 = call i32 @fw_core_add_address_handler(%struct.TYPE_2__* %44, i32* @sbp_register_region)
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %4, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %14
  %49 = load %struct.sbp_management_agent*, %struct.sbp_management_agent** %5, align 8
  %50 = call i32 @kfree(%struct.sbp_management_agent* %49)
  %51 = load i32, i32* %4, align 4
  %52 = call %struct.sbp_management_agent* @ERR_PTR(i32 %51)
  store %struct.sbp_management_agent* %52, %struct.sbp_management_agent** %2, align 8
  br label %55

53:                                               ; preds = %14
  %54 = load %struct.sbp_management_agent*, %struct.sbp_management_agent** %5, align 8
  store %struct.sbp_management_agent* %54, %struct.sbp_management_agent** %2, align 8
  br label %55

55:                                               ; preds = %53, %48, %10
  %56 = load %struct.sbp_management_agent*, %struct.sbp_management_agent** %2, align 8
  ret %struct.sbp_management_agent* %56
}

declare dso_local %struct.sbp_management_agent* @kmalloc(i32, i32) #1

declare dso_local %struct.sbp_management_agent* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @fw_core_add_address_handler(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @kfree(%struct.sbp_management_agent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
