; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifs_unicode.c_cifs_from_utf16.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifs_unicode.c_cifs_from_utf16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nls_table = type { i32 }

@NLS_MAX_CHARSET_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cifs_from_utf16(i8* %0, i32* %1, i32 %2, i32 %3, %struct.nls_table* %4, i32 %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.nls_table*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i8*, align 8
  %20 = alloca i64, align 8
  %21 = alloca [3 x i64], align 16
  store i8* %0, i8** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.nls_table* %4, %struct.nls_table** %11, align 8
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %16, align 4
  %22 = load %struct.nls_table*, %struct.nls_table** %11, align 8
  %23 = call i32 @nls_nullsize(%struct.nls_table* %22)
  store i32 %23, i32* %17, align 4
  %24 = load i32, i32* %10, align 4
  %25 = sdiv i32 %24, 2
  store i32 %25, i32* %18, align 4
  %26 = load i32, i32* @NLS_MAX_CHARSET_SIZE, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %19, align 8
  %29 = alloca i8, i64 %27, align 16
  store i64 %27, i64* %20, align 8
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @NLS_MAX_CHARSET_SIZE, align 4
  %32 = load i32, i32* %17, align 4
  %33 = add nsw i32 %31, %32
  %34 = sub nsw i32 %30, %33
  store i32 %34, i32* %15, align 4
  store i32 0, i32* %13, align 4
  br label %35

35:                                               ; preds = %123, %6
  %36 = load i32, i32* %13, align 4
  %37 = load i32, i32* %18, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %126

39:                                               ; preds = %35
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %13, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = call i64 @get_unaligned_le16(i32* %43)
  %45 = getelementptr inbounds [3 x i64], [3 x i64]* %21, i64 0, i64 0
  store i64 %44, i64* %45, align 16
  %46 = getelementptr inbounds [3 x i64], [3 x i64]* %21, i64 0, i64 0
  %47 = load i64, i64* %46, align 16
  %48 = icmp eq i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %39
  br label %126

50:                                               ; preds = %39
  %51 = load i32, i32* %13, align 4
  %52 = add nsw i32 %51, 1
  %53 = load i32, i32* %18, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %63

55:                                               ; preds = %50
  %56 = load i32*, i32** %8, align 8
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %56, i64 %59
  %61 = call i64 @get_unaligned_le16(i32* %60)
  %62 = getelementptr inbounds [3 x i64], [3 x i64]* %21, i64 0, i64 1
  store i64 %61, i64* %62, align 8
  br label %65

63:                                               ; preds = %50
  %64 = getelementptr inbounds [3 x i64], [3 x i64]* %21, i64 0, i64 1
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %63, %55
  %66 = load i32, i32* %13, align 4
  %67 = add nsw i32 %66, 2
  %68 = load i32, i32* %18, align 4
  %69 = icmp slt i32 %67, %68
  br i1 %69, label %70, label %78

70:                                               ; preds = %65
  %71 = load i32*, i32** %8, align 8
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, 2
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i32, i32* %71, i64 %74
  %76 = call i64 @get_unaligned_le16(i32* %75)
  %77 = getelementptr inbounds [3 x i64], [3 x i64]* %21, i64 0, i64 2
  store i64 %76, i64* %77, align 16
  br label %80

78:                                               ; preds = %65
  %79 = getelementptr inbounds [3 x i64], [3 x i64]* %21, i64 0, i64 2
  store i64 0, i64* %79, align 16
  br label %80

80:                                               ; preds = %78, %70
  %81 = load i32, i32* %16, align 4
  %82 = load i32, i32* %15, align 4
  %83 = icmp sge i32 %81, %82
  br i1 %83, label %84, label %98

84:                                               ; preds = %80
  %85 = getelementptr inbounds [3 x i64], [3 x i64]* %21, i64 0, i64 0
  %86 = load %struct.nls_table*, %struct.nls_table** %11, align 8
  %87 = load i32, i32* %12, align 4
  %88 = call i32 @cifs_mapchar(i8* %29, i64* %85, %struct.nls_table* %86, i32 %87)
  store i32 %88, i32* %14, align 4
  %89 = load i32, i32* %16, align 4
  %90 = load i32, i32* %14, align 4
  %91 = add nsw i32 %89, %90
  %92 = load i32, i32* %9, align 4
  %93 = load i32, i32* %17, align 4
  %94 = sub nsw i32 %92, %93
  %95 = icmp sgt i32 %91, %94
  br i1 %95, label %96, label %97

96:                                               ; preds = %84
  br label %126

97:                                               ; preds = %84
  br label %98

98:                                               ; preds = %97, %80
  %99 = load i8*, i8** %7, align 8
  %100 = load i32, i32* %16, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds i8, i8* %99, i64 %101
  %103 = getelementptr inbounds [3 x i64], [3 x i64]* %21, i64 0, i64 0
  %104 = load %struct.nls_table*, %struct.nls_table** %11, align 8
  %105 = load i32, i32* %12, align 4
  %106 = call i32 @cifs_mapchar(i8* %102, i64* %103, %struct.nls_table* %104, i32 %105)
  store i32 %106, i32* %14, align 4
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* %16, align 4
  %109 = add nsw i32 %108, %107
  store i32 %109, i32* %16, align 4
  %110 = load i32, i32* %14, align 4
  %111 = icmp eq i32 %110, 4
  br i1 %111, label %112, label %115

112:                                              ; preds = %98
  %113 = load i32, i32* %13, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %13, align 4
  br label %122

115:                                              ; preds = %98
  %116 = load i32, i32* %14, align 4
  %117 = icmp sge i32 %116, 5
  br i1 %117, label %118, label %121

118:                                              ; preds = %115
  %119 = load i32, i32* %13, align 4
  %120 = add nsw i32 %119, 2
  store i32 %120, i32* %13, align 4
  br label %121

121:                                              ; preds = %118, %115
  br label %122

122:                                              ; preds = %121, %112
  br label %123

123:                                              ; preds = %122
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %13, align 4
  br label %35

126:                                              ; preds = %96, %49, %35
  store i32 0, i32* %13, align 4
  br label %127

127:                                              ; preds = %137, %126
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %17, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %140

131:                                              ; preds = %127
  %132 = load i8*, i8** %7, align 8
  %133 = load i32, i32* %16, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %16, align 4
  %135 = sext i32 %133 to i64
  %136 = getelementptr inbounds i8, i8* %132, i64 %135
  store i8 0, i8* %136, align 1
  br label %137

137:                                              ; preds = %131
  %138 = load i32, i32* %13, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %13, align 4
  br label %127

140:                                              ; preds = %127
  %141 = load i32, i32* %16, align 4
  %142 = load i8*, i8** %19, align 8
  call void @llvm.stackrestore(i8* %142)
  ret i32 %141
}

declare dso_local i32 @nls_nullsize(%struct.nls_table*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i64 @get_unaligned_le16(i32*) #1

declare dso_local i32 @cifs_mapchar(i8*, i64*, %struct.nls_table*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
