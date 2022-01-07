; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_extract_uni_name_from_ext_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_extract_uni_name_from_ext_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext_dentry_t = type { i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @extract_uni_name_from_ext_entry(%struct.ext_dentry_t* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ext_dentry_t*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ext_dentry_t* %0, %struct.ext_dentry_t** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %10

10:                                               ; preds = %32, %3
  %11 = load i32, i32* %8, align 4
  %12 = icmp slt i32 %11, 10
  br i1 %12, label %13, label %35

13:                                               ; preds = %10
  %14 = load %struct.ext_dentry_t*, %struct.ext_dentry_t** %5, align 8
  %15 = getelementptr inbounds %struct.ext_dentry_t, %struct.ext_dentry_t* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %16, %18
  %20 = call i32 @GET16(i64 %19)
  %21 = load i32*, i32** %6, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32*, i32** %6, align 8
  %23 = load i32, i32* %22, align 4
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %13
  %26 = load i32, i32* %9, align 4
  store i32 %26, i32* %4, align 4
  br label %123

27:                                               ; preds = %13
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i32 1
  store i32* %29, i32** %6, align 8
  %30 = load i32, i32* %9, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %27
  %33 = load i32, i32* %8, align 4
  %34 = add nsw i32 %33, 2
  store i32 %34, i32* %8, align 4
  br label %10

35:                                               ; preds = %10
  %36 = load i32, i32* %7, align 4
  %37 = icmp slt i32 %36, 20
  br i1 %37, label %38, label %65

38:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %39

39:                                               ; preds = %61, %38
  %40 = load i32, i32* %8, align 4
  %41 = icmp slt i32 %40, 12
  br i1 %41, label %42, label %64

42:                                               ; preds = %39
  %43 = load %struct.ext_dentry_t*, %struct.ext_dentry_t** %5, align 8
  %44 = getelementptr inbounds %struct.ext_dentry_t, %struct.ext_dentry_t* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load i32, i32* %8, align 4
  %47 = sext i32 %46 to i64
  %48 = add nsw i64 %45, %47
  %49 = call i32 @GET16_A(i64 %48)
  %50 = load i32*, i32** %6, align 8
  store i32 %49, i32* %50, align 4
  %51 = load i32*, i32** %6, align 8
  %52 = load i32, i32* %51, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %42
  %55 = load i32, i32* %9, align 4
  store i32 %55, i32* %4, align 4
  br label %123

56:                                               ; preds = %42
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %6, align 8
  %59 = load i32, i32* %9, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %8, align 4
  %63 = add nsw i32 %62, 2
  store i32 %63, i32* %8, align 4
  br label %39

64:                                               ; preds = %39
  br label %94

65:                                               ; preds = %35
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %88, %65
  %67 = load i32, i32* %8, align 4
  %68 = icmp slt i32 %67, 8
  br i1 %68, label %69, label %91

69:                                               ; preds = %66
  %70 = load %struct.ext_dentry_t*, %struct.ext_dentry_t** %5, align 8
  %71 = getelementptr inbounds %struct.ext_dentry_t, %struct.ext_dentry_t* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = add nsw i64 %72, %74
  %76 = call i32 @GET16_A(i64 %75)
  %77 = load i32*, i32** %6, align 8
  store i32 %76, i32* %77, align 4
  %78 = load i32*, i32** %6, align 8
  %79 = load i32, i32* %78, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %69
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %4, align 4
  br label %123

83:                                               ; preds = %69
  %84 = load i32*, i32** %6, align 8
  %85 = getelementptr inbounds i32, i32* %84, i32 1
  store i32* %85, i32** %6, align 8
  %86 = load i32, i32* %9, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %83
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 2
  store i32 %90, i32* %8, align 4
  br label %66

91:                                               ; preds = %66
  %92 = load i32*, i32** %6, align 8
  store i32 0, i32* %92, align 4
  %93 = load i32, i32* %9, align 4
  store i32 %93, i32* %4, align 4
  br label %123

94:                                               ; preds = %64
  store i32 0, i32* %8, align 4
  br label %95

95:                                               ; preds = %117, %94
  %96 = load i32, i32* %8, align 4
  %97 = icmp slt i32 %96, 4
  br i1 %97, label %98, label %120

98:                                               ; preds = %95
  %99 = load %struct.ext_dentry_t*, %struct.ext_dentry_t** %5, align 8
  %100 = getelementptr inbounds %struct.ext_dentry_t, %struct.ext_dentry_t* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* %8, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %101, %103
  %105 = call i32 @GET16_A(i64 %104)
  %106 = load i32*, i32** %6, align 8
  store i32 %105, i32* %106, align 4
  %107 = load i32*, i32** %6, align 8
  %108 = load i32, i32* %107, align 4
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %98
  %111 = load i32, i32* %9, align 4
  store i32 %111, i32* %4, align 4
  br label %123

112:                                              ; preds = %98
  %113 = load i32*, i32** %6, align 8
  %114 = getelementptr inbounds i32, i32* %113, i32 1
  store i32* %114, i32** %6, align 8
  %115 = load i32, i32* %9, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %9, align 4
  br label %117

117:                                              ; preds = %112
  %118 = load i32, i32* %8, align 4
  %119 = add nsw i32 %118, 2
  store i32 %119, i32* %8, align 4
  br label %95

120:                                              ; preds = %95
  %121 = load i32*, i32** %6, align 8
  store i32 0, i32* %121, align 4
  %122 = load i32, i32* %9, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %120, %110, %91, %81, %54, %25
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local i32 @GET16(i64) #1

declare dso_local i32 @GET16_A(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
