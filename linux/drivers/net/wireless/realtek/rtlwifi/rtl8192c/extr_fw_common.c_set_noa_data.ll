; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_fw_common.c_set_noa_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192c/extr_fw_common.c_set_noa_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_priv = type { i32 }
%struct.rtl_p2p_ps_info = type { i32, i64*, i64*, i64*, i32* }
%struct.p2p_ps_offload_t = type { i32, i32 }

@REG_TSFTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtl_priv*, %struct.rtl_p2p_ps_info*, %struct.p2p_ps_offload_t*)* @set_noa_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_noa_data(%struct.rtl_priv* %0, %struct.rtl_p2p_ps_info* %1, %struct.p2p_ps_offload_t* %2) #0 {
  %4 = alloca %struct.rtl_priv*, align 8
  %5 = alloca %struct.rtl_p2p_ps_info*, align 8
  %6 = alloca %struct.p2p_ps_offload_t*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.rtl_priv* %0, %struct.rtl_priv** %4, align 8
  store %struct.rtl_p2p_ps_info* %1, %struct.rtl_p2p_ps_info** %5, align 8
  store %struct.p2p_ps_offload_t* %2, %struct.p2p_ps_offload_t** %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %115, %3
  %11 = load i32, i32* %7, align 4
  %12 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %5, align 8
  %13 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %118

16:                                               ; preds = %10
  %17 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %18 = load i32, i32* %7, align 4
  %19 = shl i32 %18, 4
  %20 = call i32 @rtl_write_byte(%struct.rtl_priv* %17, i32 1487, i32 %19)
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.p2p_ps_offload_t*, %struct.p2p_ps_offload_t** %6, align 8
  %25 = getelementptr inbounds %struct.p2p_ps_offload_t, %struct.p2p_ps_offload_t* %24, i32 0, i32 0
  store i32 1, i32* %25, align 4
  br label %29

26:                                               ; preds = %16
  %27 = load %struct.p2p_ps_offload_t*, %struct.p2p_ps_offload_t** %6, align 8
  %28 = getelementptr inbounds %struct.p2p_ps_offload_t, %struct.p2p_ps_offload_t* %27, i32 0, i32 1
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %23
  %30 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %31 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %5, align 8
  %32 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %31, i32 0, i32 1
  %33 = load i64*, i64** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @rtl_write_dword(%struct.rtl_priv* %30, i32 1504, i64 %37)
  %39 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %40 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %5, align 8
  %41 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %40, i32 0, i32 2
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %7, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @rtl_write_dword(%struct.rtl_priv* %39, i32 1508, i64 %46)
  %48 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %49 = load i32, i32* @REG_TSFTR, align 4
  %50 = call i64 @rtl_read_dword(%struct.rtl_priv* %48, i32 %49)
  store i64 %50, i64* %9, align 8
  %51 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %5, align 8
  %52 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %51, i32 0, i32 3
  %53 = load i64*, i64** %52, align 8
  %54 = load i32, i32* %7, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %53, i64 %55
  %57 = load i64, i64* %56, align 8
  store i64 %57, i64* %8, align 8
  %58 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %5, align 8
  %59 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %58, i32 0, i32 4
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 1
  br i1 %65, label %66, label %101

66:                                               ; preds = %29
  br label %67

67:                                               ; preds = %99, %66
  %68 = load i64, i64* %8, align 8
  %69 = load i64, i64* %9, align 8
  %70 = add nsw i64 %69, 51200
  %71 = icmp sle i64 %68, %70
  br i1 %71, label %72, label %100

72:                                               ; preds = %67
  %73 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %5, align 8
  %74 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %73, i32 0, i32 2
  %75 = load i64*, i64** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* %8, align 8
  %81 = add nsw i64 %80, %79
  store i64 %81, i64* %8, align 8
  %82 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %5, align 8
  %83 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %82, i32 0, i32 4
  %84 = load i32*, i32** %83, align 8
  %85 = load i32, i32* %7, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds i32, i32* %84, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = icmp ne i32 %88, 255
  br i1 %89, label %90, label %99

90:                                               ; preds = %72
  %91 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %5, align 8
  %92 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %91, i32 0, i32 4
  %93 = load i32*, i32** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, -1
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %90, %72
  br label %67

100:                                              ; preds = %67
  br label %101

101:                                              ; preds = %100, %29
  %102 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %103 = load i64, i64* %8, align 8
  %104 = call i32 @rtl_write_dword(%struct.rtl_priv* %102, i32 1512, i64 %103)
  %105 = load %struct.rtl_priv*, %struct.rtl_priv** %4, align 8
  %106 = load %struct.rtl_p2p_ps_info*, %struct.rtl_p2p_ps_info** %5, align 8
  %107 = getelementptr inbounds %struct.rtl_p2p_ps_info, %struct.rtl_p2p_ps_info* %106, i32 0, i32 4
  %108 = load i32*, i32** %107, align 8
  %109 = load i32, i32* %7, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %108, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = sext i32 %112 to i64
  %114 = call i32 @rtl_write_dword(%struct.rtl_priv* %105, i32 1516, i64 %113)
  br label %115

115:                                              ; preds = %101
  %116 = load i32, i32* %7, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %7, align 4
  br label %10

118:                                              ; preds = %10
  ret void
}

declare dso_local i32 @rtl_write_byte(%struct.rtl_priv*, i32, i32) #1

declare dso_local i32 @rtl_write_dword(%struct.rtl_priv*, i32, i64) #1

declare dso_local i64 @rtl_read_dword(%struct.rtl_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
