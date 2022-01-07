; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/extr_vgastate.c_save_vga_mode.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/extr_vgastate.c_save_vga_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vgastate = type { i32, i32, i32, i32, i32, i64 }
%struct.regstate = type { i32, i32*, i32*, i32*, i32* }

@VGA_MIS_R = common dso_local global i16 0, align 2
@VGA_ATT_W = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vgastate*)* @save_vga_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @save_vga_mode(%struct.vgastate* %0) #0 {
  %2 = alloca %struct.vgastate*, align 8
  %3 = alloca %struct.regstate*, align 8
  %4 = alloca i16, align 2
  %5 = alloca i32, align 4
  store %struct.vgastate* %0, %struct.vgastate** %2, align 8
  %6 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %7 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %6, i32 0, i32 5
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.regstate*
  store %struct.regstate* %9, %struct.regstate** %3, align 8
  %10 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %11 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = load i16, i16* @VGA_MIS_R, align 2
  %14 = call i32 @vga_r(i32 %12, i16 zeroext %13)
  %15 = load %struct.regstate*, %struct.regstate** %3, align 8
  %16 = getelementptr inbounds %struct.regstate, %struct.regstate* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 8
  %17 = load %struct.regstate*, %struct.regstate** %3, align 8
  %18 = getelementptr inbounds %struct.regstate, %struct.regstate* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  store i16 976, i16* %4, align 2
  br label %24

23:                                               ; preds = %1
  store i16 944, i16* %4, align 2
  br label %24

24:                                               ; preds = %23, %22
  store i32 0, i32* %5, align 4
  br label %25

25:                                               ; preds = %44, %24
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %28 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp slt i32 %26, %29
  br i1 %30, label %31, label %47

31:                                               ; preds = %25
  %32 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %33 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = load i16, i16* %4, align 2
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @vga_rcrtcs(i32 %34, i16 zeroext %35, i32 %36)
  %38 = load %struct.regstate*, %struct.regstate** %3, align 8
  %39 = getelementptr inbounds %struct.regstate, %struct.regstate* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  store i32 %37, i32* %43, align 4
  br label %44

44:                                               ; preds = %31
  %45 = load i32, i32* %5, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %5, align 4
  br label %25

47:                                               ; preds = %25
  %48 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %49 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %48, i32 0, i32 4
  %50 = load i32, i32* %49, align 8
  %51 = load i16, i16* %4, align 2
  %52 = zext i16 %51 to i32
  %53 = add nsw i32 %52, 10
  %54 = trunc i32 %53 to i16
  %55 = call i32 @vga_r(i32 %50, i16 zeroext %54)
  %56 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %57 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @VGA_ATT_W, align 4
  %60 = call i32 @vga_w(i32 %58, i32 %59, i32 0)
  store i32 0, i32* %5, align 4
  br label %61

61:                                               ; preds = %87, %47
  %62 = load i32, i32* %5, align 4
  %63 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %64 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp slt i32 %62, %65
  br i1 %66, label %67, label %90

67:                                               ; preds = %61
  %68 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %69 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load i16, i16* %4, align 2
  %72 = zext i16 %71 to i32
  %73 = add nsw i32 %72, 10
  %74 = trunc i32 %73 to i16
  %75 = call i32 @vga_r(i32 %70, i16 zeroext %74)
  %76 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %77 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* %5, align 4
  %80 = call i32 @vga_rattr(i32 %78, i32 %79)
  %81 = load %struct.regstate*, %struct.regstate** %3, align 8
  %82 = getelementptr inbounds %struct.regstate, %struct.regstate* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  store i32 %80, i32* %86, align 4
  br label %87

87:                                               ; preds = %67
  %88 = load i32, i32* %5, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %5, align 4
  br label %61

90:                                               ; preds = %61
  %91 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %92 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load i16, i16* %4, align 2
  %95 = zext i16 %94 to i32
  %96 = add nsw i32 %95, 10
  %97 = trunc i32 %96 to i16
  %98 = call i32 @vga_r(i32 %93, i16 zeroext %97)
  %99 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %100 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %99, i32 0, i32 4
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @VGA_ATT_W, align 4
  %103 = call i32 @vga_w(i32 %101, i32 %102, i32 32)
  store i32 0, i32* %5, align 4
  br label %104

104:                                              ; preds = %122, %90
  %105 = load i32, i32* %5, align 4
  %106 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %107 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 8
  %109 = icmp slt i32 %105, %108
  br i1 %109, label %110, label %125

110:                                              ; preds = %104
  %111 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %112 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* %5, align 4
  %115 = call i32 @vga_rgfx(i32 %113, i32 %114)
  %116 = load %struct.regstate*, %struct.regstate** %3, align 8
  %117 = getelementptr inbounds %struct.regstate, %struct.regstate* %116, i32 0, i32 2
  %118 = load i32*, i32** %117, align 8
  %119 = load i32, i32* %5, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  store i32 %115, i32* %121, align 4
  br label %122

122:                                              ; preds = %110
  %123 = load i32, i32* %5, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %5, align 4
  br label %104

125:                                              ; preds = %104
  store i32 0, i32* %5, align 4
  br label %126

126:                                              ; preds = %144, %125
  %127 = load i32, i32* %5, align 4
  %128 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %129 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = icmp slt i32 %127, %130
  br i1 %131, label %132, label %147

132:                                              ; preds = %126
  %133 = load %struct.vgastate*, %struct.vgastate** %2, align 8
  %134 = getelementptr inbounds %struct.vgastate, %struct.vgastate* %133, i32 0, i32 4
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* %5, align 4
  %137 = call i32 @vga_rseq(i32 %135, i32 %136)
  %138 = load %struct.regstate*, %struct.regstate** %3, align 8
  %139 = getelementptr inbounds %struct.regstate, %struct.regstate* %138, i32 0, i32 1
  %140 = load i32*, i32** %139, align 8
  %141 = load i32, i32* %5, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i32, i32* %140, i64 %142
  store i32 %137, i32* %143, align 4
  br label %144

144:                                              ; preds = %132
  %145 = load i32, i32* %5, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %5, align 4
  br label %126

147:                                              ; preds = %126
  ret void
}

declare dso_local i32 @vga_r(i32, i16 zeroext) #1

declare dso_local i32 @vga_rcrtcs(i32, i16 zeroext, i32) #1

declare dso_local i32 @vga_w(i32, i32, i32) #1

declare dso_local i32 @vga_rattr(i32, i32) #1

declare dso_local i32 @vga_rgfx(i32, i32) #1

declare dso_local i32 @vga_rseq(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
