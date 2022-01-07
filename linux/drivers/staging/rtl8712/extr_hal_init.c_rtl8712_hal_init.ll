; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_hal_init.c_rtl8712_hal_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rtl8712/extr_hal_init.c_rtl8712_hal_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._adapter = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32* }

@_SUCCESS = common dso_local global i64 0, align 8
@_FAIL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [12 x i8] c"1 RCR=0x%x\0A\00", align 1
@RCR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [12 x i8] c"2 RCR=0x%x\0A\00", align 1
@MACID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @rtl8712_hal_init(%struct._adapter* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct._adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct._adapter* %0, %struct._adapter** %3, align 8
  %6 = load %struct._adapter*, %struct._adapter** %3, align 8
  %7 = call i64 @rtl8712_dl_fw(%struct._adapter* %6)
  %8 = load i64, i64* @_SUCCESS, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i64, i64* @_FAIL, align 8
  store i64 %11, i64* %2, align 8
  br label %94

12:                                               ; preds = %1
  %13 = load %struct._adapter*, %struct._adapter** %3, align 8
  %14 = getelementptr inbounds %struct._adapter, %struct._adapter* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load %struct._adapter*, %struct._adapter** %3, align 8
  %17 = load i32, i32* @RCR, align 4
  %18 = call i32 @r8712_read32(%struct._adapter* %16, i32 %17)
  %19 = call i32 @netdev_info(i32 %15, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %18)
  %20 = load %struct._adapter*, %struct._adapter** %3, align 8
  %21 = load i32, i32* @RCR, align 4
  %22 = call i32 @r8712_read32(%struct._adapter* %20, i32 %21)
  store i32 %22, i32* %4, align 4
  %23 = load %struct._adapter*, %struct._adapter** %3, align 8
  %24 = load i32, i32* @RCR, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @BIT(i32 26)
  %27 = or i32 %25, %26
  %28 = call i32 @r8712_write32(%struct._adapter* %23, i32 %24, i32 %27)
  %29 = load %struct._adapter*, %struct._adapter** %3, align 8
  %30 = getelementptr inbounds %struct._adapter, %struct._adapter* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct._adapter*, %struct._adapter** %3, align 8
  %33 = load i32, i32* @RCR, align 4
  %34 = call i32 @r8712_read32(%struct._adapter* %32, i32 %33)
  %35 = call i32 @netdev_info(i32 %31, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load %struct._adapter*, %struct._adapter** %3, align 8
  %37 = load i32, i32* @RCR, align 4
  %38 = call i32 @r8712_read32(%struct._adapter* %36, i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load %struct._adapter*, %struct._adapter** %3, align 8
  %40 = load i32, i32* @RCR, align 4
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @BIT(i32 25)
  %43 = or i32 %41, %42
  %44 = call i32 @r8712_write32(%struct._adapter* %39, i32 %40, i32 %43)
  %45 = load %struct._adapter*, %struct._adapter** %3, align 8
  %46 = call i32 @r8712_read32(%struct._adapter* %45, i32 270860352)
  store i32 %46, i32* %4, align 4
  %47 = load %struct._adapter*, %struct._adapter** %3, align 8
  %48 = load i32, i32* %4, align 4
  %49 = and i32 %48, 16777215
  %50 = call i32 @r8712_write32(%struct._adapter* %47, i32 270860352, i32 %49)
  %51 = load %struct._adapter*, %struct._adapter** %3, align 8
  %52 = load %struct._adapter*, %struct._adapter** %3, align 8
  %53 = call i32 @r8712_read8(%struct._adapter* %52, i32 270860469)
  %54 = call i32 @BIT(i32 0)
  %55 = or i32 %53, %54
  %56 = call i32 @r8712_write8(%struct._adapter* %51, i32 270860469, i32 %55)
  %57 = load %struct._adapter*, %struct._adapter** %3, align 8
  %58 = load %struct._adapter*, %struct._adapter** %3, align 8
  %59 = call i32 @r8712_read8(%struct._adapter* %58, i32 270860477)
  %60 = call i32 @BIT(i32 7)
  %61 = or i32 %59, %60
  %62 = call i32 @r8712_write8(%struct._adapter* %57, i32 270860477, i32 %61)
  %63 = load %struct._adapter*, %struct._adapter** %3, align 8
  %64 = call i32 @r8712_write8(%struct._adapter* %63, i32 270860505, i32 1)
  %65 = load %struct._adapter*, %struct._adapter** %3, align 8
  %66 = call i32 @r8712_write8(%struct._adapter* %65, i32 270925403, i32 4)
  %67 = load %struct._adapter*, %struct._adapter** %3, align 8
  %68 = load %struct._adapter*, %struct._adapter** %3, align 8
  %69 = call i32 @r8712_read8(%struct._adapter* %68, i32 270925404)
  %70 = call i32 @BIT(i32 7)
  %71 = or i32 %69, %70
  %72 = call i32 @r8712_write8(%struct._adapter* %67, i32 270925404, i32 %71)
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %89, %12
  %74 = load i32, i32* %5, align 4
  %75 = icmp slt i32 %74, 6
  br i1 %75, label %76, label %92

76:                                               ; preds = %73
  %77 = load %struct._adapter*, %struct._adapter** %3, align 8
  %78 = load i32, i32* @MACID, align 4
  %79 = load i32, i32* %5, align 4
  %80 = add nsw i32 %78, %79
  %81 = call i32 @r8712_read8(%struct._adapter* %77, i32 %80)
  %82 = load %struct._adapter*, %struct._adapter** %3, align 8
  %83 = getelementptr inbounds %struct._adapter, %struct._adapter* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %5, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  store i32 %81, i32* %88, align 4
  br label %89

89:                                               ; preds = %76
  %90 = load i32, i32* %5, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %5, align 4
  br label %73

92:                                               ; preds = %73
  %93 = load i64, i64* @_SUCCESS, align 8
  store i64 %93, i64* %2, align 8
  br label %94

94:                                               ; preds = %92, %10
  %95 = load i64, i64* %2, align 8
  ret i64 %95
}

declare dso_local i64 @rtl8712_dl_fw(%struct._adapter*) #1

declare dso_local i32 @netdev_info(i32, i8*, i32) #1

declare dso_local i32 @r8712_read32(%struct._adapter*, i32) #1

declare dso_local i32 @r8712_write32(%struct._adapter*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @r8712_write8(%struct._adapter*, i32, i32) #1

declare dso_local i32 @r8712_read8(%struct._adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
