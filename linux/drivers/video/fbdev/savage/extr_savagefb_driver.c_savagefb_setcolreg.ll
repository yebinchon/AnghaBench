; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/savage/extr_savagefb_driver.c_savagefb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/savage/extr_savagefb_driver.c_savagefb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { i64, %struct.TYPE_4__, %struct.savagefb_par* }
%struct.TYPE_4__ = type { i32 }
%struct.savagefb_par = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@NR_PALETTE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @savagefb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @savagefb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.savagefb_par*, align 8
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %15 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %16 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %15, i32 0, i32 2
  %17 = load %struct.savagefb_par*, %struct.savagefb_par** %16, align 8
  store %struct.savagefb_par* %17, %struct.savagefb_par** %14, align 8
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @NR_PALETTE, align 4
  %20 = icmp uge i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %6
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %149

24:                                               ; preds = %6
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.savagefb_par*, %struct.savagefb_par** %14, align 8
  %27 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load i32, i32* %8, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %25, i32* %32, align 4
  %33 = load i32, i32* %10, align 4
  %34 = load %struct.savagefb_par*, %struct.savagefb_par** %14, align 8
  %35 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  store i32 %33, i32* %40, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.savagefb_par*, %struct.savagefb_par** %14, align 8
  %43 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  store i32 %41, i32* %48, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.savagefb_par*, %struct.savagefb_par** %14, align 8
  %51 = getelementptr inbounds %struct.savagefb_par, %struct.savagefb_par* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i32, i32* %8, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 3
  store i32 %49, i32* %56, align 4
  %57 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %58 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  switch i32 %60, label %147 [
    i32 8, label %61
    i32 16, label %77
    i32 24, label %99
    i32 32, label %121
  ]

61:                                               ; preds = %24
  %62 = load i32, i32* %8, align 4
  %63 = load %struct.savagefb_par*, %struct.savagefb_par** %14, align 8
  %64 = call i32 @vga_out8(i32 968, i32 %62, %struct.savagefb_par* %63)
  %65 = load i32, i32* %9, align 4
  %66 = lshr i32 %65, 10
  %67 = load %struct.savagefb_par*, %struct.savagefb_par** %14, align 8
  %68 = call i32 @vga_out8(i32 969, i32 %66, %struct.savagefb_par* %67)
  %69 = load i32, i32* %10, align 4
  %70 = lshr i32 %69, 10
  %71 = load %struct.savagefb_par*, %struct.savagefb_par** %14, align 8
  %72 = call i32 @vga_out8(i32 969, i32 %70, %struct.savagefb_par* %71)
  %73 = load i32, i32* %11, align 4
  %74 = lshr i32 %73, 10
  %75 = load %struct.savagefb_par*, %struct.savagefb_par** %14, align 8
  %76 = call i32 @vga_out8(i32 969, i32 %74, %struct.savagefb_par* %75)
  br label %148

77:                                               ; preds = %24
  %78 = load i32, i32* %8, align 4
  %79 = icmp ult i32 %78, 16
  br i1 %79, label %80, label %98

80:                                               ; preds = %77
  %81 = load i32, i32* %9, align 4
  %82 = and i32 %81, 63488
  %83 = load i32, i32* %10, align 4
  %84 = and i32 %83, 64512
  %85 = lshr i32 %84, 5
  %86 = or i32 %82, %85
  %87 = load i32, i32* %11, align 4
  %88 = and i32 %87, 63488
  %89 = lshr i32 %88, 11
  %90 = or i32 %86, %89
  %91 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %92 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to i32*
  %95 = load i32, i32* %8, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32 %90, i32* %97, align 4
  br label %98

98:                                               ; preds = %80, %77
  br label %148

99:                                               ; preds = %24
  %100 = load i32, i32* %8, align 4
  %101 = icmp ult i32 %100, 16
  br i1 %101, label %102, label %120

102:                                              ; preds = %99
  %103 = load i32, i32* %9, align 4
  %104 = and i32 %103, 65280
  %105 = shl i32 %104, 8
  %106 = load i32, i32* %10, align 4
  %107 = and i32 %106, 65280
  %108 = or i32 %105, %107
  %109 = load i32, i32* %11, align 4
  %110 = and i32 %109, 65280
  %111 = lshr i32 %110, 8
  %112 = or i32 %108, %111
  %113 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %114 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = inttoptr i64 %115 to i32*
  %117 = load i32, i32* %8, align 4
  %118 = zext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %116, i64 %118
  store i32 %112, i32* %119, align 4
  br label %120

120:                                              ; preds = %102, %99
  br label %148

121:                                              ; preds = %24
  %122 = load i32, i32* %8, align 4
  %123 = icmp ult i32 %122, 16
  br i1 %123, label %124, label %146

124:                                              ; preds = %121
  %125 = load i32, i32* %12, align 4
  %126 = and i32 %125, 65280
  %127 = shl i32 %126, 16
  %128 = load i32, i32* %9, align 4
  %129 = and i32 %128, 65280
  %130 = shl i32 %129, 8
  %131 = or i32 %127, %130
  %132 = load i32, i32* %10, align 4
  %133 = and i32 %132, 65280
  %134 = or i32 %131, %133
  %135 = load i32, i32* %11, align 4
  %136 = and i32 %135, 65280
  %137 = lshr i32 %136, 8
  %138 = or i32 %134, %137
  %139 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %140 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = inttoptr i64 %141 to i32*
  %143 = load i32, i32* %8, align 4
  %144 = zext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %142, i64 %144
  store i32 %138, i32* %145, align 4
  br label %146

146:                                              ; preds = %124, %121
  br label %148

147:                                              ; preds = %24
  store i32 1, i32* %7, align 4
  br label %149

148:                                              ; preds = %146, %120, %98, %61
  store i32 0, i32* %7, align 4
  br label %149

149:                                              ; preds = %148, %147, %21
  %150 = load i32, i32* %7, align 4
  ret i32 %150
}

declare dso_local i32 @vga_out8(i32, i32, %struct.savagefb_par*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
