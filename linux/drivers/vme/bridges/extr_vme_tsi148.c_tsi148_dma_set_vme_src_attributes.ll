; ModuleID = '/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_dma_set_vme_src_attributes.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/vme/bridges/extr_vme_tsi148.c_tsi148_dma_set_vme_src_attributes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }

@TSI148_LCSR_DSAT_2eSSTM_160 = common dso_local global i32 0, align 4
@TSI148_LCSR_DSAT_2eSSTM_267 = common dso_local global i32 0, align 4
@TSI148_LCSR_DSAT_2eSSTM_320 = common dso_local global i32 0, align 4
@VME_SCT = common dso_local global i32 0, align 4
@TSI148_LCSR_DSAT_TM_SCT = common dso_local global i32 0, align 4
@VME_BLT = common dso_local global i32 0, align 4
@TSI148_LCSR_DSAT_TM_BLT = common dso_local global i32 0, align 4
@VME_MBLT = common dso_local global i32 0, align 4
@TSI148_LCSR_DSAT_TM_MBLT = common dso_local global i32 0, align 4
@VME_2eVME = common dso_local global i32 0, align 4
@TSI148_LCSR_DSAT_TM_2eVME = common dso_local global i32 0, align 4
@VME_2eSST = common dso_local global i32 0, align 4
@TSI148_LCSR_DSAT_TM_2eSST = common dso_local global i32 0, align 4
@VME_2eSSTB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Currently not setting Broadcast Select Registers\0A\00", align 1
@TSI148_LCSR_DSAT_TM_2eSSTB = common dso_local global i32 0, align 4
@TSI148_LCSR_DSAT_DBW_16 = common dso_local global i32 0, align 4
@TSI148_LCSR_DSAT_DBW_32 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"Invalid data width\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TSI148_LCSR_DSAT_AMODE_A16 = common dso_local global i32 0, align 4
@TSI148_LCSR_DSAT_AMODE_A24 = common dso_local global i32 0, align 4
@TSI148_LCSR_DSAT_AMODE_A32 = common dso_local global i32 0, align 4
@TSI148_LCSR_DSAT_AMODE_A64 = common dso_local global i32 0, align 4
@TSI148_LCSR_DSAT_AMODE_CRCSR = common dso_local global i32 0, align 4
@TSI148_LCSR_DSAT_AMODE_USER1 = common dso_local global i32 0, align 4
@TSI148_LCSR_DSAT_AMODE_USER2 = common dso_local global i32 0, align 4
@TSI148_LCSR_DSAT_AMODE_USER3 = common dso_local global i32 0, align 4
@TSI148_LCSR_DSAT_AMODE_USER4 = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"Invalid address space\0A\00", align 1
@VME_SUPER = common dso_local global i32 0, align 4
@TSI148_LCSR_DSAT_SUP = common dso_local global i32 0, align 4
@VME_PROG = common dso_local global i32 0, align 4
@TSI148_LCSR_DSAT_PGM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, i32*, i32, i32, i32)* @tsi148_dma_set_vme_src_attributes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tsi148_dma_set_vme_src_attributes(%struct.device* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load i32*, i32** %8, align 8
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @be32_to_cpu(i32 %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %10, align 4
  %17 = and i32 %16, 143
  switch i32 %17, label %30 [
    i32 141, label %18
    i32 140, label %22
    i32 139, label %26
  ]

18:                                               ; preds = %5
  %19 = load i32, i32* @TSI148_LCSR_DSAT_2eSSTM_160, align 4
  %20 = load i32, i32* %12, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %12, align 4
  br label %30

22:                                               ; preds = %5
  %23 = load i32, i32* @TSI148_LCSR_DSAT_2eSSTM_267, align 4
  %24 = load i32, i32* %12, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %12, align 4
  br label %30

26:                                               ; preds = %5
  %27 = load i32, i32* @TSI148_LCSR_DSAT_2eSSTM_320, align 4
  %28 = load i32, i32* %12, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %12, align 4
  br label %30

30:                                               ; preds = %5, %26, %22, %18
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @VME_SCT, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %30
  %36 = load i32, i32* @TSI148_LCSR_DSAT_TM_SCT, align 4
  %37 = load i32, i32* %12, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %12, align 4
  br label %39

39:                                               ; preds = %35, %30
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* @VME_BLT, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %39
  %45 = load i32, i32* @TSI148_LCSR_DSAT_TM_BLT, align 4
  %46 = load i32, i32* %12, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %12, align 4
  br label %48

48:                                               ; preds = %44, %39
  %49 = load i32, i32* %10, align 4
  %50 = load i32, i32* @VME_MBLT, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %48
  %54 = load i32, i32* @TSI148_LCSR_DSAT_TM_MBLT, align 4
  %55 = load i32, i32* %12, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %12, align 4
  br label %57

57:                                               ; preds = %53, %48
  %58 = load i32, i32* %10, align 4
  %59 = load i32, i32* @VME_2eVME, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57
  %63 = load i32, i32* @TSI148_LCSR_DSAT_TM_2eVME, align 4
  %64 = load i32, i32* %12, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %12, align 4
  br label %66

66:                                               ; preds = %62, %57
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* @VME_2eSST, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %66
  %72 = load i32, i32* @TSI148_LCSR_DSAT_TM_2eSST, align 4
  %73 = load i32, i32* %12, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %12, align 4
  br label %75

75:                                               ; preds = %71, %66
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @VME_2eSSTB, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %75
  %81 = load %struct.device*, %struct.device** %7, align 8
  %82 = call i32 @dev_err(%struct.device* %81, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %83 = load i32, i32* @TSI148_LCSR_DSAT_TM_2eSSTB, align 4
  %84 = load i32, i32* %12, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %12, align 4
  br label %86

86:                                               ; preds = %80, %75
  %87 = load i32, i32* %11, align 4
  switch i32 %87, label %96 [
    i32 133, label %88
    i32 132, label %92
  ]

88:                                               ; preds = %86
  %89 = load i32, i32* @TSI148_LCSR_DSAT_DBW_16, align 4
  %90 = load i32, i32* %12, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %12, align 4
  br label %101

92:                                               ; preds = %86
  %93 = load i32, i32* @TSI148_LCSR_DSAT_DBW_32, align 4
  %94 = load i32, i32* %12, align 4
  %95 = or i32 %94, %93
  store i32 %95, i32* %12, align 4
  br label %101

96:                                               ; preds = %86
  %97 = load %struct.device*, %struct.device** %7, align 8
  %98 = call i32 @dev_err(%struct.device* %97, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %6, align 4
  br label %166

101:                                              ; preds = %92, %88
  %102 = load i32, i32* %9, align 4
  switch i32 %102, label %139 [
    i32 138, label %103
    i32 137, label %107
    i32 136, label %111
    i32 135, label %115
    i32 134, label %119
    i32 131, label %123
    i32 130, label %127
    i32 129, label %131
    i32 128, label %135
  ]

103:                                              ; preds = %101
  %104 = load i32, i32* @TSI148_LCSR_DSAT_AMODE_A16, align 4
  %105 = load i32, i32* %12, align 4
  %106 = or i32 %105, %104
  store i32 %106, i32* %12, align 4
  br label %144

107:                                              ; preds = %101
  %108 = load i32, i32* @TSI148_LCSR_DSAT_AMODE_A24, align 4
  %109 = load i32, i32* %12, align 4
  %110 = or i32 %109, %108
  store i32 %110, i32* %12, align 4
  br label %144

111:                                              ; preds = %101
  %112 = load i32, i32* @TSI148_LCSR_DSAT_AMODE_A32, align 4
  %113 = load i32, i32* %12, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %12, align 4
  br label %144

115:                                              ; preds = %101
  %116 = load i32, i32* @TSI148_LCSR_DSAT_AMODE_A64, align 4
  %117 = load i32, i32* %12, align 4
  %118 = or i32 %117, %116
  store i32 %118, i32* %12, align 4
  br label %144

119:                                              ; preds = %101
  %120 = load i32, i32* @TSI148_LCSR_DSAT_AMODE_CRCSR, align 4
  %121 = load i32, i32* %12, align 4
  %122 = or i32 %121, %120
  store i32 %122, i32* %12, align 4
  br label %144

123:                                              ; preds = %101
  %124 = load i32, i32* @TSI148_LCSR_DSAT_AMODE_USER1, align 4
  %125 = load i32, i32* %12, align 4
  %126 = or i32 %125, %124
  store i32 %126, i32* %12, align 4
  br label %144

127:                                              ; preds = %101
  %128 = load i32, i32* @TSI148_LCSR_DSAT_AMODE_USER2, align 4
  %129 = load i32, i32* %12, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %12, align 4
  br label %144

131:                                              ; preds = %101
  %132 = load i32, i32* @TSI148_LCSR_DSAT_AMODE_USER3, align 4
  %133 = load i32, i32* %12, align 4
  %134 = or i32 %133, %132
  store i32 %134, i32* %12, align 4
  br label %144

135:                                              ; preds = %101
  %136 = load i32, i32* @TSI148_LCSR_DSAT_AMODE_USER4, align 4
  %137 = load i32, i32* %12, align 4
  %138 = or i32 %137, %136
  store i32 %138, i32* %12, align 4
  br label %144

139:                                              ; preds = %101
  %140 = load %struct.device*, %struct.device** %7, align 8
  %141 = call i32 @dev_err(%struct.device* %140, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %6, align 4
  br label %166

144:                                              ; preds = %135, %131, %127, %123, %119, %115, %111, %107, %103
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* @VME_SUPER, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %153

149:                                              ; preds = %144
  %150 = load i32, i32* @TSI148_LCSR_DSAT_SUP, align 4
  %151 = load i32, i32* %12, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %12, align 4
  br label %153

153:                                              ; preds = %149, %144
  %154 = load i32, i32* %10, align 4
  %155 = load i32, i32* @VME_PROG, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %153
  %159 = load i32, i32* @TSI148_LCSR_DSAT_PGM, align 4
  %160 = load i32, i32* %12, align 4
  %161 = or i32 %160, %159
  store i32 %161, i32* %12, align 4
  br label %162

162:                                              ; preds = %158, %153
  %163 = load i32, i32* %12, align 4
  %164 = call i32 @cpu_to_be32(i32 %163)
  %165 = load i32*, i32** %8, align 8
  store i32 %164, i32* %165, align 4
  store i32 0, i32* %6, align 4
  br label %166

166:                                              ; preds = %162, %139, %96
  %167 = load i32, i32* %6, align 4
  ret i32 %167
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
