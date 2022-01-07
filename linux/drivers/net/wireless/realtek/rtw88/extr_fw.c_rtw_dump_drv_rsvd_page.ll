; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_fw.c_rtw_dump_drv_rsvd_page.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_fw.c_rtw_dump_drv_rsvd_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_fifo_conf }
%struct.rtw_fifo_conf = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"should be 4-byte aligned\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@TX_PAGE_SIZE_SHIFT = common dso_local global i32 0, align 4
@FIFO_PAGE_SIZE = common dso_local global i32 0, align 4
@FIFO_PAGE_SIZE_SHIFT = common dso_local global i32 0, align 4
@RSVD_PAGE_START_ADDR = common dso_local global i64 0, align 8
@REG_RCR = common dso_local global i64 0, align 8
@REG_PKTBUF_DBG_CTRL = common dso_local global i32 0, align 4
@FIFO_DUMP_ADDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtw_dump_drv_rsvd_page(%struct.rtw_dev* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.rtw_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.rtw_fifo_conf*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %17 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %18 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %17, i32 0, i32 0
  store %struct.rtw_fifo_conf* %18, %struct.rtw_fifo_conf** %10, align 8
  store i32 0, i32* %14, align 4
  %19 = load i32, i32* %8, align 4
  %20 = and i32 %19, 3
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %4
  %23 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %24 = call i32 @rtw_warn(%struct.rtw_dev* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %112

27:                                               ; preds = %4
  %28 = load %struct.rtw_fifo_conf*, %struct.rtw_fifo_conf** %10, align 8
  %29 = getelementptr inbounds %struct.rtw_fifo_conf, %struct.rtw_fifo_conf* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @TX_PAGE_SIZE_SHIFT, align 4
  %32 = shl i32 %30, %31
  %33 = load i32, i32* %7, align 4
  %34 = add nsw i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @FIFO_PAGE_SIZE, align 4
  %37 = sub nsw i32 %36, 1
  %38 = and i32 %35, %37
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* @FIFO_PAGE_SIZE_SHIFT, align 4
  %41 = ashr i32 %39, %40
  store i32 %41, i32* %13, align 4
  %42 = load i64, i64* @RSVD_PAGE_START_ADDR, align 8
  %43 = load i32, i32* %13, align 4
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %44, %42
  %46 = trunc i64 %45 to i32
  store i32 %46, i32* %13, align 4
  %47 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %48 = load i64, i64* @REG_RCR, align 8
  %49 = add nsw i64 %48, 2
  %50 = call i32 @rtw_read8(%struct.rtw_dev* %47, i64 %49)
  store i32 %50, i32* %16, align 4
  %51 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %52 = load i32, i32* @REG_PKTBUF_DBG_CTRL, align 4
  %53 = call i32 @rtw_read16(%struct.rtw_dev* %51, i32 %52)
  %54 = and i32 %53, 61440
  store i32 %54, i32* %15, align 4
  %55 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %56 = load i64, i64* @REG_RCR, align 8
  %57 = load i32, i32* %16, align 4
  %58 = call i32 @BIT(i32 3)
  %59 = or i32 %57, %58
  %60 = call i32 @rtw_write8(%struct.rtw_dev* %55, i64 %56, i32 %59)
  br label %61

61:                                               ; preds = %98, %27
  %62 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %63 = load i32, i32* @REG_PKTBUF_DBG_CTRL, align 4
  %64 = load i32, i32* %13, align 4
  %65 = load i32, i32* %15, align 4
  %66 = or i32 %64, %65
  %67 = call i32 @rtw_write16(%struct.rtw_dev* %62, i32 %63, i32 %66)
  %68 = load i32, i32* @FIFO_DUMP_ADDR, align 4
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %68, %69
  store i32 %70, i32* %12, align 4
  br label %71

71:                                               ; preds = %92, %61
  %72 = load i32, i32* %12, align 4
  %73 = load i32, i32* @FIFO_DUMP_ADDR, align 4
  %74 = load i32, i32* @FIFO_PAGE_SIZE, align 4
  %75 = add nsw i32 %73, %74
  %76 = icmp slt i32 %72, %75
  br i1 %76, label %77, label %95

77:                                               ; preds = %71
  %78 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %79 = load i32, i32* %12, align 4
  %80 = call i32 @rtw_read32(%struct.rtw_dev* %78, i32 %79)
  %81 = load i32*, i32** %9, align 8
  %82 = load i32, i32* %14, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %14, align 4
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  store i32 %80, i32* %85, align 4
  %86 = load i32, i32* %8, align 4
  %87 = sub nsw i32 %86, 4
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %77
  br label %102

91:                                               ; preds = %77
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %12, align 4
  %94 = add nsw i32 %93, 4
  store i32 %94, i32* %12, align 4
  br label %71

95:                                               ; preds = %71
  store i32 0, i32* %11, align 4
  %96 = load i32, i32* %13, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %13, align 4
  br label %98

98:                                               ; preds = %95
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %61, label %101

101:                                              ; preds = %98
  br label %102

102:                                              ; preds = %101, %90
  %103 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %104 = load i32, i32* @REG_PKTBUF_DBG_CTRL, align 4
  %105 = load i32, i32* %15, align 4
  %106 = call i32 @rtw_write16(%struct.rtw_dev* %103, i32 %104, i32 %105)
  %107 = load %struct.rtw_dev*, %struct.rtw_dev** %6, align 8
  %108 = load i64, i64* @REG_RCR, align 8
  %109 = add nsw i64 %108, 2
  %110 = load i32, i32* %16, align 4
  %111 = call i32 @rtw_write8(%struct.rtw_dev* %107, i64 %109, i32 %110)
  store i32 0, i32* %5, align 4
  br label %112

112:                                              ; preds = %102, %22
  %113 = load i32, i32* %5, align 4
  ret i32 %113
}

declare dso_local i32 @rtw_warn(%struct.rtw_dev*, i8*) #1

declare dso_local i32 @rtw_read8(%struct.rtw_dev*, i64) #1

declare dso_local i32 @rtw_read16(%struct.rtw_dev*, i32) #1

declare dso_local i32 @rtw_write8(%struct.rtw_dev*, i64, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @rtw_write16(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_read32(%struct.rtw_dev*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
