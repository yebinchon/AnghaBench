; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_aen_uevent.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_core.c_nvme_aen_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_ctrl = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"NVME_AEN=%#08x\00", align 1
@KOBJ_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvme_ctrl*)* @nvme_aen_uevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvme_aen_uevent(%struct.nvme_ctrl* %0) #0 {
  %2 = alloca %struct.nvme_ctrl*, align 8
  %3 = alloca [2 x i8*], align 16
  %4 = alloca i64, align 8
  store %struct.nvme_ctrl* %0, %struct.nvme_ctrl** %2, align 8
  %5 = bitcast [2 x i8*]* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %5, i8 0, i64 16, i1 false)
  %6 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %7 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %4, align 8
  %9 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %10 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %9, i32 0, i32 1
  store i64 0, i64* %10, align 8
  %11 = load i64, i64* %4, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %34

14:                                               ; preds = %1
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = load i64, i64* %4, align 8
  %17 = call i8* @kasprintf(i32 %15, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i64 %16)
  %18 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 0
  store i8* %17, i8** %18, align 16
  %19 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 0
  %20 = load i8*, i8** %19, align 16
  %21 = icmp ne i8* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %14
  br label %34

23:                                               ; preds = %14
  %24 = load %struct.nvme_ctrl*, %struct.nvme_ctrl** %2, align 8
  %25 = getelementptr inbounds %struct.nvme_ctrl, %struct.nvme_ctrl* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* @KOBJ_CHANGE, align 4
  %29 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 0
  %30 = call i32 @kobject_uevent_env(i32* %27, i32 %28, i8** %29)
  %31 = getelementptr inbounds [2 x i8*], [2 x i8*]* %3, i64 0, i64 0
  %32 = load i8*, i8** %31, align 16
  %33 = call i32 @kfree(i8* %32)
  br label %34

34:                                               ; preds = %23, %22, %13
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @kasprintf(i32, i8*, i64) #2

declare dso_local i32 @kobject_uevent_env(i32*, i32, i8**) #2

declare dso_local i32 @kfree(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
