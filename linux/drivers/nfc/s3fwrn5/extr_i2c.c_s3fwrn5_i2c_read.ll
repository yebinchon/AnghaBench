; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/s3fwrn5/extr_i2c.c_s3fwrn5_i2c_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/s3fwrn5/extr_i2c.c_s3fwrn5_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s3fwrn5_i2c_phy = type { i32, i32, i32 }
%struct.sk_buff = type { i32 }
%struct.nci_ctrl_hdr = type { i64 }
%struct.s3fwrn5_fw_header = type { i64 }

@S3FWRN5_MODE_NCI = common dso_local global i32 0, align 4
@NCI_CTRL_HDR_SIZE = common dso_local global i64 0, align 8
@S3FWRN5_FW_HDR_SIZE = common dso_local global i64 0, align 8
@EBADMSG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s3fwrn5_i2c_phy*)* @s3fwrn5_i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @s3fwrn5_i2c_read(%struct.s3fwrn5_i2c_phy* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.s3fwrn5_i2c_phy*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca [4 x i8], align 1
  %8 = alloca i32, align 4
  store %struct.s3fwrn5_i2c_phy* %0, %struct.s3fwrn5_i2c_phy** %3, align 8
  %9 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %3, align 8
  %10 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, %struct.s3fwrn5_i2c_phy* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @S3FWRN5_MODE_NCI, align 4
  %13 = icmp eq i32 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i64, i64* @NCI_CTRL_HDR_SIZE, align 8
  br label %18

16:                                               ; preds = %1
  %17 = load i64, i64* @S3FWRN5_FW_HDR_SIZE, align 8
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i64 [ %15, %14 ], [ %17, %16 ]
  store i64 %19, i64* %5, align 8
  %20 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %3, align 8
  %21 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, %struct.s3fwrn5_i2c_phy* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %24 = load i64, i64* %5, align 8
  %25 = call i32 @i2c_master_recv(i32 %22, i8* %23, i64 %24)
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %8, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %18
  %29 = load i32, i32* %8, align 4
  store i32 %29, i32* %2, align 4
  br label %102

30:                                               ; preds = %18
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = load i64, i64* %5, align 8
  %34 = icmp ult i64 %32, %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EBADMSG, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %2, align 4
  br label %102

38:                                               ; preds = %30
  %39 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %3, align 8
  %40 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, %struct.s3fwrn5_i2c_phy* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @S3FWRN5_MODE_NCI, align 4
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %46 = bitcast i8* %45 to %struct.nci_ctrl_hdr*
  %47 = getelementptr inbounds %struct.nci_ctrl_hdr, %struct.nci_ctrl_hdr* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 1
  br label %54

49:                                               ; preds = %38
  %50 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %51 = bitcast i8* %50 to %struct.s3fwrn5_fw_header*
  %52 = getelementptr inbounds %struct.s3fwrn5_fw_header, %struct.s3fwrn5_fw_header* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 1
  br label %54

54:                                               ; preds = %49, %44
  %55 = phi i64 [ %48, %44 ], [ %53, %49 ]
  store i64 %55, i64* %6, align 8
  %56 = load i64, i64* %5, align 8
  %57 = load i64, i64* %6, align 8
  %58 = add i64 %56, %57
  %59 = load i32, i32* @GFP_KERNEL, align 4
  %60 = call %struct.sk_buff* @alloc_skb(i64 %58, i32 %59)
  store %struct.sk_buff* %60, %struct.sk_buff** %4, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %62 = icmp ne %struct.sk_buff* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %54
  %64 = load i32, i32* @ENOMEM, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %102

66:                                               ; preds = %54
  %67 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %68 = getelementptr inbounds [4 x i8], [4 x i8]* %7, i64 0, i64 0
  %69 = load i64, i64* %5, align 8
  %70 = call i32 @skb_put_data(%struct.sk_buff* %67, i8* %68, i64 %69)
  %71 = load i64, i64* %6, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %66
  br label %93

74:                                               ; preds = %66
  %75 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %3, align 8
  %76 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, %struct.s3fwrn5_i2c_phy* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = load i64, i64* %6, align 8
  %80 = call i8* @skb_put(%struct.sk_buff* %78, i64 %79)
  %81 = load i64, i64* %6, align 8
  %82 = call i32 @i2c_master_recv(i32 %77, i8* %80, i64 %81)
  store i32 %82, i32* %8, align 4
  %83 = load i32, i32* %8, align 4
  %84 = sext i32 %83 to i64
  %85 = load i64, i64* %6, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %74
  %88 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %89 = call i32 @kfree_skb(%struct.sk_buff* %88)
  %90 = load i32, i32* @EBADMSG, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %2, align 4
  br label %102

92:                                               ; preds = %74
  br label %93

93:                                               ; preds = %92, %73
  %94 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %3, align 8
  %95 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, %struct.s3fwrn5_i2c_phy* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %98 = load %struct.s3fwrn5_i2c_phy*, %struct.s3fwrn5_i2c_phy** %3, align 8
  %99 = getelementptr inbounds %struct.s3fwrn5_i2c_phy, %struct.s3fwrn5_i2c_phy* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @s3fwrn5_recv_frame(i32 %96, %struct.sk_buff* %97, i32 %100)
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %93, %87, %63, %35, %28
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @i2c_master_recv(i32, i8*, i64) #1

declare dso_local %struct.sk_buff* @alloc_skb(i64, i32) #1

declare dso_local i32 @skb_put_data(%struct.sk_buff*, i8*, i64) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @s3fwrn5_recv_frame(i32, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
