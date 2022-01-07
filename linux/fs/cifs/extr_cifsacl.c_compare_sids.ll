; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifsacl.c_compare_sids.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifsacl.c_compare_sids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_sid = type { i64, i64*, i32, i64* }

@NUM_AUTHS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_sid*, %struct.cifs_sid*)* @compare_sids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @compare_sids(%struct.cifs_sid* %0, %struct.cifs_sid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cifs_sid*, align 8
  %5 = alloca %struct.cifs_sid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.cifs_sid* %0, %struct.cifs_sid** %4, align 8
  store %struct.cifs_sid* %1, %struct.cifs_sid** %5, align 8
  %10 = load %struct.cifs_sid*, %struct.cifs_sid** %4, align 8
  %11 = icmp ne %struct.cifs_sid* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load %struct.cifs_sid*, %struct.cifs_sid** %5, align 8
  %14 = icmp ne %struct.cifs_sid* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %2
  store i32 1, i32* %3, align 4
  br label %142

16:                                               ; preds = %12
  %17 = load %struct.cifs_sid*, %struct.cifs_sid** %4, align 8
  %18 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.cifs_sid*, %struct.cifs_sid** %5, align 8
  %21 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %19, %22
  br i1 %23, label %24, label %34

24:                                               ; preds = %16
  %25 = load %struct.cifs_sid*, %struct.cifs_sid** %4, align 8
  %26 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.cifs_sid*, %struct.cifs_sid** %5, align 8
  %29 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp sgt i64 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 1, i32* %3, align 4
  br label %142

33:                                               ; preds = %24
  store i32 -1, i32* %3, align 4
  br label %142

34:                                               ; preds = %16
  store i32 0, i32* %6, align 4
  br label %35

35:                                               ; preds = %74, %34
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @NUM_AUTHS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %77

39:                                               ; preds = %35
  %40 = load %struct.cifs_sid*, %struct.cifs_sid** %4, align 8
  %41 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %40, i32 0, i32 1
  %42 = load i64*, i64** %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %42, i64 %44
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.cifs_sid*, %struct.cifs_sid** %5, align 8
  %48 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %47, i32 0, i32 1
  %49 = load i64*, i64** %48, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %49, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %46, %53
  br i1 %54, label %55, label %73

55:                                               ; preds = %39
  %56 = load %struct.cifs_sid*, %struct.cifs_sid** %4, align 8
  %57 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %56, i32 0, i32 1
  %58 = load i64*, i64** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64, i64* %58, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.cifs_sid*, %struct.cifs_sid** %5, align 8
  %64 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %63, i32 0, i32 1
  %65 = load i64*, i64** %64, align 8
  %66 = load i32, i32* %6, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds i64, i64* %65, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = icmp sgt i64 %62, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %55
  store i32 1, i32* %3, align 4
  br label %142

72:                                               ; preds = %55
  store i32 -1, i32* %3, align 4
  br label %142

73:                                               ; preds = %39
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %35

77:                                               ; preds = %35
  %78 = load %struct.cifs_sid*, %struct.cifs_sid** %4, align 8
  %79 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  store i32 %80, i32* %8, align 4
  %81 = load %struct.cifs_sid*, %struct.cifs_sid** %5, align 8
  %82 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  store i32 %83, i32* %9, align 4
  %84 = load i32, i32* %8, align 4
  %85 = load i32, i32* %9, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %77
  %88 = load i32, i32* %8, align 4
  br label %91

89:                                               ; preds = %77
  %90 = load i32, i32* %9, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  store i32 %92, i32* %7, align 4
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %141

95:                                               ; preds = %91
  store i32 0, i32* %6, align 4
  br label %96

96:                                               ; preds = %137, %95
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* %7, align 4
  %99 = icmp slt i32 %97, %98
  br i1 %99, label %100, label %140

100:                                              ; preds = %96
  %101 = load %struct.cifs_sid*, %struct.cifs_sid** %4, align 8
  %102 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %101, i32 0, i32 3
  %103 = load i64*, i64** %102, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.cifs_sid*, %struct.cifs_sid** %5, align 8
  %109 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %108, i32 0, i32 3
  %110 = load i64*, i64** %109, align 8
  %111 = load i32, i32* %6, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds i64, i64* %110, i64 %112
  %114 = load i64, i64* %113, align 8
  %115 = icmp ne i64 %107, %114
  br i1 %115, label %116, label %136

116:                                              ; preds = %100
  %117 = load %struct.cifs_sid*, %struct.cifs_sid** %4, align 8
  %118 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %117, i32 0, i32 3
  %119 = load i64*, i64** %118, align 8
  %120 = load i32, i32* %6, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i64, i64* %119, i64 %121
  %123 = load i64, i64* %122, align 8
  %124 = call i64 @le32_to_cpu(i64 %123)
  %125 = load %struct.cifs_sid*, %struct.cifs_sid** %5, align 8
  %126 = getelementptr inbounds %struct.cifs_sid, %struct.cifs_sid* %125, i32 0, i32 3
  %127 = load i64*, i64** %126, align 8
  %128 = load i32, i32* %6, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds i64, i64* %127, i64 %129
  %131 = load i64, i64* %130, align 8
  %132 = call i64 @le32_to_cpu(i64 %131)
  %133 = icmp sgt i64 %124, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %116
  store i32 1, i32* %3, align 4
  br label %142

135:                                              ; preds = %116
  store i32 -1, i32* %3, align 4
  br label %142

136:                                              ; preds = %100
  br label %137

137:                                              ; preds = %136
  %138 = load i32, i32* %6, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %6, align 4
  br label %96

140:                                              ; preds = %96
  br label %141

141:                                              ; preds = %140, %91
  store i32 0, i32* %3, align 4
  br label %142

142:                                              ; preds = %141, %135, %134, %72, %71, %33, %32, %15
  %143 = load i32, i32* %3, align 4
  ret i32 %143
}

declare dso_local i64 @le32_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
