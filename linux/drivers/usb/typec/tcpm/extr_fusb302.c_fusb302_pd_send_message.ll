; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_fusb302_pd_send_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_fusb302_pd_send_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fusb302_chip = type { i32 }
%struct.pd_message = type { i32, i32* }

@FUSB302_TKN_SYNC1 = common dso_local global i64 0, align 8
@FUSB302_TKN_SYNC2 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"PD message too long %d (incl. header)\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FUSB302_TKN_PACKSYM = common dso_local global i32 0, align 4
@FUSB302_TKN_JAMCRC = common dso_local global i64 0, align 8
@FUSB302_TKN_EOP = common dso_local global i64 0, align 8
@FUSB302_TKN_TXOFF = common dso_local global i64 0, align 8
@FUSB302_TKN_TXON = common dso_local global i64 0, align 8
@FUSB_REG_FIFOS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"sending PD message header: %x\00", align 1
@.str.2 = private unnamed_addr constant [27 x i8] c"sending PD message len: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fusb302_chip*, %struct.pd_message*)* @fusb302_pd_send_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fusb302_pd_send_message(%struct.fusb302_chip* %0, %struct.pd_message* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fusb302_chip*, align 8
  %5 = alloca %struct.pd_message*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [40 x i64], align 16
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.fusb302_chip* %0, %struct.fusb302_chip** %4, align 8
  store %struct.pd_message* %1, %struct.pd_message** %5, align 8
  store i32 0, i32* %6, align 4
  store i64 0, i64* %8, align 8
  %10 = load i64, i64* @FUSB302_TKN_SYNC1, align 8
  %11 = load i64, i64* %8, align 8
  %12 = add i64 %11, 1
  store i64 %12, i64* %8, align 8
  %13 = getelementptr inbounds [40 x i64], [40 x i64]* %7, i64 0, i64 %11
  store i64 %10, i64* %13, align 8
  %14 = load i64, i64* @FUSB302_TKN_SYNC1, align 8
  %15 = load i64, i64* %8, align 8
  %16 = add i64 %15, 1
  store i64 %16, i64* %8, align 8
  %17 = getelementptr inbounds [40 x i64], [40 x i64]* %7, i64 0, i64 %15
  store i64 %14, i64* %17, align 8
  %18 = load i64, i64* @FUSB302_TKN_SYNC1, align 8
  %19 = load i64, i64* %8, align 8
  %20 = add i64 %19, 1
  store i64 %20, i64* %8, align 8
  %21 = getelementptr inbounds [40 x i64], [40 x i64]* %7, i64 0, i64 %19
  store i64 %18, i64* %21, align 8
  %22 = load i64, i64* @FUSB302_TKN_SYNC2, align 8
  %23 = load i64, i64* %8, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %8, align 8
  %25 = getelementptr inbounds [40 x i64], [40 x i64]* %7, i64 0, i64 %23
  store i64 %22, i64* %25, align 8
  %26 = load %struct.pd_message*, %struct.pd_message** %5, align 8
  %27 = getelementptr inbounds %struct.pd_message, %struct.pd_message* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @pd_header_cnt_le(i32 %28)
  %30 = mul nsw i32 %29, 4
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %9, align 4
  %32 = add nsw i32 %31, 2
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp sgt i32 %33, 31
  br i1 %34, label %35, label %41

35:                                               ; preds = %2
  %36 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @fusb302_log(%struct.fusb302_chip* %36, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %37)
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %105

