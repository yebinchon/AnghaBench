; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_nvm_set_auth_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_switch.c_nvm_set_auth_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_switch = type { i32 }
%struct.nvm_auth_status = type { i32, i32, i32 }

@nvm_auth_status_lock = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@nvm_auth_status_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tb_switch*, i32)* @nvm_set_auth_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvm_set_auth_status(%struct.tb_switch* %0, i32 %1) #0 {
  %3 = alloca %struct.tb_switch*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.nvm_auth_status*, align 8
  store %struct.tb_switch* %0, %struct.tb_switch** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %7 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp ne i32 %8, 0
  %10 = xor i1 %9, true
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %46

15:                                               ; preds = %2
  %16 = call i32 @mutex_lock(i32* @nvm_auth_status_lock)
  %17 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %18 = call %struct.nvm_auth_status* @__nvm_get_auth_status(%struct.tb_switch* %17)
  store %struct.nvm_auth_status* %18, %struct.nvm_auth_status** %5, align 8
  %19 = load %struct.nvm_auth_status*, %struct.nvm_auth_status** %5, align 8
  %20 = icmp ne %struct.nvm_auth_status* %19, null
  br i1 %20, label %40, label %21

21:                                               ; preds = %15
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.nvm_auth_status* @kzalloc(i32 12, i32 %22)
  store %struct.nvm_auth_status* %23, %struct.nvm_auth_status** %5, align 8
  %24 = load %struct.nvm_auth_status*, %struct.nvm_auth_status** %5, align 8
  %25 = icmp ne %struct.nvm_auth_status* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  br label %44

27:                                               ; preds = %21
  %28 = load %struct.nvm_auth_status*, %struct.nvm_auth_status** %5, align 8
  %29 = getelementptr inbounds %struct.nvm_auth_status, %struct.nvm_auth_status* %28, i32 0, i32 2
  %30 = load %struct.tb_switch*, %struct.tb_switch** %3, align 8
  %31 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @memcpy(i32* %29, i32 %32, i32 4)
  %34 = load %struct.nvm_auth_status*, %struct.nvm_auth_status** %5, align 8
  %35 = getelementptr inbounds %struct.nvm_auth_status, %struct.nvm_auth_status* %34, i32 0, i32 1
  %36 = call i32 @INIT_LIST_HEAD(i32* %35)
  %37 = load %struct.nvm_auth_status*, %struct.nvm_auth_status** %5, align 8
  %38 = getelementptr inbounds %struct.nvm_auth_status, %struct.nvm_auth_status* %37, i32 0, i32 1
  %39 = call i32 @list_add_tail(i32* %38, i32* @nvm_auth_status_cache)
  br label %40

40:                                               ; preds = %27, %15
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.nvm_auth_status*, %struct.nvm_auth_status** %5, align 8
  %43 = getelementptr inbounds %struct.nvm_auth_status, %struct.nvm_auth_status* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 4
  br label %44

44:                                               ; preds = %40, %26
  %45 = call i32 @mutex_unlock(i32* @nvm_auth_status_lock)
  br label %46

46:                                               ; preds = %44, %14
  ret void
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.nvm_auth_status* @__nvm_get_auth_status(%struct.tb_switch*) #1

declare dso_local %struct.nvm_auth_status* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
