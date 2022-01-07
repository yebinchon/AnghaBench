; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_card.c_vnt_set_rspinf.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6656/extr_card.c_vnt_set_rspinf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i32 }
%struct.vnt_phy_field = type { i64, i64, i32 }

@RATE_1M = common dso_local global i32 0, align 4
@PK_TYPE_11B = common dso_local global i32 0, align 4
@RATE_2M = common dso_local global i32 0, align 4
@RATE_5M = common dso_local global i32 0, align 4
@RATE_11M = common dso_local global i32 0, align 4
@RATE_6M = common dso_local global i32 0, align 4
@RATE_9M = common dso_local global i32 0, align 4
@RATE_12M = common dso_local global i32 0, align 4
@RATE_18M = common dso_local global i32 0, align 4
@RATE_24M = common dso_local global i32 0, align 4
@RATE_36M = common dso_local global i32 0, align 4
@RATE_48M = common dso_local global i32 0, align 4
@RATE_54M = common dso_local global i32 0, align 4
@MESSAGE_TYPE_WRITE = common dso_local global i32 0, align 4
@MAC_REG_RSPINF_B_1 = common dso_local global i32 0, align 4
@MESSAGE_REQUEST_MACREG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vnt_set_rspinf(%struct.vnt_private* %0, i64 %1) #0 {
  %3 = alloca %struct.vnt_private*, align 8
  %4 = alloca i64, align 8
  %5 = alloca [4 x %struct.vnt_phy_field], align 16
  %6 = alloca [9 x i64], align 16
  %7 = alloca [9 x i64], align 16
  %8 = alloca [34 x i64], align 16
  %9 = alloca i32, align 4
  store %struct.vnt_private* %0, %struct.vnt_private** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = bitcast [9 x i64]* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %10, i8 0, i64 72, i1 false)
  %11 = bitcast [9 x i64]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %11, i8 0, i64 72, i1 false)
  %12 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %13 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %14 = load i32, i32* @RATE_1M, align 4
  %15 = call i32 @vnt_get_cck_rate(%struct.vnt_private* %13, i32 %14)
  %16 = load i32, i32* @PK_TYPE_11B, align 4
  %17 = getelementptr inbounds [4 x %struct.vnt_phy_field], [4 x %struct.vnt_phy_field]* %5, i64 0, i64 0
  %18 = call i32 @vnt_get_phy_field(%struct.vnt_private* %12, i32 14, i32 %15, i32 %16, %struct.vnt_phy_field* %17)
  %19 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %20 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %21 = load i32, i32* @RATE_2M, align 4
  %22 = call i32 @vnt_get_cck_rate(%struct.vnt_private* %20, i32 %21)
  %23 = load i32, i32* @PK_TYPE_11B, align 4
  %24 = getelementptr inbounds [4 x %struct.vnt_phy_field], [4 x %struct.vnt_phy_field]* %5, i64 0, i64 1
  %25 = call i32 @vnt_get_phy_field(%struct.vnt_private* %19, i32 14, i32 %22, i32 %23, %struct.vnt_phy_field* %24)
  %26 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %27 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %28 = load i32, i32* @RATE_5M, align 4
  %29 = call i32 @vnt_get_cck_rate(%struct.vnt_private* %27, i32 %28)
  %30 = load i32, i32* @PK_TYPE_11B, align 4
  %31 = getelementptr inbounds [4 x %struct.vnt_phy_field], [4 x %struct.vnt_phy_field]* %5, i64 0, i64 2
  %32 = call i32 @vnt_get_phy_field(%struct.vnt_private* %26, i32 14, i32 %29, i32 %30, %struct.vnt_phy_field* %31)
  %33 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %34 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %35 = load i32, i32* @RATE_11M, align 4
  %36 = call i32 @vnt_get_cck_rate(%struct.vnt_private* %34, i32 %35)
  %37 = load i32, i32* @PK_TYPE_11B, align 4
  %38 = getelementptr inbounds [4 x %struct.vnt_phy_field], [4 x %struct.vnt_phy_field]* %5, i64 0, i64 3
  %39 = call i32 @vnt_get_phy_field(%struct.vnt_private* %33, i32 14, i32 %36, i32 %37, %struct.vnt_phy_field* %38)
  %40 = load i32, i32* @RATE_6M, align 4
  %41 = load i64, i64* %4, align 8
  %42 = getelementptr inbounds [9 x i64], [9 x i64]* %6, i64 0, i64 0
  %43 = getelementptr inbounds [9 x i64], [9 x i64]* %7, i64 0, i64 0
  %44 = call i32 @vnt_calculate_ofdm_rate(i32 %40, i64 %41, i64* %42, i64* %43)
  %45 = load i32, i32* @RATE_9M, align 4
  %46 = load i64, i64* %4, align 8
  %47 = getelementptr inbounds [9 x i64], [9 x i64]* %6, i64 0, i64 1
  %48 = getelementptr inbounds [9 x i64], [9 x i64]* %7, i64 0, i64 1
  %49 = call i32 @vnt_calculate_ofdm_rate(i32 %45, i64 %46, i64* %47, i64* %48)
  %50 = load i32, i32* @RATE_12M, align 4
  %51 = load i64, i64* %4, align 8
  %52 = getelementptr inbounds [9 x i64], [9 x i64]* %6, i64 0, i64 2
  %53 = getelementptr inbounds [9 x i64], [9 x i64]* %7, i64 0, i64 2
  %54 = call i32 @vnt_calculate_ofdm_rate(i32 %50, i64 %51, i64* %52, i64* %53)
  %55 = load i32, i32* @RATE_18M, align 4
  %56 = load i64, i64* %4, align 8
  %57 = getelementptr inbounds [9 x i64], [9 x i64]* %6, i64 0, i64 3
  %58 = getelementptr inbounds [9 x i64], [9 x i64]* %7, i64 0, i64 3
  %59 = call i32 @vnt_calculate_ofdm_rate(i32 %55, i64 %56, i64* %57, i64* %58)
  %60 = load i32, i32* @RATE_24M, align 4
  %61 = load i64, i64* %4, align 8
  %62 = getelementptr inbounds [9 x i64], [9 x i64]* %6, i64 0, i64 4
  %63 = getelementptr inbounds [9 x i64], [9 x i64]* %7, i64 0, i64 4
  %64 = call i32 @vnt_calculate_ofdm_rate(i32 %60, i64 %61, i64* %62, i64* %63)
  %65 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %66 = load i32, i32* @RATE_36M, align 4
  %67 = call i32 @vnt_get_ofdm_rate(%struct.vnt_private* %65, i32 %66)
  %68 = load i64, i64* %4, align 8
  %69 = getelementptr inbounds [9 x i64], [9 x i64]* %6, i64 0, i64 5
  %70 = getelementptr inbounds [9 x i64], [9 x i64]* %7, i64 0, i64 5
  %71 = call i32 @vnt_calculate_ofdm_rate(i32 %67, i64 %68, i64* %69, i64* %70)
  %72 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %73 = load i32, i32* @RATE_48M, align 4
  %74 = call i32 @vnt_get_ofdm_rate(%struct.vnt_private* %72, i32 %73)
  %75 = load i64, i64* %4, align 8
  %76 = getelementptr inbounds [9 x i64], [9 x i64]* %6, i64 0, i64 6
  %77 = getelementptr inbounds [9 x i64], [9 x i64]* %7, i64 0, i64 6
  %78 = call i32 @vnt_calculate_ofdm_rate(i32 %74, i64 %75, i64* %76, i64* %77)
  %79 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %80 = load i32, i32* @RATE_54M, align 4
  %81 = call i32 @vnt_get_ofdm_rate(%struct.vnt_private* %79, i32 %80)
  %82 = load i64, i64* %4, align 8
  %83 = getelementptr inbounds [9 x i64], [9 x i64]* %6, i64 0, i64 7
  %84 = getelementptr inbounds [9 x i64], [9 x i64]* %7, i64 0, i64 7
  %85 = call i32 @vnt_calculate_ofdm_rate(i32 %81, i64 %82, i64* %83, i64* %84)
  %86 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %87 = load i32, i32* @RATE_54M, align 4
  %88 = call i32 @vnt_get_ofdm_rate(%struct.vnt_private* %86, i32 %87)
  %89 = load i64, i64* %4, align 8
  %90 = getelementptr inbounds [9 x i64], [9 x i64]* %6, i64 0, i64 8
  %91 = getelementptr inbounds [9 x i64], [9 x i64]* %7, i64 0, i64 8
  %92 = call i32 @vnt_calculate_ofdm_rate(i32 %88, i64 %89, i64* %90, i64* %91)
  %93 = getelementptr inbounds [4 x %struct.vnt_phy_field], [4 x %struct.vnt_phy_field]* %5, i64 0, i64 0
  %94 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 16
  %96 = getelementptr inbounds [34 x i64], [34 x i64]* %8, i64 0, i64 0
  %97 = bitcast i64* %96 to i32*
  %98 = call i32 @put_unaligned(i32 %95, i32* %97)
  %99 = getelementptr inbounds [4 x %struct.vnt_phy_field], [4 x %struct.vnt_phy_field]* %5, i64 0, i64 0
  %100 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %99, i32 0, i32 1
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds [34 x i64], [34 x i64]* %8, i64 0, i64 2
  store i64 %101, i64* %102, align 16
  %103 = getelementptr inbounds [4 x %struct.vnt_phy_field], [4 x %struct.vnt_phy_field]* %5, i64 0, i64 0
  %104 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 16
  %106 = getelementptr inbounds [34 x i64], [34 x i64]* %8, i64 0, i64 3
  store i64 %105, i64* %106, align 8
  %107 = getelementptr inbounds [4 x %struct.vnt_phy_field], [4 x %struct.vnt_phy_field]* %5, i64 0, i64 1
  %108 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = getelementptr inbounds [34 x i64], [34 x i64]* %8, i64 0, i64 4
  %111 = bitcast i64* %110 to i32*
  %112 = call i32 @put_unaligned(i32 %109, i32* %111)
  %113 = getelementptr inbounds [4 x %struct.vnt_phy_field], [4 x %struct.vnt_phy_field]* %5, i64 0, i64 1
  %114 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %113, i32 0, i32 1
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds [34 x i64], [34 x i64]* %8, i64 0, i64 6
  store i64 %115, i64* %116, align 16
  %117 = getelementptr inbounds [4 x %struct.vnt_phy_field], [4 x %struct.vnt_phy_field]* %5, i64 0, i64 1
  %118 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = getelementptr inbounds [34 x i64], [34 x i64]* %8, i64 0, i64 7
  store i64 %119, i64* %120, align 8
  %121 = getelementptr inbounds [4 x %struct.vnt_phy_field], [4 x %struct.vnt_phy_field]* %5, i64 0, i64 2
  %122 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 16
  %124 = getelementptr inbounds [34 x i64], [34 x i64]* %8, i64 0, i64 8
  %125 = bitcast i64* %124 to i32*
  %126 = call i32 @put_unaligned(i32 %123, i32* %125)
  %127 = getelementptr inbounds [4 x %struct.vnt_phy_field], [4 x %struct.vnt_phy_field]* %5, i64 0, i64 2
  %128 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds [34 x i64], [34 x i64]* %8, i64 0, i64 10
  store i64 %129, i64* %130, align 16
  %131 = getelementptr inbounds [4 x %struct.vnt_phy_field], [4 x %struct.vnt_phy_field]* %5, i64 0, i64 2
  %132 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 16
  %134 = getelementptr inbounds [34 x i64], [34 x i64]* %8, i64 0, i64 11
  store i64 %133, i64* %134, align 8
  %135 = getelementptr inbounds [4 x %struct.vnt_phy_field], [4 x %struct.vnt_phy_field]* %5, i64 0, i64 3
  %136 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %135, i32 0, i32 2
  %137 = load i32, i32* %136, align 8
  %138 = getelementptr inbounds [34 x i64], [34 x i64]* %8, i64 0, i64 12
  %139 = bitcast i64* %138 to i32*
  %140 = call i32 @put_unaligned(i32 %137, i32* %139)
  %141 = getelementptr inbounds [4 x %struct.vnt_phy_field], [4 x %struct.vnt_phy_field]* %5, i64 0, i64 3
  %142 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = getelementptr inbounds [34 x i64], [34 x i64]* %8, i64 0, i64 14
  store i64 %143, i64* %144, align 16
  %145 = getelementptr inbounds [4 x %struct.vnt_phy_field], [4 x %struct.vnt_phy_field]* %5, i64 0, i64 3
  %146 = getelementptr inbounds %struct.vnt_phy_field, %struct.vnt_phy_field* %145, i32 0, i32 0
  %147 = load i64, i64* %146, align 8
  %148 = getelementptr inbounds [34 x i64], [34 x i64]* %8, i64 0, i64 15
  store i64 %147, i64* %148, align 8
  store i32 0, i32* %9, align 4
  br label %149

