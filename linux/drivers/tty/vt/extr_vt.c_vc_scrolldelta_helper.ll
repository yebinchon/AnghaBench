; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_vc_scrolldelta_helper.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_vc_scrolldelta_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i64, i64, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @vc_scrolldelta_helper(%struct.vc_data* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.vc_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %20 = load i8*, i8** %9, align 8
  %21 = ptrtoint i8* %20 to i64
  store i64 %21, i64* %11, align 8
  %22 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %23 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %22, i32 0, i32 3
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i8*
  %26 = load i8*, i8** %9, align 8
  %27 = ptrtoint i8* %25 to i64
  %28 = ptrtoint i8* %26 to i64
  %29 = sub i64 %27, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %12, align 4
  %31 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %32 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = load i8*, i8** %9, align 8
  %36 = ptrtoint i8* %34 to i64
  %37 = ptrtoint i8* %35 to i64
  %38 = sub i64 %36, %37
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %13, align 4
  %40 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %41 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = load i8*, i8** %9, align 8
  %45 = ptrtoint i8* %43 to i64
  %46 = ptrtoint i8* %44 to i64
  %47 = sub i64 %45, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %14, align 4
  %49 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %50 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = mul nsw i32 %51, 4
  store i32 %52, i32* %15, align 4
  %53 = load i32, i32* %7, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %5
  %56 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %57 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %60 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %59, i32 0, i32 0
  store i64 %58, i64* %60, align 8
  br label %126

61:                                               ; preds = %5
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %12, align 4
  %64 = load i32, i32* %15, align 4
  %65 = add nsw i32 %63, %64
  %66 = icmp ugt i32 %62, %65
  br i1 %66, label %67, label %74

67:                                               ; preds = %61
  %68 = load i32, i32* %12, align 4
  store i32 %68, i32* %16, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %71 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = add i32 %69, %72
  store i32 %73, i32* %17, align 4
  br label %76

74:                                               ; preds = %61
  store i32 0, i32* %16, align 4
  %75 = load i32, i32* %10, align 4
  store i32 %75, i32* %17, align 4
  br label %76

76:                                               ; preds = %74, %67
  %77 = load i32, i32* %13, align 4
  %78 = load i32, i32* %16, align 4
  %79 = sub nsw i32 %77, %78
  %80 = load i32, i32* %17, align 4
  %81 = add nsw i32 %79, %80
  %82 = load i32, i32* %17, align 4
  %83 = srem i32 %81, %82
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %86 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 8
  %88 = mul nsw i32 %84, %87
  %89 = add nsw i32 %83, %88
  store i32 %89, i32* %18, align 4
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %16, align 4
  %92 = sub nsw i32 %90, %91
  %93 = load i32, i32* %17, align 4
  %94 = add nsw i32 %92, %93
  %95 = load i32, i32* %17, align 4
  %96 = srem i32 %94, %95
  store i32 %96, i32* %19, align 4
  %97 = load i32, i32* %19, align 4
  %98 = load i32, i32* %15, align 4
  %99 = mul nsw i32 2, %98
  %100 = icmp slt i32 %97, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %76
  store i32 0, i32* %15, align 4
  br label %102

102:                                              ; preds = %101, %76
  %103 = load i32, i32* %18, align 4
  %104 = load i32, i32* %15, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %107

106:                                              ; preds = %102
  store i32 0, i32* %18, align 4
  br label %107

107:                                              ; preds = %106, %102
  %108 = load i32, i32* %18, align 4
  %109 = load i32, i32* %19, align 4
  %110 = load i32, i32* %15, align 4
  %111 = sub nsw i32 %109, %110
  %112 = icmp sgt i32 %108, %111
  br i1 %112, label %113, label %115

113:                                              ; preds = %107
  %114 = load i32, i32* %19, align 4
  store i32 %114, i32* %18, align 4
  br label %115

115:                                              ; preds = %113, %107
  %116 = load i64, i64* %11, align 8
  %117 = load i32, i32* %16, align 4
  %118 = load i32, i32* %18, align 4
  %119 = add nsw i32 %117, %118
  %120 = load i32, i32* %17, align 4
  %121 = srem i32 %119, %120
  %122 = sext i32 %121 to i64
  %123 = add i64 %116, %122
  %124 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %125 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  br label %126

126:                                              ; preds = %115, %55
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
