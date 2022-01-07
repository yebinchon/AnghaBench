; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_udlfb.c_dlfb_set_vid_cmds.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_udlfb.c_dlfb_set_vid_cmds.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fb_var_screeninfo = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i8*, %struct.fb_var_screeninfo*)* @dlfb_set_vid_cmds to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @dlfb_set_vid_cmds(i8* %0, %struct.fb_var_screeninfo* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.fb_var_screeninfo*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.fb_var_screeninfo* %1, %struct.fb_var_screeninfo** %4, align 8
  %10 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %11 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %14 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = add nsw i32 %12, %15
  store i32 %16, i32* %5, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = load i32, i32* %5, align 4
  %19 = call i8* @dlfb_set_register_lfsr16(i8* %17, i32 1, i32 %18)
  store i8* %19, i8** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %22 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = add nsw i32 %20, %23
  store i32 %24, i32* %7, align 4
  %25 = load i8*, i8** %3, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call i8* @dlfb_set_register_lfsr16(i8* %25, i32 3, i32 %26)
  store i8* %27, i8** %3, align 8
  %28 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %29 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %28, i32 0, i32 3
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %32 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = add nsw i32 %30, %33
  store i32 %34, i32* %6, align 4
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i8* @dlfb_set_register_lfsr16(i8* %35, i32 5, i32 %36)
  store i8* %37, i8** %3, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %40 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 4
  %42 = add nsw i32 %38, %41
  store i32 %42, i32* %8, align 4
  %43 = load i8*, i8** %3, align 8
  %44 = load i32, i32* %8, align 4
  %45 = call i8* @dlfb_set_register_lfsr16(i8* %43, i32 7, i32 %44)
  store i8* %45, i8** %3, align 8
  %46 = load i8*, i8** %3, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %49 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %48, i32 0, i32 6
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %47, %50
  %52 = sub nsw i32 %51, 1
  %53 = call i8* @dlfb_set_register_lfsr16(i8* %46, i32 9, i32 %52)
  store i8* %53, i8** %3, align 8
  %54 = load i8*, i8** %3, align 8
  %55 = call i8* @dlfb_set_register_lfsr16(i8* %54, i32 11, i32 1)
  store i8* %55, i8** %3, align 8
  %56 = load i8*, i8** %3, align 8
  %57 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %58 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  %61 = call i8* @dlfb_set_register_lfsr16(i8* %56, i32 13, i32 %60)
  store i8* %61, i8** %3, align 8
  %62 = load i8*, i8** %3, align 8
  %63 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %64 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = call i8* @dlfb_set_register_16(i8* %62, i32 15, i32 %65)
  store i8* %66, i8** %3, align 8
  %67 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %68 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %71 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %69, %72
  %74 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %75 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %73, %76
  %78 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %79 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 4
  %81 = add nsw i32 %77, %80
  store i32 %81, i32* %9, align 4
  %82 = load i8*, i8** %3, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i8* @dlfb_set_register_lfsr16(i8* %82, i32 17, i32 %83)
  store i8* %84, i8** %3, align 8
  %85 = load i8*, i8** %3, align 8
  %86 = call i8* @dlfb_set_register_lfsr16(i8* %85, i32 19, i32 0)
  store i8* %86, i8** %3, align 8
  %87 = load i8*, i8** %3, align 8
  %88 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %89 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 4
  %91 = call i8* @dlfb_set_register_lfsr16(i8* %87, i32 21, i32 %90)
  store i8* %91, i8** %3, align 8
  %92 = load i8*, i8** %3, align 8
  %93 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %94 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %93, i32 0, i32 5
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @dlfb_set_register_16(i8* %92, i32 23, i32 %95)
  store i8* %96, i8** %3, align 8
  %97 = load i8*, i8** %3, align 8
  %98 = load %struct.fb_var_screeninfo*, %struct.fb_var_screeninfo** %4, align 8
  %99 = getelementptr inbounds %struct.fb_var_screeninfo, %struct.fb_var_screeninfo* %98, i32 0, i32 8
  %100 = load i32, i32* %99, align 4
  %101 = sdiv i32 200000000, %100
  %102 = call i8* @dlfb_set_register_16be(i8* %97, i32 27, i32 %101)
  store i8* %102, i8** %3, align 8
  %103 = load i8*, i8** %3, align 8
  ret i8* %103
}

declare dso_local i8* @dlfb_set_register_lfsr16(i8*, i32, i32) #1

declare dso_local i8* @dlfb_set_register_16(i8*, i32, i32) #1

declare dso_local i8* @dlfb_set_register_16be(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
