; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_set_vclk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_tridentfb.c_set_vclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tridentfb_par = type { i32, i32 }

@ClockHigh = common dso_local global i32 0, align 4
@ClockLow = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"VCLK = %X %X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tridentfb_par*, i64)* @set_vclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_vclk(%struct.tridentfb_par* %0, i64 %1) #0 {
  %3 = alloca %struct.tridentfb_par*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  %13 = alloca i8, align 1
  %14 = alloca i8, align 1
  %15 = alloca i8, align 1
  %16 = alloca i8, align 1
  store %struct.tridentfb_par* %0, %struct.tridentfb_par** %3, align 8
  store i64 %1, i64* %4, align 8
  store i8 0, i8* %11, align 1
  store i8 0, i8* %12, align 1
  store i8 0, i8* %13, align 1
  %17 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %18 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i64 @is_oldclock(i32 %19)
  %21 = icmp ne i64 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 2, i32 1
  %25 = trunc i32 %24 to i8
  store i8 %25, i8* %16, align 1
  store i64 20000, i64* %9, align 8
  %26 = load i8, i8* %16, align 1
  %27 = zext i8 %26 to i32
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %102, %2
  %29 = load i32, i32* %7, align 4
  %30 = icmp sge i32 %29, 0
  br i1 %30, label %31, label %105

31:                                               ; preds = %28
  store i32 1, i32* %5, align 4
  br label %32

32:                                               ; preds = %98, %31
  %33 = load i32, i32* %5, align 4
  %34 = icmp slt i32 %33, 32
  br i1 %34, label %35, label %101

35:                                               ; preds = %32
  %36 = load i32, i32* %5, align 4
  %37 = add nsw i32 %36, 2
  %38 = load i8, i8* %16, align 1
  %39 = zext i8 %38 to i32
  %40 = shl i32 %37, %39
  %41 = sub nsw i32 %40, 8
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %35
  br label %47

45:                                               ; preds = %35
  %46 = load i32, i32* %6, align 4
  br label %47

47:                                               ; preds = %45, %44
  %48 = phi i32 [ 0, %44 ], [ %46, %45 ]
  store i32 %48, i32* %6, align 4
  br label %49

49:                                               ; preds = %94, %47
  %50 = load i32, i32* %6, align 4
  %51 = icmp slt i32 %50, 122
  br i1 %51, label %52, label %97

52:                                               ; preds = %49
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 8
  %55 = sext i32 %54 to i64
  %56 = mul nsw i64 14318, %55
  %57 = load i32, i32* %5, align 4
  %58 = add nsw i32 %57, 2
  %59 = sext i32 %58 to i64
  %60 = sdiv i64 %56, %59
  %61 = load i32, i32* %7, align 4
  %62 = zext i32 %61 to i64
  %63 = ashr i64 %60, %62
  store i64 %63, i64* %8, align 8
  %64 = load i64, i64* %8, align 8
  %65 = load i64, i64* %4, align 8
  %66 = sub i64 %64, %65
  %67 = call i64 @abs(i64 %66)
  store i64 %67, i64* %10, align 8
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* %9, align 8
  %70 = icmp ult i64 %68, %69
  br i1 %70, label %80, label %71

71:                                               ; preds = %52
  %72 = load i64, i64* %10, align 8
  %73 = load i64, i64* %9, align 8
  %74 = icmp eq i64 %72, %73
  br i1 %74, label %75, label %88

75:                                               ; preds = %71
  %76 = load i32, i32* %7, align 4
  %77 = load i8, i8* %13, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp eq i32 %76, %78
  br i1 %79, label %80, label %88

80:                                               ; preds = %75, %52
  %81 = load i64, i64* %10, align 8
  store i64 %81, i64* %9, align 8
  %82 = load i32, i32* %6, align 4
  %83 = trunc i32 %82 to i8
  store i8 %83, i8* %12, align 1
  %84 = load i32, i32* %5, align 4
  %85 = trunc i32 %84 to i8
  store i8 %85, i8* %11, align 1
  %86 = load i32, i32* %7, align 4
  %87 = trunc i32 %86 to i8
  store i8 %87, i8* %13, align 1
  br label %88

