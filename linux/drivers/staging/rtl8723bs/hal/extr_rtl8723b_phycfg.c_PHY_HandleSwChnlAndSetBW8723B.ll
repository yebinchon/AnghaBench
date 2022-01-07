; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_phycfg.c_PHY_HandleSwChnlAndSetBW8723B.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/hal/extr_rtl8723b_phycfg.c_PHY_HandleSwChnlAndSetBW8723B.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { i32, i32 }
%struct.hal_com_data = type { i32, i32, i32, i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [73 x i8] c"PHY_HandleSwChnlAndSetBW8812:  not switch channel and not set bandwidth\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, i32, i32, i8*, i32, i32, i32, i8*)* @PHY_HandleSwChnlAndSetBW8723B to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PHY_HandleSwChnlAndSetBW8723B(%struct.adapter* %0, i32 %1, i32 %2, i8* %3, i32 %4, i32 %5, i32 %6, i8* %7) #0 {
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca %struct.hal_com_data*, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  %21 = alloca i8*, align 8
  %22 = alloca i8*, align 8
  store %struct.adapter* %0, %struct.adapter** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i8* %7, i8** %16, align 8
  %23 = load %struct.adapter*, %struct.adapter** %9, align 8
  %24 = call %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter* %23)
  store %struct.hal_com_data* %24, %struct.hal_com_data** %17, align 8
  %25 = load %struct.hal_com_data*, %struct.hal_com_data** %17, align 8
  %26 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %25, i32 0, i32 6
  %27 = load i8*, i8** %26, align 8
  store i8* %27, i8** %18, align 8
  %28 = load %struct.hal_com_data*, %struct.hal_com_data** %17, align 8
  %29 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  store i32 %30, i32* %19, align 4
  %31 = load %struct.hal_com_data*, %struct.hal_com_data** %17, align 8
  %32 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  store i8* %35, i8** %20, align 8
  %36 = load %struct.hal_com_data*, %struct.hal_com_data** %17, align 8
  %37 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  store i8* %40, i8** %21, align 8
  %41 = load %struct.hal_com_data*, %struct.hal_com_data** %17, align 8
  %42 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %41, i32 0, i32 5
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %22, align 8
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %8
  %47 = load i32, i32* %11, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %51, label %49

49:                                               ; preds = %46
  %50 = call i32 @DBG_871X(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str, i64 0, i64 0))
  br label %156

