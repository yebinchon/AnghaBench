; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_broadsheetfb.c_broadsheet_write_spiflash.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_broadsheetfb.c_broadsheet_write_spiflash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.broadsheetfb_par = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.broadsheetfb_par*, i32, i32*, i32, i32)* @broadsheet_write_spiflash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @broadsheet_write_spiflash(%struct.broadsheetfb_par* %0, i32 %1, i32* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.broadsheetfb_par*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.broadsheetfb_par* %0, %struct.broadsheetfb_par** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32* %2, i32** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %17, align 4
  %18 = load i32, i32* %11, align 4
  switch i32 %18, label %21 [
    i32 16, label %19
    i32 17, label %20
  ]

19:                                               ; preds = %5
  store i32 32768, i32* %12, align 4
  br label %22

20:                                               ; preds = %5
  br label %21

21:                                               ; preds = %5, %20
  store i32 65536, i32* %12, align 4
  br label %22

22:                                               ; preds = %21, %19
  br label %23

23:                                               ; preds = %51, %22
  %24 = load i32, i32* %10, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %58

26:                                               ; preds = %23
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %17, align 4
  %29 = add nsw i32 %27, %28
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %12, align 4
  %32 = call i32 @roundup(i32 %30, i32 %31)
  %33 = load i32, i32* %14, align 4
  %34 = sub nsw i32 %32, %33
  store i32 %34, i32* %16, align 4
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %16, align 4
  %37 = call i32 @min(i32 %35, i32 %36)
  store i32 %37, i32* %15, align 4
  %38 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %7, align 8
  %39 = load i32, i32* %12, align 4
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* %15, align 4
  %42 = load i32*, i32** %9, align 8
  %43 = load i32, i32* %17, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = call i32 @broadsheet_spiflash_rewrite_sector(%struct.broadsheetfb_par* %38, i32 %39, i32 %40, i32 %41, i32* %45)
  store i32 %46, i32* %13, align 4
  %47 = load i32, i32* %13, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %26
  %50 = load i32, i32* %13, align 4
  store i32 %50, i32* %6, align 4
  br label %59

51:                                               ; preds = %26
  %52 = load i32, i32* %15, align 4
  %53 = load i32, i32* %17, align 4
  %54 = add nsw i32 %53, %52
  store i32 %54, i32* %17, align 4
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %10, align 4
  %57 = sub nsw i32 %56, %55
  store i32 %57, i32* %10, align 4
  br label %23

58:                                               ; preds = %23
  store i32 0, i32* %6, align 4
  br label %59

59:                                               ; preds = %58, %49
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

declare dso_local i32 @roundup(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @broadsheet_spiflash_rewrite_sector(%struct.broadsheetfb_par*, i32, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