88:                                               ; preds = %80, %75, %71
  %89 = load i64, i64* %8, align 8
  %90 = load i64, i64* %4, align 8
  %91 = icmp ugt i64 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  br label %97

93:                                               ; preds = %88
  br label %94

94:                                               ; preds = %93
  %95 = load i32, i32* %6, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %6, align 4
  br label %49

97:                                               ; preds = %92, %49
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %5, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %5, align 4
  br label %32

101:                                              ; preds = %32
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %7, align 4
  br label %28

105:                                              ; preds = %28
  %106 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %107 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 4
  %109 = call i64 @is_oldclock(i32 %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %127

111:                                              ; preds = %105
  %112 = load i8, i8* %12, align 1
  %113 = zext i8 %112 to i32
  %114 = load i8, i8* %11, align 1
  %115 = zext i8 %114 to i32
  %116 = shl i32 %115, 7
  %117 = or i32 %113, %116
  %118 = trunc i32 %117 to i8
  store i8 %118, i8* %15, align 1
  %119 = load i8, i8* %11, align 1
  %120 = zext i8 %119 to i32
  %121 = ashr i32 %120, 1
  %122 = load i8, i8* %13, align 1
  %123 = zext i8 %122 to i32
  %124 = shl i32 %123, 4
  %125 = or i32 %121, %124
  %126 = trunc i32 %125 to i8
  store i8 %126, i8* %14, align 1
  br label %136

127:                                              ; preds = %105
  %128 = load i8, i8* %12, align 1
  store i8 %128, i8* %15, align 1
  %129 = load i8, i8* %11, align 1
  %130 = zext i8 %129 to i32
  %131 = load i8, i8* %13, align 1
  %132 = zext i8 %131 to i32
  %133 = shl i32 %132, 6
  %134 = or i32 %130, %133
  %135 = trunc i32 %134 to i8
  store i8 %135, i8* %14, align 1
  br label %136

136:                                              ; preds = %127, %111
  %137 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %138 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @is3Dchip(i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %155

142:                                              ; preds = %136
  %143 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %144 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load i32, i32* @ClockHigh, align 4
  %147 = load i8, i8* %14, align 1
  %148 = call i32 @vga_mm_wseq(i32 %145, i32 %146, i8 zeroext %147)
  %149 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %150 = getelementptr inbounds %struct.tridentfb_par, %struct.tridentfb_par* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* @ClockLow, align 4
  %153 = load i8, i8* %15, align 1
  %154 = call i32 @vga_mm_wseq(i32 %151, i32 %152, i8 zeroext %153)
  br label %162

155:                                              ; preds = %136
  %156 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %157 = load i8, i8* %15, align 1
  %158 = call i32 @t_outb(%struct.tridentfb_par* %156, i8 zeroext %157, i32 17352)
  %159 = load %struct.tridentfb_par*, %struct.tridentfb_par** %3, align 8
  %160 = load i8, i8* %14, align 1
  %161 = call i32 @t_outb(%struct.tridentfb_par* %159, i8 zeroext %160, i32 17353)
  br label %162

162:                                              ; preds = %155, %142
  %163 = load i8, i8* %14, align 1
  %164 = load i8, i8* %15, align 1
  %165 = call i32 @debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i8 zeroext %163, i8 zeroext %164)
  ret void
}

declare dso_local i64 @is_oldclock(i32) #1

declare dso_local i64 @abs(i64) #1

declare dso_local i64 @is3Dchip(i32) #1

declare dso_local i32 @vga_mm_wseq(i32, i32, i8 zeroext) #1

declare dso_local i32 @t_outb(%struct.tridentfb_par*, i8 zeroext, i32) #1

declare dso_local i32 @debug(i8*, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
