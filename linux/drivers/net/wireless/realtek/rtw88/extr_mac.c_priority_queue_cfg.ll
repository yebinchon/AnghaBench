; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_priority_queue_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_priority_queue_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.TYPE_2__, %struct.rtw_chip_info*, %struct.rtw_fifo_conf }
%struct.TYPE_2__ = type { i32 }
%struct.rtw_chip_info = type { i64, %struct.rtw_page_table* }
%struct.rtw_page_table = type { i64, i64, i64, i64, i64 }
%struct.rtw_fifo_conf = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@REG_FIFOPAGE_INFO_1 = common dso_local global i64 0, align 8
@REG_FIFOPAGE_INFO_2 = common dso_local global i64 0, align 8
@REG_FIFOPAGE_INFO_3 = common dso_local global i64 0, align 8
@REG_FIFOPAGE_INFO_4 = common dso_local global i64 0, align 8
@REG_FIFOPAGE_INFO_5 = common dso_local global i64 0, align 8
@REG_RQPN_CTRL_2 = common dso_local global i32 0, align 4
@BIT_LD_RQPN = common dso_local global i32 0, align 4
@REG_FIFOPAGE_CTRL_2 = common dso_local global i64 0, align 8
@REG_FWHW_TXQ_CTRL = common dso_local global i64 0, align 8
@BIT_EN_WR_FREE_TAIL = common dso_local global i32 0, align 4
@REG_BCNQ_BDNY_V1 = common dso_local global i64 0, align 8
@REG_BCNQ1_BDNY_V1 = common dso_local global i64 0, align 8
@REG_RXFF_BNDY = common dso_local global i32 0, align 4
@C2H_PKT_BUF = common dso_local global i64 0, align 8
@REG_AUTO_LLT_V1 = common dso_local global i64 0, align 8
@BIT_AUTO_INIT_LLT_V1 = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@REG_CR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*)* @priority_queue_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @priority_queue_cfg(%struct.rtw_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.rtw_fifo_conf*, align 8
  %5 = alloca %struct.rtw_chip_info*, align 8
  %6 = alloca %struct.rtw_page_table*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  %9 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %10 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %9, i32 0, i32 2
  store %struct.rtw_fifo_conf* %10, %struct.rtw_fifo_conf** %4, align 8
  %11 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %12 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %11, i32 0, i32 1
  %13 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %12, align 8
  store %struct.rtw_chip_info* %13, %struct.rtw_chip_info** %5, align 8
  store %struct.rtw_page_table* null, %struct.rtw_page_table** %6, align 8
  %14 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %15 = call i32 @set_trx_fifo_info(%struct.rtw_dev* %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %8, align 4
  store i32 %19, i32* %2, align 4
  br label %183

20:                                               ; preds = %1
  %21 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %22 = call i32 @rtw_hci_type(%struct.rtw_dev* %21)
  switch i32 %22, label %67 [
    i32 129, label %23
    i32 128, label %28
  ]

23:                                               ; preds = %20
  %24 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %5, align 8
  %25 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %24, i32 0, i32 1
  %26 = load %struct.rtw_page_table*, %struct.rtw_page_table** %25, align 8
  %27 = getelementptr inbounds %struct.rtw_page_table, %struct.rtw_page_table* %26, i64 1
  store %struct.rtw_page_table* %27, %struct.rtw_page_table** %6, align 8
  br label %70

28:                                               ; preds = %20
  %29 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %30 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp eq i32 %32, 2
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %5, align 8
  %36 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %35, i32 0, i32 1
  %37 = load %struct.rtw_page_table*, %struct.rtw_page_table** %36, align 8
  %38 = getelementptr inbounds %struct.rtw_page_table, %struct.rtw_page_table* %37, i64 2
  store %struct.rtw_page_table* %38, %struct.rtw_page_table** %6, align 8
  br label %66

39:                                               ; preds = %28
  %40 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %41 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 3
  br i1 %44, label %45, label %50

45:                                               ; preds = %39
  %46 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %5, align 8
  %47 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %46, i32 0, i32 1
  %48 = load %struct.rtw_page_table*, %struct.rtw_page_table** %47, align 8
  %49 = getelementptr inbounds %struct.rtw_page_table, %struct.rtw_page_table* %48, i64 3
  store %struct.rtw_page_table* %49, %struct.rtw_page_table** %6, align 8
  br label %65

50:                                               ; preds = %39
  %51 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %52 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = icmp eq i32 %54, 4
  br i1 %55, label %56, label %61

56:                                               ; preds = %50
  %57 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %5, align 8
  %58 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %57, i32 0, i32 1
  %59 = load %struct.rtw_page_table*, %struct.rtw_page_table** %58, align 8
  %60 = getelementptr inbounds %struct.rtw_page_table, %struct.rtw_page_table* %59, i64 4
  store %struct.rtw_page_table* %60, %struct.rtw_page_table** %6, align 8
  br label %64

61:                                               ; preds = %50
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %2, align 4
  br label %183

64:                                               ; preds = %56
  br label %65

65:                                               ; preds = %64, %45
  br label %66

66:                                               ; preds = %65, %34
  br label %70

67:                                               ; preds = %20
  %68 = load i32, i32* @EINVAL, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %183

70:                                               ; preds = %66, %23
  %71 = load %struct.rtw_fifo_conf*, %struct.rtw_fifo_conf** %4, align 8
  %72 = getelementptr inbounds %struct.rtw_fifo_conf, %struct.rtw_fifo_conf* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load %struct.rtw_page_table*, %struct.rtw_page_table** %6, align 8
  %75 = getelementptr inbounds %struct.rtw_page_table, %struct.rtw_page_table* %74, i32 0, i32 3
  %76 = load i64, i64* %75, align 8
  %77 = sub nsw i64 %73, %76
  %78 = load %struct.rtw_page_table*, %struct.rtw_page_table** %6, align 8
  %79 = getelementptr inbounds %struct.rtw_page_table, %struct.rtw_page_table* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = sub nsw i64 %77, %80
  %82 = load %struct.rtw_page_table*, %struct.rtw_page_table** %6, align 8
  %83 = getelementptr inbounds %struct.rtw_page_table, %struct.rtw_page_table* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = sub nsw i64 %81, %84
  %86 = load %struct.rtw_page_table*, %struct.rtw_page_table** %6, align 8
  %87 = getelementptr inbounds %struct.rtw_page_table, %struct.rtw_page_table* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = sub nsw i64 %85, %88
  %90 = load %struct.rtw_page_table*, %struct.rtw_page_table** %6, align 8
  %91 = getelementptr inbounds %struct.rtw_page_table, %struct.rtw_page_table* %90, i32 0, i32 4
  %92 = load i64, i64* %91, align 8
  %93 = sub nsw i64 %89, %92
  store i64 %93, i64* %7, align 8
  %94 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %95 = load i64, i64* @REG_FIFOPAGE_INFO_1, align 8
  %96 = load %struct.rtw_page_table*, %struct.rtw_page_table** %6, align 8
  %97 = getelementptr inbounds %struct.rtw_page_table, %struct.rtw_page_table* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = call i32 @rtw_write16(%struct.rtw_dev* %94, i64 %95, i64 %98)
  %100 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %101 = load i64, i64* @REG_FIFOPAGE_INFO_2, align 8
  %102 = load %struct.rtw_page_table*, %struct.rtw_page_table** %6, align 8
  %103 = getelementptr inbounds %struct.rtw_page_table, %struct.rtw_page_table* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = call i32 @rtw_write16(%struct.rtw_dev* %100, i64 %101, i64 %104)
  %106 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %107 = load i64, i64* @REG_FIFOPAGE_INFO_3, align 8
  %108 = load %struct.rtw_page_table*, %struct.rtw_page_table** %6, align 8
  %109 = getelementptr inbounds %struct.rtw_page_table, %struct.rtw_page_table* %108, i32 0, i32 1
  %110 = load i64, i64* %109, align 8
  %111 = call i32 @rtw_write16(%struct.rtw_dev* %106, i64 %107, i64 %110)
  %112 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %113 = load i64, i64* @REG_FIFOPAGE_INFO_4, align 8
  %114 = load %struct.rtw_page_table*, %struct.rtw_page_table** %6, align 8
  %115 = getelementptr inbounds %struct.rtw_page_table, %struct.rtw_page_table* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = call i32 @rtw_write16(%struct.rtw_dev* %112, i64 %113, i64 %116)
  %118 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %119 = load i64, i64* @REG_FIFOPAGE_INFO_5, align 8
  %120 = load i64, i64* %7, align 8
  %121 = call i32 @rtw_write16(%struct.rtw_dev* %118, i64 %119, i64 %120)
  %122 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %123 = load i32, i32* @REG_RQPN_CTRL_2, align 4
  %124 = load i32, i32* @BIT_LD_RQPN, align 4
  %125 = call i32 @rtw_write32_set(%struct.rtw_dev* %122, i32 %123, i32 %124)
  %126 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %127 = load i64, i64* @REG_FIFOPAGE_CTRL_2, align 8
  %128 = load %struct.rtw_fifo_conf*, %struct.rtw_fifo_conf** %4, align 8
  %129 = getelementptr inbounds %struct.rtw_fifo_conf, %struct.rtw_fifo_conf* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @rtw_write16(%struct.rtw_dev* %126, i64 %127, i64 %130)
  %132 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %133 = load i64, i64* @REG_FWHW_TXQ_CTRL, align 8
  %134 = add nsw i64 %133, 2
  %135 = load i32, i32* @BIT_EN_WR_FREE_TAIL, align 4
  %136 = ashr i32 %135, 16
  %137 = call i32 @rtw_write8_set(%struct.rtw_dev* %132, i64 %134, i32 %136)
  %138 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %139 = load i64, i64* @REG_BCNQ_BDNY_V1, align 8
  %140 = load %struct.rtw_fifo_conf*, %struct.rtw_fifo_conf** %4, align 8
  %141 = getelementptr inbounds %struct.rtw_fifo_conf, %struct.rtw_fifo_conf* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = call i32 @rtw_write16(%struct.rtw_dev* %138, i64 %139, i64 %142)
  %144 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %145 = load i64, i64* @REG_FIFOPAGE_CTRL_2, align 8
  %146 = add nsw i64 %145, 2
  %147 = load %struct.rtw_fifo_conf*, %struct.rtw_fifo_conf** %4, align 8
  %148 = getelementptr inbounds %struct.rtw_fifo_conf, %struct.rtw_fifo_conf* %147, i32 0, i32 0
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @rtw_write16(%struct.rtw_dev* %144, i64 %146, i64 %149)
  %151 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %152 = load i64, i64* @REG_BCNQ1_BDNY_V1, align 8
  %153 = load %struct.rtw_fifo_conf*, %struct.rtw_fifo_conf** %4, align 8
  %154 = getelementptr inbounds %struct.rtw_fifo_conf, %struct.rtw_fifo_conf* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = call i32 @rtw_write16(%struct.rtw_dev* %151, i64 %152, i64 %155)
  %157 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %158 = load i32, i32* @REG_RXFF_BNDY, align 4
  %159 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %5, align 8
  %160 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %159, i32 0, i32 0
  %161 = load i64, i64* %160, align 8
  %162 = load i64, i64* @C2H_PKT_BUF, align 8
  %163 = sub nsw i64 %161, %162
  %164 = sub nsw i64 %163, 1
  %165 = call i32 @rtw_write32(%struct.rtw_dev* %157, i32 %158, i64 %164)
  %166 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %167 = load i64, i64* @REG_AUTO_LLT_V1, align 8
  %168 = load i32, i32* @BIT_AUTO_INIT_LLT_V1, align 4
  %169 = call i32 @rtw_write8_set(%struct.rtw_dev* %166, i64 %167, i32 %168)
  %170 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %171 = load i64, i64* @REG_AUTO_LLT_V1, align 8
  %172 = load i32, i32* @BIT_AUTO_INIT_LLT_V1, align 4
  %173 = call i32 @check_hw_ready(%struct.rtw_dev* %170, i64 %171, i32 %172, i32 0)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %178, label %175

175:                                              ; preds = %70
  %176 = load i32, i32* @EBUSY, align 4
  %177 = sub nsw i32 0, %176
  store i32 %177, i32* %2, align 4
  br label %183

178:                                              ; preds = %70
  %179 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %180 = load i64, i64* @REG_CR, align 8
  %181 = add nsw i64 %180, 3
  %182 = call i32 @rtw_write8(%struct.rtw_dev* %179, i64 %181, i32 0)
  store i32 0, i32* %2, align 4
  br label %183

183:                                              ; preds = %178, %175, %67, %61, %18
  %184 = load i32, i32* %2, align 4
  ret i32 %184
}

declare dso_local i32 @set_trx_fifo_info(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_hci_type(%struct.rtw_dev*) #1

declare dso_local i32 @rtw_write16(%struct.rtw_dev*, i64, i64) #1

declare dso_local i32 @rtw_write32_set(%struct.rtw_dev*, i32, i32) #1

declare dso_local i32 @rtw_write8_set(%struct.rtw_dev*, i64, i32) #1

declare dso_local i32 @rtw_write32(%struct.rtw_dev*, i32, i64) #1

declare dso_local i32 @check_hw_ready(%struct.rtw_dev*, i64, i32, i32) #1

declare dso_local i32 @rtw_write8(%struct.rtw_dev*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