149:                                              ; preds = %172, %2
  %150 = load i32, i32* %9, align 4
  %151 = icmp slt i32 %150, 9
  br i1 %151, label %152, label %175

152:                                              ; preds = %149
  %153 = load i32, i32* %9, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [9 x i64], [9 x i64]* %6, i64 0, i64 %154
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* %9, align 4
  %158 = mul nsw i32 %157, 2
  %159 = add nsw i32 16, %158
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [34 x i64], [34 x i64]* %8, i64 0, i64 %160
  store i64 %156, i64* %161, align 8
  %162 = load i32, i32* %9, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds [9 x i64], [9 x i64]* %7, i64 0, i64 %163
  %165 = load i64, i64* %164, align 8
  %166 = load i32, i32* %9, align 4
  %167 = mul nsw i32 %166, 2
  %168 = add nsw i32 16, %167
  %169 = add nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [34 x i64], [34 x i64]* %8, i64 0, i64 %170
  store i64 %165, i64* %171, align 8
  br label %172

172:                                              ; preds = %152
  %173 = load i32, i32* %9, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %9, align 4
  br label %149

175:                                              ; preds = %149
  %176 = load %struct.vnt_private*, %struct.vnt_private** %3, align 8
  %177 = load i32, i32* @MESSAGE_TYPE_WRITE, align 4
  %178 = load i32, i32* @MAC_REG_RSPINF_B_1, align 4
  %179 = load i32, i32* @MESSAGE_REQUEST_MACREG, align 4
  %180 = getelementptr inbounds [34 x i64], [34 x i64]* %8, i64 0, i64 0
  %181 = call i32 @vnt_control_out(%struct.vnt_private* %176, i32 %177, i32 %178, i32 %179, i32 34, i64* %180)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @vnt_get_phy_field(%struct.vnt_private*, i32, i32, i32, %struct.vnt_phy_field*) #2

declare dso_local i32 @vnt_get_cck_rate(%struct.vnt_private*, i32) #2

declare dso_local i32 @vnt_calculate_ofdm_rate(i32, i64, i64*, i64*) #2

declare dso_local i32 @vnt_get_ofdm_rate(%struct.vnt_private*, i32) #2

declare dso_local i32 @put_unaligned(i32, i32*) #2

declare dso_local i32 @vnt_control_out(%struct.vnt_private*, i32, i32, i32, i32, i64*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
