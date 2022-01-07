; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ssd1351.c_set_gamma.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fbtft/extr_fb_ssd1351.c_set_gamma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fbtft_par = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GAMMA_NUM = common dso_local global i32 0, align 4
@GAMMA_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [82 x i8] c"Illegal value in Grayscale Lookup Table at index %d : %d. Must be greater than 1\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [102 x i8] c"Illegal value(s) in Grayscale Lookup Table. At index=%d : %d, the accumulated value has exceeded 180\0A\00", align 1
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

17:                                               ; preds = %72, %2
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 63
  br i1 %19, label %20, label %75

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %45

23:                                               ; preds = %20
  %24 = load i32*, i32** %5, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %45

30:                                               ; preds = %23
  %31 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %32 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* %8, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @dev_err(i32 %35, i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str, i64 0, i64 0), i32 %36, i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %204

45:                                               ; preds = %23, %20
  %46 = load i32*, i32** %5, align 8
  %47 = load i32, i32* %8, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %9, align 4
  %52 = add nsw i32 %51, %50
  store i32 %52, i32* %9, align 4
  %53 = load i32, i32* %9, align 4
  %54 = sext i32 %53 to i64
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i64, i64* %16, i64 %56
  store i64 %54, i64* %57, align 8
  %58 = load i32, i32* %9, align 4
  %59 = icmp sgt i32 %58, 180
  br i1 %59, label %60, label %71

60:                                               ; preds = %45
  %61 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %62 = getelementptr inbounds %struct.fbtft_par, %struct.fbtft_par* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @dev_err(i32 %65, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.1, i64 0, i64 0), i32 %66, i32 %67)
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %204

71:                                               ; preds = %45
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %8, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %17

