; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ssd1331.c_set_gamma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ssd1331.c_set_gamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GAMMA_NUM = common dso_local global i32 0, align 4
@GAMMA_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [77 x i8] c"Illegal value in Grayscale Lookup Table at index %d. Must be greater than 1\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [97 x i8] c"Illegal value(s) in Grayscale Lookup Table. At index=%d, the accumulated value has exceeded 180\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fbtft_par*, i32*)* @set_gamma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_gamma(%struct.fbtft_par* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fbtft_par*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.fbtft_par* %0, %struct.fbtft_par** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load i32, i32* @GAMMA_NUM, align 4
  %12 = load i32, i32* @GAMMA_LEN, align 4
  %13 = mul nsw i32 %11, %12
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %6, align 8
  %16 = alloca i64, i64 %14, align 16
  store i64 %14, i64* %7, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %66, %2
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 63
  br i1 %19, label %20, label %69

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %40

23:                                               ; preds = %20
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %40

30:                                               ; preds = %23
  %31 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %32 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([77 x i8], [77 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %198

40:                                               ; preds = %23, %20
  %41 = load i32*, i32** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %46, %45
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = load i32, i32* %8, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %16, i64 %51
  store i64 %49, i64* %52, align 8
  %53 = load i32, i32* %9, align 4
  %54 = icmp sgt i32 %53, 180
  br i1 %54, label %55, label %65

55:                                               ; preds = %40
  %56 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %57 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.1, i64 0, i64 0), i32 %61)
  %63 = load i32, i32* @EINVAL, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %198

65:                                               ; preds = %40
  br label %66

66:                                               ; preds = %65
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %17

69:                                               ; preds = %17
  %70 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %71 = getelementptr inbounds i64, i64* %16, i64 0
  %72 = load i64, i64* %71, align 16
  %73 = getelementptr inbounds i64, i64* %16, i64 1
  %74 = load i64, i64* %73, align 8
  %75 = getelementptr inbounds i64, i64* %16, i64 2
  %76 = load i64, i64* %75, align 16
  %77 = getelementptr inbounds i64, i64* %16, i64 3
  %78 = load i64, i64* %77, align 8
  %79 = getelementptr inbounds i64, i64* %16, i64 4
  %80 = load i64, i64* %79, align 16
  %81 = getelementptr inbounds i64, i64* %16, i64 5
  %82 = load i64, i64* %81, align 8
  %83 = getelementptr inbounds i64, i64* %16, i64 6
  %84 = load i64, i64* %83, align 16
  %85 = getelementptr inbounds i64, i64* %16, i64 7
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i64, i64* %16, i64 8
  %88 = load i64, i64* %87, align 16
  %89 = getelementptr inbounds i64, i64* %16, i64 9
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i64, i64* %16, i64 10
  %92 = load i64, i64* %91, align 16
  %93 = getelementptr inbounds i64, i64* %16, i64 11
  %94 = load i64, i64* %93, align 8
  %95 = getelementptr inbounds i64, i64* %16, i64 12
  %96 = load i64, i64* %95, align 16
  %97 = getelementptr inbounds i64, i64* %16, i64 13
  %98 = load i64, i64* %97, align 8
  %99 = getelementptr inbounds i64, i64* %16, i64 14
  %100 = load i64, i64* %99, align 16
  %101 = getelementptr inbounds i64, i64* %16, i64 15
  %102 = load i64, i64* %101, align 8
  %103 = getelementptr inbounds i64, i64* %16, i64 16
  %104 = load i64, i64* %103, align 16
  %105 = getelementptr inbounds i64, i64* %16, i64 17
  %106 = load i64, i64* %105, align 8
  %107 = getelementptr inbounds i64, i64* %16, i64 18
  %108 = load i64, i64* %107, align 16
  %109 = getelementptr inbounds i64, i64* %16, i64 19
  %110 = load i64, i64* %109, align 8
  %111 = getelementptr inbounds i64, i64* %16, i64 20
  %112 = load i64, i64* %111, align 16
  %113 = getelementptr inbounds i64, i64* %16, i64 21
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds i64, i64* %16, i64 22
  %116 = load i64, i64* %115, align 16
  %117 = getelementptr inbounds i64, i64* %16, i64 23
  %118 = load i64, i64* %117, align 8
  %119 = getelementptr inbounds i64, i64* %16, i64 24
  %120 = load i64, i64* %119, align 16
  %121 = getelementptr inbounds i64, i64* %16, i64 25
  %122 = load i64, i64* %121, align 8
  %123 = getelementptr inbounds i64, i64* %16, i64 26
  %124 = load i64, i64* %123, align 16
  %125 = getelementptr inbounds i64, i64* %16, i64 27
  %126 = load i64, i64* %125, align 8
  %127 = getelementptr inbounds i64, i64* %16, i64 28
  %128 = load i64, i64* %127, align 16
  %129 = getelementptr inbounds i64, i64* %16, i64 29
  %130 = load i64, i64* %129, align 8
  %131 = getelementptr inbounds i64, i64* %16, i64 30
  %132 = load i64, i64* %131, align 16
  %133 = getelementptr inbounds i64, i64* %16, i64 31
  %134 = load i64, i64* %133, align 8
  %135 = getelementptr inbounds i64, i64* %16, i64 32
  %136 = load i64, i64* %135, align 16
  %137 = getelementptr inbounds i64, i64* %16, i64 33
  %138 = load i64, i64* %137, align 8
  %139 = getelementptr inbounds i64, i64* %16, i64 34
  %140 = load i64, i64* %139, align 16
  %141 = getelementptr inbounds i64, i64* %16, i64 35
  %142 = load i64, i64* %141, align 8
  %143 = getelementptr inbounds i64, i64* %16, i64 36
  %144 = load i64, i64* %143, align 16
  %145 = getelementptr inbounds i64, i64* %16, i64 37
  %146 = load i64, i64* %145, align 8
  %147 = getelementptr inbounds i64, i64* %16, i64 38
  %148 = load i64, i64* %147, align 16
  %149 = getelementptr inbounds i64, i64* %16, i64 39
  %150 = load i64, i64* %149, align 8
  %151 = getelementptr inbounds i64, i64* %16, i64 40
  %152 = load i64, i64* %151, align 16
  %153 = getelementptr inbounds i64, i64* %16, i64 41
  %154 = load i64, i64* %153, align 8
  %155 = getelementptr inbounds i64, i64* %16, i64 42
  %156 = load i64, i64* %155, align 16
  %157 = getelementptr inbounds i64, i64* %16, i64 43
  %158 = load i64, i64* %157, align 8
  %159 = getelementptr inbounds i64, i64* %16, i64 44
  %160 = load i64, i64* %159, align 16
  %161 = getelementptr inbounds i64, i64* %16, i64 45
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds i64, i64* %16, i64 46
  %164 = load i64, i64* %163, align 16
  %165 = getelementptr inbounds i64, i64* %16, i64 47
  %166 = load i64, i64* %165, align 8
  %167 = getelementptr inbounds i64, i64* %16, i64 48
  %168 = load i64, i64* %167, align 16
  %169 = getelementptr inbounds i64, i64* %16, i64 49
  %170 = load i64, i64* %169, align 8
  %171 = getelementptr inbounds i64, i64* %16, i64 50
  %172 = load i64, i64* %171, align 16
  %173 = getelementptr inbounds i64, i64* %16, i64 51
  %174 = load i64, i64* %173, align 8
  %175 = getelementptr inbounds i64, i64* %16, i64 52
  %176 = load i64, i64* %175, align 16
  %177 = getelementptr inbounds i64, i64* %16, i64 53
  %178 = load i64, i64* %177, align 8
  %179 = getelementptr inbounds i64, i64* %16, i64 54
  %180 = load i64, i64* %179, align 16
  %181 = getelementptr inbounds i64, i64* %16, i64 55
  %182 = load i64, i64* %181, align 8
  %183 = getelementptr inbounds i64, i64* %16, i64 56
  %184 = load i64, i64* %183, align 16
  %185 = getelementptr inbounds i64, i64* %16, i64 57
  %186 = load i64, i64* %185, align 8
  %187 = getelementptr inbounds i64, i64* %16, i64 58
  %188 = load i64, i64* %187, align 16
  %189 = getelementptr inbounds i64, i64* %16, i64 59
  %190 = load i64, i64* %189, align 8
  %191 = getelementptr inbounds i64, i64* %16, i64 60
  %192 = load i64, i64* %191, align 16
  %193 = getelementptr inbounds i64, i64* %16, i64 61
  %194 = load i64, i64* %193, align 8
  %195 = getelementptr inbounds i64, i64* %16, i64 62
  %196 = load i64, i64* %195, align 16
  %197 = call i32 @write_reg(%struct.fbtft_par* %70, i32 184, i64 %72, i64 %74, i64 %76, i64 %78, i64 %80, i64 %82, i64 %84, i64 %86, i64 %88, i64 %90, i64 %92, i64 %94, i64 %96, i64 %98, i64 %100, i64 %102, i64 %104, i64 %106, i64 %108, i64 %110, i64 %112, i64 %114, i64 %116, i64 %118, i64 %120, i64 %122, i64 %124, i64 %126, i64 %128, i64 %130, i64 %132, i64 %134, i64 %136, i64 %138, i64 %140, i64 %142, i64 %144, i64 %146, i64 %148, i64 %150, i64 %152, i64 %154, i64 %156, i64 %158, i64 %160, i64 %162, i64 %164, i64 %166, i64 %168, i64 %170, i64 %172, i64 %174, i64 %176, i64 %178, i64 %180, i64 %182, i64 %184, i64 %186, i64 %188, i64 %190, i64 %192, i64 %194, i64 %196)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %198

198:                                              ; preds = %69, %55, %30
  %199 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %199)
  %200 = load i32, i32* %3, align 4
  ret i32 %200
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dev_err(i32, i8*, i32) #2

declare dso_local i32 @write_reg(%struct.fbtft_par*, i32, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