41:                                               ; preds = %2
  %42 = load i32, i32* @FUSB302_TKN_PACKSYM, align 4
  %43 = load i32, i32* %9, align 4
  %44 = and i32 %43, 31
  %45 = or i32 %42, %44
  %46 = sext i32 %45 to i64
  %47 = load i64, i64* %8, align 8
  %48 = add i64 %47, 1
  store i64 %48, i64* %8, align 8
  %49 = getelementptr inbounds [40 x i64], [40 x i64]* %7, i64 0, i64 %47
  store i64 %46, i64* %49, align 8
  %50 = load i64, i64* %8, align 8
  %51 = getelementptr inbounds [40 x i64], [40 x i64]* %7, i64 0, i64 %50
  %52 = load %struct.pd_message*, %struct.pd_message** %5, align 8
  %53 = getelementptr inbounds %struct.pd_message, %struct.pd_message* %52, i32 0, i32 0
  %54 = call i32 @memcpy(i64* %51, i32* %53, i32 4)
  %55 = load i64, i64* %8, align 8
  %56 = add i64 %55, 4
  store i64 %56, i64* %8, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sub nsw i32 %57, 2
  store i32 %58, i32* %9, align 4
  %59 = load i64, i64* %8, align 8
  %60 = getelementptr inbounds [40 x i64], [40 x i64]* %7, i64 0, i64 %59
  %61 = load %struct.pd_message*, %struct.pd_message** %5, align 8
  %62 = getelementptr inbounds %struct.pd_message, %struct.pd_message* %61, i32 0, i32 1
  %63 = load i32*, i32** %62, align 8
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @memcpy(i64* %60, i32* %63, i32 %64)
  %66 = load i32, i32* %9, align 4
  %67 = sext i32 %66 to i64
  %68 = load i64, i64* %8, align 8
  %69 = add i64 %68, %67
  store i64 %69, i64* %8, align 8
  %70 = load i64, i64* @FUSB302_TKN_JAMCRC, align 8
  %71 = load i64, i64* %8, align 8
  %72 = add i64 %71, 1
  store i64 %72, i64* %8, align 8
  %73 = getelementptr inbounds [40 x i64], [40 x i64]* %7, i64 0, i64 %71
  store i64 %70, i64* %73, align 8
  %74 = load i64, i64* @FUSB302_TKN_EOP, align 8
  %75 = load i64, i64* %8, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %8, align 8
  %77 = getelementptr inbounds [40 x i64], [40 x i64]* %7, i64 0, i64 %75
  store i64 %74, i64* %77, align 8
  %78 = load i64, i64* @FUSB302_TKN_TXOFF, align 8
  %79 = load i64, i64* %8, align 8
  %80 = add i64 %79, 1
  store i64 %80, i64* %8, align 8
  %81 = getelementptr inbounds [40 x i64], [40 x i64]* %7, i64 0, i64 %79
  store i64 %78, i64* %81, align 8
  %82 = load i64, i64* @FUSB302_TKN_TXON, align 8
  %83 = load i64, i64* %8, align 8
  %84 = add i64 %83, 1
  store i64 %84, i64* %8, align 8
  %85 = getelementptr inbounds [40 x i64], [40 x i64]* %7, i64 0, i64 %83
  store i64 %82, i64* %85, align 8
  %86 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %87 = load i32, i32* @FUSB_REG_FIFOS, align 4
  %88 = load i64, i64* %8, align 8
  %89 = getelementptr inbounds [40 x i64], [40 x i64]* %7, i64 0, i64 0
  %90 = call i32 @fusb302_i2c_block_write(%struct.fusb302_chip* %86, i32 %87, i64 %88, i64* %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %95

93:                                               ; preds = %41
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %3, align 4
  br label %105

95:                                               ; preds = %41
  %96 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %97 = load %struct.pd_message*, %struct.pd_message** %5, align 8
  %98 = getelementptr inbounds %struct.pd_message, %struct.pd_message* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = call i32 @fusb302_log(%struct.fusb302_chip* %96, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %99)
  %101 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %102 = load i32, i32* %9, align 4
  %103 = call i32 @fusb302_log(%struct.fusb302_chip* %101, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i64 0, i64 0), i32 %102)
  %104 = load i32, i32* %6, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %95, %93, %35
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local i32 @pd_header_cnt_le(i32) #1

declare dso_local i32 @fusb302_log(%struct.fusb302_chip*, i8*, i32) #1

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i32 @fusb302_i2c_block_write(%struct.fusb302_chip*, i32, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
