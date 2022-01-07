; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_udc_stuff_fifo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/udc/extr_lpc32xx_udc.c_udc_stuff_fifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpc32xx_udc = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lpc32xx_udc*, i32*, i32)* @udc_stuff_fifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udc_stuff_fifo(%struct.lpc32xx_udc* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.lpc32xx_udc*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
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
    i64 1, label %72
    i64 3, label %72
    i64 2, label %116
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
  %26 = load i32*, i32** %11, align 8
  %27 = getelementptr inbounds i32, i32* %26, i32 1
  store i32* %27, i32** %11, align 8
  %28 = load i32, i32* %26, align 4
  %29 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %4, align 8
  %30 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @USBD_TXDATA(i32 %31)
  %33 = call i32 @writel(i32 %28, i32 %32)
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
  br i1 %42, label %43, label %71

43:                                               ; preds = %37
  store i32 0, i32* %12, align 4
  store i32 0, i32* %7, align 4
  br label %44

44:                                               ; preds = %61, %43
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp slt i32 %45, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %44
  %49 = load i32*, i32** %5, align 8
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %49, i64 %53
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %7, align 4
  %57 = mul nsw i32 %56, 8
  %58 = shl i32 %55, %57
  %59 = load i32, i32* %12, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %48
  %62 = load i32, i32* %7, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %7, align 4
  br label %44

64:                                               ; preds = %44
  %65 = load i32, i32* %12, align 4
  %66 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %4, align 8
  %67 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @USBD_TXDATA(i32 %68)
  %70 = call i32 @writel(i32 %65, i32 %69)
  br label %71

71:                                               ; preds = %64, %37
  br label %180

72:                                               ; preds = %3, %3
  store i32 0, i32* %7, align 4
  br label %73

73:                                               ; preds = %112, %72
  %74 = load i32, i32* %7, align 4
  %75 = load i32, i32* %6, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %115

77:                                               ; preds = %73
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* %7, align 4
  %80 = sub nsw i32 %78, %79
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp sgt i32 %81, 4
  br i1 %82, label %83, label %84

83:                                               ; preds = %77
  store i32 4, i32* %9, align 4
  br label %84

84:                                               ; preds = %83, %77
  store i32 0, i32* %12, align 4
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %102, %84
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %105

89:                                               ; preds = %85
  %90 = load i32*, i32** %5, align 8
  %91 = load i32, i32* %7, align 4
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %91, %92
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds i32, i32* %90, i64 %94
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* %8, align 4
  %98 = mul nsw i32 %97, 8
  %99 = shl i32 %96, %98
  %100 = load i32, i32* %12, align 4
  %101 = or i32 %100, %99
  store i32 %101, i32* %12, align 4
  br label %102

102:                                              ; preds = %89
  %103 = load i32, i32* %8, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %8, align 4
  br label %85

105:                                              ; preds = %85
  %106 = load i32, i32* %12, align 4
  %107 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %4, align 8
  %108 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @USBD_TXDATA(i32 %109)
  %111 = call i32 @writel(i32 %106, i32 %110)
  br label %112

112:                                              ; preds = %105
  %113 = load i32, i32* %7, align 4
  %114 = add nsw i32 %113, 4
  store i32 %114, i32* %7, align 4
  br label %73

115:                                              ; preds = %73
  br label %180

116:                                              ; preds = %3
  %117 = load i32*, i32** %5, align 8
  store i32* %117, i32** %10, align 8
  %118 = load i32, i32* %6, align 4
  %119 = and i32 %118, -4
  store i32 %119, i32* %13, align 4
  store i32 0, i32* %7, align 4
  br label %120

120:                                              ; preds = %142, %116
  %121 = load i32, i32* %7, align 4
  %122 = load i32, i32* %13, align 4
  %123 = icmp slt i32 %121, %122
  br i1 %123, label %124, label %145

124:                                              ; preds = %120
  %125 = load i32*, i32** %10, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %10, align 8
  %127 = load i32, i32* %125, align 4
  %128 = and i32 %127, 65535
  store i32 %128, i32* %12, align 4
  %129 = load i32*, i32** %10, align 8
  %130 = getelementptr inbounds i32, i32* %129, i32 1
  store i32* %130, i32** %10, align 8
  %131 = load i32, i32* %129, align 4
  %132 = and i32 %131, 65535
  %133 = shl i32 %132, 16
  %134 = load i32, i32* %12, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %12, align 4
  %136 = load i32, i32* %12, align 4
  %137 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %4, align 8
  %138 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @USBD_TXDATA(i32 %139)
  %141 = call i32 @writel(i32 %136, i32 %140)
  br label %142

142:                                              ; preds = %124
  %143 = load i32, i32* %7, align 4
  %144 = add nsw i32 %143, 4
  store i32 %144, i32* %7, align 4
  br label %120

145:                                              ; preds = %120
  %146 = load i32, i32* %6, align 4
  %147 = load i32, i32* %13, align 4
  %148 = sub nsw i32 %146, %147
  store i32 %148, i32* %9, align 4
  %149 = load i32, i32* %9, align 4
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %179

151:                                              ; preds = %145
  store i32 0, i32* %12, align 4
  store i32 0, i32* %7, align 4
  br label %152

152:                                              ; preds = %169, %151
  %153 = load i32, i32* %7, align 4
  %154 = load i32, i32* %9, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %172

156:                                              ; preds = %152
  %157 = load i32*, i32** %5, align 8
  %158 = load i32, i32* %13, align 4
  %159 = load i32, i32* %7, align 4
  %160 = add nsw i32 %158, %159
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds i32, i32* %157, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* %7, align 4
  %165 = mul nsw i32 %164, 8
  %166 = shl i32 %163, %165
  %167 = load i32, i32* %12, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %12, align 4
  br label %169

169:                                              ; preds = %156
  %170 = load i32, i32* %7, align 4
  %171 = add nsw i32 %170, 1
  store i32 %171, i32* %7, align 4
  br label %152

172:                                              ; preds = %152
  %173 = load i32, i32* %12, align 4
  %174 = load %struct.lpc32xx_udc*, %struct.lpc32xx_udc** %4, align 8
  %175 = getelementptr inbounds %struct.lpc32xx_udc, %struct.lpc32xx_udc* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @USBD_TXDATA(i32 %176)
  %178 = call i32 @writel(i32 %173, i32 %177)
  br label %179

179:                                              ; preds = %172, %145
  br label %180

180:                                              ; preds = %3, %179, %115, %71
  ret void
}

declare dso_local i32 @writel(i32, i32) #1

declare dso_local i32 @USBD_TXDATA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
