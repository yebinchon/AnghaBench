; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_setcolreg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_setcolreg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_info = type { %struct.TYPE_10__, i64, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { i32, %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.uvesafb_pal_entry = type { i32, i32, i32, i64 }

@dac_width = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, %struct.fb_info*)* @uvesafb_setcolreg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvesafb_setcolreg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.fb_info* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fb_info*, align 8
  %14 = alloca %struct.uvesafb_pal_entry, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 %0, i32* %8, align 4
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.fb_info* %5, %struct.fb_info** %13, align 8
  %17 = load i32, i32* @dac_width, align 4
  %18 = sub nsw i32 16, %17
  store i32 %18, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %21 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp uge i32 %19, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %6
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %7, align 4
  br label %145

28:                                               ; preds = %6
  %29 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 8
  br i1 %33, label %34, label %51

34:                                               ; preds = %28
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* %15, align 4
  %37 = lshr i32 %35, %36
  %38 = getelementptr inbounds %struct.uvesafb_pal_entry, %struct.uvesafb_pal_entry* %14, i32 0, i32 0
  store i32 %37, i32* %38, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* %15, align 4
  %41 = lshr i32 %39, %40
  %42 = getelementptr inbounds %struct.uvesafb_pal_entry, %struct.uvesafb_pal_entry* %14, i32 0, i32 1
  store i32 %41, i32* %42, align 4
  %43 = load i32, i32* %11, align 4
  %44 = load i32, i32* %15, align 4
  %45 = lshr i32 %43, %44
  %46 = getelementptr inbounds %struct.uvesafb_pal_entry, %struct.uvesafb_pal_entry* %14, i32 0, i32 2
  store i32 %45, i32* %46, align 8
  %47 = getelementptr inbounds %struct.uvesafb_pal_entry, %struct.uvesafb_pal_entry* %14, i32 0, i32 3
  store i64 0, i64* %47, align 8
  %48 = load i32, i32* %8, align 4
  %49 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %50 = call i32 @uvesafb_setpalette(%struct.uvesafb_pal_entry* %14, i32 1, i32 %48, %struct.fb_info* %49)
  store i32 %50, i32* %16, align 4
  br label %143

51:                                               ; preds = %28
  %52 = load i32, i32* %8, align 4
  %53 = icmp ult i32 %52, 16
  br i1 %53, label %54, label %142

54:                                               ; preds = %51
  %55 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %56 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  switch i32 %58, label %141 [
    i32 16, label %59
    i32 24, label %104
    i32 32, label %104
  ]

59:                                               ; preds = %54
  %60 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %61 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 3
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %64, 10
  br i1 %65, label %66, label %85

66:                                               ; preds = %59
  %67 = load i32, i32* %9, align 4
  %68 = and i32 %67, 63488
  %69 = lshr i32 %68, 1
  %70 = load i32, i32* %10, align 4
  %71 = and i32 %70, 63488
  %72 = lshr i32 %71, 6
  %73 = or i32 %69, %72
  %74 = load i32, i32* %11, align 4
  %75 = and i32 %74, 63488
  %76 = lshr i32 %75, 11
  %77 = or i32 %73, %76
  %78 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %79 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %78, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = inttoptr i64 %80 to i32*
  %82 = load i32, i32* %8, align 4
  %83 = zext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %77, i32* %84, align 4
  br label %103

85:                                               ; preds = %59
  %86 = load i32, i32* %9, align 4
  %87 = and i32 %86, 63488
  %88 = load i32, i32* %10, align 4
  %89 = and i32 %88, 64512
  %90 = lshr i32 %89, 5
  %91 = or i32 %87, %90
  %92 = load i32, i32* %11, align 4
  %93 = and i32 %92, 63488
  %94 = lshr i32 %93, 11
  %95 = or i32 %91, %94
  %96 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %97 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %96, i32 0, i32 1
  %98 = load i64, i64* %97, align 8
  %99 = inttoptr i64 %98 to i32*
  %100 = load i32, i32* %8, align 4
  %101 = zext i32 %100 to i64
  %102 = getelementptr inbounds i32, i32* %99, i64 %101
  store i32 %95, i32* %102, align 4
  br label %103

103:                                              ; preds = %85, %66
  br label %141

104:                                              ; preds = %54, %54
  %105 = load i32, i32* %9, align 4
  %106 = lshr i32 %105, 8
  store i32 %106, i32* %9, align 4
  %107 = load i32, i32* %10, align 4
  %108 = lshr i32 %107, 8
  store i32 %108, i32* %10, align 4
  %109 = load i32, i32* %11, align 4
  %110 = lshr i32 %109, 8
  store i32 %110, i32* %11, align 4
  %111 = load i32, i32* %9, align 4
  %112 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %113 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = shl i32 %111, %116
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %120 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 2
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = shl i32 %118, %123
  %125 = or i32 %117, %124
  %126 = load i32, i32* %11, align 4
  %127 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %128 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = shl i32 %126, %131
  %133 = or i32 %125, %132
  %134 = load %struct.fb_info*, %struct.fb_info** %13, align 8
  %135 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = inttoptr i64 %136 to i32*
  %138 = load i32, i32* %8, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds i32, i32* %137, i64 %139
  store i32 %133, i32* %140, align 4
  br label %141

141:                                              ; preds = %54, %104, %103
  br label %142

142:                                              ; preds = %141, %51
  br label %143

143:                                              ; preds = %142, %34
  %144 = load i32, i32* %16, align 4
  store i32 %144, i32* %7, align 4
  br label %145

145:                                              ; preds = %143, %25
  %146 = load i32, i32* %7, align 4
  ret i32 %146
}

declare dso_local i32 @uvesafb_setpalette(%struct.uvesafb_pal_entry*, i32, i32, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
