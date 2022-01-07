; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_at_a2150.c_a2150_get_timing.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_at_a2150.c_a2150_get_timing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { %struct.a2150_private*, %struct.a2150_board* }
%struct.a2150_private = type { i32 }
%struct.a2150_board = type { i32*, i32 }

@CMDF_ROUND_MASK = common dso_local global i32 0, align 4
@CLOCK_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.comedi_device*, i32*, i32)* @a2150_get_timing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @a2150_get_timing(%struct.comedi_device* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.comedi_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.a2150_board*, align 8
  %8 = alloca %struct.a2150_private*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %18 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %19 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %18, i32 0, i32 1
  %20 = load %struct.a2150_board*, %struct.a2150_board** %19, align 8
  store %struct.a2150_board* %20, %struct.a2150_board** %7, align 8
  %21 = load %struct.comedi_device*, %struct.comedi_device** %4, align 8
  %22 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %21, i32 0, i32 0
  %23 = load %struct.a2150_private*, %struct.a2150_private** %22, align 8
  store %struct.a2150_private* %23, %struct.a2150_private** %8, align 8
  store i32 3, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %24 = load %struct.a2150_board*, %struct.a2150_board** %7, align 8
  %25 = getelementptr inbounds %struct.a2150_board, %struct.a2150_board* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i32, i32* %13, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %12, align 4
  %32 = shl i32 1, %31
  %33 = mul nsw i32 %30, %32
  store i32 %33, i32* %9, align 4
  store i32 0, i32* %14, align 4
  %34 = load %struct.a2150_board*, %struct.a2150_board** %7, align 8
  %35 = getelementptr inbounds %struct.a2150_board, %struct.a2150_board* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = sub nsw i32 %36, 1
  store i32 %37, i32* %15, align 4
  %38 = load %struct.a2150_board*, %struct.a2150_board** %7, align 8
  %39 = getelementptr inbounds %struct.a2150_board, %struct.a2150_board* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %15, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %14, align 4
  %46 = shl i32 1, %45
  %47 = mul nsw i32 %44, %46
  store i32 %47, i32* %10, align 4
  %48 = load i32*, i32** %5, align 8
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp ult i32 %49, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %3
  %53 = load i32, i32* %10, align 4
  %54 = load i32*, i32** %5, align 8
  store i32 %53, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %3
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp ugt i32 %57, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %55
  %61 = load i32, i32* %9, align 4
  %62 = load i32*, i32** %5, align 8
  store i32 %61, i32* %62, align 4
  br label %63

63:                                               ; preds = %60, %55
  store i32 0, i32* %16, align 4
  br label %64

64:                                               ; preds = %115, %63
  %65 = load i32, i32* %16, align 4
  %66 = icmp slt i32 %65, 4
  br i1 %66, label %67, label %118

67:                                               ; preds = %64
  store i32 0, i32* %17, align 4
  br label %68

68:                                               ; preds = %111, %67
  %69 = load i32, i32* %17, align 4
  %70 = load %struct.a2150_board*, %struct.a2150_board** %7, align 8
  %71 = getelementptr inbounds %struct.a2150_board, %struct.a2150_board* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 8
  %73 = icmp slt i32 %69, %72
  br i1 %73, label %74, label %114

74:                                               ; preds = %68
  %75 = load %struct.a2150_board*, %struct.a2150_board** %7, align 8
  %76 = getelementptr inbounds %struct.a2150_board, %struct.a2150_board* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %17, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %16, align 4
  %83 = shl i32 1, %82
  %84 = mul nsw i32 %81, %83
  store i32 %84, i32* %11, align 4
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %97

88:                                               ; preds = %74
  %89 = load i32, i32* %11, align 4
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* %90, align 4
  %92 = icmp uge i32 %89, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %88
  %94 = load i32, i32* %16, align 4
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %17, align 4
  store i32 %95, i32* %13, align 4
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %9, align 4
  br label %97

97:                                               ; preds = %93, %88, %74
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %10, align 4
  %100 = icmp sgt i32 %98, %99
  br i1 %100, label %101, label %110

101:                                              ; preds = %97
  %102 = load i32, i32* %11, align 4
  %103 = load i32*, i32** %5, align 8
  %104 = load i32, i32* %103, align 4
  %105 = icmp ule i32 %102, %104
  br i1 %105, label %106, label %110

106:                                              ; preds = %101
  %107 = load i32, i32* %16, align 4
  store i32 %107, i32* %14, align 4
  %108 = load i32, i32* %17, align 4
  store i32 %108, i32* %15, align 4
  %109 = load i32, i32* %11, align 4
  store i32 %109, i32* %10, align 4
  br label %110

110:                                              ; preds = %106, %101, %97
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %17, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %17, align 4
  br label %68

114:                                              ; preds = %68
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %16, align 4
  %117 = add nsw i32 %116, 1
  store i32 %117, i32* %16, align 4
  br label %64

118:                                              ; preds = %64
  %119 = load i32, i32* %6, align 4
  %120 = load i32, i32* @CMDF_ROUND_MASK, align 4
  %121 = and i32 %119, %120
  switch i32 %121, label %123 [
    i32 129, label %122
    i32 128, label %140
    i32 130, label %143
  ]

122:                                              ; preds = %118
  br label %123

123:                                              ; preds = %118, %122
  %124 = load i32, i32* %9, align 4
  %125 = load i32*, i32** %5, align 8
  %126 = load i32, i32* %125, align 4
  %127 = sub i32 %124, %126
  %128 = load i32*, i32** %5, align 8
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %10, align 4
  %131 = sub i32 %129, %130
  %132 = icmp ult i32 %127, %131
  br i1 %132, label %133, label %136

133:                                              ; preds = %123
  %134 = load i32, i32* %9, align 4
  %135 = load i32*, i32** %5, align 8
  store i32 %134, i32* %135, align 4
  br label %139

136:                                              ; preds = %123
  %137 = load i32, i32* %10, align 4
  %138 = load i32*, i32** %5, align 8
  store i32 %137, i32* %138, align 4
  br label %139

139:                                              ; preds = %136, %133
  br label %146

140:                                              ; preds = %118
  %141 = load i32, i32* %9, align 4
  %142 = load i32*, i32** %5, align 8
  store i32 %141, i32* %142, align 4
  br label %146

143:                                              ; preds = %118
  %144 = load i32, i32* %10, align 4
  %145 = load i32*, i32** %5, align 8
  store i32 %144, i32* %145, align 4
  br label %146

146:                                              ; preds = %143, %140, %139
  %147 = load i32, i32* @CLOCK_MASK, align 4
  %148 = xor i32 %147, -1
  %149 = load %struct.a2150_private*, %struct.a2150_private** %8, align 8
  %150 = getelementptr inbounds %struct.a2150_private, %struct.a2150_private* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = and i32 %151, %148
  store i32 %152, i32* %150, align 4
  %153 = load i32*, i32** %5, align 8
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %9, align 4
  %156 = icmp eq i32 %154, %155
  br i1 %156, label %157, label %167

157:                                              ; preds = %146
  %158 = load i32, i32* %13, align 4
  %159 = call i32 @CLOCK_SELECT_BITS(i32 %158)
  %160 = load i32, i32* %12, align 4
  %161 = call i32 @CLOCK_DIVISOR_BITS(i32 %160)
  %162 = or i32 %159, %161
  %163 = load %struct.a2150_private*, %struct.a2150_private** %8, align 8
  %164 = getelementptr inbounds %struct.a2150_private, %struct.a2150_private* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = or i32 %165, %162
  store i32 %166, i32* %164, align 4
  br label %177

167:                                              ; preds = %146
  %168 = load i32, i32* %15, align 4
  %169 = call i32 @CLOCK_SELECT_BITS(i32 %168)
  %170 = load i32, i32* %14, align 4
  %171 = call i32 @CLOCK_DIVISOR_BITS(i32 %170)
  %172 = or i32 %169, %171
  %173 = load %struct.a2150_private*, %struct.a2150_private** %8, align 8
  %174 = getelementptr inbounds %struct.a2150_private, %struct.a2150_private* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 4
  %176 = or i32 %175, %172
  store i32 %176, i32* %174, align 4
  br label %177

177:                                              ; preds = %167, %157
  ret i32 0
}

declare dso_local i32 @CLOCK_SELECT_BITS(i32) #1

declare dso_local i32 @CLOCK_DIVISOR_BITS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
