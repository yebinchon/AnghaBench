; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nxp-nci/extr_i2c.c_nxp_nci_i2c_nci_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nxp-nci/extr_i2c.c_nxp_nci_i2c_nci_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nxp_nci_i2c_phy = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nci_ctrl_hdr = type { i32 }

@NCI_CTRL_HDR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Incorrect header length: %u\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [48 x i8] c"Invalid frame payload length: %u (expected %u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nxp_nci_i2c_phy*, %struct.sk_buff**)* @nxp_nci_i2c_nci_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxp_nci_i2c_nci_read(%struct.nxp_nci_i2c_phy* %0, %struct.sk_buff** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nxp_nci_i2c_phy*, align 8
  %5 = alloca %struct.sk_buff**, align 8
  %6 = alloca %struct.nci_ctrl_hdr, align 4
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca i32, align 4
  store %struct.nxp_nci_i2c_phy* %0, %struct.nxp_nci_i2c_phy** %4, align 8
  store %struct.sk_buff** %1, %struct.sk_buff*** %5, align 8
  %9 = load %struct.nxp_nci_i2c_phy*, %struct.nxp_nci_i2c_phy** %4, align 8
  %10 = getelementptr inbounds %struct.nxp_nci_i2c_phy, %struct.nxp_nci_i2c_phy* %9, i32 0, i32 0
  %11 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  store %struct.i2c_client* %11, %struct.i2c_client** %7, align 8
  %12 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %13 = bitcast %struct.nci_ctrl_hdr* %6 to i32*
  %14 = load i32, i32* @NCI_CTRL_HDR_SIZE, align 4
  %15 = call i32 @i2c_master_recv(%struct.i2c_client* %12, i32* %13, i32 %14)
  store i32 %15, i32* %8, align 4
  %16 = load i32, i32* %8, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %78

19:                                               ; preds = %2
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @NCI_CTRL_HDR_SIZE, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %30

23:                                               ; preds = %19
  %24 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %25 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %24, i32 0, i32 0
  %26 = load i32, i32* %8, align 4
  %27 = call i32 (i32*, i8*, i32, ...) @nfc_err(i32* %25, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @EBADMSG, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %8, align 4
  br label %78

30:                                               ; preds = %19
  br label %31

31:                                               ; preds = %30
  %32 = load i32, i32* @NCI_CTRL_HDR_SIZE, align 4
  %33 = getelementptr inbounds %struct.nci_ctrl_hdr, %struct.nci_ctrl_hdr* %6, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = add nsw i32 %32, %34
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call %struct.sk_buff* @alloc_skb(i32 %35, i32 %36)
  %38 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  store %struct.sk_buff* %37, %struct.sk_buff** %38, align 8
  %39 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %40 = load %struct.sk_buff*, %struct.sk_buff** %39, align 8
  %41 = icmp eq %struct.sk_buff* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %31
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %78

45:                                               ; preds = %31
  %46 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %47 = load %struct.sk_buff*, %struct.sk_buff** %46, align 8
  %48 = bitcast %struct.nci_ctrl_hdr* %6 to i8*
  %49 = load i32, i32* @NCI_CTRL_HDR_SIZE, align 4
  %50 = call i32 @skb_put_data(%struct.sk_buff* %47, i8* %48, i32 %49)
  %51 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %52 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %52, align 8
  %54 = getelementptr inbounds %struct.nci_ctrl_hdr, %struct.nci_ctrl_hdr* %6, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32* @skb_put(%struct.sk_buff* %53, i32 %55)
  %57 = getelementptr inbounds %struct.nci_ctrl_hdr, %struct.nci_ctrl_hdr* %6, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @i2c_master_recv(%struct.i2c_client* %51, i32* %56, i32 %58)
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = getelementptr inbounds %struct.nci_ctrl_hdr, %struct.nci_ctrl_hdr* %6, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %60, %62
  br i1 %63, label %64, label %73

64:                                               ; preds = %45
  %65 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %66 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %65, i32 0, i32 0
  %67 = load i32, i32* %8, align 4
  %68 = getelementptr inbounds %struct.nci_ctrl_hdr, %struct.nci_ctrl_hdr* %6, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 (i32*, i8*, i32, ...) @nfc_err(i32* %66, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i32 %67, i32 %69)
  %71 = load i32, i32* @EBADMSG, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %8, align 4
  br label %74

73:                                               ; preds = %45
  store i32 0, i32* %3, align 4
  br label %80

74:                                               ; preds = %64
  %75 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %75, align 8
  %77 = call i32 @kfree_skb(%struct.sk_buff* %76)
  br label %78

78:                                               ; preds = %74, %42, %23, %18
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %78, %73
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i32*, i32) #1

declare dso_local i32 @nfc_err(i32*, i8*, i32, ...) #1

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i8*, i32) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
