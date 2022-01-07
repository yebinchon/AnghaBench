; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_cmd.c_FillH2CCmd8723B.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_cmd.c_FillH2CCmd8723B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i64 }
%struct.hal_com_data = type { i32 }
%struct.TYPE_2__ = type { i32 }

@_FAIL = common dso_local global i32 0, align 4
@RTL8723B_MAX_CMD_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c" fw read cmd failed...\0A\00", align 1
@REG_HMEBOX_EXT0_8723B = common dso_local global i32 0, align 4
@RTL8723B_EX_MESSAGE_BOX_SIZE = common dso_local global i32 0, align 4
@REG_HMEBOX_0 = common dso_local global i32 0, align 4
@MESSAGE_BOX_SIZE = common dso_local global i32 0, align 4
@MAX_H2C_BOX_NUMS = common dso_local global i32 0, align 4
@_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FillH2CCmd8723B(%struct.adapter* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.hal_com_data*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %17 = load i32, i32* @_FAIL, align 4
  store i32 %17, i32* %16, align 4
  %18 = load %struct.adapter*, %struct.adapter** %6, align 8
  %19 = call %struct.adapter* @GET_PRIMARY_ADAPTER(%struct.adapter* %18)
  store %struct.adapter* %19, %struct.adapter** %6, align 8
  %20 = load %struct.adapter*, %struct.adapter** %6, align 8
  %21 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %20)
  store %struct.hal_com_data* %21, %struct.hal_com_data** %13, align 8
  %22 = load %struct.adapter*, %struct.adapter** %6, align 8
  %23 = call %struct.TYPE_2__* @adapter_to_dvobj(%struct.adapter* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i64 @mutex_lock_interruptible(i32* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %4
  %28 = load i32, i32* %16, align 4
  store i32 %28, i32* %5, align 4
  br label %112

29:                                               ; preds = %4
  %30 = load i32*, i32** %9, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %33, label %32

32:                                               ; preds = %29
  br label %106

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @RTL8723B_MAX_CMD_LEN, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %106

38:                                               ; preds = %33
  %39 = load %struct.adapter*, %struct.adapter** %6, align 8
  %40 = getelementptr inbounds %struct.adapter, %struct.adapter* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %106

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44
  %46 = load %struct.hal_com_data*, %struct.hal_com_data** %13, align 8
  %47 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %10, align 4
  %49 = load %struct.adapter*, %struct.adapter** %6, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @_is_fw_read_cmd_down(%struct.adapter* %49, i32 %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %55, label %53

53:                                               ; preds = %45
  %54 = call i32 @DBG_8192C(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %106

55:                                               ; preds = %45
  %56 = load i32, i32* %8, align 4
  %57 = icmp sle i32 %56, 3
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = getelementptr inbounds i32, i32* %14, i64 1
  %60 = load i32*, i32** %9, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @memcpy(i32* %59, i32* %60, i32 %61)
  br label %72

63:                                               ; preds = %55
  %64 = getelementptr inbounds i32, i32* %14, i64 1
  %65 = load i32*, i32** %9, align 8
  %66 = call i32 @memcpy(i32* %64, i32* %65, i32 3)
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 3
  %69 = load i32, i32* %8, align 4
  %70 = sub nsw i32 %69, 3
  %71 = call i32 @memcpy(i32* %15, i32* %68, i32 %70)
  br label %72

72:                                               ; preds = %63, %58
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %14, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %14, align 4
  %76 = load i32, i32* %8, align 4
  %77 = icmp sgt i32 %76, 3
  br i1 %77, label %78, label %88

78:                                               ; preds = %72
  %79 = load i32, i32* @REG_HMEBOX_EXT0_8723B, align 4
  %80 = load i32, i32* %10, align 4
  %81 = load i32, i32* @RTL8723B_EX_MESSAGE_BOX_SIZE, align 4
  %82 = mul nsw i32 %80, %81
  %83 = add nsw i32 %79, %82
  store i32 %83, i32* %12, align 4
  %84 = load %struct.adapter*, %struct.adapter** %6, align 8
  %85 = load i32, i32* %12, align 4
  %86 = load i32, i32* %15, align 4
  %87 = call i32 @rtw_write32(%struct.adapter* %84, i32 %85, i32 %86)
  br label %88

88:                                               ; preds = %78, %72
  %89 = load i32, i32* @REG_HMEBOX_0, align 4
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* @MESSAGE_BOX_SIZE, align 4
  %92 = mul nsw i32 %90, %91
  %93 = add nsw i32 %89, %92
  store i32 %93, i32* %11, align 4
  %94 = load %struct.adapter*, %struct.adapter** %6, align 8
  %95 = load i32, i32* %11, align 4
  %96 = load i32, i32* %14, align 4
  %97 = call i32 @rtw_write32(%struct.adapter* %94, i32 %95, i32 %96)
  %98 = load i32, i32* %10, align 4
  %99 = add nsw i32 %98, 1
  %100 = load i32, i32* @MAX_H2C_BOX_NUMS, align 4
  %101 = srem i32 %99, %100
  %102 = load %struct.hal_com_data*, %struct.hal_com_data** %13, align 8
  %103 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %102, i32 0, i32 0
  store i32 %101, i32* %103, align 4
  br label %104

104:                                              ; preds = %88
  %105 = load i32, i32* @_SUCCESS, align 4
  store i32 %105, i32* %16, align 4
  br label %106

106:                                              ; preds = %104, %53, %43, %37, %32
  %107 = load %struct.adapter*, %struct.adapter** %6, align 8
  %108 = call %struct.TYPE_2__* @adapter_to_dvobj(%struct.adapter* %107)
  %109 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %108, i32 0, i32 0
  %110 = call i32 @mutex_unlock(i32* %109)
  %111 = load i32, i32* %16, align 4
  store i32 %111, i32* %5, align 4
  br label %112

112:                                              ; preds = %106, %27
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local %struct.adapter* @GET_PRIMARY_ADAPTER(%struct.adapter*) #1

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i64 @mutex_lock_interruptible(i32*) #1

declare dso_local %struct.TYPE_2__* @adapter_to_dvobj(%struct.adapter*) #1

declare dso_local i32 @_is_fw_read_cmd_down(%struct.adapter*, i32) #1

declare dso_local i32 @DBG_8192C(i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @rtw_write32(%struct.adapter*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
