; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_setcmap.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_setcmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_cmap = type { i64, i64, i32*, i32*, i32* }
%struct.fb_info = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.uvesafb_pal_entry = type { i32, i32, i32, i64 }

@dac_width = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fb_cmap*, %struct.fb_info*)* @uvesafb_setcmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvesafb_setcmap(%struct.fb_cmap* %0, %struct.fb_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fb_cmap*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca %struct.uvesafb_pal_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fb_cmap* %0, %struct.fb_cmap** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  %10 = load i32, i32* @dac_width, align 4
  %11 = sub nsw i32 16, %10
  store i32 %11, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %12 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %13 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp eq i32 %15, 8
  br i1 %16, label %17, label %130

17:                                               ; preds = %2
  %18 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %19 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %22 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = add nsw i64 %20, %23
  %25 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %26 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %30 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = add nsw i64 %28, %32
  %34 = icmp sgt i64 %24, %33
  br i1 %34, label %44, label %35

35:                                               ; preds = %17
  %36 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %37 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %40 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp slt i64 %38, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %35, %17
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %176

47:                                               ; preds = %35
  %48 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %49 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.uvesafb_pal_entry* @kmalloc_array(i64 %50, i32 24, i32 %51)
  store %struct.uvesafb_pal_entry* %52, %struct.uvesafb_pal_entry** %6, align 8
  %53 = load %struct.uvesafb_pal_entry*, %struct.uvesafb_pal_entry** %6, align 8
  %54 = icmp ne %struct.uvesafb_pal_entry* %53, null
  br i1 %54, label %58, label %55

55:                                               ; preds = %47
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %176

58:                                               ; preds = %47
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %114, %58
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %63 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %62, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp slt i64 %61, %64
  br i1 %65, label %66, label %117

66:                                               ; preds = %59
  %67 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %68 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %8, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* %7, align 4
  %75 = ashr i32 %73, %74
  %76 = load %struct.uvesafb_pal_entry*, %struct.uvesafb_pal_entry** %6, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.uvesafb_pal_entry, %struct.uvesafb_pal_entry* %76, i64 %78
  %80 = getelementptr inbounds %struct.uvesafb_pal_entry, %struct.uvesafb_pal_entry* %79, i32 0, i32 0
  store i32 %75, i32* %80, align 8
  %81 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %82 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %81, i32 0, i32 3
  %83 = load i32*, i32** %82, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds i32, i32* %83, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %7, align 4
  %89 = ashr i32 %87, %88
  %90 = load %struct.uvesafb_pal_entry*, %struct.uvesafb_pal_entry** %6, align 8
  %91 = load i32, i32* %8, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.uvesafb_pal_entry, %struct.uvesafb_pal_entry* %90, i64 %92
  %94 = getelementptr inbounds %struct.uvesafb_pal_entry, %struct.uvesafb_pal_entry* %93, i32 0, i32 1
  store i32 %89, i32* %94, align 4
  %95 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %96 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %95, i32 0, i32 4
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %7, align 4
  %103 = ashr i32 %101, %102
  %104 = load %struct.uvesafb_pal_entry*, %struct.uvesafb_pal_entry** %6, align 8
  %105 = load i32, i32* %8, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.uvesafb_pal_entry, %struct.uvesafb_pal_entry* %104, i64 %106
  %108 = getelementptr inbounds %struct.uvesafb_pal_entry, %struct.uvesafb_pal_entry* %107, i32 0, i32 2
  store i32 %103, i32* %108, align 8
  %109 = load %struct.uvesafb_pal_entry*, %struct.uvesafb_pal_entry** %6, align 8
  %110 = load i32, i32* %8, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.uvesafb_pal_entry, %struct.uvesafb_pal_entry* %109, i64 %111
  %113 = getelementptr inbounds %struct.uvesafb_pal_entry, %struct.uvesafb_pal_entry* %112, i32 0, i32 3
  store i64 0, i64* %113, align 8
  br label %114

114:                                              ; preds = %66
  %115 = load i32, i32* %8, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %8, align 4
  br label %59

117:                                              ; preds = %59
  %118 = load %struct.uvesafb_pal_entry*, %struct.uvesafb_pal_entry** %6, align 8
  %119 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %120 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %119, i32 0, i32 1
  %121 = load i64, i64* %120, align 8
  %122 = trunc i64 %121 to i32
  %123 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %124 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %127 = call i32 @uvesafb_setpalette(%struct.uvesafb_pal_entry* %118, i32 %122, i64 %125, %struct.fb_info* %126)
  store i32 %127, i32* %9, align 4
  %128 = load %struct.uvesafb_pal_entry*, %struct.uvesafb_pal_entry** %6, align 8
  %129 = call i32 @kfree(%struct.uvesafb_pal_entry* %128)
  br label %174

130:                                              ; preds = %2
  store i32 0, i32* %8, align 4
  br label %131

131:                                              ; preds = %170, %130
  %132 = load i32, i32* %8, align 4
  %133 = sext i32 %132 to i64
  %134 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %135 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp slt i64 %133, %136
  br i1 %137, label %138, label %173

138:                                              ; preds = %131
  %139 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %140 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  %144 = add nsw i64 %141, %143
  %145 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %146 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %145, i32 0, i32 2
  %147 = load i32*, i32** %146, align 8
  %148 = load i32, i32* %8, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds i32, i32* %147, i64 %149
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %153 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %152, i32 0, i32 3
  %154 = load i32*, i32** %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i32, i32* %154, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.fb_cmap*, %struct.fb_cmap** %4, align 8
  %160 = getelementptr inbounds %struct.fb_cmap, %struct.fb_cmap* %159, i32 0, i32 4
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = load %struct.fb_info*, %struct.fb_info** %5, align 8
  %167 = call i32 @uvesafb_setcolreg(i64 %144, i32 %151, i32 %158, i32 %165, i32 0, %struct.fb_info* %166)
  %168 = load i32, i32* %9, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %9, align 4
  br label %170

170:                                              ; preds = %138
  %171 = load i32, i32* %8, align 4
  %172 = add nsw i32 %171, 1
  store i32 %172, i32* %8, align 4
  br label %131

173:                                              ; preds = %131
  br label %174

174:                                              ; preds = %173, %117
  %175 = load i32, i32* %9, align 4
  store i32 %175, i32* %3, align 4
  br label %176

176:                                              ; preds = %174, %55, %44
  %177 = load i32, i32* %3, align 4
  ret i32 %177
}

declare dso_local %struct.uvesafb_pal_entry* @kmalloc_array(i64, i32, i32) #1

declare dso_local i32 @uvesafb_setpalette(%struct.uvesafb_pal_entry*, i32, i64, %struct.fb_info*) #1

declare dso_local i32 @kfree(%struct.uvesafb_pal_entry*) #1

declare dso_local i32 @uvesafb_setcolreg(i64, i32, i32, i32, i32, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
