; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_init_h2c.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_init_h2c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_fifo_conf }
%struct.rtw_fifo_conf = type { i32 }

@TX_PAGE_SIZE_SHIFT = common dso_local global i32 0, align 4
@RSVD_PG_H2CQ_NUM = common dso_local global i32 0, align 4
@REG_H2C_HEAD = common dso_local global i32 0, align 4
@REG_H2C_READ_ADDR = common dso_local global i32 0, align 4
@REG_H2C_TAIL = common dso_local global i32 0, align 4
@REG_H2C_INFO = common dso_local global i64 0, align 8
@REG_TXDMA_OFFSET_CHK = common dso_local global i64 0, align 8
@REG_H2C_PKT_WRITEADDR = common dso_local global i32 0, align 4
@REG_H2C_PKT_READADDR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"H2C queue mismatch\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*)* @init_h2c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_h2c(%struct.rtw_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.rtw_fifo_conf*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  %12 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %13 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %12, i32 0, i32 0
  store %struct.rtw_fifo_conf* %13, %struct.rtw_fifo_conf** %4, align 8
  %14 = load %struct.rtw_fifo_conf*, %struct.rtw_fifo_conf** %4, align 8
  %15 = getelementptr inbounds %struct.rtw_fifo_conf, %struct.rtw_fifo_conf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @TX_PAGE_SIZE_SHIFT, align 4
  %18 = shl i32 %16, %17
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* @RSVD_PG_H2CQ_NUM, align 4
  %20 = load i32, i32* @TX_PAGE_SIZE_SHIFT, align 4
  %21 = shl i32 %19, %20
  store i32 %21, i32* %8, align 4
  %22 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %23 = load i32, i32* @REG_H2C_HEAD, align 4
  %24 = call i32 @rtw_read32(%struct.rtw_dev* %22, i32 %23)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = and i32 %25, -262144
  %27 = load i32, i32* %7, align 4
  %28 = or i32 %26, %27
  store i32 %28, i32* %6, align 4
  %29 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %30 = load i32, i32* @REG_H2C_HEAD, align 4
  %31 = load i32, i32* %6, align 4
  %32 = call i32 @rtw_write32(%struct.rtw_dev* %29, i32 %30, i32 %31)
  %33 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %34 = load i32, i32* @REG_H2C_READ_ADDR, align 4
  %35 = call i32 @rtw_read32(%struct.rtw_dev* %33, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, -262144
  %38 = load i32, i32* %7, align 4
  %39 = or i32 %37, %38
  store i32 %39, i32* %6, align 4
  %40 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %41 = load i32, i32* @REG_H2C_READ_ADDR, align 4
  %42 = load i32, i32* %6, align 4
  %43 = call i32 @rtw_write32(%struct.rtw_dev* %40, i32 %41, i32 %42)
  %44 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %45 = load i32, i32* @REG_H2C_TAIL, align 4
  %46 = call i32 @rtw_read32(%struct.rtw_dev* %44, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = load i32, i32* %6, align 4
  %48 = and i32 %47, -262144
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %8, align 4
  %51 = add nsw i32 %49, %50
  %52 = load i32, i32* %6, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %6, align 4
  %54 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %55 = load i32, i32* @REG_H2C_TAIL, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @rtw_write32(%struct.rtw_dev* %54, i32 %55, i32 %56)
  %58 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %59 = load i64, i64* @REG_H2C_INFO, align 8
  %60 = call i32 @rtw_read8(%struct.rtw_dev* %58, i64 %59)
  store i32 %60, i32* %5, align 4
  %61 = load i32, i32* %5, align 4
  %62 = and i32 %61, 252
  %63 = or i32 %62, 1
  store i32 %63, i32* %5, align 4
  %64 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %65 = load i64, i64* @REG_H2C_INFO, align 8
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @rtw_write8(%struct.rtw_dev* %64, i64 %65, i32 %66)
  %68 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %69 = load i64, i64* @REG_H2C_INFO, align 8
  %70 = call i32 @rtw_read8(%struct.rtw_dev* %68, i64 %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = and i32 %71, 251
  %73 = or i32 %72, 4
  store i32 %73, i32* %5, align 4
  %74 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %75 = load i64, i64* @REG_H2C_INFO, align 8
  %76 = load i32, i32* %5, align 4
  %77 = call i32 @rtw_write8(%struct.rtw_dev* %74, i64 %75, i32 %76)
  %78 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %79 = load i64, i64* @REG_TXDMA_OFFSET_CHK, align 8
  %80 = add nsw i64 %79, 1
  %81 = call i32 @rtw_read8(%struct.rtw_dev* %78, i64 %80)
  store i32 %81, i32* %5, align 4
  %82 = load i32, i32* %5, align 4
  %83 = and i32 %82, 127
  %84 = or i32 %83, 128
  store i32 %84, i32* %5, align 4
  %85 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %86 = load i64, i64* @REG_TXDMA_OFFSET_CHK, align 8
  %87 = add nsw i64 %86, 1
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @rtw_write8(%struct.rtw_dev* %85, i64 %87, i32 %88)
  %90 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %91 = load i32, i32* @REG_H2C_PKT_WRITEADDR, align 4
  %92 = call i32 @rtw_read32(%struct.rtw_dev* %90, i32 %91)
  %93 = and i32 %92, 262143
  store i32 %93, i32* %10, align 4
  %94 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %95 = load i32, i32* @REG_H2C_PKT_READADDR, align 4
  %96 = call i32 @rtw_read32(%struct.rtw_dev* %94, i32 %95)
  %97 = and i32 %96, 262143
  store i32 %97, i32* %11, align 4
  %98 = load i32, i32* %10, align 4
  %99 = load i32, i32* %11, align 4
  %100 = icmp sge i32 %98, %99
  br i1 %100, label %101, label %107

101:                                              ; preds = %1
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load i32, i32* %11, align 4
  %105 = sub nsw i32 %103, %104
  %106 = sub nsw i32 %102, %105
  br label %111

107:                                              ; preds = %1
  %108 = load i32, i32* %11, align 4
  %109 = load i32, i32* %10, align 4
  %110 = sub nsw i32 %108, %109
  br label %111

111:                                              ; preds = %107, %101
  %112 = phi i32 [ %106, %101 ], [ %110, %107 ]
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %8, align 4
  %114 = load i32, i32* %9, align 4
  %115 = icmp ne i32 %113, %114
  br i1 %115, label %116, label %121

116:                                              ; preds = %111
  %117 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %118 = call i32 @rtw_err(%struct.rtw_dev* %117, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %119 = load i32, i32* @EINVAL, align 4
  %120 = sub nsw i32 0, %119
  store i32 %120, i32* %2, align 4
  br label %122

121:                                              ; preds = %111
  store i32 0, i32* %2, align 4
  br label %122

122:                                              ; preds = %121, %116
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i32 @rtw_read32(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_read8(%struct.rtw_dev*, i64) #1

declare dso_local i32 @rtw_write8(%struct.rtw_dev*, i64, i32) #1

declare dso_local i32 @rtw_err(%struct.rtw_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
