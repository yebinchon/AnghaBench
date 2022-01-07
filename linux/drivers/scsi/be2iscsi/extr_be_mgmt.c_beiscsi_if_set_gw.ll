; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_if_set_gw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/be2iscsi/extr_be_mgmt.c_beiscsi_if_set_gw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.beiscsi_hba = type { i32 }
%struct.be_cmd_get_def_gateway_resp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@KERN_WARNING = common dso_local global i32 0, align 4
@BEISCSI_LOG_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"BG_%d : Failed to Get Gateway Addr\0A\00", align 1
@IP_ACTION_DEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"BG_%d : Failed to clear Gateway Addr Set\0A\00", align 1
@IP_ACTION_ADD = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [36 x i8] c"BG_%d : Failed to Set Gateway Addr\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @beiscsi_if_set_gw(%struct.beiscsi_hba* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.beiscsi_hba*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.be_cmd_get_def_gateway_resp, align 8
  %9 = alloca i32, align 4
  store %struct.beiscsi_hba* %0, %struct.beiscsi_hba** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = call i32 @memset(%struct.be_cmd_get_def_gateway_resp* %8, i32 0, i32 8)
  %11 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @beiscsi_if_get_gw(%struct.beiscsi_hba* %11, i32 %12, %struct.be_cmd_get_def_gateway_resp* %8)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %3
  %17 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %18 = load i32, i32* @KERN_WARNING, align 4
  %19 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %20 = call i32 @beiscsi_log(%struct.beiscsi_hba* %17, i32 %18, i32 %19, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %21 = load i32, i32* %9, align 4
  store i32 %21, i32* %4, align 4
  br label %61

22:                                               ; preds = %3
  %23 = getelementptr inbounds %struct.be_cmd_get_def_gateway_resp, %struct.be_cmd_get_def_gateway_resp* %8, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @beiscsi_if_zero_ip(i32* %25, i32 %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %46, label %29

29:                                               ; preds = %22
  %30 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %31 = load i32, i32* @IP_ACTION_DEL, align 4
  %32 = load i32, i32* %6, align 4
  %33 = getelementptr inbounds %struct.be_cmd_get_def_gateway_resp, %struct.be_cmd_get_def_gateway_resp* %8, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i32 @beiscsi_if_mod_gw(%struct.beiscsi_hba* %30, i32 %31, i32 %32, i32* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %29
  %40 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %41 = load i32, i32* @KERN_WARNING, align 4
  %42 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %43 = call i32 @beiscsi_log(%struct.beiscsi_hba* %40, i32 %41, i32 %42, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* %9, align 4
  store i32 %44, i32* %4, align 4
  br label %61

45:                                               ; preds = %29
  br label %46

46:                                               ; preds = %45, %22
  %47 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %48 = load i32, i32* @IP_ACTION_ADD, align 4
  %49 = load i32, i32* %6, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 @beiscsi_if_mod_gw(%struct.beiscsi_hba* %47, i32 %48, i32 %49, i32* %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %46
  %55 = load %struct.beiscsi_hba*, %struct.beiscsi_hba** %5, align 8
  %56 = load i32, i32* @KERN_WARNING, align 4
  %57 = load i32, i32* @BEISCSI_LOG_CONFIG, align 4
  %58 = call i32 @beiscsi_log(%struct.beiscsi_hba* %55, i32 %56, i32 %57, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %59

59:                                               ; preds = %54, %46
  %60 = load i32, i32* %9, align 4
  store i32 %60, i32* %4, align 4
  br label %61

61:                                               ; preds = %59, %39, %16
  %62 = load i32, i32* %4, align 4
  ret i32 %62
}

declare dso_local i32 @memset(%struct.be_cmd_get_def_gateway_resp*, i32, i32) #1

declare dso_local i32 @beiscsi_if_get_gw(%struct.beiscsi_hba*, i32, %struct.be_cmd_get_def_gateway_resp*) #1

declare dso_local i32 @beiscsi_log(%struct.beiscsi_hba*, i32, i32, i8*) #1

declare dso_local i32 @beiscsi_if_zero_ip(i32*, i32) #1

declare dso_local i32 @beiscsi_if_mod_gw(%struct.beiscsi_hba*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
