; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon_ud.c_ud_clear.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon_ud.c_ud_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { %struct.TYPE_5__, i64 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.fb_info = type { %struct.TYPE_6__*, %struct.fbcon_ops* }
%struct.TYPE_6__ = type { i32 (%struct.fb_info*, %struct.fb_fillrect*)* }
%struct.fb_fillrect = type { i32, i32, i32, i8*, i8*, i32 }
%struct.fbcon_ops = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ROP_COPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, %struct.fb_info*, i32, i32, i32, i32)* @ud_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ud_clear(%struct.vc_data* %0, %struct.fb_info* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.vc_data*, align 8
  %8 = alloca %struct.fb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.fbcon_ops*, align 8
  %14 = alloca %struct.fb_fillrect, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %7, align 8
  store %struct.fb_info* %1, %struct.fb_info** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %19 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %18, i32 0, i32 1
  %20 = load %struct.fbcon_ops*, %struct.fbcon_ops** %19, align 8
  store %struct.fbcon_ops* %20, %struct.fbcon_ops** %13, align 8
  %21 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %22 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 13, i32 12
  store i32 %26, i32* %15, align 4
  %27 = load %struct.fbcon_ops*, %struct.fbcon_ops** %13, align 8
  %28 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %27, i32 0, i32 0
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %33 = call i8* @GETVYRES(i32 %31, %struct.fb_info* %32)
  store i8* %33, i8** %16, align 8
  %34 = load %struct.fbcon_ops*, %struct.fbcon_ops** %13, align 8
  %35 = getelementptr inbounds %struct.fbcon_ops, %struct.fbcon_ops* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %40 = call i8* @GETVXRES(i32 %38, %struct.fb_info* %39)
  store i8* %40, i8** %17, align 8
  %41 = load i32, i32* %15, align 4
  %42 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %43 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %44 = call i32 @attr_bgcol_ec(i32 %41, %struct.vc_data* %42, %struct.fb_info* %43)
  %45 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 5
  store i32 %44, i32* %45, align 8
  %46 = load i8*, i8** %16, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %11, align 4
  %49 = add nsw i32 %47, %48
  %50 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %51 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = mul nsw i32 %49, %53
  %55 = sext i32 %54 to i64
  %56 = sub i64 0, %55
  %57 = getelementptr i8, i8* %46, i64 %56
  %58 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 4
  store i8* %57, i8** %58, align 8
  %59 = load i8*, i8** %17, align 8
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* %12, align 4
  %62 = add nsw i32 %60, %61
  %63 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %64 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = mul nsw i32 %62, %66
  %68 = sext i32 %67 to i64
  %69 = sub i64 0, %68
  %70 = getelementptr i8, i8* %59, i64 %69
  %71 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 3
  store i8* %70, i8** %71, align 8
  %72 = load i32, i32* %12, align 4
  %73 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %74 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = mul nsw i32 %72, %76
  %78 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 0
  store i32 %77, i32* %78, align 8
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.vc_data*, %struct.vc_data** %7, align 8
  %81 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %80, i32 0, i32 0
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = mul nsw i32 %79, %83
  %85 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 1
  store i32 %84, i32* %85, align 4
  %86 = load i32, i32* @ROP_COPY, align 4
  %87 = getelementptr inbounds %struct.fb_fillrect, %struct.fb_fillrect* %14, i32 0, i32 2
  store i32 %86, i32* %87, align 8
  %88 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %89 = getelementptr inbounds %struct.fb_info, %struct.fb_info* %88, i32 0, i32 0
  %90 = load %struct.TYPE_6__*, %struct.TYPE_6__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 0
  %92 = load i32 (%struct.fb_info*, %struct.fb_fillrect*)*, i32 (%struct.fb_info*, %struct.fb_fillrect*)** %91, align 8
  %93 = load %struct.fb_info*, %struct.fb_info** %8, align 8
  %94 = call i32 %92(%struct.fb_info* %93, %struct.fb_fillrect* %14)
  ret void
}

declare dso_local i8* @GETVYRES(i32, %struct.fb_info*) #1

declare dso_local i8* @GETVXRES(i32, %struct.fb_info*) #1

declare dso_local i32 @attr_bgcol_ec(i32, %struct.vc_data*, %struct.fb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
