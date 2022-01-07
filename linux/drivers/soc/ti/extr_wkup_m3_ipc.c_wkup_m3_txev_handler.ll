; ModuleID = '/home/carl/AnghaBench/linux/drivers/soc/ti/extr_wkup_m3_ipc.c_wkup_m3_txev_handler.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/soc/ti/extr_wkup_m3_ipc.c_wkup_m3_txev_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wkup_m3_ipc = type { i32, i32, %struct.device* }
%struct.device = type { i32 }

@M3_VERSION_UNKNOWN = common dso_local global i32 0, align 4
@M3_BASELINE_VERSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"CM3 Firmware Version %x not supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"CM3 Firmware Version = 0x%x\0A\00", align 1
@M3_STATE_INITED = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [19 x i8] c"Unknown CM3 State\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @wkup_m3_txev_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wkup_m3_txev_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.wkup_m3_ipc*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.wkup_m3_ipc*
  store %struct.wkup_m3_ipc* %9, %struct.wkup_m3_ipc** %5, align 8
  %10 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %5, align 8
  %11 = getelementptr inbounds %struct.wkup_m3_ipc, %struct.wkup_m3_ipc* %10, i32 0, i32 2
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %6, align 8
  store i32 0, i32* %7, align 4
  %13 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %5, align 8
  %14 = call i32 @am33xx_txev_eoi(%struct.wkup_m3_ipc* %13)
  %15 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %5, align 8
  %16 = getelementptr inbounds %struct.wkup_m3_ipc, %struct.wkup_m3_ipc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %59 [
    i32 129, label %18
    i32 130, label %44
    i32 131, label %52
    i32 128, label %56
  ]

18:                                               ; preds = %2
  %19 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %5, align 8
  %20 = call i32 @wkup_m3_fw_version_read(%struct.wkup_m3_ipc* %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @M3_VERSION_UNKNOWN, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %28, label %24

24:                                               ; preds = %18
  %25 = load i32, i32* %7, align 4
  %26 = load i32, i32* @M3_BASELINE_VERSION, align 4
  %27 = icmp slt i32 %25, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %24, %18
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %29, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %36

32:                                               ; preds = %24
  %33 = load %struct.device*, %struct.device** %6, align 8
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @dev_info(%struct.device* %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  br label %36

36:                                               ; preds = %32, %28
  %37 = load i8*, i8** @M3_STATE_INITED, align 8
  %38 = ptrtoint i8* %37 to i32
  %39 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %5, align 8
  %40 = getelementptr inbounds %struct.wkup_m3_ipc, %struct.wkup_m3_ipc* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %5, align 8
  %42 = getelementptr inbounds %struct.wkup_m3_ipc, %struct.wkup_m3_ipc* %41, i32 0, i32 1
  %43 = call i32 @complete(i32* %42)
  br label %59

44:                                               ; preds = %2
  %45 = load i8*, i8** @M3_STATE_INITED, align 8
  %46 = ptrtoint i8* %45 to i32
  %47 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %5, align 8
  %48 = getelementptr inbounds %struct.wkup_m3_ipc, %struct.wkup_m3_ipc* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %5, align 8
  %50 = getelementptr inbounds %struct.wkup_m3_ipc, %struct.wkup_m3_ipc* %49, i32 0, i32 1
  %51 = call i32 @complete(i32* %50)
  br label %59

52:                                               ; preds = %2
  %53 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %5, align 8
  %54 = getelementptr inbounds %struct.wkup_m3_ipc, %struct.wkup_m3_ipc* %53, i32 0, i32 1
  %55 = call i32 @complete(i32* %54)
  br label %59

56:                                               ; preds = %2
  %57 = load %struct.device*, %struct.device** %6, align 8
  %58 = call i32 (%struct.device*, i8*, ...) @dev_warn(%struct.device* %57, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %56, %2, %52, %44, %36
  %60 = load %struct.wkup_m3_ipc*, %struct.wkup_m3_ipc** %5, align 8
  %61 = call i32 @am33xx_txev_enable(%struct.wkup_m3_ipc* %60)
  %62 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %62
}

declare dso_local i32 @am33xx_txev_eoi(%struct.wkup_m3_ipc*) #1

declare dso_local i32 @wkup_m3_fw_version_read(%struct.wkup_m3_ipc*) #1

declare dso_local i32 @dev_warn(%struct.device*, i8*, ...) #1

declare dso_local i32 @dev_info(%struct.device*, i8*, i32) #1

declare dso_local i32 @complete(i32*) #1

declare dso_local i32 @am33xx_txev_enable(%struct.wkup_m3_ipc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
