; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_rave-sp-eeprom.c_rave_sp_eeprom_page_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_rave-sp-eeprom.c_rave_sp_eeprom_page_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rave_sp_eeprom = type { i32 }
%struct.rave_sp_eeprom_page = type { i32* }

@RAVE_SP_EEPROM_PAGE_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@RAVE_SP_EEPROM_WRITE = common dso_local global i32 0, align 4
@RAVE_SP_EEPROM_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rave_sp_eeprom*, i32, i32, i32*, i64)* @rave_sp_eeprom_page_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rave_sp_eeprom_page_access(%struct.rave_sp_eeprom* %0, i32 %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.rave_sp_eeprom*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.rave_sp_eeprom_page, align 8
  %15 = alloca i32, align 4
  store %struct.rave_sp_eeprom* %0, %struct.rave_sp_eeprom** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @RAVE_SP_EEPROM_PAGE_SIZE, align 4
  %18 = urem i32 %16, %17
  store i32 %18, i32* %12, align 4
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @RAVE_SP_EEPROM_PAGE_SIZE, align 4
  %21 = udiv i32 %19, %20
  store i32 %21, i32* %13, align 4
  %22 = load i64, i64* %11, align 8
  %23 = load i32, i32* %12, align 4
  %24 = zext i32 %23 to i64
  %25 = sub i64 8, %24
  %26 = icmp ugt i64 %22, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @WARN_ON(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %5
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %84

33:                                               ; preds = %5
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @RAVE_SP_EEPROM_WRITE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %61

37:                                               ; preds = %33
  %38 = load i64, i64* %11, align 8
  %39 = load i32, i32* @RAVE_SP_EEPROM_PAGE_SIZE, align 4
  %40 = zext i32 %39 to i64
  %41 = icmp ult i64 %38, %40
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load %struct.rave_sp_eeprom*, %struct.rave_sp_eeprom** %7, align 8
  %44 = load i32, i32* @RAVE_SP_EEPROM_READ, align 4
  %45 = load i32, i32* %13, align 4
  %46 = call i32 @rave_sp_eeprom_io(%struct.rave_sp_eeprom* %43, i32 %44, i32 %45, %struct.rave_sp_eeprom_page* %14)
  store i32 %46, i32* %15, align 4
  %47 = load i32, i32* %15, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i32, i32* %15, align 4
  store i32 %50, i32* %6, align 4
  br label %84

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51, %37
  %53 = getelementptr inbounds %struct.rave_sp_eeprom_page, %struct.rave_sp_eeprom_page* %14, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %12, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32*, i32** %10, align 8
  %59 = load i64, i64* %11, align 8
  %60 = call i32 @memcpy(i32* %57, i32* %58, i64 %59)
  br label %61

61:                                               ; preds = %52, %33
  %62 = load %struct.rave_sp_eeprom*, %struct.rave_sp_eeprom** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* %13, align 4
  %65 = call i32 @rave_sp_eeprom_io(%struct.rave_sp_eeprom* %62, i32 %63, i32 %64, %struct.rave_sp_eeprom_page* %14)
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %61
  %69 = load i32, i32* %15, align 4
  store i32 %69, i32* %6, align 4
  br label %84

70:                                               ; preds = %61
  %71 = load i32, i32* %8, align 4
  %72 = load i32, i32* @RAVE_SP_EEPROM_READ, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %70
  %75 = load i32*, i32** %10, align 8
  %76 = getelementptr inbounds %struct.rave_sp_eeprom_page, %struct.rave_sp_eeprom_page* %14, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = load i32, i32* %12, align 4
  %79 = zext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  %81 = load i64, i64* %11, align 8
  %82 = call i32 @memcpy(i32* %75, i32* %80, i64 %81)
  br label %83

83:                                               ; preds = %74, %70
  store i32 0, i32* %6, align 4
  br label %84

84:                                               ; preds = %83, %68, %49, %30
  %85 = load i32, i32* %6, align 4
  ret i32 %85
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @rave_sp_eeprom_io(%struct.rave_sp_eeprom*, i32, i32, %struct.rave_sp_eeprom_page*) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
