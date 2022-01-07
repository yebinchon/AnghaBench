; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_dbg.c_ql_get_mac_protocol_registers.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_dbg.c_ql_get_mac_protocol_registers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ql_adapter = type { i32 }

@MAC_ADDR_RS = common dso_local global i32 0, align 4
@MAC_ADDR_TYPE_COUNT = common dso_local global i32 0, align 4
@MAC_ADDR_ADR = common dso_local global i32 0, align 4
@MAC_ADDR_MAX_CAM_ENTRIES = common dso_local global i32 0, align 4
@MAC_ADDR_MAX_CAM_WCOUNT = common dso_local global i32 0, align 4
@MAC_ADDR_MAX_FC_MAC_ENTRIES = common dso_local global i32 0, align 4
@MAC_ADDR_MAX_FC_MAC_WCOUNT = common dso_local global i32 0, align 4
@MAC_ADDR_MAX_MGMT_MAC_ENTRIES = common dso_local global i32 0, align 4
@MAC_ADDR_MAX_MGMT_MAC_WCOUNT = common dso_local global i32 0, align 4
@MAC_ADDR_MAX_MGMT_VLAN_ENTRIES = common dso_local global i32 0, align 4
@MAC_ADDR_MAX_MGMT_VLAN_WCOUNT = common dso_local global i32 0, align 4
@MAC_ADDR_MAX_MGMT_V4_ENTRIES = common dso_local global i32 0, align 4
@MAC_ADDR_MAX_MGMT_V4_WCOUNT = common dso_local global i32 0, align 4
@MAC_ADDR_MAX_MGMT_V6_ENTRIES = common dso_local global i32 0, align 4
@MAC_ADDR_MAX_MGMT_V6_WCOUNT = common dso_local global i32 0, align 4
@MAC_ADDR_MAX_MGMT_TU_DP_ENTRIES = common dso_local global i32 0, align 4
@MAC_ADDR_MAX_MGMT_TU_DP_WCOUNT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Bad type!!! 0x%08x\0A\00", align 1
@MAC_ADDR_TYPE_SHIFT = common dso_local global i32 0, align 4
@MAC_ADDR_IDX_SHIFT = common dso_local global i32 0, align 4
@MAC_ADDR_IDX = common dso_local global i32 0, align 4
@MAC_ADDR_MR = common dso_local global i32 0, align 4
@MAC_ADDR_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ql_adapter*, i32*)* @ql_get_mac_protocol_registers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ql_get_mac_protocol_registers(%struct.ql_adapter* %0, i32* %1) #0 {
  %3 = alloca %struct.ql_adapter*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ql_adapter* %0, %struct.ql_adapter** %3, align 8
  store i32* %1, i32** %4, align 8
  %14 = load i32, i32* @MAC_ADDR_RS, align 4
  store i32 %14, i32* %11, align 4
  store i32 0, i32* %7, align 4
  br label %15

15:                                               ; preds = %109, %2
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @MAC_ADDR_TYPE_COUNT, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %112

19:                                               ; preds = %15
  %20 = load i32, i32* %7, align 4
  switch i32 %20, label %51 [
    i32 0, label %21
    i32 1, label %27
    i32 2, label %30
    i32 3, label %30
    i32 4, label %33
    i32 5, label %36
    i32 6, label %39
    i32 7, label %42
    i32 8, label %45
    i32 9, label %48
  ]

21:                                               ; preds = %19
  %22 = load i32, i32* @MAC_ADDR_ADR, align 4
  %23 = load i32, i32* %11, align 4
  %24 = or i32 %23, %22
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* @MAC_ADDR_MAX_CAM_ENTRIES, align 4
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* @MAC_ADDR_MAX_CAM_WCOUNT, align 4
  store i32 %26, i32* %13, align 4
  br label %54

27:                                               ; preds = %19
  %28 = load i32, i32* @MAC_ADDR_MAX_CAM_WCOUNT, align 4
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* @MAC_ADDR_MAX_CAM_WCOUNT, align 4
  store i32 %29, i32* %13, align 4
  br label %54

30:                                               ; preds = %19, %19
  %31 = load i32, i32* @MAC_ADDR_MAX_CAM_WCOUNT, align 4
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* @MAC_ADDR_MAX_CAM_WCOUNT, align 4
  store i32 %32, i32* %13, align 4
  br label %54

33:                                               ; preds = %19
  %34 = load i32, i32* @MAC_ADDR_MAX_FC_MAC_ENTRIES, align 4
  store i32 %34, i32* %12, align 4
  %35 = load i32, i32* @MAC_ADDR_MAX_FC_MAC_WCOUNT, align 4
  store i32 %35, i32* %13, align 4
  br label %54