51:                                               ; preds = %46, %8
  %52 = load i32, i32* %10, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %51
  %55 = load %struct.adapter*, %struct.adapter** %9, align 8
  %56 = load i8*, i8** %12, align 8
  %57 = call i64 @HAL_IsLegalChannel(%struct.adapter* %55, i8* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %54
  %60 = load %struct.hal_com_data*, %struct.hal_com_data** %17, align 8
  %61 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %60, i32 0, i32 3
  store i32 1, i32* %61, align 4
  br label %62

62:                                               ; preds = %59, %54
  br label %63

63:                                               ; preds = %62, %51
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load %struct.hal_com_data*, %struct.hal_com_data** %17, align 8
  %68 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %67, i32 0, i32 4
  store i32 1, i32* %68, align 8
  br label %69

69:                                               ; preds = %66, %63
  %70 = load %struct.hal_com_data*, %struct.hal_com_data** %17, align 8
  %71 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %69
  %75 = load %struct.hal_com_data*, %struct.hal_com_data** %17, align 8
  %76 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %74
  br label %156

80:                                               ; preds = %74, %69
  %81 = load %struct.hal_com_data*, %struct.hal_com_data** %17, align 8
  %82 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %80
  %86 = load i8*, i8** %12, align 8
  %87 = load %struct.hal_com_data*, %struct.hal_com_data** %17, align 8
  %88 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %87, i32 0, i32 6
  store i8* %86, i8** %88, align 8
  %89 = load i8*, i8** %12, align 8
  %90 = load %struct.hal_com_data*, %struct.hal_com_data** %17, align 8
  %91 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %90, i32 0, i32 5
  store i8* %89, i8** %91, align 8
  br label %92

92:                                               ; preds = %85, %80
  %93 = load %struct.hal_com_data*, %struct.hal_com_data** %17, align 8
  %94 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %110

97:                                               ; preds = %92
  %98 = load i32, i32* %13, align 4
  %99 = load %struct.hal_com_data*, %struct.hal_com_data** %17, align 8
  %100 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %99, i32 0, i32 0
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* %14, align 4
  %102 = load %struct.hal_com_data*, %struct.hal_com_data** %17, align 8
  %103 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load i32, i32* %15, align 4
  %105 = load %struct.hal_com_data*, %struct.hal_com_data** %17, align 8
  %106 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %105, i32 0, i32 2
  store i32 %104, i32* %106, align 8
  %107 = load i8*, i8** %16, align 8
  %108 = load %struct.hal_com_data*, %struct.hal_com_data** %17, align 8
  %109 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %108, i32 0, i32 5
  store i8* %107, i8** %109, align 8
  br label %110

110:                                              ; preds = %97, %92
  %111 = load %struct.adapter*, %struct.adapter** %9, align 8
  %112 = getelementptr inbounds %struct.adapter, %struct.adapter* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %123, label %115

115:                                              ; preds = %110
  %116 = load %struct.adapter*, %struct.adapter** %9, align 8
  %117 = getelementptr inbounds %struct.adapter, %struct.adapter* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %123, label %120

120:                                              ; preds = %115
  %121 = load %struct.adapter*, %struct.adapter** %9, align 8
  %122 = call i32 @phy_SwChnlAndSetBwMode8723B(%struct.adapter* %121)
  br label %156

123:                                              ; preds = %115, %110
  %124 = load %struct.hal_com_data*, %struct.hal_com_data** %17, align 8
  %125 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %124, i32 0, i32 3
  %126 = load i32, i32* %125, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %135

128:                                              ; preds = %123
  %129 = load i8*, i8** %18, align 8
  %130 = load %struct.hal_com_data*, %struct.hal_com_data** %17, align 8
  %131 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %130, i32 0, i32 6
  store i8* %129, i8** %131, align 8
  %132 = load i8*, i8** %18, align 8
  %133 = load %struct.hal_com_data*, %struct.hal_com_data** %17, align 8
  %134 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %133, i32 0, i32 5
  store i8* %132, i8** %134, align 8
  br label %135

135:                                              ; preds = %128, %123
  %136 = load %struct.hal_com_data*, %struct.hal_com_data** %17, align 8
  %137 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %140, label %155

140:                                              ; preds = %135
  %141 = load i32, i32* %19, align 4
  %142 = load %struct.hal_com_data*, %struct.hal_com_data** %17, align 8
  %143 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %142, i32 0, i32 0
  store i32 %141, i32* %143, align 8
  %144 = load i8*, i8** %20, align 8
  %145 = ptrtoint i8* %144 to i32
  %146 = load %struct.hal_com_data*, %struct.hal_com_data** %17, align 8
  %147 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  %148 = load i8*, i8** %21, align 8
  %149 = ptrtoint i8* %148 to i32
  %150 = load %struct.hal_com_data*, %struct.hal_com_data** %17, align 8
  %151 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %150, i32 0, i32 2
  store i32 %149, i32* %151, align 8
  %152 = load i8*, i8** %22, align 8
  %153 = load %struct.hal_com_data*, %struct.hal_com_data** %17, align 8
  %154 = getelementptr inbounds %struct.hal_com_data, %struct.hal_com_data* %153, i32 0, i32 5
  store i8* %152, i8** %154, align 8
  br label %155

155:                                              ; preds = %140, %135
  br label %156

156:                                              ; preds = %49, %79, %155, %120
  ret void
}

declare dso_local %struct.hal_com_data* @GET_HAL_DATA(%struct.adapter*) #1

declare dso_local i32 @DBG_871X(i8*) #1

declare dso_local i64 @HAL_IsLegalChannel(%struct.adapter*, i8*) #1

declare dso_local i32 @phy_SwChnlAndSetBwMode8723B(%struct.adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
