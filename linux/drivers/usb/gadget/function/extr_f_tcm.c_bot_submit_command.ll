; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_bot_submit_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_tcm.c_bot_submit_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f_uas = type { %struct.usbg_tpg* }
%struct.usbg_tpg = type { i32, %struct.tcm_usbg_nexus* }
%struct.tcm_usbg_nexus = type { i32 }
%struct.bulk_cb_wrap = type { i64, i32, i32, i32, i32, i32, i32 }
%struct.usbg_cmd = type { i32, i32, i32, %struct.TYPE_2__, i8*, i32, i32, i32 }
%struct.TYPE_2__ = type { i8* }

@US_BULK_CB_SIGN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Wrong signature on CBW\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"Wrong length for CBW\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"Missing nexus, ignoring command\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"usbg_get_cmd failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@TCM_SIMPLE_TAG = common dso_local global i32 0, align 4
@US_BULK_FLAG_IN = common dso_local global i32 0, align 4
@bot_cmd_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f_uas*, i8*, i32)* @bot_submit_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bot_submit_command(%struct.f_uas* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.f_uas*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.bulk_cb_wrap*, align 8
  %9 = alloca %struct.usbg_cmd*, align 8
  %10 = alloca %struct.usbg_tpg*, align 8
  %11 = alloca %struct.tcm_usbg_nexus*, align 8
  %12 = alloca i32, align 4
  store %struct.f_uas* %0, %struct.f_uas** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i8*, i8** %6, align 8
  %14 = bitcast i8* %13 to %struct.bulk_cb_wrap*
  store %struct.bulk_cb_wrap* %14, %struct.bulk_cb_wrap** %8, align 8
  %15 = load %struct.f_uas*, %struct.f_uas** %5, align 8
  %16 = getelementptr inbounds %struct.f_uas, %struct.f_uas* %15, i32 0, i32 0
  %17 = load %struct.usbg_tpg*, %struct.usbg_tpg** %16, align 8
  store %struct.usbg_tpg* %17, %struct.usbg_tpg** %10, align 8
  %18 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %8, align 8
  %19 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @US_BULK_CB_SIGN, align 4
  %22 = call i64 @cpu_to_le32(i32 %21)
  %23 = icmp ne i64 %20, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %126

28:                                               ; preds = %3
  %29 = load i32, i32* %7, align 4
  %30 = icmp ne i32 %29, 31
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = call i32 @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %126

35:                                               ; preds = %28
  %36 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %8, align 8
  %37 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  store i32 %38, i32* %12, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp slt i32 %39, 1
  br i1 %40, label %44, label %41

41:                                               ; preds = %35
  %42 = load i32, i32* %12, align 4
  %43 = icmp sgt i32 %42, 16
  br i1 %43, label %44, label %47

44:                                               ; preds = %41, %35
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %4, align 4
  br label %126

47:                                               ; preds = %41
  %48 = load %struct.usbg_tpg*, %struct.usbg_tpg** %10, align 8
  %49 = getelementptr inbounds %struct.usbg_tpg, %struct.usbg_tpg* %48, i32 0, i32 1
  %50 = load %struct.tcm_usbg_nexus*, %struct.tcm_usbg_nexus** %49, align 8
  store %struct.tcm_usbg_nexus* %50, %struct.tcm_usbg_nexus** %11, align 8
  %51 = load %struct.tcm_usbg_nexus*, %struct.tcm_usbg_nexus** %11, align 8
  %52 = icmp ne %struct.tcm_usbg_nexus* %51, null
  br i1 %52, label %57, label %53

53:                                               ; preds = %47
  %54 = call i32 @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %55 = load i32, i32* @ENODEV, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %126

57:                                               ; preds = %47
  %58 = load %struct.f_uas*, %struct.f_uas** %5, align 8
  %59 = load %struct.tcm_usbg_nexus*, %struct.tcm_usbg_nexus** %11, align 8
  %60 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %8, align 8
  %61 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %60, i32 0, i32 5
  %62 = load i32, i32* %61, align 8
  %63 = call %struct.usbg_cmd* @usbg_get_cmd(%struct.f_uas* %58, %struct.tcm_usbg_nexus* %59, i32 %62)
  store %struct.usbg_cmd* %63, %struct.usbg_cmd** %9, align 8
  %64 = load %struct.usbg_cmd*, %struct.usbg_cmd** %9, align 8
  %65 = call i64 @IS_ERR(%struct.usbg_cmd* %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %57
  %68 = call i32 @pr_err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %69 = load i32, i32* @ENOMEM, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %4, align 4
  br label %126

71:                                               ; preds = %57
  %72 = load %struct.usbg_cmd*, %struct.usbg_cmd** %9, align 8
  %73 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %72, i32 0, i32 7
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %8, align 8
  %76 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %75, i32 0, i32 6
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %12, align 4
  %79 = call i32 @memcpy(i32 %74, i32 %77, i32 %78)
  %80 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %8, align 8
  %81 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %80, i32 0, i32 5
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.usbg_cmd*, %struct.usbg_cmd** %9, align 8
  %84 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %83, i32 0, i32 2
  store i32 %82, i32* %84, align 8
  %85 = load i32, i32* @TCM_SIMPLE_TAG, align 4
  %86 = load %struct.usbg_cmd*, %struct.usbg_cmd** %9, align 8
  %87 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %86, i32 0, i32 6
  store i32 %85, i32* %87, align 4
  %88 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %8, align 8
  %89 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = load %struct.usbg_cmd*, %struct.usbg_cmd** %9, align 8
  %92 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 8
  %93 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %8, align 8
  %94 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @US_BULK_FLAG_IN, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 1, i32 0
  %101 = load %struct.usbg_cmd*, %struct.usbg_cmd** %9, align 8
  %102 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %101, i32 0, i32 0
  store i32 %100, i32* %102, align 8
  %103 = load %struct.bulk_cb_wrap*, %struct.bulk_cb_wrap** %8, align 8
  %104 = getelementptr inbounds %struct.bulk_cb_wrap, %struct.bulk_cb_wrap* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = call i8* @le32_to_cpu(i32 %105)
  %107 = load %struct.usbg_cmd*, %struct.usbg_cmd** %9, align 8
  %108 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %107, i32 0, i32 4
  store i8* %106, i8** %108, align 8
  %109 = load %struct.usbg_cmd*, %struct.usbg_cmd** %9, align 8
  %110 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 8
  %112 = call i8* @le32_to_cpu(i32 %111)
  %113 = load %struct.usbg_cmd*, %struct.usbg_cmd** %9, align 8
  %114 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  store i8* %112, i8** %115, align 8
  %116 = load %struct.usbg_cmd*, %struct.usbg_cmd** %9, align 8
  %117 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %116, i32 0, i32 1
  %118 = load i32, i32* @bot_cmd_work, align 4
  %119 = call i32 @INIT_WORK(i32* %117, i32 %118)
  %120 = load %struct.usbg_tpg*, %struct.usbg_tpg** %10, align 8
  %121 = getelementptr inbounds %struct.usbg_tpg, %struct.usbg_tpg* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load %struct.usbg_cmd*, %struct.usbg_cmd** %9, align 8
  %124 = getelementptr inbounds %struct.usbg_cmd, %struct.usbg_cmd* %123, i32 0, i32 1
  %125 = call i32 @queue_work(i32 %122, i32* %124)
  store i32 0, i32* %4, align 4
  br label %126

126:                                              ; preds = %71, %67, %53, %44, %31, %24
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.usbg_cmd* @usbg_get_cmd(%struct.f_uas*, %struct.tcm_usbg_nexus*, i32) #1

declare dso_local i64 @IS_ERR(%struct.usbg_cmd*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
