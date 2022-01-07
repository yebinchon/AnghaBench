; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_init_ext_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_init_ext_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ext_dentry_t = type { i64, i64, i64, i64, i8*, i64, i8* }
%struct.dentry_t = type { i32 }

@TYPE_EXTEND = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @init_ext_entry(%struct.ext_dentry_t* %0, i64 %1, i8* %2, i32* %3) #0 {
  %5 = alloca %struct.ext_dentry_t*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ext_dentry_t* %0, %struct.ext_dentry_t** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.ext_dentry_t*, %struct.ext_dentry_t** %5, align 8
  %12 = bitcast %struct.ext_dentry_t* %11 to %struct.dentry_t*
  %13 = load i32, i32* @TYPE_EXTEND, align 4
  %14 = call i32 @fat_set_entry_type(%struct.dentry_t* %12, i32 %13)
  %15 = load i64, i64* %6, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = load %struct.ext_dentry_t*, %struct.ext_dentry_t** %5, align 8
  %18 = getelementptr inbounds %struct.ext_dentry_t, %struct.ext_dentry_t* %17, i32 0, i32 6
  store i8* %16, i8** %18, align 8
  %19 = load %struct.ext_dentry_t*, %struct.ext_dentry_t** %5, align 8
  %20 = getelementptr inbounds %struct.ext_dentry_t, %struct.ext_dentry_t* %19, i32 0, i32 5
  store i64 0, i64* %20, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.ext_dentry_t*, %struct.ext_dentry_t** %5, align 8
  %23 = getelementptr inbounds %struct.ext_dentry_t, %struct.ext_dentry_t* %22, i32 0, i32 4
  store i8* %21, i8** %23, align 8
  %24 = load %struct.ext_dentry_t*, %struct.ext_dentry_t** %5, align 8
  %25 = getelementptr inbounds %struct.ext_dentry_t, %struct.ext_dentry_t* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @SET16_A(i64 %26, i32 0)
  store i32 0, i32* %9, align 4
  br label %28

28:                                               ; preds = %61, %4
  %29 = load i32, i32* %9, align 4
  %30 = icmp slt i32 %29, 10
  br i1 %30, label %31, label %64

31:                                               ; preds = %28
  %32 = load i32, i32* %10, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %52, label %34

34:                                               ; preds = %31
  %35 = load %struct.ext_dentry_t*, %struct.ext_dentry_t** %5, align 8
  %36 = getelementptr inbounds %struct.ext_dentry_t, %struct.ext_dentry_t* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @SET16(i64 %40, i32 %42)
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %44, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %34
  store i32 1, i32* %10, align 4
  br label %51

48:                                               ; preds = %34
  %49 = load i32*, i32** %8, align 8
  %50 = getelementptr inbounds i32, i32* %49, i32 1
  store i32* %50, i32** %8, align 8
  br label %51

51:                                               ; preds = %48, %47
  br label %60

52:                                               ; preds = %31
  %53 = load %struct.ext_dentry_t*, %struct.ext_dentry_t** %5, align 8
  %54 = getelementptr inbounds %struct.ext_dentry_t, %struct.ext_dentry_t* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = add nsw i64 %55, %57
  %59 = call i32 @SET16(i64 %58, i32 65535)
  br label %60

60:                                               ; preds = %52, %51
  br label %61

61:                                               ; preds = %60
  %62 = load i32, i32* %9, align 4
  %63 = add nsw i32 %62, 2
  store i32 %63, i32* %9, align 4
  br label %28

64:                                               ; preds = %28
  store i32 0, i32* %9, align 4
  br label %65

65:                                               ; preds = %98, %64
  %66 = load i32, i32* %9, align 4
  %67 = icmp slt i32 %66, 12
  br i1 %67, label %68, label %101

68:                                               ; preds = %65
  %69 = load i32, i32* %10, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %89, label %71

71:                                               ; preds = %68
  %72 = load %struct.ext_dentry_t*, %struct.ext_dentry_t** %5, align 8
  %73 = getelementptr inbounds %struct.ext_dentry_t, %struct.ext_dentry_t* %72, i32 0, i32 1
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %74, %76
  %78 = load i32*, i32** %8, align 8
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @SET16_A(i64 %77, i32 %79)
  %81 = load i32*, i32** %8, align 8
  %82 = load i32, i32* %81, align 4
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %71
  store i32 1, i32* %10, align 4
  br label %88

85:                                               ; preds = %71
  %86 = load i32*, i32** %8, align 8
  %87 = getelementptr inbounds i32, i32* %86, i32 1
  store i32* %87, i32** %8, align 8
  br label %88

88:                                               ; preds = %85, %84
  br label %97

89:                                               ; preds = %68
  %90 = load %struct.ext_dentry_t*, %struct.ext_dentry_t** %5, align 8
  %91 = getelementptr inbounds %struct.ext_dentry_t, %struct.ext_dentry_t* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i32, i32* %9, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %92, %94
  %96 = call i32 @SET16_A(i64 %95, i32 65535)
  br label %97

97:                                               ; preds = %89, %88
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 2
  store i32 %100, i32* %9, align 4
  br label %65

101:                                              ; preds = %65
  store i32 0, i32* %9, align 4
  br label %102

102:                                              ; preds = %135, %101
  %103 = load i32, i32* %9, align 4
  %104 = icmp slt i32 %103, 4
  br i1 %104, label %105, label %138

105:                                              ; preds = %102
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %126, label %108

108:                                              ; preds = %105
  %109 = load %struct.ext_dentry_t*, %struct.ext_dentry_t** %5, align 8
  %110 = getelementptr inbounds %struct.ext_dentry_t, %struct.ext_dentry_t* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i32, i32* %9, align 4
  %113 = sext i32 %112 to i64
  %114 = add nsw i64 %111, %113
  %115 = load i32*, i32** %8, align 8
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @SET16_A(i64 %114, i32 %116)
  %118 = load i32*, i32** %8, align 8
  %119 = load i32, i32* %118, align 4
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %122

121:                                              ; preds = %108
  store i32 1, i32* %10, align 4
  br label %125

122:                                              ; preds = %108
  %123 = load i32*, i32** %8, align 8
  %124 = getelementptr inbounds i32, i32* %123, i32 1
  store i32* %124, i32** %8, align 8
  br label %125

125:                                              ; preds = %122, %121
  br label %134

126:                                              ; preds = %105
  %127 = load %struct.ext_dentry_t*, %struct.ext_dentry_t** %5, align 8
  %128 = getelementptr inbounds %struct.ext_dentry_t, %struct.ext_dentry_t* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = add nsw i64 %129, %131
  %133 = call i32 @SET16_A(i64 %132, i32 65535)
  br label %134

134:                                              ; preds = %126, %125
  br label %135

135:                                              ; preds = %134
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, 2
  store i32 %137, i32* %9, align 4
  br label %102

138:                                              ; preds = %102
  ret void
}

declare dso_local i32 @fat_set_entry_type(%struct.dentry_t*, i32) #1

declare dso_local i32 @SET16_A(i64, i32) #1

declare dso_local i32 @SET16(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
