; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_security.c_mix_column.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8723bs/core/extr_rtw_security.c_mix_column.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @mix_column to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mix_column(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca [4 x i32], align 16
  %7 = alloca [4 x i32], align 16
  %8 = alloca [4 x i32], align 16
  %9 = alloca [4 x i32], align 16
  %10 = alloca [4 x i32], align 16
  %11 = alloca [4 x i32], align 16
  %12 = alloca [4 x i32], align 16
  %13 = alloca [4 x i32], align 16
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %34, %2
  %15 = load i32, i32* %5, align 4
  %16 = icmp slt i32 %15, 4
  br i1 %16, label %17, label %37

17:                                               ; preds = %14
  %18 = load i32*, i32** %3, align 8
  %19 = load i32, i32* %5, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 128
  %24 = icmp eq i32 %23, 128
  br i1 %24, label %25, label %29

25:                                               ; preds = %17
  %26 = load i32, i32* %5, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %27
  store i32 27, i32* %28, align 4
  br label %33

29:                                               ; preds = %17
  %30 = load i32, i32* %5, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 %31
  store i32 0, i32* %32, align 4
  br label %33

33:                                               ; preds = %29, %25
  br label %34

34:                                               ; preds = %33
  %35 = load i32, i32* %5, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %5, align 4
  br label %14

37:                                               ; preds = %14
  %38 = load i32*, i32** %3, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  store i32 %40, i32* %41, align 16
  %42 = load i32*, i32** %3, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 3
  %44 = load i32, i32* %43, align 4
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** %3, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  store i32 %48, i32* %49, align 8
  %50 = load i32*, i32** %3, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  store i32 %52, i32* %53, align 4
  %54 = load i32*, i32** %3, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  store i32 %56, i32* %57, align 16
  %58 = load i32*, i32** %3, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 1
  store i32 %60, i32* %61, align 4
  %62 = load i32*, i32** %3, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 2
  store i32 %64, i32* %65, align 8
  %66 = load i32*, i32** %3, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 2
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 3
  store i32 %68, i32* %69, align 4
  %70 = load i32*, i32** %3, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 127
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 %73, i32* %74, align 16
  %75 = load i32*, i32** %3, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 127
  %79 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 1
  store i32 %78, i32* %79, align 4
  %80 = load i32*, i32** %3, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 2
  %82 = load i32, i32* %81, align 4
  %83 = and i32 %82, 127
  %84 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 2
  store i32 %83, i32* %84, align 8
  %85 = load i32*, i32** %3, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 3
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 127
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 3
  store i32 %88, i32* %89, align 4
  store i32 3, i32* %5, align 4
  br label %90

90:                                               ; preds = %119, %37
  %91 = load i32, i32* %5, align 4
  %92 = icmp sgt i32 %91, 0
  br i1 %92, label %93, label %122

93:                                               ; preds = %90
  %94 = load i32, i32* %5, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %95
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 1
  %99 = load i32, i32* %5, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %100
  store i32 %98, i32* %101, align 4
  %102 = load i32, i32* %5, align 4
  %103 = sub nsw i32 %102, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, 128
  %108 = icmp eq i32 %107, 128
  br i1 %108, label %109, label %118

109:                                              ; preds = %93
  %110 = load i32, i32* %5, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %111
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, 1
  %115 = load i32, i32* %5, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 %116
  store i32 %114, i32* %117, align 4
  br label %118

118:                                              ; preds = %109, %93
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %5, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %5, align 4
  br label %90

122:                                              ; preds = %90
  %123 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %124 = load i32, i32* %123, align 16
  %125 = shl i32 %124, 1
  %126 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 %125, i32* %126, align 16
  %127 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %128 = load i32, i32* %127, align 16
  %129 = and i32 %128, 254
  %130 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  store i32 %129, i32* %130, align 16
  %131 = getelementptr inbounds [4 x i32], [4 x i32]* %6, i64 0, i64 0
  %132 = getelementptr inbounds [4 x i32], [4 x i32]* %10, i64 0, i64 0
  %133 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %134 = call i32 @xor_32(i32* %131, i32* %132, i32* %133)
  %135 = load i32*, i32** %3, align 8
  %136 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %137 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %138 = call i32 @xor_32(i32* %135, i32* %136, i32* %137)
  %139 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %140 = load i32, i32* %139, align 16
  %141 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  store i32 %140, i32* %141, align 16
  %142 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  %143 = load i32, i32* %142, align 4
  %144 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  store i32 %143, i32* %144, align 16
  %145 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  %146 = load i32, i32* %145, align 8
  %147 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 1
  store i32 %146, i32* %147, align 4
  %148 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 3
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 2
  store i32 %149, i32* %150, align 8
  %151 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %152 = load i32, i32* %151, align 16
  %153 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 3
  store i32 %152, i32* %153, align 4
  %154 = getelementptr inbounds [4 x i32], [4 x i32]* %7, i64 0, i64 0
  %155 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 0, i64 0
  %156 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %157 = call i32 @xor_32(i32* %154, i32* %155, i32* %156)
  %158 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %159 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %160 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %161 = call i32 @xor_32(i32* %158, i32* %159, i32* %160)
  %162 = getelementptr inbounds [4 x i32], [4 x i32]* %12, i64 0, i64 0
  %163 = getelementptr inbounds [4 x i32], [4 x i32]* %13, i64 0, i64 0
  %164 = load i32*, i32** %4, align 8
  %165 = call i32 @xor_32(i32* %162, i32* %163, i32* %164)
  ret void
}

declare dso_local i32 @xor_32(i32*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