75:                                               ; preds = %17
  %76 = load %struct.fbtft_par*, %struct.fbtft_par** %4, align 8
  %77 = getelementptr inbounds i64, i64* %16, i64 0
  %78 = load i64, i64* %77, align 16
  %79 = getelementptr inbounds i64, i64* %16, i64 1
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds i64, i64* %16, i64 2
  %82 = load i64, i64* %81, align 16
  %83 = getelementptr inbounds i64, i64* %16, i64 3
  %84 = load i64, i64* %83, align 8
  %85 = getelementptr inbounds i64, i64* %16, i64 4
  %86 = load i64, i64* %85, align 16
  %87 = getelementptr inbounds i64, i64* %16, i64 5
  %88 = load i64, i64* %87, align 8
  %89 = getelementptr inbounds i64, i64* %16, i64 6
  %90 = load i64, i64* %89, align 16
  %91 = getelementptr inbounds i64, i64* %16, i64 7
  %92 = load i64, i64* %91, align 8
  %93 = getelementptr inbounds i64, i64* %16, i64 8
  %94 = load i64, i64* %93, align 16
  %95 = getelementptr inbounds i64, i64* %16, i64 9
  %96 = load i64, i64* %95, align 8
  %97 = getelementptr inbounds i64, i64* %16, i64 10
  %98 = load i64, i64* %97, align 16
  %99 = getelementptr inbounds i64, i64* %16, i64 11
  %100 = load i64, i64* %99, align 8
  %101 = getelementptr inbounds i64, i64* %16, i64 12
  %102 = load i64, i64* %101, align 16
  %103 = getelementptr inbounds i64, i64* %16, i64 13
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds i64, i64* %16, i64 14
  %106 = load i64, i64* %105, align 16
  %107 = getelementptr inbounds i64, i64* %16, i64 15
  %108 = load i64, i64* %107, align 8
  %109 = getelementptr inbounds i64, i64* %16, i64 16
  %110 = load i64, i64* %109, align 16
  %111 = getelementptr inbounds i64, i64* %16, i64 17
  %112 = load i64, i64* %111, align 8
  %113 = getelementptr inbounds i64, i64* %16, i64 18
  %114 = load i64, i64* %113, align 16
  %115 = getelementptr inbounds i64, i64* %16, i64 19
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds i64, i64* %16, i64 20
  %118 = load i64, i64* %117, align 16
  %119 = getelementptr inbounds i64, i64* %16, i64 21
  %120 = load i64, i64* %119, align 8
  %121 = getelementptr inbounds i64, i64* %16, i64 22
  %122 = load i64, i64* %121, align 16
  %123 = getelementptr inbounds i64, i64* %16, i64 23
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds i64, i64* %16, i64 24
  %126 = load i64, i64* %125, align 16
  %127 = getelementptr inbounds i64, i64* %16, i64 25
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds i64, i64* %16, i64 26
  %130 = load i64, i64* %129, align 16
  %131 = getelementptr inbounds i64, i64* %16, i64 27
  %132 = load i64, i64* %131, align 8
  %133 = getelementptr inbounds i64, i64* %16, i64 28
  %134 = load i64, i64* %133, align 16
  %135 = getelementptr inbounds i64, i64* %16, i64 29
  %136 = load i64, i64* %135, align 8
  %137 = getelementptr inbounds i64, i64* %16, i64 30
  %138 = load i64, i64* %137, align 16
  %139 = getelementptr inbounds i64, i64* %16, i64 31
  %140 = load i64, i64* %139, align 8
  %141 = getelementptr inbounds i64, i64* %16, i64 32
  %142 = load i64, i64* %141, align 16
  %143 = getelementptr inbounds i64, i64* %16, i64 33
  %144 = load i64, i64* %143, align 8
  %145 = getelementptr inbounds i64, i64* %16, i64 34
  %146 = load i64, i64* %145, align 16
  %147 = getelementptr inbounds i64, i64* %16, i64 35
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds i64, i64* %16, i64 36
  %150 = load i64, i64* %149, align 16
  %151 = getelementptr inbounds i64, i64* %16, i64 37
  %152 = load i64, i64* %151, align 8
  %153 = getelementptr inbounds i64, i64* %16, i64 38
  %154 = load i64, i64* %153, align 16
  %155 = getelementptr inbounds i64, i64* %16, i64 39
  %156 = load i64, i64* %155, align 8
  %157 = getelementptr inbounds i64, i64* %16, i64 40
  %158 = load i64, i64* %157, align 16
  %159 = getelementptr inbounds i64, i64* %16, i64 41
  %160 = load i64, i64* %159, align 8
  %161 = getelementptr inbounds i64, i64* %16, i64 42
  %162 = load i64, i64* %161, align 16
  %163 = getelementptr inbounds i64, i64* %16, i64 43
  %164 = load i64, i64* %163, align 8
  %165 = getelementptr inbounds i64, i64* %16, i64 44
  %166 = load i64, i64* %165, align 16
  %167 = getelementptr inbounds i64, i64* %16, i64 45
  %168 = load i64, i64* %167, align 8
  %169 = getelementptr inbounds i64, i64* %16, i64 46
  %170 = load i64, i64* %169, align 16
  %171 = getelementptr inbounds i64, i64* %16, i64 47
  %172 = load i64, i64* %171, align 8
  %173 = getelementptr inbounds i64, i64* %16, i64 48
  %174 = load i64, i64* %173, align 16
  %175 = getelementptr inbounds i64, i64* %16, i64 49
  %176 = load i64, i64* %175, align 8
  %177 = getelementptr inbounds i64, i64* %16, i64 50
  %178 = load i64, i64* %177, align 16
  %179 = getelementptr inbounds i64, i64* %16, i64 51
  %180 = load i64, i64* %179, align 8
  %181 = getelementptr inbounds i64, i64* %16, i64 52
  %182 = load i64, i64* %181, align 16
  %183 = getelementptr inbounds i64, i64* %16, i64 53
  %184 = load i64, i64* %183, align 8
  %185 = getelementptr inbounds i64, i64* %16, i64 54
  %186 = load i64, i64* %185, align 16
  %187 = getelementptr inbounds i64, i64* %16, i64 55
  %188 = load i64, i64* %187, align 8
  %189 = getelementptr inbounds i64, i64* %16, i64 56
  %190 = load i64, i64* %189, align 16
  %191 = getelementptr inbounds i64, i64* %16, i64 57
  %192 = load i64, i64* %191, align 8
  %193 = getelementptr inbounds i64, i64* %16, i64 58
  %194 = load i64, i64* %193, align 16
  %195 = getelementptr inbounds i64, i64* %16, i64 59
  %196 = load i64, i64* %195, align 8
  %197 = getelementptr inbounds i64, i64* %16, i64 60
  %198 = load i64, i64* %197, align 16
  %199 = getelementptr inbounds i64, i64* %16, i64 61
  %200 = load i64, i64* %199, align 8
  %201 = getelementptr inbounds i64, i64* %16, i64 62
  %202 = load i64, i64* %201, align 16
  %203 = call i32 @write_reg(%struct.fbtft_par* %76, i32 184, i64 %78, i64 %80, i64 %82, i64 %84, i64 %86, i64 %88, i64 %90, i64 %92, i64 %94, i64 %96, i64 %98, i64 %100, i64 %102, i64 %104, i64 %106, i64 %108, i64 %110, i64 %112, i64 %114, i64 %116, i64 %118, i64 %120, i64 %122, i64 %124, i64 %126, i64 %128, i64 %130, i64 %132, i64 %134, i64 %136, i64 %138, i64 %140, i64 %142, i64 %144, i64 %146, i64 %148, i64 %150, i64 %152, i64 %154, i64 %156, i64 %158, i64 %160, i64 %162, i64 %164, i64 %166, i64 %168, i64 %170, i64 %172, i64 %174, i64 %176, i64 %178, i64 %180, i64 %182, i64 %184, i64 %186, i64 %188, i64 %190, i64 %192, i64 %194, i64 %196, i64 %198, i64 %200, i64 %202)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %204

204:                                              ; preds = %75, %60, %30
  %205 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %205)
  %206 = load i32, i32* %3, align 4
  ret i32 %206
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #2

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
