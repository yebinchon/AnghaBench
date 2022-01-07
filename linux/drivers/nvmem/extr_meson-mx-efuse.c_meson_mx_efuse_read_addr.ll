; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvmem/extr_meson-mx-efuse.c_meson_mx_efuse_read_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvmem/extr_meson-mx-efuse.c_meson_mx_efuse_read_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.meson_mx_efuse = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@MESON_MX_EFUSE_CNTL1_BYTE_ADDR_MASK = common dso_local global i32 0, align 4
@MESON_MX_EFUSE_CNTL1 = common dso_local global i64 0, align 8
@MESON_MX_EFUSE_CNTL1_BYTE_ADDR_SET = common dso_local global i32 0, align 4
@MESON_MX_EFUSE_CNTL1_AUTO_RD_START = common dso_local global i32 0, align 4
@MESON_MX_EFUSE_CNTL1_AUTO_RD_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Timeout while reading efuse address %u\0A\00", align 1
@MESON_MX_EFUSE_CNTL2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.meson_mx_efuse*, i32, i32*)* @meson_mx_efuse_read_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @meson_mx_efuse_read_addr(%struct.meson_mx_efuse* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.meson_mx_efuse*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.meson_mx_efuse* %0, %struct.meson_mx_efuse** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load i32, i32* @MESON_MX_EFUSE_CNTL1_BYTE_ADDR_MASK, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call i32 @FIELD_PREP(i32 %10, i32 %11)
  store i32 %12, i32* %9, align 4
  %13 = load %struct.meson_mx_efuse*, %struct.meson_mx_efuse** %5, align 8
  %14 = load i64, i64* @MESON_MX_EFUSE_CNTL1, align 8
  %15 = load i32, i32* @MESON_MX_EFUSE_CNTL1_BYTE_ADDR_MASK, align 4
  %16 = load i32, i32* %9, align 4
  %17 = call i32 @meson_mx_efuse_mask_bits(%struct.meson_mx_efuse* %13, i64 %14, i32 %15, i32 %16)
  %18 = load %struct.meson_mx_efuse*, %struct.meson_mx_efuse** %5, align 8
  %19 = load i64, i64* @MESON_MX_EFUSE_CNTL1, align 8
  %20 = load i32, i32* @MESON_MX_EFUSE_CNTL1_BYTE_ADDR_SET, align 4
  %21 = load i32, i32* @MESON_MX_EFUSE_CNTL1_BYTE_ADDR_SET, align 4
  %22 = call i32 @meson_mx_efuse_mask_bits(%struct.meson_mx_efuse* %18, i64 %19, i32 %20, i32 %21)
  %23 = load %struct.meson_mx_efuse*, %struct.meson_mx_efuse** %5, align 8
  %24 = load i64, i64* @MESON_MX_EFUSE_CNTL1, align 8
  %25 = load i32, i32* @MESON_MX_EFUSE_CNTL1_BYTE_ADDR_SET, align 4
  %26 = call i32 @meson_mx_efuse_mask_bits(%struct.meson_mx_efuse* %23, i64 %24, i32 %25, i32 0)
  %27 = load %struct.meson_mx_efuse*, %struct.meson_mx_efuse** %5, align 8
  %28 = load i64, i64* @MESON_MX_EFUSE_CNTL1, align 8
  %29 = load i32, i32* @MESON_MX_EFUSE_CNTL1_AUTO_RD_START, align 4
  %30 = load i32, i32* @MESON_MX_EFUSE_CNTL1_AUTO_RD_START, align 4
  %31 = call i32 @meson_mx_efuse_mask_bits(%struct.meson_mx_efuse* %27, i64 %28, i32 %29, i32 %30)
  %32 = load %struct.meson_mx_efuse*, %struct.meson_mx_efuse** %5, align 8
  %33 = load i64, i64* @MESON_MX_EFUSE_CNTL1, align 8
  %34 = load i32, i32* @MESON_MX_EFUSE_CNTL1_AUTO_RD_START, align 4
  %35 = call i32 @meson_mx_efuse_mask_bits(%struct.meson_mx_efuse* %32, i64 %33, i32 %34, i32 0)
  %36 = load %struct.meson_mx_efuse*, %struct.meson_mx_efuse** %5, align 8
  %37 = getelementptr inbounds %struct.meson_mx_efuse, %struct.meson_mx_efuse* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @MESON_MX_EFUSE_CNTL1, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @readl(i64 %40)
  %42 = load %struct.meson_mx_efuse*, %struct.meson_mx_efuse** %5, align 8
  %43 = getelementptr inbounds %struct.meson_mx_efuse, %struct.meson_mx_efuse* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MESON_MX_EFUSE_CNTL1, align 8
  %46 = add nsw i64 %44, %45
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load i32, i32* @MESON_MX_EFUSE_CNTL1_AUTO_RD_BUSY, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  %52 = xor i1 %51, true
  %53 = zext i1 %52 to i32
  %54 = call i32 @readl_poll_timeout_atomic(i64 %46, i32 %47, i32 %53, i32 1, i32 1000)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %65

57:                                               ; preds = %3
  %58 = load %struct.meson_mx_efuse*, %struct.meson_mx_efuse** %5, align 8
  %59 = getelementptr inbounds %struct.meson_mx_efuse, %struct.meson_mx_efuse* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* %6, align 4
  %63 = call i32 @dev_err(i32 %61, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* %8, align 4
  store i32 %64, i32* %4, align 4
  br label %73

65:                                               ; preds = %3
  %66 = load %struct.meson_mx_efuse*, %struct.meson_mx_efuse** %5, align 8
  %67 = getelementptr inbounds %struct.meson_mx_efuse, %struct.meson_mx_efuse* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @MESON_MX_EFUSE_CNTL2, align 8
  %70 = add nsw i64 %68, %69
  %71 = call i32 @readl(i64 %70)
  %72 = load i32*, i32** %7, align 8
  store i32 %71, i32* %72, align 4
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %65, %57
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

declare dso_local i32 @FIELD_PREP(i32, i32) #1

declare dso_local i32 @meson_mx_efuse_mask_bits(%struct.meson_mx_efuse*, i64, i32, i32) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @readl_poll_timeout_atomic(i64, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
