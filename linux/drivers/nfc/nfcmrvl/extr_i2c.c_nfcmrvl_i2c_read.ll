; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_i2c.c_nfcmrvl_i2c_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_i2c.c_nfcmrvl_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfcmrvl_i2c_drv_data = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nci_ctrl_hdr = type { i32 }

@NCI_CTRL_HDR_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"cannot read NCI header\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@NCI_MAX_PAYLOAD_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"invalid packet payload size\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"Invalid frame payload length: %u (expected %u)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfcmrvl_i2c_drv_data*, %struct.sk_buff**)* @nfcmrvl_i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfcmrvl_i2c_read(%struct.nfcmrvl_i2c_drv_data* %0, %struct.sk_buff** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfcmrvl_i2c_drv_data*, align 8
  %5 = alloca %struct.sk_buff**, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nci_ctrl_hdr, align 4
  store %struct.nfcmrvl_i2c_drv_data* %0, %struct.nfcmrvl_i2c_drv_data** %4, align 8
  store %struct.sk_buff** %1, %struct.sk_buff*** %5, align 8
  %8 = load %struct.nfcmrvl_i2c_drv_data*, %struct.nfcmrvl_i2c_drv_data** %4, align 8
  %9 = getelementptr inbounds %struct.nfcmrvl_i2c_drv_data, %struct.nfcmrvl_i2c_drv_data* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = bitcast %struct.nci_ctrl_hdr* %7 to i32*
  %12 = load i32, i32* @NCI_CTRL_HDR_SIZE, align 4
  %13 = call i32 @i2c_master_recv(%struct.TYPE_4__* %10, i32* %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @NCI_CTRL_HDR_SIZE, align 4
  %16 = icmp ne i32 %14, %15
  br i1 %16, label %17, label %25

17:                                               ; preds = %2
  %18 = load %struct.nfcmrvl_i2c_drv_data*, %struct.nfcmrvl_i2c_drv_data** %4, align 8
  %19 = getelementptr inbounds %struct.nfcmrvl_i2c_drv_data, %struct.nfcmrvl_i2c_drv_data* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 (i32*, i8*, ...) @nfc_err(i32* %21, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EBADMSG, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %97

25:                                               ; preds = %2
  %26 = getelementptr inbounds %struct.nci_ctrl_hdr, %struct.nci_ctrl_hdr* %7, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @NCI_MAX_PAYLOAD_SIZE, align 4
  %29 = icmp sgt i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %25
  %31 = load %struct.nfcmrvl_i2c_drv_data*, %struct.nfcmrvl_i2c_drv_data** %4, align 8
  %32 = getelementptr inbounds %struct.nfcmrvl_i2c_drv_data, %struct.nfcmrvl_i2c_drv_data* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = call i32 (i32*, i8*, ...) @nfc_err(i32* %34, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EBADMSG, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %97

38:                                               ; preds = %25
  %39 = load %struct.nfcmrvl_i2c_drv_data*, %struct.nfcmrvl_i2c_drv_data** %4, align 8
  %40 = getelementptr inbounds %struct.nfcmrvl_i2c_drv_data, %struct.nfcmrvl_i2c_drv_data* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = getelementptr inbounds %struct.nci_ctrl_hdr, %struct.nci_ctrl_hdr* %7, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @NCI_CTRL_HDR_SIZE, align 4
  %47 = add nsw i32 %45, %46
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call %struct.sk_buff* @nci_skb_alloc(i32 %43, i32 %47, i32 %48)
  %50 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  store %struct.sk_buff* %49, %struct.sk_buff** %50, align 8
  %51 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %51, align 8
  %53 = icmp ne %struct.sk_buff* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %38
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %97

57:                                               ; preds = %38
  %58 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %59 = load %struct.sk_buff*, %struct.sk_buff** %58, align 8
  %60 = load i32, i32* @NCI_CTRL_HDR_SIZE, align 4
  %61 = call i32 @skb_put_data(%struct.sk_buff* %59, %struct.nci_ctrl_hdr* %7, i32 %60)
  %62 = getelementptr inbounds %struct.nci_ctrl_hdr, %struct.nci_ctrl_hdr* %7, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %96

65:                                               ; preds = %57
  %66 = load %struct.nfcmrvl_i2c_drv_data*, %struct.nfcmrvl_i2c_drv_data** %4, align 8
  %67 = getelementptr inbounds %struct.nfcmrvl_i2c_drv_data, %struct.nfcmrvl_i2c_drv_data* %66, i32 0, i32 0
  %68 = load %struct.TYPE_4__*, %struct.TYPE_4__** %67, align 8
  %69 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %69, align 8
  %71 = getelementptr inbounds %struct.nci_ctrl_hdr, %struct.nci_ctrl_hdr* %7, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call i32* @skb_put(%struct.sk_buff* %70, i32 %72)
  %74 = getelementptr inbounds %struct.nci_ctrl_hdr, %struct.nci_ctrl_hdr* %7, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @i2c_master_recv(%struct.TYPE_4__* %68, i32* %73, i32 %75)
  store i32 %76, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = getelementptr inbounds %struct.nci_ctrl_hdr, %struct.nci_ctrl_hdr* %7, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = icmp ne i32 %77, %79
  br i1 %80, label %81, label %95

81:                                               ; preds = %65
  %82 = load %struct.nfcmrvl_i2c_drv_data*, %struct.nfcmrvl_i2c_drv_data** %4, align 8
  %83 = getelementptr inbounds %struct.nfcmrvl_i2c_drv_data, %struct.nfcmrvl_i2c_drv_data* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i32, i32* %6, align 4
  %87 = getelementptr inbounds %struct.nci_ctrl_hdr, %struct.nci_ctrl_hdr* %7, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i32*, i8*, ...) @nfc_err(i32* %85, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %86, i32 %88)
  %90 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %90, align 8
  %92 = call i32 @kfree_skb(%struct.sk_buff* %91)
  %93 = load i32, i32* @EBADMSG, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %97

95:                                               ; preds = %65
  br label %96

96:                                               ; preds = %95, %57
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %96, %81, %54, %30, %17
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i32 @i2c_master_recv(%struct.TYPE_4__*, i32*, i32) #1

declare dso_local i32 @nfc_err(i32*, i8*, ...) #1

declare dso_local %struct.sk_buff* @nci_skb_alloc(i32, i32, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, %struct.nci_ctrl_hdr*, i32) #1

declare dso_local i32* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
