; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_redraw.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_redraw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32, i64 }
%struct.fbcon_display = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, %struct.fbcon_display*, i32, i32, i32)* @fbcon_redraw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbcon_redraw(%struct.vc_data* %0, %struct.fbcon_display* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.vc_data*, align 8
  %7 = alloca %struct.fbcon_display*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i16*, align 8
  %12 = alloca i16*, align 8
  %13 = alloca i16*, align 8
  %14 = alloca i16*, align 8
  %15 = alloca i16, align 2
  %16 = alloca i32, align 4
  %17 = alloca i16, align 2
  store %struct.vc_data* %0, %struct.vc_data** %6, align 8
  store %struct.fbcon_display* %1, %struct.fbcon_display** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %19 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %22 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = mul nsw i32 %23, %24
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %20, %26
  %28 = inttoptr i64 %27 to i16*
  store i16* %28, i16** %11, align 8
  %29 = load i16*, i16** %11, align 8
  %30 = load i32, i32* %10, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i16, i16* %29, i64 %31
  store i16* %32, i16** %12, align 8
  br label %33

33:                                               ; preds = %180, %5
  %34 = load i32, i32* %9, align 4
  %35 = add nsw i32 %34, -1
  store i32 %35, i32* %9, align 4
  %36 = icmp ne i32 %34, 0
  br i1 %36, label %37, label %181

37:                                               ; preds = %33
  %38 = load i16*, i16** %12, align 8
  store i16* %38, i16** %13, align 8
  %39 = load i16*, i16** %12, align 8
  %40 = call i16* @advance_row(i16* %39, i32 1)
  store i16* %40, i16** %14, align 8
  store i32 0, i32* %16, align 4
  store i16 1, i16* %17, align 2
  br label %41

41:                                               ; preds = %135, %37
  %42 = load i16*, i16** %12, align 8
  %43 = call zeroext i16 @scr_readw(i16* %42)
  store i16 %43, i16* %15, align 2
  %44 = load i16, i16* %17, align 2
  %45 = zext i16 %44 to i32
  %46 = load i16, i16* %15, align 2
  %47 = zext i16 %46 to i32
  %48 = and i32 %47, 65280
  %49 = icmp ne i32 %45, %48
  br i1 %49, label %50, label %83

50:                                               ; preds = %41
  %51 = load i16, i16* %15, align 2
  %52 = zext i16 %51 to i32
  %53 = and i32 %52, 65280
  %54 = trunc i32 %53 to i16
  store i16 %54, i16* %17, align 2
  %55 = load i16*, i16** %12, align 8
  %56 = load i16*, i16** %13, align 8
  %57 = icmp ugt i16* %55, %56
  br i1 %57, label %58, label %82

58:                                               ; preds = %50
  %59 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %60 = load i16*, i16** %13, align 8
  %61 = load i16*, i16** %12, align 8
  %62 = load i16*, i16** %13, align 8
  %63 = ptrtoint i16* %61 to i64
  %64 = ptrtoint i16* %62 to i64
  %65 = sub i64 %63, %64
  %66 = sdiv exact i64 %65, 2
  %67 = trunc i64 %66 to i32
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* %16, align 4
  %70 = call i32 @fbcon_putcs(%struct.vc_data* %59, i16* %60, i32 %67, i32 %68, i32 %69)
  %71 = load i16*, i16** %12, align 8
  %72 = load i16*, i16** %13, align 8
  %73 = ptrtoint i16* %71 to i64
  %74 = ptrtoint i16* %72 to i64
  %75 = sub i64 %73, %74
  %76 = sdiv exact i64 %75, 2
  %77 = load i32, i32* %16, align 4
  %78 = sext i32 %77 to i64
  %79 = add nsw i64 %78, %76
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %16, align 4
  %81 = load i16*, i16** %12, align 8
  store i16* %81, i16** %13, align 8
  br label %82

82:                                               ; preds = %58, %50
  br label %83

83:                                               ; preds = %82, %41
  %84 = load i16, i16* %15, align 2
  %85 = zext i16 %84 to i32
  %86 = load i16*, i16** %11, align 8
  %87 = call zeroext i16 @scr_readw(i16* %86)
  %88 = zext i16 %87 to i32
  %89 = icmp eq i32 %85, %88
  br i1 %89, label %90, label %126

90:                                               ; preds = %83
  %91 = load i16*, i16** %12, align 8
  %92 = load i16*, i16** %13, align 8
  %93 = icmp ugt i16* %91, %92
  br i1 %93, label %94, label %120

94:                                               ; preds = %90
  %95 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %96 = load i16*, i16** %13, align 8
  %97 = load i16*, i16** %12, align 8
  %98 = load i16*, i16** %13, align 8
  %99 = ptrtoint i16* %97 to i64
  %100 = ptrtoint i16* %98 to i64
  %101 = sub i64 %99, %100
  %102 = sdiv exact i64 %101, 2
  %103 = trunc i64 %102 to i32
  %104 = load i32, i32* %8, align 4
  %105 = load i32, i32* %16, align 4
  %106 = call i32 @fbcon_putcs(%struct.vc_data* %95, i16* %96, i32 %103, i32 %104, i32 %105)
  %107 = load i16*, i16** %12, align 8
  %108 = load i16*, i16** %13, align 8
  %109 = ptrtoint i16* %107 to i64
  %110 = ptrtoint i16* %108 to i64
  %111 = sub i64 %109, %110
  %112 = sdiv exact i64 %111, 2
  %113 = add nsw i64 %112, 1
  %114 = load i32, i32* %16, align 4
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %115, %113
  %117 = trunc i64 %116 to i32
  store i32 %117, i32* %16, align 4
  %118 = load i16*, i16** %12, align 8
  %119 = getelementptr inbounds i16, i16* %118, i64 1
  store i16* %119, i16** %13, align 8
  br label %125

120:                                              ; preds = %90
  %121 = load i32, i32* %16, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %16, align 4
  %123 = load i16*, i16** %13, align 8
  %124 = getelementptr inbounds i16, i16* %123, i32 1
  store i16* %124, i16** %13, align 8
  br label %125

125:                                              ; preds = %120, %94
  br label %126

126:                                              ; preds = %125, %83
  %127 = load i16, i16* %15, align 2
  %128 = load i16*, i16** %11, align 8
  %129 = call i32 @scr_writew(i16 zeroext %127, i16* %128)
  %130 = call i32 (...) @console_conditional_schedule()
  %131 = load i16*, i16** %12, align 8
  %132 = getelementptr inbounds i16, i16* %131, i32 1
  store i16* %132, i16** %12, align 8
  %133 = load i16*, i16** %11, align 8
  %134 = getelementptr inbounds i16, i16* %133, i32 1
  store i16* %134, i16** %11, align 8
  br label %135

135:                                              ; preds = %126
  %136 = load i16*, i16** %12, align 8
  %137 = load i16*, i16** %14, align 8
  %138 = icmp ult i16* %136, %137
  br i1 %138, label %41, label %139

139:                                              ; preds = %135
  %140 = load i16*, i16** %12, align 8
  %141 = load i16*, i16** %13, align 8
  %142 = icmp ugt i16* %140, %141
  br i1 %142, label %143, label %156

143:                                              ; preds = %139
  %144 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %145 = load i16*, i16** %13, align 8
  %146 = load i16*, i16** %12, align 8
  %147 = load i16*, i16** %13, align 8
  %148 = ptrtoint i16* %146 to i64
  %149 = ptrtoint i16* %147 to i64
  %150 = sub i64 %148, %149
  %151 = sdiv exact i64 %150, 2
  %152 = trunc i64 %151 to i32
  %153 = load i32, i32* %8, align 4
  %154 = load i32, i32* %16, align 4
  %155 = call i32 @fbcon_putcs(%struct.vc_data* %144, i16* %145, i32 %152, i32 %153, i32 %154)
  br label %156

156:                                              ; preds = %143, %139
  %157 = call i32 (...) @console_conditional_schedule()
  %158 = load i32, i32* %10, align 4
  %159 = icmp sgt i32 %158, 0
  br i1 %159, label %160, label %163

160:                                              ; preds = %156
  %161 = load i32, i32* %8, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %8, align 4
  br label %180

163:                                              ; preds = %156
  %164 = load i32, i32* %8, align 4
  %165 = add nsw i32 %164, -1
  store i32 %165, i32* %8, align 4
  %166 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %167 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = load i16*, i16** %12, align 8
  %170 = sext i32 %168 to i64
  %171 = sub i64 0, %170
  %172 = getelementptr inbounds i16, i16* %169, i64 %171
  store i16* %172, i16** %12, align 8
  %173 = load %struct.vc_data*, %struct.vc_data** %6, align 8
  %174 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i16*, i16** %11, align 8
  %177 = sext i32 %175 to i64
  %178 = sub i64 0, %177
  %179 = getelementptr inbounds i16, i16* %176, i64 %178
  store i16* %179, i16** %11, align 8
  br label %180

180:                                              ; preds = %163, %160
  br label %33

181:                                              ; preds = %33
  ret void
}

declare dso_local i16* @advance_row(i16*, i32) #1

declare dso_local zeroext i16 @scr_readw(i16*) #1

declare dso_local i32 @fbcon_putcs(%struct.vc_data*, i16*, i32, i32, i32) #1

declare dso_local i32 @scr_writew(i16 zeroext, i16*) #1

declare dso_local i32 @console_conditional_schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
