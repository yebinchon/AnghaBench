; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c_rtl92d_get_chnlgroup_fromarray.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtlwifi/rtl8192de/extr_phy.c_rtl92d_get_chnlgroup_fromarray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.rtl92d_get_chnlgroup_fromarray.channel_info = private unnamed_addr constant [59 x i32] [i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 36, i32 38, i32 40, i32 42, i32 44, i32 46, i32 48, i32 50, i32 52, i32 54, i32 56, i32 58, i32 60, i32 62, i32 64, i32 100, i32 102, i32 104, i32 106, i32 108, i32 110, i32 112, i32 114, i32 116, i32 118, i32 120, i32 122, i32 124, i32 126, i32 128, i32 130, i32 132, i32 134, i32 136, i32 138, i32 140, i32 149, i32 151, i32 153, i32 155, i32 157, i32 159, i32 161, i32 163, i32 165], align 16

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtl92d_get_chnlgroup_fromarray(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [59 x i32], align 16
  store i32 %0, i32* %2, align 4
  %5 = bitcast [59 x i32]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %5, i8* align 16 bitcast ([59 x i32]* @__const.rtl92d_get_chnlgroup_fromarray.channel_info to i8*), i64 236, i1 false)
  %6 = load i32, i32* %2, align 4
  %7 = sext i32 %6 to i64
  %8 = getelementptr inbounds [59 x i32], [59 x i32]* %4, i64 0, i64 %7
  %9 = load i32, i32* %8, align 4
  %10 = icmp sle i32 %9, 3
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %93

12:                                               ; preds = %1
  %13 = load i32, i32* %2, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [59 x i32], [59 x i32]* %4, i64 0, i64 %14
  %16 = load i32, i32* %15, align 4
  %17 = icmp sle i32 %16, 9
  br i1 %17, label %18, label %19

18:                                               ; preds = %12
  store i32 1, i32* %3, align 4
  br label %92

19:                                               ; preds = %12
  %20 = load i32, i32* %2, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [59 x i32], [59 x i32]* %4, i64 0, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp sle i32 %23, 14
  br i1 %24, label %25, label %26

25:                                               ; preds = %19
  store i32 2, i32* %3, align 4
  br label %91

26:                                               ; preds = %19
  %27 = load i32, i32* %2, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [59 x i32], [59 x i32]* %4, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = icmp sle i32 %30, 44
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i32 3, i32* %3, align 4
  br label %90

33:                                               ; preds = %26
  %34 = load i32, i32* %2, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [59 x i32], [59 x i32]* %4, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = icmp sle i32 %37, 54
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i32 4, i32* %3, align 4
  br label %89

40:                                               ; preds = %33
  %41 = load i32, i32* %2, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [59 x i32], [59 x i32]* %4, i64 0, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp sle i32 %44, 64
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i32 5, i32* %3, align 4
  br label %88

47:                                               ; preds = %40
  %48 = load i32, i32* %2, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [59 x i32], [59 x i32]* %4, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = icmp sle i32 %51, 112
  br i1 %52, label %53, label %54

53:                                               ; preds = %47
  store i32 6, i32* %3, align 4
  br label %87

54:                                               ; preds = %47
  %55 = load i32, i32* %2, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [59 x i32], [59 x i32]* %4, i64 0, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = icmp sle i32 %58, 126
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  store i32 7, i32* %3, align 4
  br label %86

61:                                               ; preds = %54
  %62 = load i32, i32* %2, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds [59 x i32], [59 x i32]* %4, i64 0, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = icmp sle i32 %65, 140
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i32 8, i32* %3, align 4
  br label %85

68:                                               ; preds = %61
  %69 = load i32, i32* %2, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [59 x i32], [59 x i32]* %4, i64 0, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = icmp sle i32 %72, 153
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  store i32 9, i32* %3, align 4
  br label %84

75:                                               ; preds = %68
  %76 = load i32, i32* %2, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [59 x i32], [59 x i32]* %4, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = icmp sle i32 %79, 159
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  store i32 10, i32* %3, align 4
  br label %83

82:                                               ; preds = %75
  store i32 11, i32* %3, align 4
  br label %83

83:                                               ; preds = %82, %81
  br label %84

84:                                               ; preds = %83, %74
  br label %85

85:                                               ; preds = %84, %67
  br label %86

86:                                               ; preds = %85, %60
  br label %87

87:                                               ; preds = %86, %53
  br label %88

88:                                               ; preds = %87, %46
  br label %89

89:                                               ; preds = %88, %39
  br label %90

90:                                               ; preds = %89, %32
  br label %91

91:                                               ; preds = %90, %25
  br label %92

92:                                               ; preds = %91, %18
  br label %93

93:                                               ; preds = %92, %11
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
