; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_generic_blank.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/core/extr_fbcon.c_fbcon_generic_blank.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i16, i32, i32, i64 }
%struct.fb_info = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*, %struct.fb_info*, i32)* @fbcon_generic_blank to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fbcon_generic_blank(%struct.vc_data* %0, %struct.fb_info* %1, i32 %2) #0 {
  %4 = alloca %struct.vc_data*, align 8
  %5 = alloca %struct.fb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  store %struct.vc_data* %0, %struct.vc_data** %4, align 8
  store %struct.fb_info* %1, %struct.fb_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %41

11:                                               ; preds = %3
  %12 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %13 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 511, i32 255
  %18 = trunc i32 %17 to i16
  store i16 %18, i16* %7, align 2
  %19 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %20 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %19, i32 0, i32 0
  %21 = load i16, i16* %20, align 8
  store i16 %21, i16* %8, align 2
  %22 = load i16, i16* %7, align 2
  %23 = zext i16 %22 to i32
  %24 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %25 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %24, i32 0, i32 0
  %26 = load i16, i16* %25, align 8
  %27 = zext i16 %26 to i32
  %28 = and i32 %27, %23
  %29 = trunc i32 %28 to i16
  store i16 %29, i16* %25, align 8
  %30 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %31 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %32 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %35 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @fbcon_clear(%struct.vc_data* %30, i32 0, i32 0, i32 %33, i32 %36)
  %38 = load i16, i16* %8, align 2
  %39 = load %struct.vc_data*, %struct.vc_data** %4, align 8
  %40 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %39, i32 0, i32 0
  store i16 %38, i16* %40, align 8
  br label %41

41:                                               ; preds = %11, %3
  ret void
}

declare dso_local i32 @fbcon_clear(%struct.vc_data*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
