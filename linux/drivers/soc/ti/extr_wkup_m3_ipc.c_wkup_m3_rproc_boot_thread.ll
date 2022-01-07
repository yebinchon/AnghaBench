; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_wkup_m3_ipc.c_wkup_m3_rproc_boot_thread.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_wkup_m3_ipc.c_wkup_m3_rproc_boot_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wkup_m3_ipc = type { i32, i32, %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [19 x i8] c"rproc_boot failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wkup_m3_ipc*)* @wkup_m3_rproc_boot_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @wkup_m3_rproc_boot_thread(%struct.wkup_m3_ipc* %0) #0 {
  %2 = alloca %struct.wkup_m3_ipc*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  store %struct.wkup_m3_ipc* %0, %struct.wkup_m3_ipc** %2, align 8
  %5 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %2, align 8
  %6 = getelementptr inbounds %struct.wkup_m3_ipc, %struct.wkup_m3_ipc* %5, i32 0, i32 2
  %7 = load %struct.device*, %struct.device** %6, align 8
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %2, align 8
  %9 = getelementptr inbounds %struct.wkup_m3_ipc, %struct.wkup_m3_ipc* %8, i32 0, i32 1
  %10 = call i32 @init_completion(i32* %9)
  %11 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %2, align 8
  %12 = getelementptr inbounds %struct.wkup_m3_ipc, %struct.wkup_m3_ipc* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @rproc_boot(i32 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.device*, %struct.device** %3, align 8
  %19 = call i32 @dev_err(%struct.device* %18, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %17, %1
  %21 = call i32 @do_exit(i32 0)
  ret void
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @rproc_boot(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @do_exit(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
