; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_rave-sp-eeprom.c_rave_sp_eeprom_access.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_rave-sp-eeprom.c_rave_sp_eeprom_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rave_sp_eeprom = type { i32 }

@RAVE_SP_EEPROM_PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rave_sp_eeprom*, i32, i32, i32*, i32)* @rave_sp_eeprom_access to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rave_sp_eeprom_access(%struct.rave_sp_eeprom* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.rave_sp_eeprom*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.rave_sp_eeprom* %0, %struct.rave_sp_eeprom** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.rave_sp_eeprom*, %struct.rave_sp_eeprom** %6, align 8
  %16 = getelementptr inbounds %struct.rave_sp_eeprom, %struct.rave_sp_eeprom* %15, i32 0, i32 0
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load i32, i32* %8, align 4
  %19 = load i32, i32* @RAVE_SP_EEPROM_PAGE_SIZE, align 4
  %20 = urem i32 %18, %19
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %10, align 4
  store i32 %21, i32* %11, align 4
  br label %22

22:                                               ; preds = %56, %5
  %23 = load i32, i32* %13, align 4
  %24 = call i64 @unlikely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %22
  %27 = load i32, i32* @RAVE_SP_EEPROM_PAGE_SIZE, align 4
  %28 = load i32, i32* %13, align 4
  %29 = sub i32 %27, %28
  store i32 %29, i32* %12, align 4
  store i32 0, i32* %13, align 4
  br label %32

30:                                               ; preds = %22
  %31 = load i32, i32* @RAVE_SP_EEPROM_PAGE_SIZE, align 4
  store i32 %31, i32* %12, align 4
  br label %32

32:                                               ; preds = %30, %26
  %33 = load i32, i32* %12, align 4
  %34 = load i32, i32* %11, align 4
  %35 = call i32 @min(i32 %33, i32 %34)
  store i32 %35, i32* %12, align 4
  %36 = load %struct.rave_sp_eeprom*, %struct.rave_sp_eeprom** %6, align 8
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32*, i32** %9, align 8
  %40 = load i32, i32* %12, align 4
  %41 = call i32 @rave_sp_eeprom_page_access(%struct.rave_sp_eeprom* %36, i32 %37, i32 %38, i32* %39, i32 %40)
  store i32 %41, i32* %14, align 4
  %42 = load i32, i32* %14, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %32
  br label %60

45:                                               ; preds = %32
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* %11, align 4
  %48 = sub i32 %47, %46
  store i32 %48, i32* %11, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load i32, i32* %8, align 4
  %51 = add i32 %50, %49
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %12, align 4
  %53 = load i32*, i32** %9, align 8
  %54 = zext i32 %52 to i64
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32* %55, i32** %9, align 8
  br label %56

56:                                               ; preds = %45
  %57 = load i32, i32* %11, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %22, label %59

59:                                               ; preds = %56
  br label %60

60:                                               ; preds = %59, %44
  %61 = load %struct.rave_sp_eeprom*, %struct.rave_sp_eeprom** %6, align 8
  %62 = getelementptr inbounds %struct.rave_sp_eeprom, %struct.rave_sp_eeprom* %61, i32 0, i32 0
  %63 = call i32 @mutex_unlock(i32* %62)
  %64 = load i32, i32* %14, align 4
  ret i32 %64
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @rave_sp_eeprom_page_access(%struct.rave_sp_eeprom*, i32, i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
