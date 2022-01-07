; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_queue.c_pmap_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/dwc2/extr_hcd_queue.c_pmap_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i32, i32, i32, i32, i32, i32)* @pmap_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pmap_schedule(i64* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  store i64* %0, i64** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp sgt i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %7
  %29 = load i32, i32* @ENOSPC, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %166

31:                                               ; preds = %7
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %11, align 4
  %34 = call i32 @gcd(i32 %32, i32 %33)
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %13, align 4
  %37 = mul nsw i32 %35, %36
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %13, align 4
  %40 = sdiv i32 %38, %39
  store i32 %40, i32* %17, align 4
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %31
  %45 = load i32, i32* @ENOSPC, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %8, align 4
  br label %166

47:                                               ; preds = %31
  %48 = load i32, i32* %15, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %57

50:                                               ; preds = %47
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %10, align 4
  %53 = sdiv i32 %51, %52
  %54 = add nsw i32 %53, 1
  %55 = load i32, i32* %10, align 4
  %56 = mul nsw i32 %54, %55
  store i32 %56, i32* %18, align 4
  br label %59

57:                                               ; preds = %47
  %58 = load i32, i32* %16, align 4
  store i32 %58, i32* %18, align 4
  br label %59

59:                                               ; preds = %57, %50
  br label %60

60:                                               ; preds = %136, %81, %59
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %61, %62
  %64 = load i32, i32* %18, align 4
  %65 = icmp sle i32 %63, %64
  br i1 %65, label %66, label %137

66:                                               ; preds = %60
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %10, align 4
  %69 = sdiv i32 %67, %68
  %70 = add nsw i32 %69, 1
  %71 = load i32, i32* %10, align 4
  %72 = mul nsw i32 %70, %71
  store i32 %72, i32* %20, align 4
  %73 = load i64*, i64** %9, align 8
  %74 = load i32, i32* %20, align 4
  %75 = load i32, i32* %14, align 4
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @bitmap_find_next_zero_area(i64* %73, i32 %74, i32 %75, i32 %76, i32 0)
  store i32 %77, i32* %14, align 4
  %78 = load i32, i32* %14, align 4
  %79 = load i32, i32* %20, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %66
  %82 = load i32, i32* %20, align 4
  store i32 %82, i32* %14, align 4
  br label %60

83:                                               ; preds = %66
  store i32 1, i32* %19, align 4
  br label %84

84:                                               ; preds = %128, %83
  %85 = load i32, i32* %19, align 4
  %86 = load i32, i32* %17, align 4
  %87 = icmp slt i32 %85, %86
  br i1 %87, label %88, label %131

88:                                               ; preds = %84
  %89 = load i32, i32* %14, align 4
  %90 = load i32, i32* %16, align 4
  %91 = load i32, i32* %19, align 4
  %92 = mul nsw i32 %90, %91
  %93 = add nsw i32 %89, %92
  store i32 %93, i32* %21, align 4
  %94 = load i32, i32* %20, align 4
  %95 = load i32, i32* %16, align 4
  %96 = load i32, i32* %19, align 4
  %97 = mul nsw i32 %95, %96
  %98 = add nsw i32 %94, %97
  store i32 %98, i32* %22, align 4
  %99 = load i64*, i64** %9, align 8
  %100 = load i32, i32* %21, align 4
  %101 = load i32, i32* %12, align 4
  %102 = add nsw i32 %100, %101
  %103 = load i32, i32* %21, align 4
  %104 = load i32, i32* %12, align 4
  %105 = call i32 @bitmap_find_next_zero_area(i64* %99, i32 %102, i32 %103, i32 %104, i32 0)
  store i32 %105, i32* %23, align 4
  %106 = load i32, i32* %23, align 4
  %107 = load i32, i32* %21, align 4
  %108 = icmp eq i32 %106, %107
  br i1 %108, label %109, label %110

109:                                              ; preds = %88
  br label %128

110:                                              ; preds = %88
  %111 = load i64*, i64** %9, align 8
  %112 = load i32, i32* %22, align 4
  %113 = load i32, i32* %21, align 4
  %114 = load i32, i32* %12, align 4
  %115 = call i32 @bitmap_find_next_zero_area(i64* %111, i32 %112, i32 %113, i32 %114, i32 0)
  store i32 %115, i32* %21, align 4
  %116 = load i32, i32* %21, align 4
  %117 = load i32, i32* %22, align 4
  %118 = icmp sge i32 %116, %117
  br i1 %118, label %119, label %121

119:                                              ; preds = %110
  %120 = load i32, i32* %20, align 4
  store i32 %120, i32* %14, align 4
  br label %127

121:                                              ; preds = %110
  %122 = load i32, i32* %21, align 4
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* %19, align 4
  %125 = mul nsw i32 %123, %124
  %126 = sub nsw i32 %122, %125
  store i32 %126, i32* %14, align 4
  br label %127

127:                                              ; preds = %121, %119
  br label %131

128:                                              ; preds = %109
  %129 = load i32, i32* %19, align 4
  %130 = add nsw i32 %129, 1
  store i32 %130, i32* %19, align 4
  br label %84

131:                                              ; preds = %127, %84
  %132 = load i32, i32* %19, align 4
  %133 = load i32, i32* %17, align 4
  %134 = icmp eq i32 %132, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %131
  br label %137

136:                                              ; preds = %131
  br label %60

137:                                              ; preds = %135, %60
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* %12, align 4
  %140 = add nsw i32 %138, %139
  %141 = load i32, i32* %18, align 4
  %142 = icmp sgt i32 %140, %141
  br i1 %142, label %143, label %146

143:                                              ; preds = %137
  %144 = load i32, i32* @ENOSPC, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %8, align 4
  br label %166

146:                                              ; preds = %137
  store i32 0, i32* %19, align 4
  br label %147

147:                                              ; preds = %161, %146
  %148 = load i32, i32* %19, align 4
  %149 = load i32, i32* %17, align 4
  %150 = icmp slt i32 %148, %149
  br i1 %150, label %151, label %164

151:                                              ; preds = %147
  %152 = load i32, i32* %14, align 4
  %153 = load i32, i32* %16, align 4
  %154 = load i32, i32* %19, align 4
  %155 = mul nsw i32 %153, %154
  %156 = add nsw i32 %152, %155
  store i32 %156, i32* %24, align 4
  %157 = load i64*, i64** %9, align 8
  %158 = load i32, i32* %24, align 4
  %159 = load i32, i32* %12, align 4
  %160 = call i32 @bitmap_set(i64* %157, i32 %158, i32 %159)
  br label %161

161:                                              ; preds = %151
  %162 = load i32, i32* %19, align 4
  %163 = add nsw i32 %162, 1
  store i32 %163, i32* %19, align 4
  br label %147

164:                                              ; preds = %147
  %165 = load i32, i32* %14, align 4
  store i32 %165, i32* %8, align 4
  br label %166

166:                                              ; preds = %164, %143, %44, %28
  %167 = load i32, i32* %8, align 4
  ret i32 %167
}

declare dso_local i32 @gcd(i32, i32) #1

declare dso_local i32 @bitmap_find_next_zero_area(i64*, i32, i32, i32, i32) #1

declare dso_local i32 @bitmap_set(i64*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