36:                                               ; preds = %19
  %37 = load i32, i32* @MAC_ADDR_MAX_MGMT_MAC_ENTRIES, align 4
  store i32 %37, i32* %12, align 4
  %38 = load i32, i32* @MAC_ADDR_MAX_MGMT_MAC_WCOUNT, align 4
  store i32 %38, i32* %13, align 4
  br label %54

39:                                               ; preds = %19
  %40 = load i32, i32* @MAC_ADDR_MAX_MGMT_VLAN_ENTRIES, align 4
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* @MAC_ADDR_MAX_MGMT_VLAN_WCOUNT, align 4
  store i32 %41, i32* %13, align 4
  br label %54

42:                                               ; preds = %19
  %43 = load i32, i32* @MAC_ADDR_MAX_MGMT_V4_ENTRIES, align 4
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* @MAC_ADDR_MAX_MGMT_V4_WCOUNT, align 4
  store i32 %44, i32* %13, align 4
  br label %54

45:                                               ; preds = %19
  %46 = load i32, i32* @MAC_ADDR_MAX_MGMT_V6_ENTRIES, align 4
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* @MAC_ADDR_MAX_MGMT_V6_WCOUNT, align 4
  store i32 %47, i32* %13, align 4
  br label %54

48:                                               ; preds = %19
  %49 = load i32, i32* @MAC_ADDR_MAX_MGMT_TU_DP_ENTRIES, align 4
  store i32 %49, i32* %12, align 4
  %50 = load i32, i32* @MAC_ADDR_MAX_MGMT_TU_DP_WCOUNT, align 4
  store i32 %50, i32* %13, align 4
  br label %54

51:                                               ; preds = %19
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @pr_err(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %52)
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %54

54:                                               ; preds = %51, %48, %45, %42, %39, %36, %33, %30, %27, %21
  store i32 0, i32* %8, align 4
  br label %55

55:                                               ; preds = %105, %54
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* %12, align 4
  %58 = icmp slt i32 %56, %57
  br i1 %58, label %59, label %108

59:                                               ; preds = %55
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %101, %59
  %61 = load i32, i32* %9, align 4
  %62 = load i32, i32* %13, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %104

64:                                               ; preds = %60
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %7, align 4
  %67 = load i32, i32* @MAC_ADDR_TYPE_SHIFT, align 4
  %68 = shl i32 %66, %67
  %69 = or i32 %65, %68
  %70 = load i32, i32* %8, align 4
  %71 = load i32, i32* @MAC_ADDR_IDX_SHIFT, align 4
  %72 = shl i32 %70, %71
  %73 = or i32 %69, %72
  %74 = load i32, i32* %9, align 4
  %75 = or i32 %73, %74
  store i32 %75, i32* %10, align 4
  %76 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %77 = load i32, i32* @MAC_ADDR_IDX, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @ql_write32(%struct.ql_adapter* %76, i32 %77, i32 %78)
  store i32 0, i32* %5, align 4
  br label %80

80:                                               ; preds = %85, %64
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* @MAC_ADDR_MR, align 4
  %83 = and i32 %81, %82
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %87 = load i32, i32* @MAC_ADDR_IDX, align 4
  %88 = call i32 @ql_read32(%struct.ql_adapter* %86, i32 %87)
  store i32 %88, i32* %5, align 4
  br label %80

89:                                               ; preds = %80
  %90 = load %struct.ql_adapter*, %struct.ql_adapter** %3, align 8
  %91 = load i32, i32* @MAC_ADDR_DATA, align 4
  %92 = call i32 @ql_read32(%struct.ql_adapter* %90, i32 %91)
  store i32 %92, i32* %6, align 4
  %93 = load i32, i32* %5, align 4
  %94 = load i32*, i32** %4, align 8
  store i32 %93, i32* %94, align 4
  %95 = load i32*, i32** %4, align 8
  %96 = getelementptr inbounds i32, i32* %95, i32 1
  store i32* %96, i32** %4, align 8
  %97 = load i32, i32* %6, align 4
  %98 = load i32*, i32** %4, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i32*, i32** %4, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %4, align 8
  br label %101

101:                                              ; preds = %89
  %102 = load i32, i32* %9, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %9, align 4
  br label %60

104:                                              ; preds = %60
  br label %105

105:                                              ; preds = %104
  %106 = load i32, i32* %8, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %8, align 4
  br label %55

108:                                              ; preds = %55
  br label %109

109:                                              ; preds = %108
  %110 = load i32, i32* %7, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %7, align 4
  br label %15

112:                                              ; preds = %15
  ret void
}

declare dso_local i32 @pr_err(i8*, i32) #1

declare dso_local i32 @ql_write32(%struct.ql_adapter*, i32, i32) #1

declare dso_local i32 @ql_read32(%struct.ql_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
