; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_sdio.c__gb_sdio_get_host_ocr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_sdio.c__gb_sdio_get_host_ocr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GB_SDIO_VDD_165_195 = common dso_local global i32 0, align 4
@MMC_VDD_165_195 = common dso_local global i32 0, align 4
@GB_SDIO_VDD_20_21 = common dso_local global i32 0, align 4
@MMC_VDD_20_21 = common dso_local global i32 0, align 4
@GB_SDIO_VDD_21_22 = common dso_local global i32 0, align 4
@MMC_VDD_21_22 = common dso_local global i32 0, align 4
@GB_SDIO_VDD_22_23 = common dso_local global i32 0, align 4
@MMC_VDD_22_23 = common dso_local global i32 0, align 4
@GB_SDIO_VDD_23_24 = common dso_local global i32 0, align 4
@MMC_VDD_23_24 = common dso_local global i32 0, align 4
@GB_SDIO_VDD_24_25 = common dso_local global i32 0, align 4
@MMC_VDD_24_25 = common dso_local global i32 0, align 4
@GB_SDIO_VDD_25_26 = common dso_local global i32 0, align 4
@MMC_VDD_25_26 = common dso_local global i32 0, align 4
@GB_SDIO_VDD_26_27 = common dso_local global i32 0, align 4
@MMC_VDD_26_27 = common dso_local global i32 0, align 4
@GB_SDIO_VDD_27_28 = common dso_local global i32 0, align 4
@MMC_VDD_27_28 = common dso_local global i32 0, align 4
@GB_SDIO_VDD_28_29 = common dso_local global i32 0, align 4
@MMC_VDD_28_29 = common dso_local global i32 0, align 4
@GB_SDIO_VDD_29_30 = common dso_local global i32 0, align 4
@MMC_VDD_29_30 = common dso_local global i32 0, align 4
@GB_SDIO_VDD_30_31 = common dso_local global i32 0, align 4
@MMC_VDD_30_31 = common dso_local global i32 0, align 4
@GB_SDIO_VDD_31_32 = common dso_local global i32 0, align 4
@MMC_VDD_31_32 = common dso_local global i32 0, align 4
@GB_SDIO_VDD_32_33 = common dso_local global i32 0, align 4
@MMC_VDD_32_33 = common dso_local global i32 0, align 4
@GB_SDIO_VDD_33_34 = common dso_local global i32 0, align 4
@MMC_VDD_33_34 = common dso_local global i32 0, align 4
@GB_SDIO_VDD_34_35 = common dso_local global i32 0, align 4
@MMC_VDD_34_35 = common dso_local global i32 0, align 4
@GB_SDIO_VDD_35_36 = common dso_local global i32 0, align 4
@MMC_VDD_35_36 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @_gb_sdio_get_host_ocr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_gb_sdio_get_host_ocr(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @GB_SDIO_VDD_165_195, align 4
  %5 = and i32 %3, %4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = load i32, i32* @MMC_VDD_165_195, align 4
  br label %10

9:                                                ; preds = %1
  br label %10

10:                                               ; preds = %9, %7
  %11 = phi i32 [ %8, %7 ], [ 0, %9 ]
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* @GB_SDIO_VDD_20_21, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load i32, i32* @MMC_VDD_20_21, align 4
  br label %19

18:                                               ; preds = %10
  br label %19

19:                                               ; preds = %18, %16
  %20 = phi i32 [ %17, %16 ], [ 0, %18 ]
  %21 = or i32 %11, %20
  %22 = load i32, i32* %2, align 4
  %23 = load i32, i32* @GB_SDIO_VDD_21_22, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %19
  %27 = load i32, i32* @MMC_VDD_21_22, align 4
  br label %29

28:                                               ; preds = %19
  br label %29

29:                                               ; preds = %28, %26
  %30 = phi i32 [ %27, %26 ], [ 0, %28 ]
  %31 = or i32 %21, %30
  %32 = load i32, i32* %2, align 4
  %33 = load i32, i32* @GB_SDIO_VDD_22_23, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %29
  %37 = load i32, i32* @MMC_VDD_22_23, align 4
  br label %39

38:                                               ; preds = %29
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ]
  %41 = or i32 %31, %40
  %42 = load i32, i32* %2, align 4
  %43 = load i32, i32* @GB_SDIO_VDD_23_24, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i32, i32* @MMC_VDD_23_24, align 4
  br label %49

48:                                               ; preds = %39
  br label %49

49:                                               ; preds = %48, %46
  %50 = phi i32 [ %47, %46 ], [ 0, %48 ]
  %51 = or i32 %41, %50
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* @GB_SDIO_VDD_24_25, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %49
  %57 = load i32, i32* @MMC_VDD_24_25, align 4
  br label %59

58:                                               ; preds = %49
  br label %59

