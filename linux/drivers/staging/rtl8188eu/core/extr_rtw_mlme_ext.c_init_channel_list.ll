; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_init_channel_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/core/extr_rtw_mlme_ext.c_init_channel_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.rt_channel_info = type { i32 }
%struct.p2p_channels = type { i32, %struct.p2p_reg_class* }
%struct.p2p_reg_class = type { i64, i64*, i64 }
%struct.p2p_oper_class_map = type { i32, i32, i32, i32, i32, i64, i64, i32, i64, i64, i32 }

@IEEE80211G = common dso_local global i32 0, align 4
@BW20 = common dso_local global i32 0, align 4
@BW40MINUS = common dso_local global i64 0, align 8
@BW40PLUS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.rt_channel_info*, i64, %struct.p2p_channels*)* @init_channel_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_channel_list(%struct.adapter* %0, %struct.rt_channel_info* %1, i64 %2, %struct.p2p_channels* %3) #0 {
  %5 = alloca %struct.adapter*, align 8
  %6 = alloca %struct.rt_channel_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.p2p_channels*, align 8
  %9 = alloca [3 x %struct.p2p_oper_class_map], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.p2p_oper_class_map*, align 8
  %14 = alloca %struct.p2p_reg_class*, align 8
  store %struct.adapter* %0, %struct.adapter** %5, align 8
  store %struct.rt_channel_info* %1, %struct.rt_channel_info** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.p2p_channels* %3, %struct.p2p_channels** %8, align 8
  %15 = getelementptr inbounds [3 x %struct.p2p_oper_class_map], [3 x %struct.p2p_oper_class_map]* %9, i64 0, i64 0
  %16 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %15, i32 0, i32 0
  %17 = load i32, i32* @IEEE80211G, align 4
  store i32 %17, i32* %16, align 8
  %18 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %15, i32 0, i32 1
  store i32 81, i32* %18, align 4
  %19 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %15, i32 0, i32 2
  store i32 1, i32* %19, align 8
  %20 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %15, i32 0, i32 3
  store i32 13, i32* %20, align 4
  %21 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %15, i32 0, i32 4
  store i32 1, i32* %21, align 8
  %22 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %15, i32 0, i32 5
  %23 = load i32, i32* @BW20, align 4
  %24 = sext i32 %23 to i64
  store i64 %24, i64* %22, align 8
  %25 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %15, i32 0, i32 6
  store i64 0, i64* %25, align 8
  %26 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %15, i32 0, i32 7
  store i32 0, i32* %26, align 8
  %27 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %15, i32 0, i32 8
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %15, i32 0, i32 9
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %15, i32 0, i32 10
  store i32 0, i32* %29, align 8
  %30 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %15, i64 1
  %31 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %30, i32 0, i32 0
  %32 = load i32, i32* @IEEE80211G, align 4
  store i32 %32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %30, i32 0, i32 1
  store i32 82, i32* %33, align 4
  %34 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %30, i32 0, i32 2
  store i32 14, i32* %34, align 8
  %35 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %30, i32 0, i32 3
  store i32 14, i32* %35, align 4
  %36 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %30, i32 0, i32 4
  store i32 1, i32* %36, align 8
  %37 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %30, i32 0, i32 5
  %38 = load i32, i32* @BW20, align 4
  %39 = sext i32 %38 to i64
  store i64 %39, i64* %37, align 8
  %40 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %30, i32 0, i32 6
  store i64 0, i64* %40, align 8
  %41 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %30, i32 0, i32 7
  store i32 0, i32* %41, align 8
  %42 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %30, i32 0, i32 8
  store i64 0, i64* %42, align 8
  %43 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %30, i32 0, i32 9
  store i64 0, i64* %43, align 8
  %44 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %30, i32 0, i32 10
  store i32 0, i32* %44, align 8
  %45 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %30, i64 1
  %46 = bitcast %struct.p2p_oper_class_map* %45 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %46, i8 0, i64 72, i1 false)
  %47 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %45, i32 0, i32 0
  store i32 -1, i32* %47, align 8
  %48 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %45, i32 0, i32 5
  %49 = load i32, i32* @BW20, align 4
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %48, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %151, %4
  %52 = load i32, i32* %11, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [3 x %struct.p2p_oper_class_map], [3 x %struct.p2p_oper_class_map]* %9, i64 0, i64 %53
  %55 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %54, i32 0, i32 9
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %154

58:                                               ; preds = %51
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [3 x %struct.p2p_oper_class_map], [3 x %struct.p2p_oper_class_map]* %9, i64 0, i64 %60
  store %struct.p2p_oper_class_map* %61, %struct.p2p_oper_class_map** %13, align 8
  store %struct.p2p_reg_class* null, %struct.p2p_reg_class** %14, align 8
  %62 = load %struct.p2p_oper_class_map*, %struct.p2p_oper_class_map** %13, align 8
  %63 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %62, i32 0, i32 5
  %64 = load i64, i64* %63, align 8
  store i64 %64, i64* %12, align 8
  br label %65

