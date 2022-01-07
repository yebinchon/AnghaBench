; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_bb_cfg.c_store_pwrindex_offset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_bb_cfg.c_store_pwrindex_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.hal_data_8188e* }
%struct.hal_data_8188e = type { i64**, i64 }

@rTxAGC_A_Rate18_06 = common dso_local global i64 0, align 8
@rTxAGC_A_Rate54_24 = common dso_local global i64 0, align 8
@rTxAGC_A_CCK1_Mcs32 = common dso_local global i64 0, align 8
@rTxAGC_B_CCK11_A_CCK2_11 = common dso_local global i64 0, align 8
@rTxAGC_A_Mcs03_Mcs00 = common dso_local global i64 0, align 8
@rTxAGC_A_Mcs07_Mcs04 = common dso_local global i64 0, align 8
@rTxAGC_A_Mcs11_Mcs08 = common dso_local global i64 0, align 8
@rTxAGC_A_Mcs15_Mcs12 = common dso_local global i64 0, align 8
@rTxAGC_B_Rate18_06 = common dso_local global i64 0, align 8
@rTxAGC_B_Rate54_24 = common dso_local global i64 0, align 8
@rTxAGC_B_CCK1_55_Mcs32 = common dso_local global i64 0, align 8
@rTxAGC_B_Mcs03_Mcs00 = common dso_local global i64 0, align 8
@rTxAGC_B_Mcs07_Mcs04 = common dso_local global i64 0, align 8
@rTxAGC_B_Mcs11_Mcs08 = common dso_local global i64 0, align 8
@rTxAGC_B_Mcs15_Mcs12 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i64, i64, i64)* @store_pwrindex_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @store_pwrindex_offset(%struct.adapter* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.hal_data_8188e*, align 8
  %10 = alloca i64*, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %11 = load %struct.adapter*, %struct.adapter** %5, align 8
  %12 = getelementptr inbounds %struct.adapter, %struct.adapter* %11, i32 0, i32 0
  %13 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %12, align 8
  store %struct.hal_data_8188e* %13, %struct.hal_data_8188e** %9, align 8
  %14 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %9, align 8
  %15 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %14, i32 0, i32 0
  %16 = load i64**, i64*** %15, align 8
  %17 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %9, align 8
  %18 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i64*, i64** %16, i64 %19
  %21 = load i64*, i64** %20, align 8
  store i64* %21, i64** %10, align 8
  %22 = load i64, i64* %6, align 8
  %23 = load i64, i64* @rTxAGC_A_Rate18_06, align 8
  %24 = icmp eq i64 %22, %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %4
  %26 = load i64, i64* %8, align 8
  %27 = load i64*, i64** %10, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  store i64 %26, i64* %28, align 8
  br label %29

29:                                               ; preds = %25, %4
  %30 = load i64, i64* %6, align 8
  %31 = load i64, i64* @rTxAGC_A_Rate54_24, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %37

33:                                               ; preds = %29
  %34 = load i64, i64* %8, align 8
  %35 = load i64*, i64** %10, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  store i64 %34, i64* %36, align 8
  br label %37

37:                                               ; preds = %33, %29
  %38 = load i64, i64* %6, align 8
  %39 = load i64, i64* @rTxAGC_A_CCK1_Mcs32, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %37
  %42 = load i64, i64* %8, align 8
  %43 = load i64*, i64** %10, align 8
  %44 = getelementptr inbounds i64, i64* %43, i64 6
  store i64 %42, i64* %44, align 8
  br label %45

45:                                               ; preds = %41, %37
  %46 = load i64, i64* %6, align 8
  %47 = load i64, i64* @rTxAGC_B_CCK11_A_CCK2_11, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %45
  %50 = load i64, i64* %7, align 8
  %51 = icmp eq i64 %50, 4294967040
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load i64, i64* %8, align 8
  %54 = load i64*, i64** %10, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 7
  store i64 %53, i64* %55, align 8
  br label %56

56:                                               ; preds = %52, %49, %45
  %57 = load i64, i64* %6, align 8
  %58 = load i64, i64* @rTxAGC_A_Mcs03_Mcs00, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %64

60:                                               ; preds = %56
  %61 = load i64, i64* %8, align 8
  %62 = load i64*, i64** %10, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 2
  store i64 %61, i64* %63, align 8
  br label %64

64:                                               ; preds = %60, %56
  %65 = load i64, i64* %6, align 8
  %66 = load i64, i64* @rTxAGC_A_Mcs07_Mcs04, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i64, i64* %8, align 8
  %70 = load i64*, i64** %10, align 8
  %71 = getelementptr inbounds i64, i64* %70, i64 3
  store i64 %69, i64* %71, align 8
  br label %72

72:                                               ; preds = %68, %64
  %73 = load i64, i64* %6, align 8
  %74 = load i64, i64* @rTxAGC_A_Mcs11_Mcs08, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %80

76:                                               ; preds = %72
  %77 = load i64, i64* %8, align 8
  %78 = load i64*, i64** %10, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 4
  store i64 %77, i64* %79, align 8
  br label %80

80:                                               ; preds = %76, %72
  %81 = load i64, i64* %6, align 8
  %82 = load i64, i64* @rTxAGC_A_Mcs15_Mcs12, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %92

84:                                               ; preds = %80
  %85 = load i64, i64* %8, align 8
  %86 = load i64*, i64** %10, align 8
  %87 = getelementptr inbounds i64, i64* %86, i64 5
  store i64 %85, i64* %87, align 8
  %88 = load %struct.hal_data_8188e*, %struct.hal_data_8188e** %9, align 8
  %89 = getelementptr inbounds %struct.hal_data_8188e, %struct.hal_data_8188e* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = add i64 %90, 1
  store i64 %91, i64* %89, align 8
  br label %92

92:                                               ; preds = %84, %80
  %93 = load i64, i64* %6, align 8
  %94 = load i64, i64* @rTxAGC_B_Rate18_06, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %92
  %97 = load i64, i64* %8, align 8
  %98 = load i64*, i64** %10, align 8
  %99 = getelementptr inbounds i64, i64* %98, i64 8
  store i64 %97, i64* %99, align 8
  br label %100

100:                                              ; preds = %96, %92
  %101 = load i64, i64* %6, align 8
  %102 = load i64, i64* @rTxAGC_B_Rate54_24, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i64, i64* %8, align 8
  %106 = load i64*, i64** %10, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 9
  store i64 %105, i64* %107, align 8
  br label %108

108:                                              ; preds = %104, %100
  %109 = load i64, i64* %6, align 8
  %110 = load i64, i64* @rTxAGC_B_CCK1_55_Mcs32, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %116

112:                                              ; preds = %108
  %113 = load i64, i64* %8, align 8
  %114 = load i64*, i64** %10, align 8
  %115 = getelementptr inbounds i64, i64* %114, i64 14
  store i64 %113, i64* %115, align 8
  br label %116

116:                                              ; preds = %112, %108
  %117 = load i64, i64* %6, align 8
  %118 = load i64, i64* @rTxAGC_B_CCK11_A_CCK2_11, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %127

120:                                              ; preds = %116
  %121 = load i64, i64* %7, align 8
  %122 = icmp eq i64 %121, 255
  br i1 %122, label %123, label %127

123:                                              ; preds = %120
  %124 = load i64, i64* %8, align 8
  %125 = load i64*, i64** %10, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 15
  store i64 %124, i64* %126, align 8
  br label %127

127:                                              ; preds = %123, %120, %116
  %128 = load i64, i64* %6, align 8
  %129 = load i64, i64* @rTxAGC_B_Mcs03_Mcs00, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %135

131:                                              ; preds = %127
  %132 = load i64, i64* %8, align 8
  %133 = load i64*, i64** %10, align 8
  %134 = getelementptr inbounds i64, i64* %133, i64 10
  store i64 %132, i64* %134, align 8
  br label %135

135:                                              ; preds = %131, %127
  %136 = load i64, i64* %6, align 8
  %137 = load i64, i64* @rTxAGC_B_Mcs07_Mcs04, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %143

139:                                              ; preds = %135
  %140 = load i64, i64* %8, align 8
  %141 = load i64*, i64** %10, align 8
  %142 = getelementptr inbounds i64, i64* %141, i64 11
  store i64 %140, i64* %142, align 8
  br label %143

143:                                              ; preds = %139, %135
  %144 = load i64, i64* %6, align 8
  %145 = load i64, i64* @rTxAGC_B_Mcs11_Mcs08, align 8
  %146 = icmp eq i64 %144, %145
  br i1 %146, label %147, label %151

147:                                              ; preds = %143
  %148 = load i64, i64* %8, align 8
  %149 = load i64*, i64** %10, align 8
  %150 = getelementptr inbounds i64, i64* %149, i64 12
  store i64 %148, i64* %150, align 8
  br label %151

151:                                              ; preds = %147, %143
  %152 = load i64, i64* %6, align 8
  %153 = load i64, i64* @rTxAGC_B_Mcs15_Mcs12, align 8
  %154 = icmp eq i64 %152, %153
  br i1 %154, label %155, label %159

155:                                              ; preds = %151
  %156 = load i64, i64* %8, align 8
  %157 = load i64*, i64** %10, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 13
  store i64 %156, i64* %158, align 8
  br label %159

159:                                              ; preds = %155, %151
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
