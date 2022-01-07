; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_set_trx_fifo_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_mac.c_set_trx_fifo_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_dev = type { %struct.rtw_chip_info*, %struct.rtw_fifo_conf }
%struct.rtw_chip_info = type { i32, i32 }
%struct.rtw_fifo_conf = type { i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8* }

@RSVD_PG_H2C_EXTRAINFO_NUM = common dso_local global i32 0, align 4
@RSVD_PG_H2C_STATICINFO_NUM = common dso_local global i32 0, align 4
@RSVD_PG_H2CQ_NUM = common dso_local global i32 0, align 4
@RSVD_PG_CPU_INSTRUCTION_NUM = common dso_local global i32 0, align 4
@RSVD_PG_FW_TXBUF_NUM = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"wrong rsvd driver address\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtw_dev*)* @set_trx_fifo_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_trx_fifo_info(%struct.rtw_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rtw_dev*, align 8
  %4 = alloca %struct.rtw_fifo_conf*, align 8
  %5 = alloca %struct.rtw_chip_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  store %struct.rtw_dev* %0, %struct.rtw_dev** %3, align 8
  %8 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %9 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %8, i32 0, i32 1
  store %struct.rtw_fifo_conf* %9, %struct.rtw_fifo_conf** %4, align 8
  %10 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %11 = getelementptr inbounds %struct.rtw_dev, %struct.rtw_dev* %10, i32 0, i32 0
  %12 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %11, align 8
  store %struct.rtw_chip_info* %12, %struct.rtw_chip_info** %5, align 8
  %13 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %5, align 8
  %14 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.rtw_fifo_conf*, %struct.rtw_fifo_conf** %4, align 8
  %17 = getelementptr inbounds %struct.rtw_fifo_conf, %struct.rtw_fifo_conf* %16, i32 0, i32 0
  store i32 8, i32* %17, align 8
  %18 = load %struct.rtw_chip_info*, %struct.rtw_chip_info** %5, align 8
  %19 = getelementptr inbounds %struct.rtw_chip_info, %struct.rtw_chip_info* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = ashr i32 %20, 7
  %22 = load %struct.rtw_fifo_conf*, %struct.rtw_fifo_conf** %4, align 8
  %23 = getelementptr inbounds %struct.rtw_fifo_conf, %struct.rtw_fifo_conf* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.rtw_fifo_conf*, %struct.rtw_fifo_conf** %4, align 8
  %25 = getelementptr inbounds %struct.rtw_fifo_conf, %struct.rtw_fifo_conf* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @RSVD_PG_H2C_EXTRAINFO_NUM, align 4
  %28 = add nsw i32 %26, %27
  %29 = load i32, i32* @RSVD_PG_H2C_STATICINFO_NUM, align 4
  %30 = add nsw i32 %28, %29
  %31 = load i32, i32* @RSVD_PG_H2CQ_NUM, align 4
  %32 = add nsw i32 %30, %31
  %33 = load i32, i32* @RSVD_PG_CPU_INSTRUCTION_NUM, align 4
  %34 = add nsw i32 %32, %33
  %35 = load i32, i32* @RSVD_PG_FW_TXBUF_NUM, align 4
  %36 = add nsw i32 %34, %35
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %36, %37
  %39 = load %struct.rtw_fifo_conf*, %struct.rtw_fifo_conf** %4, align 8
  %40 = getelementptr inbounds %struct.rtw_fifo_conf, %struct.rtw_fifo_conf* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.rtw_fifo_conf*, %struct.rtw_fifo_conf** %4, align 8
  %42 = getelementptr inbounds %struct.rtw_fifo_conf, %struct.rtw_fifo_conf* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.rtw_fifo_conf*, %struct.rtw_fifo_conf** %4, align 8
  %45 = getelementptr inbounds %struct.rtw_fifo_conf, %struct.rtw_fifo_conf* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = icmp sgt i32 %43, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %1
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %2, align 4
  br label %147

