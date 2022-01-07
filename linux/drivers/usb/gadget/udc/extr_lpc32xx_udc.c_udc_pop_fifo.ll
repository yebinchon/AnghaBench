; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_udc_pop_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_udc_pop_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc32xx_udc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpc32xx_udc*, i32*, i32)* @udc_pop_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_pop_fifo(%struct.lpc32xx_udc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.lpc32xx_udc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8**, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.lpc32xx_udc* %0, %struct.lpc32xx_udc** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = ptrtoint i32* %14 to i64
  %16 = and i64 %15, 3
  switch i64 %16, label %180 [
    i64 0, label %17
    i64 1, label %71
    i64 3, label %71
    i64 2, label %114
  ]

17:                                               ; preds = %3
  %18 = load i32*, i32** %5, align 8
  store i32* %18, i32** %11, align 8
  %19 = load i32, i32* %6, align 4
  %20 = and i32 %19, -4
  store i32 %20, i32* %13, align 4
  store i32 0, i32* %7, align 4
  br label %21

21:                                               ; preds = %34, %17
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %13, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %37

25:                                               ; preds = %21
  %26 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %4, align 8
  %27 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @USBD_RXDATA(i32 %28)
  %30 = call i8* @readl(i32 %29)
  %31 = ptrtoint i8* %30 to i32
  %32 = load i32*, i32** %11, align 8
  %33 = getelementptr inbounds i32, i32* %32, i32 1
  store i32* %33, i32** %11, align 8
  store i32 %31, i32* %32, align 4
  br label %34

34:                                               ; preds = %25
  %35 = load i32, i32* %7, align 4
  %36 = add nsw i32 %35, 4
  store i32 %36, i32* %7, align 4
  br label %21

37:                                               ; preds = %21
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %13, align 4
  %40 = sub nsw i32 %38, %39
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %70

43:                                               ; preds = %37
  %44 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %4, align 8
  %45 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @USBD_RXDATA(i32 %46)
  %48 = call i8* @readl(i32 %47)
  %49 = ptrtoint i8* %48 to i32
  store i32 %49, i32* %12, align 4
  store i32 0, i32* %7, align 4
  br label %50

50:                                               ; preds = %66, %43
  %51 = load i32, i32* %7, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp slt i32 %51, %52
  br i1 %53, label %54, label %69

54:                                               ; preds = %50
  %55 = load i32, i32* %12, align 4
  %56 = load i32, i32* %7, align 4
  %57 = mul nsw i32 %56, 8
  %58 = ashr i32 %55, %57
  %59 = and i32 %58, 255
  %60 = load i32*, i32** %5, align 8
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %61, %62
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %60, i64 %64
  store i32 %59, i32* %65, align 4
  br label %66

66:                                               ; preds = %54
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %50

69:                                               ; preds = %50
  br label %70

70:                                               ; preds = %69, %37
  br label %180

71:                                               ; preds = %3, %3
  store i32 0, i32* %7, align 4
  br label %72

72:                                               ; preds = %110, %71
  %73 = load i32, i32* %7, align 4
  %74 = load i32, i32* %6, align 4
  %75 = icmp slt i32 %73, %74
  br i1 %75, label %76, label %113

76:                                               ; preds = %72
  %77 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %4, align 8
  %78 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @USBD_RXDATA(i32 %79)
  %81 = call i8* @readl(i32 %80)
  %82 = ptrtoint i8* %81 to i32
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* %7, align 4
  %85 = sub nsw i32 %83, %84
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %9, align 4
  %87 = icmp sgt i32 %86, 4
  br i1 %87, label %88, label %89

88:                                               ; preds = %76
  store i32 4, i32* %9, align 4
  br label %89

89:                                               ; preds = %88, %76
  store i32 0, i32* %8, align 4
  br label %90

90:                                               ; preds = %106, %89
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp slt i32 %91, %92
  br i1 %93, label %94, label %109

94:                                               ; preds = %90
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %8, align 4
  %97 = mul nsw i32 %96, 8
  %98 = ashr i32 %95, %97
  %99 = and i32 %98, 255
  %100 = load i32*, i32** %5, align 8
  %101 = load i32, i32* %7, align 4
  %102 = load i32, i32* %8, align 4
  %103 = add nsw i32 %101, %102
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %100, i64 %104
  store i32 %99, i32* %105, align 4
  br label %106

106:                                              ; preds = %94
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %8, align 4
  br label %90

109:                                              ; preds = %90
  br label %110

110:                                              ; preds = %109
  %111 = load i32, i32* %7, align 4
  %112 = add nsw i32 %111, 4
  store i32 %112, i32* %7, align 4
  br label %72

113:                                              ; preds = %72
  br label %180

114:                                              ; preds = %3
  %115 = load i32*, i32** %5, align 8
  %116 = bitcast i32* %115 to i8**
  store i8** %116, i8*** %10, align 8
  %117 = load i32, i32* %6, align 4
  %118 = and i32 %117, -4
  store i32 %118, i32* %13, align 4
  store i32 0, i32* %7, align 4
  br label %119

119:                                              ; preds = %143, %114
  %120 = load i32, i32* %7, align 4
  %121 = load i32, i32* %13, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %146

123:                                              ; preds = %119
  %124 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %4, align 8
  %125 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @USBD_RXDATA(i32 %126)
  %128 = call i8* @readl(i32 %127)
  %129 = ptrtoint i8* %128 to i32
  store i32 %129, i32* %12, align 4
  %130 = load i32, i32* %12, align 4
  %131 = and i32 %130, 65535
  %132 = sext i32 %131 to i64
  %133 = inttoptr i64 %132 to i8*
  %134 = load i8**, i8*** %10, align 8
  %135 = getelementptr inbounds i8*, i8** %134, i32 1
  store i8** %135, i8*** %10, align 8
  store i8* %133, i8** %134, align 8
  %136 = load i32, i32* %12, align 4
  %137 = ashr i32 %136, 16
  %138 = and i32 %137, 65535
  %139 = sext i32 %138 to i64
  %140 = inttoptr i64 %139 to i8*
  %141 = load i8**, i8*** %10, align 8
  %142 = getelementptr inbounds i8*, i8** %141, i32 1
  store i8** %142, i8*** %10, align 8
  store i8* %140, i8** %141, align 8
  br label %143

143:                                              ; preds = %123
  %144 = load i32, i32* %7, align 4
  %145 = add nsw i32 %144, 4
  store i32 %145, i32* %7, align 4
  br label %119

146:                                              ; preds = %119
  %147 = load i32, i32* %6, align 4
  %148 = load i32, i32* %13, align 4
  %149 = sub nsw i32 %147, %148
  store i32 %149, i32* %9, align 4
  %150 = load i32, i32* %9, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %179

152:                                              ; preds = %146
  %153 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %4, align 8
  %154 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @USBD_RXDATA(i32 %155)
  %157 = call i8* @readl(i32 %156)
  %158 = ptrtoint i8* %157 to i32
  store i32 %158, i32* %12, align 4
  store i32 0, i32* %7, align 4
  br label %159

159:                                              ; preds = %175, %152
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* %9, align 4
  %162 = icmp slt i32 %160, %161
  br i1 %162, label %163, label %178

163:                                              ; preds = %159
  %164 = load i32, i32* %12, align 4
  %165 = load i32, i32* %7, align 4
  %166 = mul nsw i32 %165, 8
  %167 = ashr i32 %164, %166
  %168 = and i32 %167, 255
  %169 = load i32*, i32** %5, align 8
  %170 = load i32, i32* %13, align 4
  %171 = load i32, i32* %7, align 4
  %172 = add nsw i32 %170, %171
  %173 = sext i32 %172 to i64
  %174 = getelementptr inbounds i32, i32* %169, i64 %173
  store i32 %168, i32* %174, align 4
  br label %175

175:                                              ; preds = %163
  %176 = load i32, i32* %7, align 4
  %177 = add nsw i32 %176, 1
  store i32 %177, i32* %7, align 4
  br label %159

178:                                              ; preds = %159
  br label %179

179:                                              ; preds = %178, %146
  br label %180

180:                                              ; preds = %3, %179, %113, %70
  ret void
}

declare dso_local i8* @readl(i32) #1

declare dso_local i32 @USBD_RXDATA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
