; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/intel_speed_select_if/extr_isst_if_mbox_msr.c_isst_if_mbox_proc_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/intel_speed_select_if/extr_isst_if_mbox_msr.c_isst_if_mbox_proc_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.msrl_action = type { i64, %struct.isst_if_mbox_cmd* }
%struct.isst_if_mbox_cmd = type { i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@EPERM = common dso_local global i64 0, align 8
@msrl_update_func = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i32*, i32)* @isst_if_mbox_proc_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @isst_if_mbox_proc_cmd(i32* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.msrl_action, align 8
  %9 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %5, align 8
  %11 = bitcast i32* %10 to %struct.isst_if_mbox_cmd*
  %12 = getelementptr inbounds %struct.msrl_action, %struct.msrl_action* %8, i32 0, i32 1
  store %struct.isst_if_mbox_cmd* %11, %struct.isst_if_mbox_cmd** %12, align 8
  %13 = getelementptr inbounds %struct.msrl_action, %struct.msrl_action* %8, i32 0, i32 1
  %14 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %13, align 8
  %15 = call i64 @isst_if_mbox_cmd_invalid(%struct.isst_if_mbox_cmd* %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i64, i64* @EINVAL, align 8
  %19 = sub nsw i64 0, %18
  store i64 %19, i64* %4, align 8
  br label %83

20:                                               ; preds = %3
  %21 = getelementptr inbounds %struct.msrl_action, %struct.msrl_action* %8, i32 0, i32 1
  %22 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %21, align 8
  %23 = call i64 @isst_if_mbox_cmd_set_req(%struct.isst_if_mbox_cmd* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %20
  %26 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %27 = call i32 @capable(i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %25
  %30 = load i64, i64* @EPERM, align 8
  %31 = sub nsw i64 0, %30
  store i64 %31, i64* %4, align 8
  br label %83

32:                                               ; preds = %25, %20
  %33 = getelementptr inbounds %struct.msrl_action, %struct.msrl_action* %8, i32 0, i32 1
  %34 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %33, align 8
  %35 = getelementptr inbounds %struct.isst_if_mbox_cmd, %struct.isst_if_mbox_cmd* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @msrl_update_func, align 4
  %38 = call i32 @smp_call_function_single(i32 %36, i32 %37, %struct.msrl_action* %8, i32 1)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %32
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  store i64 %43, i64* %4, align 8
  br label %83

44:                                               ; preds = %32
  %45 = getelementptr inbounds %struct.msrl_action, %struct.msrl_action* %8, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %79, label %48

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %79, label %51

51:                                               ; preds = %48
  %52 = getelementptr inbounds %struct.msrl_action, %struct.msrl_action* %8, i32 0, i32 1
  %53 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %52, align 8
  %54 = call i64 @isst_if_mbox_cmd_set_req(%struct.isst_if_mbox_cmd* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %79

56:                                               ; preds = %51
  %57 = getelementptr inbounds %struct.msrl_action, %struct.msrl_action* %8, i32 0, i32 1
  %58 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %57, align 8
  %59 = getelementptr inbounds %struct.isst_if_mbox_cmd, %struct.isst_if_mbox_cmd* %58, i32 0, i32 4
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.msrl_action, %struct.msrl_action* %8, i32 0, i32 1
  %62 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %61, align 8
  %63 = getelementptr inbounds %struct.isst_if_mbox_cmd, %struct.isst_if_mbox_cmd* %62, i32 0, i32 3
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.msrl_action, %struct.msrl_action* %8, i32 0, i32 1
  %66 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %65, align 8
  %67 = getelementptr inbounds %struct.isst_if_mbox_cmd, %struct.isst_if_mbox_cmd* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.msrl_action, %struct.msrl_action* %8, i32 0, i32 1
  %70 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %69, align 8
  %71 = getelementptr inbounds %struct.isst_if_mbox_cmd, %struct.isst_if_mbox_cmd* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = getelementptr inbounds %struct.msrl_action, %struct.msrl_action* %8, i32 0, i32 1
  %74 = load %struct.isst_if_mbox_cmd*, %struct.isst_if_mbox_cmd** %73, align 8
  %75 = getelementptr inbounds %struct.isst_if_mbox_cmd, %struct.isst_if_mbox_cmd* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i64 @isst_store_cmd(i32 %60, i32 %64, i32 %68, i32 1, i32 %72, i32 %76)
  %78 = getelementptr inbounds %struct.msrl_action, %struct.msrl_action* %8, i32 0, i32 0
  store i64 %77, i64* %78, align 8
  br label %79

79:                                               ; preds = %56, %51, %48, %44
  %80 = load i32*, i32** %6, align 8
  store i32 0, i32* %80, align 4
  %81 = getelementptr inbounds %struct.msrl_action, %struct.msrl_action* %8, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  store i64 %82, i64* %4, align 8
  br label %83

83:                                               ; preds = %79, %41, %29, %17
  %84 = load i64, i64* %4, align 8
  ret i64 %84
}

declare dso_local i64 @isst_if_mbox_cmd_invalid(%struct.isst_if_mbox_cmd*) #1

declare dso_local i64 @isst_if_mbox_cmd_set_req(%struct.isst_if_mbox_cmd*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i32 @smp_call_function_single(i32, i32, %struct.msrl_action*, i32) #1

declare dso_local i64 @isst_store_cmd(i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
