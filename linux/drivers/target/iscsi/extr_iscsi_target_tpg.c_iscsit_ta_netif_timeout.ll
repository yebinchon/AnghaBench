; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tpg.c_iscsit_ta_netif_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_tpg.c_iscsit_ta_netif_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_portal_group = type { i32, %struct.iscsi_tpg_attrib }
%struct.iscsi_tpg_attrib = type { i64 }

@TA_NETIF_TIMEOUT_MAX = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [63 x i8] c"Requested Network Interface Timeout %u larger than maximum %u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TA_NETIF_TIMEOUT_MIN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [64 x i8] c"Requested Network Interface Timeout %u smaller than minimum %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [65 x i8] c"Set Network Interface Timeout to %u for Target Portal Group %hu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iscsit_ta_netif_timeout(%struct.iscsi_portal_group* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_portal_group*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.iscsi_tpg_attrib*, align 8
  store %struct.iscsi_portal_group* %0, %struct.iscsi_portal_group** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %4, align 8
  %8 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %7, i32 0, i32 1
  store %struct.iscsi_tpg_attrib* %8, %struct.iscsi_tpg_attrib** %6, align 8
  %9 = load i64, i64* %5, align 8
  %10 = load i64, i64* @TA_NETIF_TIMEOUT_MAX, align 8
  %11 = icmp sgt i64 %9, %10
  br i1 %11, label %12, label %18

12:                                               ; preds = %2
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @TA_NETIF_TIMEOUT_MAX, align 8
  %15 = call i32 @pr_err(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i64 0, i64 0), i64 %13, i64 %14)
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %40

18:                                               ; preds = %2
  %19 = load i64, i64* %5, align 8
  %20 = load i64, i64* @TA_NETIF_TIMEOUT_MIN, align 8
  %21 = icmp slt i64 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %18
  %23 = load i64, i64* %5, align 8
  %24 = load i64, i64* @TA_NETIF_TIMEOUT_MIN, align 8
  %25 = call i32 @pr_err(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.1, i64 0, i64 0), i64 %23, i64 %24)
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %40

28:                                               ; preds = %18
  br label %29

29:                                               ; preds = %28
  %30 = load i64, i64* %5, align 8
  %31 = load %struct.iscsi_tpg_attrib*, %struct.iscsi_tpg_attrib** %6, align 8
  %32 = getelementptr inbounds %struct.iscsi_tpg_attrib, %struct.iscsi_tpg_attrib* %31, i32 0, i32 0
  store i64 %30, i64* %32, align 8
  %33 = load %struct.iscsi_tpg_attrib*, %struct.iscsi_tpg_attrib** %6, align 8
  %34 = getelementptr inbounds %struct.iscsi_tpg_attrib, %struct.iscsi_tpg_attrib* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.iscsi_portal_group*, %struct.iscsi_portal_group** %4, align 8
  %37 = getelementptr inbounds %struct.iscsi_portal_group, %struct.iscsi_portal_group* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @pr_debug(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.2, i64 0, i64 0), i64 %35, i32 %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %29, %22, %12
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @pr_err(i8*, i64, i64) #1

declare dso_local i32 @pr_debug(i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
