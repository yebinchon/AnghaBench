; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/intel_speed_select_if/extr_isst_if_common.c_isst_mbox_resume_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/intel_speed_select_if/extr_isst_if_common.c_isst_mbox_resume_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isst_if_cmd_cb = type { i32 (i32*, i32*, i32)* }
%struct.isst_cmd = type { i32, i32, i32, i32 }
%struct.isst_if_mbox_cmd = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isst_if_cmd_cb*, %struct.isst_cmd*)* @isst_mbox_resume_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isst_mbox_resume_command(%struct.isst_if_cmd_cb* %0, %struct.isst_cmd* %1) #0 {
  %3 = alloca %struct.isst_if_cmd_cb*, align 8
  %4 = alloca %struct.isst_cmd*, align 8
  %5 = alloca %struct.isst_if_mbox_cmd, align 4
  %6 = alloca i32, align 4
  store %struct.isst_if_cmd_cb* %0, %struct.isst_if_cmd_cb** %3, align 8
  store %struct.isst_cmd* %1, %struct.isst_cmd** %4, align 8
  %7 = load %struct.isst_cmd*, %struct.isst_cmd** %4, align 8
  %8 = getelementptr inbounds %struct.isst_cmd, %struct.isst_cmd* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @GENMASK_ULL(i32 31, i32 16)
  %11 = and i32 %9, %10
  %12 = ashr i32 %11, 16
  %13 = getelementptr inbounds %struct.isst_if_mbox_cmd, %struct.isst_if_mbox_cmd* %5, i32 0, i32 0
  store i32 %12, i32* %13, align 4
  %14 = load %struct.isst_cmd*, %struct.isst_cmd** %4, align 8
  %15 = getelementptr inbounds %struct.isst_cmd, %struct.isst_cmd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @GENMASK_ULL(i32 15, i32 0)
  %18 = and i32 %16, %17
  %19 = getelementptr inbounds %struct.isst_if_mbox_cmd, %struct.isst_if_mbox_cmd* %5, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load %struct.isst_cmd*, %struct.isst_cmd** %4, align 8
  %21 = getelementptr inbounds %struct.isst_cmd, %struct.isst_cmd* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds %struct.isst_if_mbox_cmd, %struct.isst_if_mbox_cmd* %5, i32 0, i32 4
  store i32 %22, i32* %23, align 4
  %24 = load %struct.isst_cmd*, %struct.isst_cmd** %4, align 8
  %25 = getelementptr inbounds %struct.isst_cmd, %struct.isst_cmd* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = getelementptr inbounds %struct.isst_if_mbox_cmd, %struct.isst_if_mbox_cmd* %5, i32 0, i32 3
  store i32 %26, i32* %27, align 4
  %28 = load %struct.isst_cmd*, %struct.isst_cmd** %4, align 8
  %29 = getelementptr inbounds %struct.isst_cmd, %struct.isst_cmd* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.isst_if_mbox_cmd, %struct.isst_if_mbox_cmd* %5, i32 0, i32 2
  store i32 %30, i32* %31, align 4
  %32 = load %struct.isst_if_cmd_cb*, %struct.isst_if_cmd_cb** %3, align 8
  %33 = getelementptr inbounds %struct.isst_if_cmd_cb, %struct.isst_if_cmd_cb* %32, i32 0, i32 0
  %34 = load i32 (i32*, i32*, i32)*, i32 (i32*, i32*, i32)** %33, align 8
  %35 = bitcast %struct.isst_if_mbox_cmd* %5 to i32*
  %36 = call i32 %34(i32* %35, i32* %6, i32 1)
  ret void
}

declare dso_local i32 @GENMASK_ULL(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
