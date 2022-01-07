; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_tb_cfg_request_enqueue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_ctl.c_tb_cfg_request_enqueue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_ctl = type { i32, i32, i32 }
%struct.tb_cfg_request = type { i32, i32, %struct.tb_ctl* }

@TB_CFG_REQUEST_ACTIVE = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tb_ctl*, %struct.tb_cfg_request*)* @tb_cfg_request_enqueue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tb_cfg_request_enqueue(%struct.tb_ctl* %0, %struct.tb_cfg_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb_ctl*, align 8
  %5 = alloca %struct.tb_cfg_request*, align 8
  store %struct.tb_ctl* %0, %struct.tb_ctl** %4, align 8
  store %struct.tb_cfg_request* %1, %struct.tb_cfg_request** %5, align 8
  %6 = load i32, i32* @TB_CFG_REQUEST_ACTIVE, align 4
  %7 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %5, align 8
  %8 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %7, i32 0, i32 0
  %9 = call %struct.tb_ctl* @test_bit(i32 %6, i32* %8)
  %10 = call i32 @WARN_ON(%struct.tb_ctl* %9)
  %11 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %5, align 8
  %12 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %11, i32 0, i32 2
  %13 = load %struct.tb_ctl*, %struct.tb_ctl** %12, align 8
  %14 = call i32 @WARN_ON(%struct.tb_ctl* %13)
  %15 = load %struct.tb_ctl*, %struct.tb_ctl** %4, align 8
  %16 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.tb_ctl*, %struct.tb_ctl** %4, align 8
  %19 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load %struct.tb_ctl*, %struct.tb_ctl** %4, align 8
  %24 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load i32, i32* @ENOTCONN, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %44

28:                                               ; preds = %2
  %29 = load %struct.tb_ctl*, %struct.tb_ctl** %4, align 8
  %30 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %5, align 8
  %31 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %30, i32 0, i32 2
  store %struct.tb_ctl* %29, %struct.tb_ctl** %31, align 8
  %32 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %5, align 8
  %33 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %32, i32 0, i32 1
  %34 = load %struct.tb_ctl*, %struct.tb_ctl** %4, align 8
  %35 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %34, i32 0, i32 1
  %36 = call i32 @list_add_tail(i32* %33, i32* %35)
  %37 = load i32, i32* @TB_CFG_REQUEST_ACTIVE, align 4
  %38 = load %struct.tb_cfg_request*, %struct.tb_cfg_request** %5, align 8
  %39 = getelementptr inbounds %struct.tb_cfg_request, %struct.tb_cfg_request* %38, i32 0, i32 0
  %40 = call i32 @set_bit(i32 %37, i32* %39)
  %41 = load %struct.tb_ctl*, %struct.tb_ctl** %4, align 8
  %42 = getelementptr inbounds %struct.tb_ctl, %struct.tb_ctl* %41, i32 0, i32 0
  %43 = call i32 @mutex_unlock(i32* %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %28, %22
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @WARN_ON(%struct.tb_ctl*) #1

declare dso_local %struct.tb_ctl* @test_bit(i32, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
