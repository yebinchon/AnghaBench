; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_target_agent_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/sbp/extr_sbp_target.c_sbp_target_agent_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp_target_agent = type { i32, %struct.TYPE_2__, i64, i32, i32, %struct.sbp_login_descriptor*, i32 }
%struct.TYPE_2__ = type { i32, %struct.sbp_target_agent*, i32 }
%struct.sbp_login_descriptor = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@tgt_agent_rw = common dso_local global i32 0, align 4
@AGENT_STATE_RESET = common dso_local global i32 0, align 4
@tgt_agent_fetch_work = common dso_local global i32 0, align 4
@sbp_register_region = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sbp_target_agent* (%struct.sbp_login_descriptor*)* @sbp_target_agent_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sbp_target_agent* @sbp_target_agent_register(%struct.sbp_login_descriptor* %0) #0 {
  %2 = alloca %struct.sbp_target_agent*, align 8
  %3 = alloca %struct.sbp_login_descriptor*, align 8
  %4 = alloca %struct.sbp_target_agent*, align 8
  %5 = alloca i32, align 4
  store %struct.sbp_login_descriptor* %0, %struct.sbp_login_descriptor** %3, align 8
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.sbp_target_agent* @kmalloc(i32 64, i32 %6)
  store %struct.sbp_target_agent* %7, %struct.sbp_target_agent** %4, align 8
  %8 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %4, align 8
  %9 = icmp ne %struct.sbp_target_agent* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @ENOMEM, align 4
  %12 = sub nsw i32 0, %11
  %13 = call %struct.sbp_target_agent* @ERR_PTR(i32 %12)
  store %struct.sbp_target_agent* %13, %struct.sbp_target_agent** %2, align 8
  br label %55

14:                                               ; preds = %1
  %15 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %4, align 8
  %16 = getelementptr inbounds %struct.sbp_target_agent, %struct.sbp_target_agent* %15, i32 0, i32 6
  %17 = call i32 @spin_lock_init(i32* %16)
  %18 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %4, align 8
  %19 = getelementptr inbounds %struct.sbp_target_agent, %struct.sbp_target_agent* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 32, i32* %20, align 8
  %21 = load i32, i32* @tgt_agent_rw, align 4
  %22 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %4, align 8
  %23 = getelementptr inbounds %struct.sbp_target_agent, %struct.sbp_target_agent* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  store i32 %21, i32* %24, align 8
  %25 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %4, align 8
  %26 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %4, align 8
  %27 = getelementptr inbounds %struct.sbp_target_agent, %struct.sbp_target_agent* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store %struct.sbp_target_agent* %25, %struct.sbp_target_agent** %28, align 8
  %29 = load %struct.sbp_login_descriptor*, %struct.sbp_login_descriptor** %3, align 8
  %30 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %4, align 8
  %31 = getelementptr inbounds %struct.sbp_target_agent, %struct.sbp_target_agent* %30, i32 0, i32 5
  store %struct.sbp_login_descriptor* %29, %struct.sbp_login_descriptor** %31, align 8
  %32 = load i32, i32* @AGENT_STATE_RESET, align 4
  %33 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %4, align 8
  %34 = getelementptr inbounds %struct.sbp_target_agent, %struct.sbp_target_agent* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %4, align 8
  %36 = getelementptr inbounds %struct.sbp_target_agent, %struct.sbp_target_agent* %35, i32 0, i32 3
  %37 = load i32, i32* @tgt_agent_fetch_work, align 4
  %38 = call i32 @INIT_WORK(i32* %36, i32 %37)
  %39 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %4, align 8
  %40 = getelementptr inbounds %struct.sbp_target_agent, %struct.sbp_target_agent* %39, i32 0, i32 2
  store i64 0, i64* %40, align 8
  %41 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %4, align 8
  %42 = getelementptr inbounds %struct.sbp_target_agent, %struct.sbp_target_agent* %41, i32 0, i32 0
  store i32 0, i32* %42, align 8
  %43 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %4, align 8
  %44 = getelementptr inbounds %struct.sbp_target_agent, %struct.sbp_target_agent* %43, i32 0, i32 1
  %45 = call i32 @fw_core_add_address_handler(%struct.TYPE_2__* %44, i32* @sbp_register_region)
  store i32 %45, i32* %5, align 4
  %46 = load i32, i32* %5, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %14
  %49 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %4, align 8
  %50 = call i32 @kfree(%struct.sbp_target_agent* %49)
  %51 = load i32, i32* %5, align 4
  %52 = call %struct.sbp_target_agent* @ERR_PTR(i32 %51)
  store %struct.sbp_target_agent* %52, %struct.sbp_target_agent** %2, align 8
  br label %55

53:                                               ; preds = %14
  %54 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %4, align 8
  store %struct.sbp_target_agent* %54, %struct.sbp_target_agent** %2, align 8
  br label %55

55:                                               ; preds = %53, %48, %10
  %56 = load %struct.sbp_target_agent*, %struct.sbp_target_agent** %2, align 8
  ret %struct.sbp_target_agent* %56
}

declare dso_local %struct.sbp_target_agent* @kmalloc(i32, i32) #1

declare dso_local %struct.sbp_target_agent* @ERR_PTR(i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @fw_core_add_address_handler(%struct.TYPE_2__*, i32*) #1

declare dso_local i32 @kfree(%struct.sbp_target_agent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
