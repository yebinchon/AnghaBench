; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3fb.c_s3fb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_s3fb.c_s3fb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@VGA_PEL_MSK = common dso_local global i32 0, align 4
@VGA_PEL_IW = common dso_local global i32 0, align 4
@VGA_PEL_D = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @s3fb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3fb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %14 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %15 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %168 [
    i32 0, label %18
    i32 4, label %18
    i32 8, label %62
    i32 16, label %86
    i32 24, label %146
    i32 32, label %146
  ]

18:                                               ; preds = %6, %6
  %19 = load i32, i32* %8, align 4
  %20 = icmp sge i32 %19, 16
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %172

24:                                               ; preds = %18
  %25 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %28, 4
  br i1 %29, label %30, label %43

30:                                               ; preds = %24
  %31 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %32 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %30
  %37 = load i32, i32* @VGA_PEL_MSK, align 4
  %38 = call i32 @outb(i32 240, i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = mul nsw i32 %39, 16
  %41 = load i32, i32* @VGA_PEL_IW, align 4
  %42 = call i32 @outb(i32 %40, i32 %41)
  br label %49

43:                                               ; preds = %30, %24
  %44 = load i32, i32* @VGA_PEL_MSK, align 4
  %45 = call i32 @outb(i32 15, i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* @VGA_PEL_IW, align 4
  %48 = call i32 @outb(i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %43, %36
  %50 = load i32, i32* %9, align 4
  %51 = ashr i32 %50, 10
  %52 = load i32, i32* @VGA_PEL_D, align 4
  %53 = call i32 @outb(i32 %51, i32 %52)
  %54 = load i32, i32* %10, align 4
  %55 = ashr i32 %54, 10
  %56 = load i32, i32* @VGA_PEL_D, align 4
  %57 = call i32 @outb(i32 %55, i32 %56)
  %58 = load i32, i32* %11, align 4
  %59 = ashr i32 %58, 10
  %60 = load i32, i32* @VGA_PEL_D, align 4
  %61 = call i32 @outb(i32 %59, i32 %60)
  br label %171

62:                                               ; preds = %6
  %63 = load i32, i32* %8, align 4
  %64 = icmp sge i32 %63, 256
  br i1 %64, label %65, label %68

65:                                               ; preds = %62
  %66 = load i32, i32* @EINVAL, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %7, align 4
  br label %172

68:                                               ; preds = %62
  %69 = load i32, i32* @VGA_PEL_MSK, align 4
  %70 = call i32 @outb(i32 255, i32 %69)
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @VGA_PEL_IW, align 4
  %73 = call i32 @outb(i32 %71, i32 %72)
  %74 = load i32, i32* %9, align 4
  %75 = ashr i32 %74, 10
  %76 = load i32, i32* @VGA_PEL_D, align 4
  %77 = call i32 @outb(i32 %75, i32 %76)
  %78 = load i32, i32* %10, align 4
  %79 = ashr i32 %78, 10
  %80 = load i32, i32* @VGA_PEL_D, align 4
  %81 = call i32 @outb(i32 %79, i32 %80)
  %82 = load i32, i32* %11, align 4
  %83 = ashr i32 %82, 10
  %84 = load i32, i32* @VGA_PEL_D, align 4
  %85 = call i32 @outb(i32 %83, i32 %84)
  br label %171

86:                                               ; preds = %6
  %87 = load i32, i32* %8, align 4
  %88 = icmp sge i32 %87, 16
  br i1 %88, label %89, label %90

89:                                               ; preds = %86
  store i32 0, i32* %7, align 4
  br label %172

90:                                               ; preds = %86
  %91 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %92 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = icmp eq i32 %95, 5
  br i1 %96, label %97, label %116

97:                                               ; preds = %90
  %98 = load i32, i32* %9, align 4
  %99 = and i32 %98, 63488
  %100 = ashr i32 %99, 1
  %101 = load i32, i32* %10, align 4
  %102 = and i32 %101, 63488
  %103 = ashr i32 %102, 6
  %104 = or i32 %100, %103
  %105 = load i32, i32* %11, align 4
  %106 = and i32 %105, 63488
  %107 = ashr i32 %106, 11
  %108 = or i32 %104, %107
  %109 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %110 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = inttoptr i64 %111 to i32*
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 %108, i32* %115, align 4
  br label %145

116:                                              ; preds = %90
  %117 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %118 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = icmp eq i32 %121, 6
  br i1 %122, label %123, label %141

123:                                              ; preds = %116
  %124 = load i32, i32* %9, align 4
  %125 = and i32 %124, 63488
  %126 = load i32, i32* %10, align 4
  %127 = and i32 %126, 64512
  %128 = ashr i32 %127, 5
  %129 = or i32 %125, %128
  %130 = load i32, i32* %11, align 4
  %131 = and i32 %130, 63488
  %132 = ashr i32 %131, 11
  %133 = or i32 %129, %132
  %134 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %135 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = inttoptr i64 %136 to i32*
  %138 = load i32, i32* %8, align 4
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 %133, i32* %140, align 4
  br label %144

141:                                              ; preds = %116
  %142 = load i32, i32* @EINVAL, align 4
  %143 = sub nsw i32 0, %142
  store i32 %143, i32* %7, align 4
  br label %172

144:                                              ; preds = %123
  br label %145

145:                                              ; preds = %144, %97
  br label %171

146:                                              ; preds = %6, %6
  %147 = load i32, i32* %8, align 4
  %148 = icmp sge i32 %147, 16
  br i1 %148, label %149, label %150

149:                                              ; preds = %146
  store i32 0, i32* %7, align 4
  br label %172

150:                                              ; preds = %146
  %151 = load i32, i32* %9, align 4
  %152 = and i32 %151, 65280
  %153 = shl i32 %152, 8
  %154 = load i32, i32* %10, align 4
  %155 = and i32 %154, 65280
  %156 = or i32 %153, %155
  %157 = load i32, i32* %11, align 4
  %158 = and i32 %157, 65280
  %159 = ashr i32 %158, 8
  %160 = or i32 %156, %159
  %161 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %162 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = inttoptr i64 %163 to i32*
  %165 = load i32, i32* %8, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds i32, i32* %164, i64 %166
  store i32 %160, i32* %167, align 4
  br label %171

168:                                              ; preds = %6
  %169 = load i32, i32* @EINVAL, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %7, align 4
  br label %172

171:                                              ; preds = %150, %145, %68, %49
  store i32 0, i32* %7, align 4
  br label %172

172:                                              ; preds = %171, %168, %149, %141, %89, %65, %21
  %173 = load i32, i32* %7, align 4
  ret i32 %173
}

declare dso_local i32 @outb(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
