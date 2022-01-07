; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_fusb302_pd_read_message.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_fusb302.c_fusb302_pd_read_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fusb302_chip = type { i32 }
%struct.pd_message = type { i32, i64 }

@FUSB_REG_FIFOS = common dso_local global i32 0, align 4
@PD_MAX_PAYLOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"PD message too long %d\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"PD message header: %x\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"PD message len: %d\00", align 1
@PD_CTRL_GOOD_CRC = common dso_local global i64 0, align 8
@TCPC_TX_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fusb302_chip*, %struct.pd_message*)* @fusb302_pd_read_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fusb302_pd_read_message(%struct.fusb302_chip* %0, %struct.pd_message* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fusb302_chip*, align 8
  %5 = alloca %struct.pd_message*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [4 x i32], align 16
  %9 = alloca i32, align 4
  store %struct.fusb302_chip* %0, %struct.fusb302_chip** %4, align 8
  store %struct.pd_message* %1, %struct.pd_message** %5, align 8
  store i32 0, i32* %6, align 4
  %10 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %11 = load i32, i32* @FUSB_REG_FIFOS, align 4
  %12 = call i32 @fusb302_i2c_read(%struct.fusb302_chip* %10, i32 %11, i32* %7)
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %2
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %101

17:                                               ; preds = %2
  %18 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %19 = load i32, i32* @FUSB_REG_FIFOS, align 4
  %20 = load %struct.pd_message*, %struct.pd_message** %5, align 8
  %21 = getelementptr inbounds %struct.pd_message, %struct.pd_message* %20, i32 0, i32 0
  %22 = call i32 @fusb302_i2c_block_read(%struct.fusb302_chip* %18, i32 %19, i32 2, i32* %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %101

27:                                               ; preds = %17
  %28 = load %struct.pd_message*, %struct.pd_message** %5, align 8
  %29 = getelementptr inbounds %struct.pd_message, %struct.pd_message* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @pd_header_cnt_le(i32 %30)
  %32 = mul nsw i32 %31, 4
  store i32 %32, i32* %9, align 4
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* @PD_MAX_PAYLOAD, align 4
  %35 = mul nsw i32 %34, 4
  %36 = icmp sgt i32 %33, %35
  br i1 %36, label %37, label %43

37:                                               ; preds = %27
  %38 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @fusb302_log(%struct.fusb302_chip* %38, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @EINVAL, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %101

43:                                               ; preds = %27
  %44 = load i32, i32* %9, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %60

46:                                               ; preds = %43
  %47 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %48 = load i32, i32* @FUSB_REG_FIFOS, align 4
  %49 = load i32, i32* %9, align 4
  %50 = load %struct.pd_message*, %struct.pd_message** %5, align 8
  %51 = getelementptr inbounds %struct.pd_message, %struct.pd_message* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = inttoptr i64 %52 to i32*
  %54 = call i32 @fusb302_i2c_block_read(%struct.fusb302_chip* %47, i32 %48, i32 %49, i32* %53)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %101

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59, %43
  %61 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %62 = load i32, i32* @FUSB_REG_FIFOS, align 4
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %8, i64 0, i64 0
  %64 = call i32 @fusb302_i2c_block_read(%struct.fusb302_chip* %61, i32 %62, i32 4, i32* %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %60
  %68 = load i32, i32* %6, align 4
  store i32 %68, i32* %3, align 4
  br label %101

69:                                               ; preds = %60
  %70 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %71 = load %struct.pd_message*, %struct.pd_message** %5, align 8
  %72 = getelementptr inbounds %struct.pd_message, %struct.pd_message* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @fusb302_log(%struct.fusb302_chip* %70, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %73)
  %75 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @fusb302_log(%struct.fusb302_chip* %75, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %93, label %80

80:                                               ; preds = %69
  %81 = load %struct.pd_message*, %struct.pd_message** %5, align 8
  %82 = getelementptr inbounds %struct.pd_message, %struct.pd_message* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i64 @pd_header_type_le(i32 %83)
  %85 = load i64, i64* @PD_CTRL_GOOD_CRC, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %89 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @TCPC_TX_SUCCESS, align 4
  %92 = call i32 @tcpm_pd_transmit_complete(i32 %90, i32 %91)
  br label %99

93:                                               ; preds = %80, %69
  %94 = load %struct.fusb302_chip*, %struct.fusb302_chip** %4, align 8
  %95 = getelementptr inbounds %struct.fusb302_chip, %struct.fusb302_chip* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.pd_message*, %struct.pd_message** %5, align 8
  %98 = call i32 @tcpm_pd_receive(i32 %96, %struct.pd_message* %97)
  br label %99

99:                                               ; preds = %93, %87
  %100 = load i32, i32* %6, align 4
  store i32 %100, i32* %3, align 4
  br label %101

101:                                              ; preds = %99, %67, %57, %37, %25, %15
  %102 = load i32, i32* %3, align 4
  ret i32 %102
}

declare dso_local i32 @fusb302_i2c_read(%struct.fusb302_chip*, i32, i32*) #1

declare dso_local i32 @fusb302_i2c_block_read(%struct.fusb302_chip*, i32, i32, i32*) #1

declare dso_local i32 @pd_header_cnt_le(i32) #1

declare dso_local i32 @fusb302_log(%struct.fusb302_chip*, i8*, i32) #1

declare dso_local i64 @pd_header_type_le(i32) #1

declare dso_local i32 @tcpm_pd_transmit_complete(i32, i32) #1

declare dso_local i32 @tcpm_pd_receive(i32, %struct.pd_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
