; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_hal_com.c_dump_chip_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8188eu/hal/extr_hal_com.c_dump_chip_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.HAL_VERSION = type { i64, i64, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Chip Version Info: CHIP_8188E_\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"%s_\00", align 1
@NORMAL_CHIP = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [12 x i8] c"Normal_Chip\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"Test_Chip\00", align 1
@CHIP_VENDOR_TSMC = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"TSMC\00", align 1
@.str.5 = private unnamed_addr constant [4 x i8] c"UMC\00", align 1
@A_CUT_VERSION = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [7 x i8] c"A_CUT_\00", align 1
@B_CUT_VERSION = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [7 x i8] c"B_CUT_\00", align 1
@C_CUT_VERSION = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [7 x i8] c"C_CUT_\00", align 1
@D_CUT_VERSION = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [7 x i8] c"D_CUT_\00", align 1
@E_CUT_VERSION = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [7 x i8] c"E_CUT_\00", align 1
@.str.11 = private unnamed_addr constant [17 x i8] c"UNKNOWN_CUT(%d)_\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"1T1R_\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"RomVer(0)\0A\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"%s\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dump_chip_info(%struct.HAL_VERSION* byval(%struct.HAL_VERSION) align 8 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca [128 x i8], align 16
  store i32 0, i32* %2, align 4
  %4 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %5 = load i32, i32* %2, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8, i8* %4, i64 %6
  %8 = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* %2, align 4
  %10 = add nsw i32 %9, %8
  store i32 %10, i32* %2, align 4
  %11 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %12 = load i32, i32* %2, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds i8, i8* %11, i64 %13
  %15 = getelementptr inbounds %struct.HAL_VERSION, %struct.HAL_VERSION* %0, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @NORMAL_CHIP, align 8
  %18 = icmp eq i64 %16, %17
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0)
  %21 = call i32 (i8*, i8*, ...) @sprintf(i8* %14, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %20)
  %22 = load i32, i32* %2, align 4
  %23 = add nsw i32 %22, %21
  store i32 %23, i32* %2, align 4
  %24 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %25 = load i32, i32* %2, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = getelementptr inbounds %struct.HAL_VERSION, %struct.HAL_VERSION* %0, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @CHIP_VENDOR_TSMC, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i64
  %33 = select i1 %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.5, i64 0, i64 0)
  %34 = call i32 (i8*, i8*, ...) @sprintf(i8* %27, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i8* %33)
  %35 = load i32, i32* %2, align 4
  %36 = add nsw i32 %35, %34
  store i32 %36, i32* %2, align 4
  %37 = getelementptr inbounds %struct.HAL_VERSION, %struct.HAL_VERSION* %0, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @A_CUT_VERSION, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %49

41:                                               ; preds = %1
  %42 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %43 = load i32, i32* %2, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i8, i8* %42, i64 %44
  %46 = call i32 (i8*, i8*, ...) @sprintf(i8* %45, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0))
  %47 = load i32, i32* %2, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %2, align 4
  br label %115

49:                                               ; preds = %1
  %50 = getelementptr inbounds %struct.HAL_VERSION, %struct.HAL_VERSION* %0, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @B_CUT_VERSION, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %49
  %55 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %56 = load i32, i32* %2, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i8, i8* %55, i64 %57
  %59 = call i32 (i8*, i8*, ...) @sprintf(i8* %58, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %60 = load i32, i32* %2, align 4
  %61 = add nsw i32 %60, %59
  store i32 %61, i32* %2, align 4
  br label %114

62:                                               ; preds = %49
  %63 = getelementptr inbounds %struct.HAL_VERSION, %struct.HAL_VERSION* %0, i32 0, i32 2
  %64 = load i32, i32* %63, align 8
  %65 = load i32, i32* @C_CUT_VERSION, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %75

67:                                               ; preds = %62
  %68 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %69 = load i32, i32* %2, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  %72 = call i32 (i8*, i8*, ...) @sprintf(i8* %71, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i64 0, i64 0))
  %73 = load i32, i32* %2, align 4
  %74 = add nsw i32 %73, %72
  store i32 %74, i32* %2, align 4
  br label %113

75:                                               ; preds = %62
  %76 = getelementptr inbounds %struct.HAL_VERSION, %struct.HAL_VERSION* %0, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @D_CUT_VERSION, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %75
  %81 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %82 = load i32, i32* %2, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = call i32 (i8*, i8*, ...) @sprintf(i8* %84, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %86 = load i32, i32* %2, align 4
  %87 = add nsw i32 %86, %85
  store i32 %87, i32* %2, align 4
  br label %112

88:                                               ; preds = %75
  %89 = getelementptr inbounds %struct.HAL_VERSION, %struct.HAL_VERSION* %0, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @E_CUT_VERSION, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %88
  %94 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %95 = load i32, i32* %2, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = call i32 (i8*, i8*, ...) @sprintf(i8* %97, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i64 0, i64 0))
  %99 = load i32, i32* %2, align 4
  %100 = add nsw i32 %99, %98
  store i32 %100, i32* %2, align 4
  br label %111

101:                                              ; preds = %88
  %102 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %103 = load i32, i32* %2, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, i8* %102, i64 %104
  %106 = getelementptr inbounds %struct.HAL_VERSION, %struct.HAL_VERSION* %0, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 (i8*, i8*, ...) @sprintf(i8* %105, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.11, i64 0, i64 0), i32 %107)
  %109 = load i32, i32* %2, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %2, align 4
  br label %111

111:                                              ; preds = %101, %93
  br label %112

112:                                              ; preds = %111, %80
  br label %113

113:                                              ; preds = %112, %67
  br label %114

114:                                              ; preds = %113, %54
  br label %115

115:                                              ; preds = %114, %41
  %116 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %117 = load i32, i32* %2, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i8, i8* %116, i64 %118
  %120 = call i32 (i8*, i8*, ...) @sprintf(i8* %119, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i64 0, i64 0))
  %121 = load i32, i32* %2, align 4
  %122 = add nsw i32 %121, %120
  store i32 %122, i32* %2, align 4
  %123 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %124 = load i32, i32* %2, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i8, i8* %123, i64 %125
  %127 = call i32 (i8*, i8*, ...) @sprintf(i8* %126, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.13, i64 0, i64 0))
  %128 = load i32, i32* %2, align 4
  %129 = add nsw i32 %128, %127
  store i32 %129, i32* %2, align 4
  %130 = getelementptr inbounds [128 x i8], [128 x i8]* %3, i64 0, i64 0
  %131 = call i32 @pr_info(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* %130)
  ret void
}

declare dso_local i32 @sprintf(i8*, i8*, ...) #1

declare dso_local i32 @pr_info(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
