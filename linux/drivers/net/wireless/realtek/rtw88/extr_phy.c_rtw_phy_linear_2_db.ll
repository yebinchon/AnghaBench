; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_linear_2_db.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_phy.c_rtw_phy_linear_2_db.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@db_invert_table = common dso_local global i64** null, align 8
@FRAC_BITS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @rtw_phy_linear_2_db to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_phy_linear_2_db(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = load i64**, i64*** @db_invert_table, align 8
  %9 = getelementptr inbounds i64*, i64** %8, i64 11
  %10 = load i64*, i64** %9, align 8
  %11 = getelementptr inbounds i64, i64* %10, i64 7
  %12 = load i64, i64* %11, align 8
  %13 = icmp sge i64 %7, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 96, i32* %2, align 4
  br label %191

15:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %51, %15
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 12
  br i1 %18, label %19, label %54

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = icmp sle i32 %20, 2
  br i1 %21, label %22, label %35

22:                                               ; preds = %19
  %23 = load i64, i64* %3, align 8
  %24 = load i64, i64* @FRAC_BITS, align 8
  %25 = shl i64 %23, %24
  %26 = load i64**, i64*** @db_invert_table, align 8
  %27 = load i32, i32* %4, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i64*, i64** %26, i64 %28
  %30 = load i64*, i64** %29, align 8
  %31 = getelementptr inbounds i64, i64* %30, i64 7
  %32 = load i64, i64* %31, align 8
  %33 = icmp sle i64 %25, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %54

35:                                               ; preds = %22, %19
  %36 = load i32, i32* %4, align 4
  %37 = icmp sgt i32 %36, 2
  br i1 %37, label %38, label %49

38:                                               ; preds = %35
  %39 = load i64, i64* %3, align 8
  %40 = load i64**, i64*** @db_invert_table, align 8
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64*, i64** %40, i64 %42
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 7
  %46 = load i64, i64* %45, align 8
  %47 = icmp sle i64 %39, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %54

49:                                               ; preds = %38, %35
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %16

54:                                               ; preds = %48, %34, %16
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %94, %54
  %56 = load i32, i32* %5, align 4
  %57 = icmp slt i32 %56, 8
  br i1 %57, label %58, label %97

58:                                               ; preds = %55
  %59 = load i32, i32* %4, align 4
  %60 = icmp sle i32 %59, 2
  br i1 %60, label %61, label %76

61:                                               ; preds = %58
  %62 = load i64, i64* %3, align 8
  %63 = load i64, i64* @FRAC_BITS, align 8
  %64 = shl i64 %62, %63
  %65 = load i64**, i64*** @db_invert_table, align 8
  %66 = load i32, i32* %4, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64*, i64** %65, i64 %67
  %69 = load i64*, i64** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i64, i64* %69, i64 %71
  %73 = load i64, i64* %72, align 8
  %74 = icmp sle i64 %64, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %61
  br label %97

76:                                               ; preds = %61, %58
  %77 = load i32, i32* %4, align 4
  %78 = icmp sgt i32 %77, 2
  br i1 %78, label %79, label %92

79:                                               ; preds = %76
  %80 = load i64, i64* %3, align 8
  %81 = load i64**, i64*** @db_invert_table, align 8
  %82 = load i32, i32* %4, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i64*, i64** %81, i64 %83
  %85 = load i64*, i64** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %85, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = icmp sle i64 %80, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %79
  br label %97

92:                                               ; preds = %79, %76
  br label %93

93:                                               ; preds = %92
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %5, align 4
  br label %55

97:                                               ; preds = %91, %75, %55
  %98 = load i32, i32* %5, align 4
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %97
  %101 = load i32, i32* %4, align 4
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  br label %184

104:                                              ; preds = %100, %97
  %105 = load i32, i32* %5, align 4
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %154

107:                                              ; preds = %104
  %108 = load i32, i32* %4, align 4
  %109 = icmp ne i32 %108, 3
  br i1 %109, label %110, label %135

110:                                              ; preds = %107
  %111 = load i64**, i64*** @db_invert_table, align 8
  %112 = load i32, i32* %4, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i64*, i64** %111, i64 %113
  %115 = load i64*, i64** %114, align 8
  %116 = getelementptr inbounds i64, i64* %115, i64 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* %3, align 8
  %119 = sub nsw i64 %117, %118
  %120 = load i64, i64* %3, align 8
  %121 = load i64**, i64*** @db_invert_table, align 8
  %122 = load i32, i32* %4, align 4
  %123 = sub nsw i32 %122, 1
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i64*, i64** %121, i64 %124
  %126 = load i64*, i64** %125, align 8
  %127 = getelementptr inbounds i64, i64* %126, i64 7
  %128 = load i64, i64* %127, align 8
  %129 = sub nsw i64 %120, %128
  %130 = icmp sgt i64 %119, %129
  br i1 %130, label %131, label %134

131:                                              ; preds = %110
  %132 = load i32, i32* %4, align 4
  %133 = sub nsw i32 %132, 1
  store i32 %133, i32* %4, align 4
  store i32 7, i32* %5, align 4
  br label %134

134:                                              ; preds = %131, %110
  br label %153

135:                                              ; preds = %107
  %136 = load i64**, i64*** @db_invert_table, align 8
  %137 = getelementptr inbounds i64*, i64** %136, i64 3
  %138 = load i64*, i64** %137, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* %3, align 8
  %142 = sub nsw i64 %140, %141
  %143 = load i64, i64* %3, align 8
  %144 = load i64**, i64*** @db_invert_table, align 8
  %145 = getelementptr inbounds i64*, i64** %144, i64 2
  %146 = load i64*, i64** %145, align 8
  %147 = getelementptr inbounds i64, i64* %146, i64 7
  %148 = load i64, i64* %147, align 8
  %149 = sub nsw i64 %143, %148
  %150 = icmp sgt i64 %142, %149
  br i1 %150, label %151, label %152

151:                                              ; preds = %135
  store i32 2, i32* %4, align 4
  store i32 7, i32* %5, align 4
  br label %152

152:                                              ; preds = %151, %135
  br label %153

153:                                              ; preds = %152, %134
  br label %183

154:                                              ; preds = %104
  %155 = load i64**, i64*** @db_invert_table, align 8
  %156 = load i32, i32* %4, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i64*, i64** %155, i64 %157
  %159 = load i64*, i64** %158, align 8
  %160 = load i32, i32* %5, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i64, i64* %159, i64 %161
  %163 = load i64, i64* %162, align 8
  %164 = load i64, i64* %3, align 8
  %165 = sub nsw i64 %163, %164
  %166 = load i64, i64* %3, align 8
  %167 = load i64**, i64*** @db_invert_table, align 8
  %168 = load i32, i32* %4, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds i64*, i64** %167, i64 %169
  %171 = load i64*, i64** %170, align 8
  %172 = load i32, i32* %5, align 4
  %173 = sub nsw i32 %172, 1
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i64, i64* %171, i64 %174
  %176 = load i64, i64* %175, align 8
  %177 = sub nsw i64 %166, %176
  %178 = icmp sgt i64 %165, %177
  br i1 %178, label %179, label %182

179:                                              ; preds = %154
  %180 = load i32, i32* %5, align 4
  %181 = sub nsw i32 %180, 1
  store i32 %181, i32* %5, align 4
  br label %182

182:                                              ; preds = %179, %154
  br label %183

183:                                              ; preds = %182, %153
  br label %184

184:                                              ; preds = %183, %103
  %185 = load i32, i32* %4, align 4
  %186 = shl i32 %185, 3
  %187 = load i32, i32* %5, align 4
  %188 = add nsw i32 %186, %187
  %189 = add nsw i32 %188, 1
  store i32 %189, i32* %6, align 4
  %190 = load i32, i32* %6, align 4
  store i32 %190, i32* %2, align 4
  br label %191

191:                                              ; preds = %184, %14
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
