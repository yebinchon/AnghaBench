; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_rxtx.c_s_uGetRTSCTSRsvTime.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vt6655/extr_rxtx.c_s_uGetRTSCTSRsvTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnt_private = type { i16, i16, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vnt_private*, i8, i8, i32, i16)* @s_uGetRTSCTSRsvTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s_uGetRTSCTSRsvTime(%struct.vnt_private* %0, i8 zeroext %1, i8 zeroext %2, i32 %3, i16 zeroext %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.vnt_private*, align 8
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i16, align 2
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.vnt_private* %0, %struct.vnt_private** %7, align 8
  store i8 %1, i8* %8, align 1
  store i8 %2, i8* %9, align 1
  store i32 %3, i32* %10, align 4
  store i16 %4, i16* %11, align 2
  store i32 0, i32* %16, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %12, align 4
  %17 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %18 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = load i8, i8* %9, align 1
  %21 = load i32, i32* %10, align 4
  %22 = load i16, i16* %11, align 2
  %23 = call i32 @BBuGetFrameTime(i32 %19, i8 zeroext %20, i32 %21, i16 zeroext %22)
  store i32 %23, i32* %16, align 4
  %24 = load i8, i8* %8, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %44

27:                                               ; preds = %5
  %28 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %29 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load i8, i8* %9, align 1
  %32 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %33 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %32, i32 0, i32 0
  %34 = load i16, i16* %33, align 4
  %35 = call i32 @BBuGetFrameTime(i32 %30, i8 zeroext %31, i32 20, i16 zeroext %34)
  store i32 %35, i32* %13, align 4
  %36 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %37 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load i8, i8* %9, align 1
  %40 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %41 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %40, i32 0, i32 0
  %42 = load i16, i16* %41, align 4
  %43 = call i32 @BBuGetFrameTime(i32 %38, i8 zeroext %39, i32 14, i16 zeroext %42)
  store i32 %43, i32* %15, align 4
  store i32 %43, i32* %14, align 4
  br label %130

44:                                               ; preds = %5
  %45 = load i8, i8* %8, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp eq i32 %46, 1
  br i1 %47, label %48, label %73

48:                                               ; preds = %44
  %49 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %50 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = load i8, i8* %9, align 1
  %53 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %54 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %53, i32 0, i32 0
  %55 = load i16, i16* %54, align 4
  %56 = call i32 @BBuGetFrameTime(i32 %51, i8 zeroext %52, i32 20, i16 zeroext %55)
  store i32 %56, i32* %13, align 4
  %57 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %58 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 4
  %60 = load i8, i8* %9, align 1
  %61 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %62 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %61, i32 0, i32 0
  %63 = load i16, i16* %62, align 4
  %64 = call i32 @BBuGetFrameTime(i32 %59, i8 zeroext %60, i32 14, i16 zeroext %63)
  store i32 %64, i32* %14, align 4
  %65 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %66 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load i8, i8* %9, align 1
  %69 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %70 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %69, i32 0, i32 1
  %71 = load i16, i16* %70, align 2
  %72 = call i32 @BBuGetFrameTime(i32 %67, i8 zeroext %68, i32 14, i16 zeroext %71)
  store i32 %72, i32* %15, align 4
  br label %129

73:                                               ; preds = %44
  %74 = load i8, i8* %8, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp eq i32 %75, 2
  br i1 %76, label %77, label %94

77:                                               ; preds = %73
  %78 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %79 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load i8, i8* %9, align 1
  %82 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %83 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %82, i32 0, i32 1
  %84 = load i16, i16* %83, align 2
  %85 = call i32 @BBuGetFrameTime(i32 %80, i8 zeroext %81, i32 20, i16 zeroext %84)
  store i32 %85, i32* %13, align 4
  %86 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %87 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %86, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load i8, i8* %9, align 1
  %90 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %91 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %90, i32 0, i32 1
  %92 = load i16, i16* %91, align 2
  %93 = call i32 @BBuGetFrameTime(i32 %88, i8 zeroext %89, i32 14, i16 zeroext %92)
  store i32 %93, i32* %15, align 4
  store i32 %93, i32* %14, align 4
  br label %128

94:                                               ; preds = %73
  %95 = load i8, i8* %8, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp eq i32 %96, 3
  br i1 %97, label %98, label %127

98:                                               ; preds = %94
  %99 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %100 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load i8, i8* %9, align 1
  %103 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %104 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %103, i32 0, i32 0
  %105 = load i16, i16* %104, align 4
  %106 = call i32 @BBuGetFrameTime(i32 %101, i8 zeroext %102, i32 14, i16 zeroext %105)
  store i32 %106, i32* %14, align 4
  %107 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %108 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load i8, i8* %9, align 1
  %111 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %112 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %111, i32 0, i32 1
  %113 = load i16, i16* %112, align 2
  %114 = call i32 @BBuGetFrameTime(i32 %109, i8 zeroext %110, i32 14, i16 zeroext %113)
  store i32 %114, i32* %15, align 4
  %115 = load i32, i32* %14, align 4
  %116 = load i32, i32* %15, align 4
  %117 = add i32 %115, %116
  %118 = load i32, i32* %16, align 4
  %119 = add i32 %117, %118
  %120 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %121 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  %123 = mul nsw i32 2, %122
  %124 = add i32 %119, %123
  store i32 %124, i32* %12, align 4
  %125 = load i32, i32* %12, align 4
  %126 = call i32 @cpu_to_le16(i32 %125)
  store i32 %126, i32* %6, align 4
  br label %145

127:                                              ; preds = %94
  br label %128

128:                                              ; preds = %127, %77
  br label %129

129:                                              ; preds = %128, %48
  br label %130

130:                                              ; preds = %129, %27
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %14, align 4
  %133 = add i32 %131, %132
  %134 = load i32, i32* %15, align 4
  %135 = add i32 %133, %134
  %136 = load i32, i32* %16, align 4
  %137 = add i32 %135, %136
  %138 = load %struct.vnt_private*, %struct.vnt_private** %7, align 8
  %139 = getelementptr inbounds %struct.vnt_private, %struct.vnt_private* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = mul nsw i32 3, %140
  %142 = add i32 %137, %141
  store i32 %142, i32* %12, align 4
  %143 = load i32, i32* %12, align 4
  %144 = call i32 @cpu_to_le16(i32 %143)
  store i32 %144, i32* %6, align 4
  br label %145

145:                                              ; preds = %130, %98
  %146 = load i32, i32* %6, align 4
  ret i32 %146
}

declare dso_local i32 @BBuGetFrameTime(i32, i8 zeroext, i32, i16 zeroext) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