59:                                               ; preds = %58, %56
  %60 = phi i32 [ %57, %56 ], [ 0, %58 ]
  %61 = or i32 %51, %60
  %62 = load i32, i32* %2, align 4
  %63 = load i32, i32* @GB_SDIO_VDD_25_26, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* @MMC_VDD_25_26, align 4
  br label %69

68:                                               ; preds = %59
  br label %69

69:                                               ; preds = %68, %66
  %70 = phi i32 [ %67, %66 ], [ 0, %68 ]
  %71 = or i32 %61, %70
  %72 = load i32, i32* %2, align 4
  %73 = load i32, i32* @GB_SDIO_VDD_26_27, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %69
  %77 = load i32, i32* @MMC_VDD_26_27, align 4
  br label %79

78:                                               ; preds = %69
  br label %79

79:                                               ; preds = %78, %76
  %80 = phi i32 [ %77, %76 ], [ 0, %78 ]
  %81 = or i32 %71, %80
  %82 = load i32, i32* %2, align 4
  %83 = load i32, i32* @GB_SDIO_VDD_27_28, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = load i32, i32* @MMC_VDD_27_28, align 4
  br label %89

88:                                               ; preds = %79
  br label %89

89:                                               ; preds = %88, %86
  %90 = phi i32 [ %87, %86 ], [ 0, %88 ]
  %91 = or i32 %81, %90
  %92 = load i32, i32* %2, align 4
  %93 = load i32, i32* @GB_SDIO_VDD_28_29, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %89
  %97 = load i32, i32* @MMC_VDD_28_29, align 4
  br label %99

98:                                               ; preds = %89
  br label %99

99:                                               ; preds = %98, %96
  %100 = phi i32 [ %97, %96 ], [ 0, %98 ]
  %101 = or i32 %91, %100
  %102 = load i32, i32* %2, align 4
  %103 = load i32, i32* @GB_SDIO_VDD_29_30, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = load i32, i32* @MMC_VDD_29_30, align 4
  br label %109

108:                                              ; preds = %99
  br label %109

109:                                              ; preds = %108, %106
  %110 = phi i32 [ %107, %106 ], [ 0, %108 ]
  %111 = or i32 %101, %110
  %112 = load i32, i32* %2, align 4
  %113 = load i32, i32* @GB_SDIO_VDD_30_31, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %109
  %117 = load i32, i32* @MMC_VDD_30_31, align 4
  br label %119

118:                                              ; preds = %109
  br label %119

119:                                              ; preds = %118, %116
  %120 = phi i32 [ %117, %116 ], [ 0, %118 ]
  %121 = or i32 %111, %120
  %122 = load i32, i32* %2, align 4
  %123 = load i32, i32* @GB_SDIO_VDD_31_32, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %128

126:                                              ; preds = %119
  %127 = load i32, i32* @MMC_VDD_31_32, align 4
  br label %129

128:                                              ; preds = %119
  br label %129

129:                                              ; preds = %128, %126
  %130 = phi i32 [ %127, %126 ], [ 0, %128 ]
  %131 = or i32 %121, %130
  %132 = load i32, i32* %2, align 4
  %133 = load i32, i32* @GB_SDIO_VDD_32_33, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %138

136:                                              ; preds = %129
  %137 = load i32, i32* @MMC_VDD_32_33, align 4
  br label %139

138:                                              ; preds = %129
  br label %139

139:                                              ; preds = %138, %136
  %140 = phi i32 [ %137, %136 ], [ 0, %138 ]
  %141 = or i32 %131, %140
  %142 = load i32, i32* %2, align 4
  %143 = load i32, i32* @GB_SDIO_VDD_33_34, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %148

146:                                              ; preds = %139
  %147 = load i32, i32* @MMC_VDD_33_34, align 4
  br label %149

148:                                              ; preds = %139
  br label %149

149:                                              ; preds = %148, %146
  %150 = phi i32 [ %147, %146 ], [ 0, %148 ]
  %151 = or i32 %141, %150
  %152 = load i32, i32* %2, align 4
  %153 = load i32, i32* @GB_SDIO_VDD_34_35, align 4
  %154 = and i32 %152, %153
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %149
  %157 = load i32, i32* @MMC_VDD_34_35, align 4
  br label %159

158:                                              ; preds = %149
  br label %159

159:                                              ; preds = %158, %156
  %160 = phi i32 [ %157, %156 ], [ 0, %158 ]
  %161 = or i32 %151, %160
  %162 = load i32, i32* %2, align 4
  %163 = load i32, i32* @GB_SDIO_VDD_35_36, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %168

166:                                              ; preds = %159
  %167 = load i32, i32* @MMC_VDD_35_36, align 4
  br label %169

168:                                              ; preds = %159
  br label %169

169:                                              ; preds = %168, %166
  %170 = phi i32 [ %167, %166 ], [ 0, %168 ]
  %171 = or i32 %161, %170
  ret i32 %171
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