65:                                               ; preds = %143, %58
  %66 = load i64, i64* %12, align 8
  %67 = load %struct.p2p_oper_class_map*, %struct.p2p_oper_class_map** %13, align 8
  %68 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %67, i32 0, i32 6
  %69 = load i64, i64* %68, align 8
  %70 = icmp sle i64 %66, %69
  br i1 %70, label %71, label %150

71:                                               ; preds = %65
  %72 = load %struct.rt_channel_info*, %struct.rt_channel_info** %6, align 8
  %73 = load i64, i64* %7, align 8
  %74 = load i64, i64* %12, align 8
  %75 = call i32 @has_channel(%struct.rt_channel_info* %72, i64 %73, i64 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %71
  br label %143

78:                                               ; preds = %71
  %79 = load %struct.adapter*, %struct.adapter** %5, align 8
  %80 = getelementptr inbounds %struct.adapter, %struct.adapter* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %90, label %84

84:                                               ; preds = %78
  %85 = load %struct.p2p_oper_class_map*, %struct.p2p_oper_class_map** %13, align 8
  %86 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %85, i32 0, i32 7
  %87 = load i32, i32* %86, align 8
  %88 = icmp eq i32 %87, 8
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %143

90:                                               ; preds = %84, %78
  %91 = load %struct.adapter*, %struct.adapter** %5, align 8
  %92 = getelementptr inbounds %struct.adapter, %struct.adapter* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @BIT(i32 1)
  %96 = and i32 %94, %95
  %97 = icmp eq i32 0, %96
  br i1 %97, label %98, label %111

98:                                               ; preds = %90
  %99 = load %struct.p2p_oper_class_map*, %struct.p2p_oper_class_map** %13, align 8
  %100 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %99, i32 0, i32 8
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @BW40MINUS, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %110, label %104

104:                                              ; preds = %98
  %105 = load %struct.p2p_oper_class_map*, %struct.p2p_oper_class_map** %13, align 8
  %106 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %105, i32 0, i32 8
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @BW40PLUS, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %111

110:                                              ; preds = %104, %98
  br label %143

111:                                              ; preds = %104, %90
  %112 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %14, align 8
  %113 = icmp eq %struct.p2p_reg_class* %112, null
  br i1 %113, label %114, label %130

114:                                              ; preds = %111
  %115 = load %struct.p2p_channels*, %struct.p2p_channels** %8, align 8
  %116 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %115, i32 0, i32 1
  %117 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %116, align 8
  %118 = load i32, i32* %10, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %117, i64 %119
  store %struct.p2p_reg_class* %120, %struct.p2p_reg_class** %14, align 8
  %121 = load i32, i32* %10, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %10, align 4
  %123 = load %struct.p2p_oper_class_map*, %struct.p2p_oper_class_map** %13, align 8
  %124 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %123, i32 0, i32 9
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %14, align 8
  %127 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %126, i32 0, i32 2
  store i64 %125, i64* %127, align 8
  %128 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %14, align 8
  %129 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %128, i32 0, i32 0
  store i64 0, i64* %129, align 8
  br label %130

130:                                              ; preds = %114, %111
  %131 = load i64, i64* %12, align 8
  %132 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %14, align 8
  %133 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %132, i32 0, i32 1
  %134 = load i64*, i64** %133, align 8
  %135 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %14, align 8
  %136 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %135, i32 0, i32 0
  %137 = load i64, i64* %136, align 8
  %138 = getelementptr inbounds i64, i64* %134, i64 %137
  store i64 %131, i64* %138, align 8
  %139 = load %struct.p2p_reg_class*, %struct.p2p_reg_class** %14, align 8
  %140 = getelementptr inbounds %struct.p2p_reg_class, %struct.p2p_reg_class* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = add i64 %141, 1
  store i64 %142, i64* %140, align 8
  br label %143

143:                                              ; preds = %130, %110, %89, %77
  %144 = load %struct.p2p_oper_class_map*, %struct.p2p_oper_class_map** %13, align 8
  %145 = getelementptr inbounds %struct.p2p_oper_class_map, %struct.p2p_oper_class_map* %144, i32 0, i32 7
  %146 = load i32, i32* %145, align 8
  %147 = sext i32 %146 to i64
  %148 = load i64, i64* %12, align 8
  %149 = add nsw i64 %148, %147
  store i64 %149, i64* %12, align 8
  br label %65

150:                                              ; preds = %65
  br label %151

151:                                              ; preds = %150
  %152 = load i32, i32* %11, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %11, align 4
  br label %51

154:                                              ; preds = %51
  %155 = load i32, i32* %10, align 4
  %156 = load %struct.p2p_channels*, %struct.p2p_channels** %8, align 8
  %157 = getelementptr inbounds %struct.p2p_channels, %struct.p2p_channels* %156, i32 0, i32 0
  store i32 %155, i32* %157, align 8
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @has_channel(%struct.rt_channel_info*, i64, i64) #2

declare dso_local i32 @BIT(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
