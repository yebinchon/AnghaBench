; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi_ccg.c_ccg_check_vendor_version.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/ucsi/extr_ucsi_ccg.c_ccg_check_vendor_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucsi_ccg = type { i64, %struct.device* }
%struct.device = type { i32 }
%struct.version_format = type { i32 }
%struct.fw_config_table = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"current fw is not from supported vendor\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"new fw is not from supported vendor\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucsi_ccg*, %struct.version_format*, %struct.fw_config_table*)* @ccg_check_vendor_version to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccg_check_vendor_version(%struct.ucsi_ccg* %0, %struct.version_format* %1, %struct.fw_config_table* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucsi_ccg*, align 8
  %6 = alloca %struct.version_format*, align 8
  %7 = alloca %struct.fw_config_table*, align 8
  %8 = alloca %struct.device*, align 8
  store %struct.ucsi_ccg* %0, %struct.ucsi_ccg** %5, align 8
  store %struct.version_format* %1, %struct.version_format** %6, align 8
  store %struct.fw_config_table* %2, %struct.fw_config_table** %7, align 8
  %9 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %5, align 8
  %10 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %9, i32 0, i32 1
  %11 = load %struct.device*, %struct.device** %10, align 8
  store %struct.device* %11, %struct.device** %8, align 8
  %12 = load %struct.version_format*, %struct.version_format** %6, align 8
  %13 = getelementptr inbounds %struct.version_format, %struct.version_format* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @le16_to_cpu(i32 %14)
  %16 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %5, align 8
  %17 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.device*, %struct.device** %8, align 8
  %22 = call i32 @dev_info(%struct.device* %21, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %37

23:                                               ; preds = %3
  %24 = load %struct.fw_config_table*, %struct.fw_config_table** %7, align 8
  %25 = getelementptr inbounds %struct.fw_config_table, %struct.fw_config_table* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @le16_to_cpu(i32 %27)
  %29 = load %struct.ucsi_ccg*, %struct.ucsi_ccg** %5, align 8
  %30 = getelementptr inbounds %struct.ucsi_ccg, %struct.ucsi_ccg* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %23
  %34 = load %struct.device*, %struct.device** %8, align 8
  %35 = call i32 @dev_info(%struct.device* %34, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %37

36:                                               ; preds = %23
  store i32 1, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %33, %20
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i32 @dev_info(%struct.device*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
