; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/microread/extr_i2c.c_microread_i2c_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/microread/extr_i2c.c_microread_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.microread_i2c_phy = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.sk_buff = type { i64 }

@MICROREAD_I2C_LLC_MAX_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cannot read len byte\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@MICROREAD_I2C_LLC_MIN_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"invalid len byte\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"cc frame read\00", align 1
@MICROREAD_I2C_FRAME_TAILROOM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.microread_i2c_phy*, %struct.sk_buff**)* @microread_i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @microread_i2c_read(%struct.microread_i2c_phy* %0, %struct.sk_buff** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.microread_i2c_phy*, align 8
  %5 = alloca %struct.sk_buff**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca i32, align 4
  store %struct.microread_i2c_phy* %0, %struct.microread_i2c_phy** %4, align 8
  store %struct.sk_buff** %1, %struct.sk_buff*** %5, align 8
  %12 = load i32, i32* @MICROREAD_I2C_LLC_MAX_SIZE, align 4
  %13 = sub nsw i32 %12, 1
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.microread_i2c_phy*, %struct.microread_i2c_phy** %4, align 8
  %18 = getelementptr inbounds %struct.microread_i2c_phy, %struct.microread_i2c_phy* %17, i32 0, i32 0
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
  br label %118

30:                                               ; preds = %2
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @MICROREAD_I2C_LLC_MIN_SIZE, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %30
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @MICROREAD_I2C_LLC_MAX_SIZE, align 4
  %37 = icmp sgt i32 %35, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %34, %30
  %39 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %40 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %39, i32 0, i32 0
  %41 = call i32 @nfc_err(i32* %40, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %42 = load i32, i32* @EBADMSG, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %6, align 4
  br label %106

44:                                               ; preds = %34
  %45 = load i32, i32* %7, align 4
  %46 = add nsw i32 1, %45
  %47 = load i32, i32* @GFP_KERNEL, align 4
  %48 = call %struct.sk_buff* @alloc_skb(i32 %46, i32 %47)
  %49 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  store %struct.sk_buff* %48, %struct.sk_buff** %49, align 8
  %50 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %51 = load %struct.sk_buff*, %struct.sk_buff** %50, align 8
  %52 = icmp eq %struct.sk_buff* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i32, i32* @ENOMEM, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %106

56:                                               ; preds = %44
  %57 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %58 = load %struct.sk_buff*, %struct.sk_buff** %57, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @skb_put_u8(%struct.sk_buff* %58, i32 %59)
  %61 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %62 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %63 = load %struct.sk_buff*, %struct.sk_buff** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32* @skb_put(%struct.sk_buff* %63, i32 %64)
  %66 = load i32, i32* %7, align 4
  %67 = call i32 @i2c_master_recv(%struct.i2c_client* %61, i32* %65, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = load i32, i32* %7, align 4
  %70 = icmp ne i32 %68, %69
  br i1 %70, label %71, label %77

71:                                               ; preds = %56
  %72 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %72, align 8
  %74 = call i32 @kfree_skb(%struct.sk_buff* %73)
  %75 = load i32, i32* @EREMOTEIO, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %118

77:                                               ; preds = %56
  %78 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %78, align 8
  %80 = call i32 @I2C_DUMP_SKB(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), %struct.sk_buff* %79)
  %81 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %81, align 8
  %83 = call i32 @check_crc(%struct.sk_buff* %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %92

86:                                               ; preds = %77
  %87 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %88 = load %struct.sk_buff*, %struct.sk_buff** %87, align 8
  %89 = call i32 @kfree_skb(%struct.sk_buff* %88)
  %90 = load i32, i32* @EBADMSG, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %6, align 4
  br label %106

92:                                               ; preds = %77
  %93 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %94 = load %struct.sk_buff*, %struct.sk_buff** %93, align 8
  %95 = call i32 @skb_pull(%struct.sk_buff* %94, i32 1)
  %96 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %96, align 8
  %98 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %98, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @MICROREAD_I2C_FRAME_TAILROOM, align 8
  %103 = sub nsw i64 %101, %102
  %104 = call i32 @skb_trim(%struct.sk_buff* %97, i64 %103)
  %105 = call i32 @usleep_range(i32 3000, i32 6000)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %118

106:                                              ; preds = %86, %53, %38
  %107 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %108 = mul nuw i64 4, %14
  %109 = trunc i64 %108 to i32
  %110 = call i32 @i2c_master_recv(%struct.i2c_client* %107, i32* %16, i32 %109)
  %111 = icmp slt i32 %110, 0
  br i1 %111, label %112, label %115

112:                                              ; preds = %106
  %113 = load i32, i32* @EREMOTEIO, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %6, align 4
  br label %115

115:                                              ; preds = %112, %106
  %116 = call i32 @usleep_range(i32 3000, i32 6000)
  %117 = load i32, i32* %6, align 4
  store i32 %117, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %118

118:                                              ; preds = %115, %92, %71, %24
  %119 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %119)
  %120 = load i32, i32* %3, align 4
  ret i32 %120
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

declare dso_local i32 @check_crc(%struct.sk_buff*) #2

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
