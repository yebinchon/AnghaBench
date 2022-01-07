; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_set_vc_hi_font.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_set_vc_hi_font.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i32, i32, i32, i16, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, i32)* @set_vc_hi_font to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_vc_hi_font(%struct.vc_data* %0, i32 %1) #0 {
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i16*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i16, align 2
  %11 = alloca i16, align 2
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %86, label %14

14:                                               ; preds = %2
  %15 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %16 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %15, i32 0, i32 0
  store i32 0, i32* %16, align 8
  %17 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %18 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %17, i32 0, i32 6
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %30

21:                                               ; preds = %14
  %22 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %23 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = ashr i32 %24, 1
  store i32 %25, i32* %23, align 4
  %26 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %27 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = ashr i32 %28, 1
  store i32 %29, i32* %27, align 8
  br label %30

30:                                               ; preds = %21, %14
  %31 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %32 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %31, i32 0, i32 6
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %85

35:                                               ; preds = %30
  %36 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %37 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %36, i32 0, i32 7
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i16*
  store i16* %39, i16** %5, align 8
  %40 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %41 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = sdiv i32 %42, 2
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %61, %35
  %45 = load i32, i32* %6, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %66

47:                                               ; preds = %44
  %48 = load i16*, i16** %5, align 8
  %49 = call zeroext i16 @scr_readw(i16* %48)
  store i16 %49, i16* %7, align 2
  %50 = load i16, i16* %7, align 2
  %51 = zext i16 %50 to i32
  %52 = and i32 %51, 65024
  %53 = ashr i32 %52, 1
  %54 = load i16, i16* %7, align 2
  %55 = zext i16 %54 to i32
  %56 = and i32 %55, 255
  %57 = or i32 %53, %56
  %58 = trunc i32 %57 to i16
  %59 = load i16*, i16** %5, align 8
  %60 = call i32 @scr_writew(i16 zeroext %58, i16* %59)
  br label %61

61:                                               ; preds = %47
  %62 = load i32, i32* %6, align 4
  %63 = add nsw i32 %62, -1
  store i32 %63, i32* %6, align 4
  %64 = load i16*, i16** %5, align 8
  %65 = getelementptr inbounds i16, i16* %64, i32 1
  store i16* %65, i16** %5, align 8
  br label %44

66:                                               ; preds = %44
  %67 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %68 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %67, i32 0, i32 4
  %69 = load i16, i16* %68, align 8
  store i16 %69, i16* %7, align 2
  %70 = load i16, i16* %7, align 2
  %71 = zext i16 %70 to i32
  %72 = and i32 %71, 65024
  %73 = ashr i32 %72, 1
  %74 = load i16, i16* %7, align 2
  %75 = zext i16 %74 to i32
  %76 = and i32 %75, 255
  %77 = or i32 %73, %76
  %78 = trunc i32 %77 to i16
  %79 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %80 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %79, i32 0, i32 4
  store i16 %78, i16* %80, align 8
  %81 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %82 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %81, i32 0, i32 5
  %83 = load i32, i32* %82, align 4
  %84 = ashr i32 %83, 1
  store i32 %84, i32* %82, align 4
  br label %85

85:                                               ; preds = %66, %30
  br label %177

86:                                               ; preds = %2
  %87 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %88 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %87, i32 0, i32 0
  store i32 256, i32* %88, align 8
  %89 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %90 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %89, i32 0, i32 6
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %86
  %94 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %95 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 1
  store i32 %97, i32* %95, align 4
  %98 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %99 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 8
  %101 = shl i32 %100, 1
  store i32 %101, i32* %99, align 8
  br label %102

102:                                              ; preds = %93, %86
  %103 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %104 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %103, i32 0, i32 7
  %105 = load i64, i64* %104, align 8
  %106 = inttoptr i64 %105 to i16*
  store i16* %106, i16** %8, align 8
  %107 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %108 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = sdiv i32 %109, 2
  store i32 %110, i32* %9, align 4
  br label %111

111:                                              ; preds = %140, %102
  %112 = load i32, i32* %9, align 4
  %113 = icmp sgt i32 %112, 0
  br i1 %113, label %114, label %145

114:                                              ; preds = %111
  %115 = load i16*, i16** %8, align 8
  %116 = call zeroext i16 @scr_readw(i16* %115)
  store i16 %116, i16* %10, align 2
  %117 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %118 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %117, i32 0, i32 6
  %119 = load i64, i64* %118, align 8
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %131

121:                                              ; preds = %114
  %122 = load i16, i16* %10, align 2
  %123 = zext i16 %122 to i32
  %124 = and i32 %123, 65280
  %125 = shl i32 %124, 1
  %126 = load i16, i16* %10, align 2
  %127 = zext i16 %126 to i32
  %128 = and i32 %127, 255
  %129 = or i32 %125, %128
  %130 = trunc i32 %129 to i16
  store i16 %130, i16* %11, align 2
  br label %136

131:                                              ; preds = %114
  %132 = load i16, i16* %10, align 2
  %133 = zext i16 %132 to i32
  %134 = and i32 %133, -257
  %135 = trunc i32 %134 to i16
  store i16 %135, i16* %11, align 2
  br label %136

136:                                              ; preds = %131, %121
  %137 = load i16, i16* %11, align 2
  %138 = load i16*, i16** %8, align 8
  %139 = call i32 @scr_writew(i16 zeroext %137, i16* %138)
  br label %140

140:                                              ; preds = %136
  %141 = load i32, i32* %9, align 4
  %142 = add nsw i32 %141, -1
  store i32 %142, i32* %9, align 4
  %143 = load i16*, i16** %8, align 8
  %144 = getelementptr inbounds i16, i16* %143, i32 1
  store i16* %144, i16** %8, align 8
  br label %111

145:                                              ; preds = %111
  %146 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %147 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %146, i32 0, i32 4
  %148 = load i16, i16* %147, align 8
  store i16 %148, i16* %10, align 2
  %149 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %150 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %149, i32 0, i32 6
  %151 = load i64, i64* %150, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %169

153:                                              ; preds = %145
  %154 = load i16, i16* %10, align 2
  %155 = zext i16 %154 to i32
  %156 = and i32 %155, 65280
  %157 = shl i32 %156, 1
  %158 = load i16, i16* %10, align 2
  %159 = zext i16 %158 to i32
  %160 = and i32 %159, 255
  %161 = or i32 %157, %160
  %162 = trunc i32 %161 to i16
  %163 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %164 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %163, i32 0, i32 4
  store i16 %162, i16* %164, align 8
  %165 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %166 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %165, i32 0, i32 5
  %167 = load i32, i32* %166, align 4
  %168 = shl i32 %167, 1
  store i32 %168, i32* %166, align 4
  br label %176

169:                                              ; preds = %145
  %170 = load i16, i16* %10, align 2
  %171 = zext i16 %170 to i32
  %172 = and i32 %171, -257
  %173 = trunc i32 %172 to i16
  %174 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %175 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %174, i32 0, i32 4
  store i16 %173, i16* %175, align 8
  br label %176

176:                                              ; preds = %169, %153
  br label %177

177:                                              ; preds = %176, %85
  ret void
}

declare dso_local zeroext i16 @scr_readw(i16*) #1

declare dso_local i32 @scr_writew(i16 zeroext, i16*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
