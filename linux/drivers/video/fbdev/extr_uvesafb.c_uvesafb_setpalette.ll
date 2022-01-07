; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_setpalette.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_uvesafb.c_uvesafb_setpalette.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uvesafb_pal_entry = type { i32, i32, i32 }
%struct.fb_info = type { %struct.uvesafb_par* }
%struct.uvesafb_par = type { i32, i32, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.uvesafb_ktask = type { %struct.TYPE_6__, %struct.uvesafb_pal_entry* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TF_BUF_ESDI = common dso_local global i32 0, align 4
@VBE_MODE_VGACOMPAT = common dso_local global i32 0, align 4
@dac_reg = common dso_local global i32 0, align 4
@dac_val = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uvesafb_pal_entry*, i32, i32, %struct.fb_info*)* @uvesafb_setpalette to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvesafb_setpalette(%struct.uvesafb_pal_entry* %0, i32 %1, i32 %2, %struct.fb_info* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.uvesafb_pal_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.fb_info*, align 8
  %10 = alloca %struct.uvesafb_ktask*, align 8
  %11 = alloca i32, align 4
  store %struct.uvesafb_pal_entry* %0, %struct.uvesafb_pal_entry** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store %struct.fb_info* %3, %struct.fb_info** %9, align 8
  store i32 0, i32* %11, align 4
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = add nsw i32 %12, %13
  %15 = icmp sgt i32 %14, 256
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %73

19:                                               ; preds = %4
  %20 = call %struct.uvesafb_ktask* (...) @uvesafb_prep()
  store %struct.uvesafb_ktask* %20, %struct.uvesafb_ktask** %10, align 8
  %21 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %10, align 8
  %22 = icmp ne %struct.uvesafb_ktask* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %73

26:                                               ; preds = %19
  %27 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %10, align 8
  %28 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 0
  store i32 20233, i32* %30, align 4
  %31 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %10, align 8
  %32 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 1
  store i32 0, i32* %34, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %10, align 8
  %37 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 2
  store i32 %35, i32* %39, align 4
  %40 = load i32, i32* %8, align 4
  %41 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %10, align 8
  %42 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 3
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* @TF_BUF_ESDI, align 4
  %46 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %10, align 8
  %47 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = mul i64 12, %50
  %52 = trunc i64 %51 to i32
  %53 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %10, align 8
  %54 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load %struct.uvesafb_pal_entry*, %struct.uvesafb_pal_entry** %6, align 8
  %57 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %10, align 8
  %58 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %57, i32 0, i32 1
  store %struct.uvesafb_pal_entry* %56, %struct.uvesafb_pal_entry** %58, align 8
  %59 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %10, align 8
  %60 = call i32 @uvesafb_exec(%struct.uvesafb_ktask* %59)
  store i32 %60, i32* %11, align 4
  %61 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %10, align 8
  %62 = getelementptr inbounds %struct.uvesafb_ktask, %struct.uvesafb_ktask* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = and i32 %65, 65535
  %67 = icmp ne i32 %66, 79
  br i1 %67, label %68, label %69

68:                                               ; preds = %26
  store i32 1, i32* %11, align 4
  br label %69

69:                                               ; preds = %68, %26
  %70 = load %struct.uvesafb_ktask*, %struct.uvesafb_ktask** %10, align 8
  %71 = call i32 @uvesafb_free(%struct.uvesafb_ktask* %70)
  %72 = load i32, i32* %11, align 4
  store i32 %72, i32* %5, align 4
  br label %73

73:                                               ; preds = %69, %23, %16
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local %struct.uvesafb_ktask* @uvesafb_prep(...) #1

declare dso_local i32 @uvesafb_exec(%struct.uvesafb_ktask*) #1

declare dso_local i32 @uvesafb_free(%struct.uvesafb_ktask*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
