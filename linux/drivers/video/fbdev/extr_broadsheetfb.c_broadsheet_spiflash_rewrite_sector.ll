; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_broadsheetfb.c_broadsheet_spiflash_rewrite_sector.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/extr_broadsheetfb.c_broadsheet_spiflash_rewrite_sector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.broadsheetfb_par = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.broadsheetfb_par*, i32, i32, i32, i8*)* @broadsheet_spiflash_rewrite_sector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @broadsheet_spiflash_rewrite_sector(%struct.broadsheetfb_par* %0, i32 %1, i32 %2, i32 %3, i8* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.broadsheetfb_par*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.broadsheetfb_par* %0, %struct.broadsheetfb_par** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call i8* @kzalloc(i32 %17, i32 %18)
  store i8* %19, i8** %13, align 8
  %20 = load i8*, i8** %13, align 8
  %21 = icmp ne i8* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %5
  %23 = load i32, i32* @ENOMEM, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %6, align 4
  br label %92

25:                                               ; preds = %5
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %8, align 4
  %28 = sdiv i32 %26, %27
  %29 = load i32, i32* %8, align 4
  %30 = mul nsw i32 %28, %29
  store i32 %30, i32* %15, align 4
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp ne i32 %31, %32
  br i1 %33, label %34, label %44

34:                                               ; preds = %25
  %35 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %7, align 8
  %36 = load i32, i32* %15, align 4
  %37 = load i32, i32* %9, align 4
  %38 = load i8*, i8** %13, align 8
  %39 = call i32 @broadsheet_spiflash_read_range(%struct.broadsheetfb_par* %35, i32 %36, i32 %37, i8* %38)
  store i32 %39, i32* %12, align 4
  %40 = load i32, i32* %12, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  br label %88

43:                                               ; preds = %34
  br label %44

44:                                               ; preds = %43, %25
  %45 = load i8*, i8** %13, align 8
  %46 = load i32, i32* %9, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds i8, i8* %45, i64 %47
  %49 = load i8*, i8** %11, align 8
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @memcpy(i8* %48, i8* %49, i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %10, align 4
  %54 = add nsw i32 %52, %53
  %55 = load i32, i32* %8, align 4
  %56 = srem i32 %54, %55
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %14, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %75

59:                                               ; preds = %44
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %14, align 4
  %62 = sub nsw i32 %60, %61
  store i32 %62, i32* %16, align 4
  %63 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %7, align 8
  %64 = load i32, i32* %14, align 4
  %65 = load i32, i32* %16, align 4
  %66 = load i8*, i8** %13, align 8
  %67 = load i32, i32* %14, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i8, i8* %66, i64 %68
  %70 = call i32 @broadsheet_spiflash_read_range(%struct.broadsheetfb_par* %63, i32 %64, i32 %65, i8* %69)
  store i32 %70, i32* %12, align 4
  %71 = load i32, i32* %12, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %59
  br label %88

74:                                               ; preds = %59
  br label %75

75:                                               ; preds = %74, %44
  %76 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %7, align 8
  %77 = load i32, i32* %15, align 4
  %78 = call i32 @broadsheet_spiflash_erase_sector(%struct.broadsheetfb_par* %76, i32 %77)
  store i32 %78, i32* %12, align 4
  %79 = load i32, i32* %12, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %88

82:                                               ; preds = %75
  %83 = load %struct.broadsheetfb_par*, %struct.broadsheetfb_par** %7, align 8
  %84 = load i32, i32* %15, align 4
  %85 = load i8*, i8** %13, align 8
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @broadsheet_spiflash_write_sector(%struct.broadsheetfb_par* %83, i32 %84, i8* %85, i32 %86)
  store i32 %87, i32* %12, align 4
  br label %88

88:                                               ; preds = %82, %81, %73, %42
  %89 = load i8*, i8** %13, align 8
  %90 = call i32 @kfree(i8* %89)
  %91 = load i32, i32* %12, align 4
  store i32 %91, i32* %6, align 4
  br label %92

92:                                               ; preds = %88, %22
  %93 = load i32, i32* %6, align 4
  ret i32 %93
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @broadsheet_spiflash_read_range(%struct.broadsheetfb_par*, i32, i32, i8*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @broadsheet_spiflash_erase_sector(%struct.broadsheetfb_par*, i32) #1

declare dso_local i32 @broadsheet_spiflash_write_sector(%struct.broadsheetfb_par*, i32, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
