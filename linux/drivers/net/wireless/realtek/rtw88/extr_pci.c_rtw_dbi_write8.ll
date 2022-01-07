; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_dbi_write8.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_pci.c_rtw_dbi_write8.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { i32 }

@REG_DBI_WDATA_V1 = common dso_local global i64 0, align 8
@REG_DBI_FLAG_V1 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [16 x i8] c"DBI write fail\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rtw_dev*, i32, i64)* @rtw_dbi_write8 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rtw_dbi_write8(%struct.rtw_dev* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.rtw_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  store %struct.rtw_dev* %0, %struct.rtw_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 3
  store i32 %12, i32* %8, align 4
  store i64 20, i64* %10, align 8
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 4092
  %15 = call i32 @BIT(i32 0)
  %16 = load i32, i32* %8, align 4
  %17 = add nsw i32 %16, 12
  %18 = shl i32 %15, %17
  %19 = or i32 %14, %18
  store i32 %19, i32* %7, align 4
  %20 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %21 = load i64, i64* @REG_DBI_WDATA_V1, align 8
  %22 = load i32, i32* %8, align 4
  %23 = sext i32 %22 to i64
  %24 = add nsw i64 %21, %23
  %25 = load i64, i64* %6, align 8
  %26 = trunc i64 %25 to i32
  %27 = call i32 @rtw_write8(%struct.rtw_dev* %20, i64 %24, i32 %26)
  %28 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %29 = load i64, i64* @REG_DBI_FLAG_V1, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @rtw_write16(%struct.rtw_dev* %28, i64 %29, i32 %30)
  %32 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %33 = load i64, i64* @REG_DBI_FLAG_V1, align 8
  %34 = add nsw i64 %33, 2
  %35 = call i32 @rtw_write8(%struct.rtw_dev* %32, i64 %34, i32 1)
  %36 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %37 = load i64, i64* @REG_DBI_FLAG_V1, align 8
  %38 = add nsw i64 %37, 2
  %39 = call i64 @rtw_read8(%struct.rtw_dev* %36, i64 %38)
  store i64 %39, i64* %9, align 8
  br label %40

40:                                               ; preds = %48, %3
  %41 = load i64, i64* %9, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %40
  %44 = load i64, i64* %10, align 8
  %45 = icmp ne i64 %44, 0
  br label %46

46:                                               ; preds = %43, %40
  %47 = phi i1 [ false, %40 ], [ %45, %43 ]
  br i1 %47, label %48, label %56

48:                                               ; preds = %46
  %49 = call i32 @udelay(i32 10)
  %50 = load %struct.rtw_dev*, %struct.rtw_dev** %4, align 8
  %51 = load i64, i64* @REG_DBI_FLAG_V1, align 8
  %52 = add nsw i64 %51, 2
  %53 = call i64 @rtw_read8(%struct.rtw_dev* %50, i64 %52)
  store i64 %53, i64* %9, align 8
  %54 = load i64, i64* %10, align 8
  %55 = add nsw i64 %54, -1
  store i64 %55, i64* %10, align 8
  br label %40

56:                                               ; preds = %46
  %57 = load i64, i64* %9, align 8
  %58 = call i32 @WARN(i64 %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtw_write8(%struct.rtw_dev*, i64, i32) #1

declare dso_local i32 @rtw_write16(%struct.rtw_dev*, i64, i32) #1

declare dso_local i64 @rtw_read8(%struct.rtw_dev*, i64) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @WARN(i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
