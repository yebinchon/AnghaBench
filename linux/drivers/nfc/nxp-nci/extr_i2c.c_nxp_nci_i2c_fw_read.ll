; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nxp-nci/extr_i2c.c_nxp_nci_i2c_fw_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nxp-nci/extr_i2c.c_nxp_nci_i2c_fw_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nxp_nci_i2c_phy = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.sk_buff = type { i32 }

@NXP_NCI_FW_HDR_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Incorrect header length: %u\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@NXP_NCI_FW_FRAME_LEN_MASK = common dso_local global i64 0, align 8
@NXP_NCI_FW_CRC_LEN = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [41 x i8] c"Invalid frame length: %u (expected %zu)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nxp_nci_i2c_phy*, %struct.sk_buff**)* @nxp_nci_i2c_fw_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxp_nci_i2c_fw_read(%struct.nxp_nci_i2c_phy* %0, %struct.sk_buff** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nxp_nci_i2c_phy*, align 8
  %5 = alloca %struct.sk_buff**, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.nxp_nci_i2c_phy* %0, %struct.nxp_nci_i2c_phy** %4, align 8
  store %struct.sk_buff** %1, %struct.sk_buff*** %5, align 8
  %10 = load %struct.nxp_nci_i2c_phy*, %struct.nxp_nci_i2c_phy** %4, align 8
  %11 = getelementptr inbounds %struct.nxp_nci_i2c_phy, %struct.nxp_nci_i2c_phy* %10, i32 0, i32 0
  %12 = load %struct.i2c_client*, %struct.i2c_client** %11, align 8
  store %struct.i2c_client* %12, %struct.i2c_client** %6, align 8
  %13 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %14 = load i32, i32* @NXP_NCI_FW_HDR_LEN, align 4
  %15 = sext i32 %14 to i64
  %16 = call i32 @i2c_master_recv(%struct.i2c_client* %13, i32* %7, i64 %15)
  store i32 %16, i32* %9, align 4
  %17 = load i32, i32* %9, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %82

20:                                               ; preds = %2
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @NXP_NCI_FW_HDR_LEN, align 4
  %23 = icmp ne i32 %21, %22
  br i1 %23, label %24, label %31

24:                                               ; preds = %20
  %25 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = load i32, i32* %9, align 4
  %28 = call i32 (i32*, i8*, i32, ...) @nfc_err(i32* %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EBADMSG, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %9, align 4
  br label %82

31:                                               ; preds = %20
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @be16_to_cpu(i32 %33)
  %35 = load i64, i64* @NXP_NCI_FW_FRAME_LEN_MASK, align 8
  %36 = and i64 %34, %35
  %37 = load i64, i64* @NXP_NCI_FW_CRC_LEN, align 8
  %38 = add i64 %36, %37
  store i64 %38, i64* %8, align 8
  %39 = load i32, i32* @NXP_NCI_FW_HDR_LEN, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64, i64* %8, align 8
  %42 = add i64 %40, %41
  %43 = trunc i64 %42 to i32
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.sk_buff* @alloc_skb(i32 %43, i32 %44)
  %46 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  store %struct.sk_buff* %45, %struct.sk_buff** %46, align 8
  %47 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %48 = load %struct.sk_buff*, %struct.sk_buff** %47, align 8
  %49 = icmp eq %struct.sk_buff* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %32
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %9, align 4
  br label %82

53:                                               ; preds = %32
  %54 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %54, align 8
  %56 = load i32, i32* @NXP_NCI_FW_HDR_LEN, align 4
  %57 = call i32 @skb_put_data(%struct.sk_buff* %55, i32* %7, i32 %56)
  %58 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %59 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %59, align 8
  %61 = load i64, i64* %8, align 8
  %62 = call i32* @skb_put(%struct.sk_buff* %60, i64 %61)
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @i2c_master_recv(%struct.i2c_client* %58, i32* %62, i64 %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64, i64* %8, align 8
  %68 = icmp ne i64 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %53
  %70 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %71 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %70, i32 0, i32 0
  %72 = load i32, i32* %9, align 4
  %73 = load i64, i64* %8, align 8
  %74 = call i32 (i32*, i8*, i32, ...) @nfc_err(i32* %71, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0), i32 %72, i64 %73)
  %75 = load i32, i32* @EBADMSG, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %9, align 4
  br label %78

77:                                               ; preds = %53
  store i32 0, i32* %3, align 4
  br label %84

78:                                               ; preds = %69
  %79 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %80 = load %struct.sk_buff*, %struct.sk_buff** %79, align 8
  %81 = call i32 @kfree_skb(%struct.sk_buff* %80)
  br label %82

82:                                               ; preds = %78, %50, %24, %19
  %83 = load i32, i32* %9, align 4
  store i32 %83, i32* %3, align 4
  br label %84

84:                                               ; preds = %82, %77
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i32*, i64) #1

declare dso_local i32 @nfc_err(i32*, i8*, i32, ...) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i32*, i32) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
