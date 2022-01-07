; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn544/extr_i2c.c_pn544_hci_i2c_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn544/extr_i2c.c_pn544_hci_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn544_i2c_phy = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.sk_buff = type { i64, i32 }

@PN544_HCI_I2C_LLC_MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cannot read len byte\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@PN544_HCI_I2C_LLC_MIN_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"invalid len byte\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"i2c frame read\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pn544_i2c_phy*, %struct.sk_buff**)* @pn544_hci_i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn544_hci_i2c_read(%struct.pn544_i2c_phy* %0, %struct.sk_buff** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pn544_i2c_phy*, align 8
  %5 = alloca %struct.sk_buff**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca i32, align 4
  store %struct.pn544_i2c_phy* %0, %struct.pn544_i2c_phy** %4, align 8
  store %struct.sk_buff** %1, %struct.sk_buff*** %5, align 8
  %12 = load i32, i32* @PN544_HCI_I2C_LLC_MAX_SIZE, align 4
  %13 = sub nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %4, align 8
  %18 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %17, i32 0, i32 0
  %19 = load %struct.i2c_client*, %struct.i2c_client** %18, align 8
  store %struct.i2c_client* %19, %struct.i2c_client** %10, align 8
  %20 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %21 = call i32 @i2c_master_recv(%struct.i2c_client* %20, i32* %7, i32 1)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 1
  br i1 %23, label %24, label %30

24:                                               ; preds = %2
  %25 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %26 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %25, i32 0, i32 0
  %27 = call i32 @nfc_err(i32* %26, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @EREMOTEIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %125

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @PN544_HCI_I2C_LLC_MIN_SIZE, align 4
  %33 = sub nsw i32 %32, 1
  %34 = icmp slt i32 %31, %33
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @PN544_HCI_I2C_LLC_MAX_SIZE, align 4
  %38 = sub nsw i32 %37, 1
  %39 = icmp sgt i32 %36, %38
  br i1 %39, label %40, label %46

40:                                               ; preds = %35, %30
  %41 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %42 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %41, i32 0, i32 0
  %43 = call i32 @nfc_err(i32* %42, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @EBADMSG, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %113

46:                                               ; preds = %35
  %47 = load i32, i32* %7, align 4
  %48 = add nsw i32 1, %47
  %49 = load i32, i32* @GFP_KERNEL, align 4
  %50 = call %struct.sk_buff* @alloc_skb(i32 %48, i32 %49)
  %51 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  store %struct.sk_buff* %50, %struct.sk_buff** %51, align 8
  %52 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %53 = load %struct.sk_buff*, %struct.sk_buff** %52, align 8
  %54 = icmp eq %struct.sk_buff* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %113

58:                                               ; preds = %46
  %59 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %59, align 8
  %61 = load i32, i32* %7, align 4
  %62 = call i32 @skb_put_u8(%struct.sk_buff* %60, i32 %61)
  %63 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %64 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %65 = load %struct.sk_buff*, %struct.sk_buff** %64, align 8
  %66 = load i32, i32* %7, align 4
  %67 = call i32* @skb_put(%struct.sk_buff* %65, i32 %66)
  %68 = load i32, i32* %7, align 4
  %69 = call i32 @i2c_master_recv(%struct.i2c_client* %63, i32* %67, i32 %68)
  store i32 %69, i32* %6, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %70, %71
  br i1 %72, label %73, label %79

73:                                               ; preds = %58
  %74 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %75 = load %struct.sk_buff*, %struct.sk_buff** %74, align 8
  %76 = call i32 @kfree_skb(%struct.sk_buff* %75)
  %77 = load i32, i32* @EREMOTEIO, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %125

79:                                               ; preds = %58
  %80 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %80, align 8
  %82 = call i32 @I2C_DUMP_SKB(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), %struct.sk_buff* %81)
  %83 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %83, align 8
  %85 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %87, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = call i32 @check_crc(i32 %86, i64 %90)
  store i32 %91, i32* %6, align 4
  %92 = load i32, i32* %6, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %100

94:                                               ; preds = %79
  %95 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %96 = load %struct.sk_buff*, %struct.sk_buff** %95, align 8
  %97 = call i32 @kfree_skb(%struct.sk_buff* %96)
  %98 = load i32, i32* @EBADMSG, align 4
  %99 = sub nsw i32 0, %98
  store i32 %99, i32* %6, align 4
  br label %113

100:                                              ; preds = %79
  %101 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %102 = load %struct.sk_buff*, %struct.sk_buff** %101, align 8
  %103 = call i32 @skb_pull(%struct.sk_buff* %102, i32 1)
  %104 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %105 = load %struct.sk_buff*, %struct.sk_buff** %104, align 8
  %106 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %107 = load %struct.sk_buff*, %struct.sk_buff** %106, align 8
  %108 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = sub nsw i64 %109, 2
  %111 = call i32 @skb_trim(%struct.sk_buff* %105, i64 %110)
  %112 = call i32 @usleep_range(i32 3000, i32 6000)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %125

113:                                              ; preds = %94, %55, %40
  %114 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %115 = mul nuw i64 4, %14
  %116 = trunc i64 %115 to i32
  %117 = call i32 @i2c_master_recv(%struct.i2c_client* %114, i32* %16, i32 %116)
  %118 = icmp slt i32 %117, 0
  br i1 %118, label %119, label %122

119:                                              ; preds = %113
  %120 = load i32, i32* @EREMOTEIO, align 4
  %121 = sub nsw i32 0, %120
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %119, %113
  %123 = call i32 @usleep_range(i32 3000, i32 6000)
  %124 = load i32, i32* %6, align 4
  store i32 %124, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %125

125:                                              ; preds = %122, %100, %73, %24
  %126 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %126)
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i32*, i32) #2

declare dso_local i32 @nfc_err(i32*, i8*) #2

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #2

declare dso_local i32 @skb_put_u8(%struct.sk_buff*, i32) #2

declare dso_local i32* @skb_put(%struct.sk_buff*, i32) #2

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #2

declare dso_local i32 @I2C_DUMP_SKB(i8*, %struct.sk_buff*) #2

declare dso_local i32 @check_crc(i32, i64) #2

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #2

declare dso_local i32 @skb_trim(%struct.sk_buff*, i64) #2

declare dso_local i32 @usleep_range(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
