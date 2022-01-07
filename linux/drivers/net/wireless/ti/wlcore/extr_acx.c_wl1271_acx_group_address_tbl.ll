; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_group_address_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wlcore/extr_acx.c_wl1271_acx_group_address_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1271 = type { i32 }
%struct.wl12xx_vif = type { i32 }
%struct.acx_dot11_grp_addr_tbl = type { i32, i32, i32, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"acx group address tbl\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@DOT11_GROUP_ADDRESS_TBL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to set group addr table: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1271_acx_group_address_tbl(%struct.wl1271* %0, %struct.wl12xx_vif* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.wl1271*, align 8
  %7 = alloca %struct.wl12xx_vif*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.acx_dot11_grp_addr_tbl*, align 8
  %12 = alloca i32, align 4
  store %struct.wl1271* %0, %struct.wl1271** %6, align 8
  store %struct.wl12xx_vif* %1, %struct.wl12xx_vif** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %13 = load i32, i32* @DEBUG_ACX, align 4
  %14 = call i32 @wl1271_debug(i32 %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.acx_dot11_grp_addr_tbl* @kzalloc(i32 16, i32 %15)
  store %struct.acx_dot11_grp_addr_tbl* %16, %struct.acx_dot11_grp_addr_tbl** %11, align 8
  %17 = load %struct.acx_dot11_grp_addr_tbl*, %struct.acx_dot11_grp_addr_tbl** %11, align 8
  %18 = icmp ne %struct.acx_dot11_grp_addr_tbl* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %5
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %12, align 4
  br label %52

22:                                               ; preds = %5
  %23 = load %struct.wl12xx_vif*, %struct.wl12xx_vif** %7, align 8
  %24 = getelementptr inbounds %struct.wl12xx_vif, %struct.wl12xx_vif* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.acx_dot11_grp_addr_tbl*, %struct.acx_dot11_grp_addr_tbl** %11, align 8
  %27 = getelementptr inbounds %struct.acx_dot11_grp_addr_tbl, %struct.acx_dot11_grp_addr_tbl* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load %struct.acx_dot11_grp_addr_tbl*, %struct.acx_dot11_grp_addr_tbl** %11, align 8
  %30 = getelementptr inbounds %struct.acx_dot11_grp_addr_tbl, %struct.acx_dot11_grp_addr_tbl* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load %struct.acx_dot11_grp_addr_tbl*, %struct.acx_dot11_grp_addr_tbl** %11, align 8
  %33 = getelementptr inbounds %struct.acx_dot11_grp_addr_tbl, %struct.acx_dot11_grp_addr_tbl* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  %34 = load %struct.acx_dot11_grp_addr_tbl*, %struct.acx_dot11_grp_addr_tbl** %11, align 8
  %35 = getelementptr inbounds %struct.acx_dot11_grp_addr_tbl, %struct.acx_dot11_grp_addr_tbl* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = load i8*, i8** %9, align 8
  %38 = load i32, i32* %10, align 4
  %39 = load i32, i32* @ETH_ALEN, align 4
  %40 = mul nsw i32 %38, %39
  %41 = call i32 @memcpy(i32 %36, i8* %37, i32 %40)
  %42 = load %struct.wl1271*, %struct.wl1271** %6, align 8
  %43 = load i32, i32* @DOT11_GROUP_ADDRESS_TBL, align 4
  %44 = load %struct.acx_dot11_grp_addr_tbl*, %struct.acx_dot11_grp_addr_tbl** %11, align 8
  %45 = call i32 @wl1271_cmd_configure(%struct.wl1271* %42, i32 %43, %struct.acx_dot11_grp_addr_tbl* %44, i32 16)
  store i32 %45, i32* %12, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %51

48:                                               ; preds = %22
  %49 = load i32, i32* %12, align 4
  %50 = call i32 @wl1271_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %49)
  br label %52

51:                                               ; preds = %22
  br label %52

52:                                               ; preds = %51, %48, %19
  %53 = load %struct.acx_dot11_grp_addr_tbl*, %struct.acx_dot11_grp_addr_tbl** %11, align 8
  %54 = call i32 @kfree(%struct.acx_dot11_grp_addr_tbl* %53)
  %55 = load i32, i32* %12, align 4
  ret i32 %55
}

declare dso_local i32 @wl1271_debug(i32, i8*) #1

declare dso_local %struct.acx_dot11_grp_addr_tbl* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @wl1271_cmd_configure(%struct.wl1271*, i32, %struct.acx_dot11_grp_addr_tbl*, i32) #1

declare dso_local i32 @wl1271_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_dot11_grp_addr_tbl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