51:                                               ; preds = %1
  %52 = load %struct.rtw_fifo_conf*, %struct.rtw_fifo_conf** %4, align 8
  %53 = getelementptr inbounds %struct.rtw_fifo_conf, %struct.rtw_fifo_conf* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.rtw_fifo_conf*, %struct.rtw_fifo_conf** %4, align 8
  %56 = getelementptr inbounds %struct.rtw_fifo_conf, %struct.rtw_fifo_conf* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %54, %57
  %59 = load %struct.rtw_fifo_conf*, %struct.rtw_fifo_conf** %4, align 8
  %60 = getelementptr inbounds %struct.rtw_fifo_conf, %struct.rtw_fifo_conf* %59, i32 0, i32 3
  store i32 %58, i32* %60, align 4
  %61 = load %struct.rtw_fifo_conf*, %struct.rtw_fifo_conf** %4, align 8
  %62 = getelementptr inbounds %struct.rtw_fifo_conf, %struct.rtw_fifo_conf* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.rtw_fifo_conf*, %struct.rtw_fifo_conf** %4, align 8
  %65 = getelementptr inbounds %struct.rtw_fifo_conf, %struct.rtw_fifo_conf* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %63, %66
  %68 = load %struct.rtw_fifo_conf*, %struct.rtw_fifo_conf** %4, align 8
  %69 = getelementptr inbounds %struct.rtw_fifo_conf, %struct.rtw_fifo_conf* %68, i32 0, i32 4
  store i32 %67, i32* %69, align 8
  %70 = load %struct.rtw_fifo_conf*, %struct.rtw_fifo_conf** %4, align 8
  %71 = getelementptr inbounds %struct.rtw_fifo_conf, %struct.rtw_fifo_conf* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sext i32 %72 to i64
  %74 = inttoptr i64 %73 to i8*
  store i8* %74, i8** %6, align 8
  %75 = load i32, i32* %7, align 4
  %76 = load i8*, i8** %6, align 8
  %77 = sext i32 %75 to i64
  %78 = sub i64 0, %77
  %79 = getelementptr i8, i8* %76, i64 %78
  store i8* %79, i8** %6, align 8
  %80 = load i8*, i8** %6, align 8
  %81 = load %struct.rtw_fifo_conf*, %struct.rtw_fifo_conf** %4, align 8
  %82 = getelementptr inbounds %struct.rtw_fifo_conf, %struct.rtw_fifo_conf* %81, i32 0, i32 11
  store i8* %80, i8** %82, align 8
  %83 = load i32, i32* @RSVD_PG_FW_TXBUF_NUM, align 4
  %84 = load i8*, i8** %6, align 8
  %85 = sext i32 %83 to i64
  %86 = sub i64 0, %85
  %87 = getelementptr i8, i8* %84, i64 %86
  store i8* %87, i8** %6, align 8
  %88 = load i8*, i8** %6, align 8
  %89 = load %struct.rtw_fifo_conf*, %struct.rtw_fifo_conf** %4, align 8
  %90 = getelementptr inbounds %struct.rtw_fifo_conf, %struct.rtw_fifo_conf* %89, i32 0, i32 10
  store i8* %88, i8** %90, align 8
  %91 = load i32, i32* @RSVD_PG_CPU_INSTRUCTION_NUM, align 4
  %92 = load i8*, i8** %6, align 8
  %93 = sext i32 %91 to i64
  %94 = sub i64 0, %93
  %95 = getelementptr i8, i8* %92, i64 %94
  store i8* %95, i8** %6, align 8
  %96 = load i8*, i8** %6, align 8
  %97 = load %struct.rtw_fifo_conf*, %struct.rtw_fifo_conf** %4, align 8
  %98 = getelementptr inbounds %struct.rtw_fifo_conf, %struct.rtw_fifo_conf* %97, i32 0, i32 9
  store i8* %96, i8** %98, align 8
  %99 = load i32, i32* @RSVD_PG_H2CQ_NUM, align 4
  %100 = load i8*, i8** %6, align 8
  %101 = sext i32 %99 to i64
  %102 = sub i64 0, %101
  %103 = getelementptr i8, i8* %100, i64 %102
  store i8* %103, i8** %6, align 8
  %104 = load i8*, i8** %6, align 8
  %105 = load %struct.rtw_fifo_conf*, %struct.rtw_fifo_conf** %4, align 8
  %106 = getelementptr inbounds %struct.rtw_fifo_conf, %struct.rtw_fifo_conf* %105, i32 0, i32 8
  store i8* %104, i8** %106, align 8
  %107 = load i32, i32* @RSVD_PG_H2C_STATICINFO_NUM, align 4
  %108 = load i8*, i8** %6, align 8
  %109 = sext i32 %107 to i64
  %110 = sub i64 0, %109
  %111 = getelementptr i8, i8* %108, i64 %110
  store i8* %111, i8** %6, align 8
  %112 = load i8*, i8** %6, align 8
  %113 = load %struct.rtw_fifo_conf*, %struct.rtw_fifo_conf** %4, align 8
  %114 = getelementptr inbounds %struct.rtw_fifo_conf, %struct.rtw_fifo_conf* %113, i32 0, i32 7
  store i8* %112, i8** %114, align 8
  %115 = load i32, i32* @RSVD_PG_H2C_EXTRAINFO_NUM, align 4
  %116 = load i8*, i8** %6, align 8
  %117 = sext i32 %115 to i64
  %118 = sub i64 0, %117
  %119 = getelementptr i8, i8* %116, i64 %118
  store i8* %119, i8** %6, align 8
  %120 = load i8*, i8** %6, align 8
  %121 = load %struct.rtw_fifo_conf*, %struct.rtw_fifo_conf** %4, align 8
  %122 = getelementptr inbounds %struct.rtw_fifo_conf, %struct.rtw_fifo_conf* %121, i32 0, i32 6
  store i8* %120, i8** %122, align 8
  %123 = load %struct.rtw_fifo_conf*, %struct.rtw_fifo_conf** %4, align 8
  %124 = getelementptr inbounds %struct.rtw_fifo_conf, %struct.rtw_fifo_conf* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 8
  %126 = load i8*, i8** %6, align 8
  %127 = sext i32 %125 to i64
  %128 = sub i64 0, %127
  %129 = getelementptr i8, i8* %126, i64 %128
  store i8* %129, i8** %6, align 8
  %130 = load i8*, i8** %6, align 8
  %131 = ptrtoint i8* %130 to i32
  %132 = load %struct.rtw_fifo_conf*, %struct.rtw_fifo_conf** %4, align 8
  %133 = getelementptr inbounds %struct.rtw_fifo_conf, %struct.rtw_fifo_conf* %132, i32 0, i32 5
  store i32 %131, i32* %133, align 4
  %134 = load %struct.rtw_fifo_conf*, %struct.rtw_fifo_conf** %4, align 8
  %135 = getelementptr inbounds %struct.rtw_fifo_conf, %struct.rtw_fifo_conf* %134, i32 0, i32 4
  %136 = load i32, i32* %135, align 8
  %137 = load %struct.rtw_fifo_conf*, %struct.rtw_fifo_conf** %4, align 8
  %138 = getelementptr inbounds %struct.rtw_fifo_conf, %struct.rtw_fifo_conf* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = icmp ne i32 %136, %139
  br i1 %140, label %141, label %146

141:                                              ; preds = %51
  %142 = load %struct.rtw_dev*, %struct.rtw_dev** %3, align 8
  %143 = call i32 @rtw_err(%struct.rtw_dev* %142, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %144 = load i32, i32* @EINVAL, align 4
  %145 = sub nsw i32 0, %144
  store i32 %145, i32* %2, align 4
  br label %147

146:                                              ; preds = %51
  store i32 0, i32* %2, align 4
  br label %147

147:                                              ; preds = %146, %141, %48
  %148 = load i32, i32* %2, align 4
  ret i32 %148
}

declare dso_local i32 @rtw_err(%struct.rtw_dev*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
