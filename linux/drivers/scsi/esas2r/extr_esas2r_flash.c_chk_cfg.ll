; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_chk_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_chk_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FM_BUF_SZ = common dso_local global i64 0, align 8
@FBT_CPYR = common dso_local global i64 0, align 8
@FBT_SETUP = common dso_local global i64 0, align 8
@FBT_FLASH_VER = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32*, i64, i64*)* @chk_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @chk_cfg(i32* %0, i64 %1, i64* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = bitcast i32* %13 to i64*
  %15 = getelementptr inbounds i64, i64* %14, i64 -1
  store i64* %15, i64** %8, align 8
  store i64 0, i64* %9, align 8
  %16 = load i64, i64* %6, align 8
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %10, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i64, i64* @FM_BUF_SZ, align 8
  store i64 %20, i64* %10, align 8
  br label %21

21:                                               ; preds = %19, %3
  %22 = load i64*, i64** %7, align 8
  %23 = icmp ne i64* %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = load i64*, i64** %7, align 8
  store i64 0, i64* %25, align 8
  br label %26

26:                                               ; preds = %24, %21
  br label %27

27:                                               ; preds = %26, %78
  %28 = load i64*, i64** %8, align 8
  %29 = getelementptr inbounds i64, i64* %28, i32 -1
  store i64* %29, i64** %8, align 8
  %30 = load i64, i64* %28, align 8
  %31 = trunc i64 %30 to i32
  %32 = call i64 @le16_to_cpu(i32 %31)
  store i64 %32, i64* %11, align 8
  %33 = load i64*, i64** %8, align 8
  %34 = getelementptr inbounds i64, i64* %33, i32 -1
  store i64* %34, i64** %8, align 8
  %35 = load i64, i64* %33, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i64 @le16_to_cpu(i32 %36)
  store i64 %37, i64* %12, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load i64, i64* @FBT_CPYR, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %50

41:                                               ; preds = %27
  %42 = load i64, i64* %11, align 8
  %43 = load i64, i64* @FBT_SETUP, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load i64, i64* %11, align 8
  %47 = load i64, i64* @FBT_FLASH_VER, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %45
  br label %79

50:                                               ; preds = %45, %41, %27
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* @FBT_FLASH_VER, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load i64*, i64** %7, align 8
  %56 = icmp ne i64* %55, null
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = load i64*, i64** %8, align 8
  %59 = getelementptr inbounds i64, i64* %58, i64 -1
  %60 = load i64, i64* %59, align 8
  %61 = call i64 @le32_to_cpu(i64 %60)
  %62 = load i64*, i64** %7, align 8
  store i64 %61, i64* %62, align 8
  br label %63

63:                                               ; preds = %57, %54, %50
  %64 = load i64, i64* %12, align 8
  %65 = add i64 %64, 16
  %66 = load i64, i64* %9, align 8
  %67 = add i64 %66, %65
  store i64 %67, i64* %9, align 8
  %68 = load i64, i64* %12, align 8
  %69 = udiv i64 %68, 8
  %70 = load i64*, i64** %8, align 8
  %71 = sub i64 0, %69
  %72 = getelementptr inbounds i64, i64* %70, i64 %71
  store i64* %72, i64** %8, align 8
  %73 = load i64, i64* %9, align 8
  %74 = load i64, i64* %10, align 8
  %75 = sub i64 %74, 16
  %76 = icmp ugt i64 %73, %75
  br i1 %76, label %77, label %78

77:                                               ; preds = %63
  br label %79

78:                                               ; preds = %63
  br label %27

79:                                               ; preds = %77, %49
  %80 = load i64, i64* %6, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %87

82:                                               ; preds = %79
  %83 = load i64, i64* %9, align 8
  %84 = load i64, i64* %6, align 8
  %85 = icmp ne i64 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %82
  store i64 0, i64* %4, align 8
  br label %89

87:                                               ; preds = %82, %79
  %88 = load i64, i64* %9, align 8
  store i64 %88, i64* %4, align 8
  br label %89

89:                                               ; preds = %87, %86
  %90 = load i64, i64* %4, align 8
  ret i64 %90
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @le32_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
