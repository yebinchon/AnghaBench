; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_group_address_tbl.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/ti/wl1251/extr_acx.c_wl1251_acx_group_address_tbl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wl1251 = type { i32 }
%struct.acx_dot11_grp_addr_tbl = type { i32, i32, i32 }

@DEBUG_ACX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"acx group address tbl\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@DOT11_GROUP_ADDRESS_TBL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"failed to set group addr table: %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wl1251_acx_group_address_tbl(%struct.wl1251* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.wl1251*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.acx_dot11_grp_addr_tbl*, align 8
  %11 = alloca i32, align 4
  store %struct.wl1251* %0, %struct.wl1251** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @DEBUG_ACX, align 4
  %13 = call i32 @wl1251_debug(i32 %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.acx_dot11_grp_addr_tbl* @kzalloc(i32 12, i32 %14)
  store %struct.acx_dot11_grp_addr_tbl* %15, %struct.acx_dot11_grp_addr_tbl** %10, align 8
  %16 = load %struct.acx_dot11_grp_addr_tbl*, %struct.acx_dot11_grp_addr_tbl** %10, align 8
  %17 = icmp ne %struct.acx_dot11_grp_addr_tbl* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %4
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %50

21:                                               ; preds = %4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.acx_dot11_grp_addr_tbl*, %struct.acx_dot11_grp_addr_tbl** %10, align 8
  %24 = getelementptr inbounds %struct.acx_dot11_grp_addr_tbl, %struct.acx_dot11_grp_addr_tbl* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.acx_dot11_grp_addr_tbl*, %struct.acx_dot11_grp_addr_tbl** %10, align 8
  %27 = getelementptr inbounds %struct.acx_dot11_grp_addr_tbl, %struct.acx_dot11_grp_addr_tbl* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.acx_dot11_grp_addr_tbl*, %struct.acx_dot11_grp_addr_tbl** %10, align 8
  %29 = getelementptr inbounds %struct.acx_dot11_grp_addr_tbl, %struct.acx_dot11_grp_addr_tbl* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load i8*, i8** %8, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @ETH_ALEN, align 4
  %34 = mul nsw i32 %32, %33
  %35 = call i32 @memcpy(i32 %30, i8* %31, i32 %34)
  %36 = load %struct.wl1251*, %struct.wl1251** %6, align 8
  %37 = load i32, i32* @DOT11_GROUP_ADDRESS_TBL, align 4
  %38 = load %struct.acx_dot11_grp_addr_tbl*, %struct.acx_dot11_grp_addr_tbl** %10, align 8
  %39 = call i32 @wl1251_cmd_configure(%struct.wl1251* %36, i32 %37, %struct.acx_dot11_grp_addr_tbl* %38, i32 12)
  store i32 %39, i32* %11, align 4
  %40 = load i32, i32* %11, align 4
  %41 = icmp slt i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %21
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @wl1251_warning(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  br label %46

45:                                               ; preds = %21
  br label %46

46:                                               ; preds = %45, %42
  %47 = load %struct.acx_dot11_grp_addr_tbl*, %struct.acx_dot11_grp_addr_tbl** %10, align 8
  %48 = call i32 @kfree(%struct.acx_dot11_grp_addr_tbl* %47)
  %49 = load i32, i32* %11, align 4
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %46, %18
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i32 @wl1251_debug(i32, i8*) #1

declare dso_local %struct.acx_dot11_grp_addr_tbl* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @wl1251_cmd_configure(%struct.wl1251*, i32, %struct.acx_dot11_grp_addr_tbl*, i32) #1

declare dso_local i32 @wl1251_warning(i8*, i32) #1

declare dso_local i32 @kfree(%struct.acx_dot11_grp_addr_tbl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
