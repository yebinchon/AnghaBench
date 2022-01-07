; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_pscsi.c_pscsi_req_done.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_pscsi.c_pscsi_req_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request = type { %struct.se_cmd* }
%struct.se_cmd = type { i64, %struct.pscsi_plugin_task* }
%struct.pscsi_plugin_task = type { i32* }
%struct.TYPE_2__ = type { i32, i64, i32 }

@.str = private unnamed_addr constant [67 x i8] c"PSCSI Status Byte exception at cmd: %p CDB: 0x%02x Result: 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"PSCSI Host Byte exception at cmd: %p CDB: 0x%02x Result: 0x%08x\0A\00", align 1
@SAM_STAT_CHECK_CONDITION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.request*, i32)* @pscsi_req_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pscsi_req_done(%struct.request* %0, i32 %1) #0 {
  %3 = alloca %struct.request*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.se_cmd*, align 8
  %6 = alloca %struct.pscsi_plugin_task*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.request* %0, %struct.request** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.request*, %struct.request** %3, align 8
  %10 = getelementptr inbounds %struct.request, %struct.request* %9, i32 0, i32 0
  %11 = load %struct.se_cmd*, %struct.se_cmd** %10, align 8
  store %struct.se_cmd* %11, %struct.se_cmd** %5, align 8
  %12 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %13 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %12, i32 0, i32 1
  %14 = load %struct.pscsi_plugin_task*, %struct.pscsi_plugin_task** %13, align 8
  store %struct.pscsi_plugin_task* %14, %struct.pscsi_plugin_task** %6, align 8
  %15 = load %struct.request*, %struct.request** %3, align 8
  %16 = call %struct.TYPE_2__* @scsi_req(%struct.request* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @status_byte(i32 %19)
  %21 = shl i32 %20, 1
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %2
  %25 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %26 = load %struct.pscsi_plugin_task*, %struct.pscsi_plugin_task** %6, align 8
  %27 = getelementptr inbounds %struct.pscsi_plugin_task, %struct.pscsi_plugin_task* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @pr_debug(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0), %struct.se_cmd* %25, i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %24, %2
  %34 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.request*, %struct.request** %3, align 8
  %37 = call %struct.TYPE_2__* @scsi_req(%struct.request* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @pscsi_complete_cmd(%struct.se_cmd* %34, i32 %35, i32 %39)
  %41 = load i32, i32* %7, align 4
  %42 = call i32 @host_byte(i32 %41)
  switch i32 %42, label %55 [
    i32 128, label %43
  ]

43:                                               ; preds = %33
  %44 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %47 = getelementptr inbounds %struct.se_cmd, %struct.se_cmd* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.request*, %struct.request** %3, align 8
  %50 = call %struct.TYPE_2__* @scsi_req(%struct.request* %49)
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %48, %52
  %54 = call i32 @target_complete_cmd_with_length(%struct.se_cmd* %44, i32 %45, i64 %53)
  br label %67

55:                                               ; preds = %33
  %56 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %57 = load %struct.pscsi_plugin_task*, %struct.pscsi_plugin_task** %6, align 8
  %58 = getelementptr inbounds %struct.pscsi_plugin_task, %struct.pscsi_plugin_task* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @pr_debug(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.1, i64 0, i64 0), %struct.se_cmd* %56, i32 %61, i32 %62)
  %64 = load %struct.se_cmd*, %struct.se_cmd** %5, align 8
  %65 = load i32, i32* @SAM_STAT_CHECK_CONDITION, align 4
  %66 = call i32 @target_complete_cmd(%struct.se_cmd* %64, i32 %65)
  br label %67

67:                                               ; preds = %55, %43
  %68 = load %struct.request*, %struct.request** %3, align 8
  %69 = call i32 @blk_put_request(%struct.request* %68)
  %70 = load %struct.pscsi_plugin_task*, %struct.pscsi_plugin_task** %6, align 8
  %71 = call i32 @kfree(%struct.pscsi_plugin_task* %70)
  ret void
}

declare dso_local %struct.TYPE_2__* @scsi_req(%struct.request*) #1

declare dso_local i32 @status_byte(i32) #1

declare dso_local i32 @pr_debug(i8*, %struct.se_cmd*, i32, i32) #1

declare dso_local i32 @pscsi_complete_cmd(%struct.se_cmd*, i32, i32) #1

declare dso_local i32 @host_byte(i32) #1

declare dso_local i32 @target_complete_cmd_with_length(%struct.se_cmd*, i32, i64) #1

declare dso_local i32 @target_complete_cmd(%struct.se_cmd*, i32) #1

declare dso_local i32 @blk_put_request(%struct.request*) #1

declare dso_local i32 @kfree(%struct.pscsi_plugin_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
