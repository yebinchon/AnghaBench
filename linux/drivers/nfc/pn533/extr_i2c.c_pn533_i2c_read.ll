; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_i2c.c_pn533_i2c_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_i2c.c_pn533_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn533_i2c_phy = type { %struct.TYPE_4__*, %struct.i2c_client* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32*)* }
%struct.i2c_client = type { i32 }
%struct.sk_buff = type { i32* }

@PN533_EXT_FRAME_HEADER_LEN = common dso_local global i32 0, align 4
@PN533_STD_FRAME_MAX_PAYLOAD_LEN = common dso_local global i32 0, align 4
@PN533_STD_FRAME_TAIL_LEN = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"cannot read. r=%d len=%d\0A\00", align 1
@EREMOTEIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"READY flag not set\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pn533_i2c_phy*, %struct.sk_buff**)* @pn533_i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn533_i2c_read(%struct.pn533_i2c_phy* %0, %struct.sk_buff** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pn533_i2c_phy*, align 8
  %5 = alloca %struct.sk_buff**, align 8
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pn533_i2c_phy* %0, %struct.pn533_i2c_phy** %4, align 8
  store %struct.sk_buff** %1, %struct.sk_buff*** %5, align 8
  %9 = load %struct.pn533_i2c_phy*, %struct.pn533_i2c_phy** %4, align 8
  %10 = getelementptr inbounds %struct.pn533_i2c_phy, %struct.pn533_i2c_phy* %9, i32 0, i32 1
  %11 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  store %struct.i2c_client* %11, %struct.i2c_client** %6, align 8
  %12 = load i32, i32* @PN533_EXT_FRAME_HEADER_LEN, align 4
  %13 = load i32, i32* @PN533_STD_FRAME_MAX_PAYLOAD_LEN, align 4
  %14 = add nsw i32 %12, %13
  %15 = load i32, i32* @PN533_STD_FRAME_TAIL_LEN, align 4
  %16 = add nsw i32 %14, %15
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.sk_buff* @alloc_skb(i32 %18, i32 %19)
  %21 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  store %struct.sk_buff* %20, %struct.sk_buff** %21, align 8
  %22 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  %24 = icmp eq %struct.sk_buff* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %87

28:                                               ; preds = %2
  %29 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %30 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %31 = load %struct.sk_buff*, %struct.sk_buff** %30, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @skb_put(%struct.sk_buff* %31, i32 %32)
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @i2c_master_recv(%struct.i2c_client* %29, i32 %33, i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %50

39:                                               ; preds = %28
  %40 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %41 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %40, i32 0, i32 0
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %7, align 4
  %44 = call i32 (i32*, i8*, ...) @nfc_err(i32* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %42, i32 %43)
  %45 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %45, align 8
  %47 = call i32 @kfree_skb(%struct.sk_buff* %46)
  %48 = load i32, i32* @EREMOTEIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %87

50:                                               ; preds = %28
  %51 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %52 = load %struct.sk_buff*, %struct.sk_buff** %51, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  %56 = load i32, i32* %55, align 4
  %57 = and i32 %56, 1
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %68, label %59

59:                                               ; preds = %50
  %60 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %61 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %60, i32 0, i32 0
  %62 = call i32 (i32*, i8*, ...) @nfc_err(i32* %61, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %63 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %63, align 8
  %65 = call i32 @kfree_skb(%struct.sk_buff* %64)
  %66 = load i32, i32* @EBUSY, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %3, align 4
  br label %87

68:                                               ; preds = %50
  %69 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %69, align 8
  %71 = call i32 @skb_pull(%struct.sk_buff* %70, i32 1)
  %72 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %73 = load %struct.sk_buff*, %struct.sk_buff** %72, align 8
  %74 = load %struct.pn533_i2c_phy*, %struct.pn533_i2c_phy** %4, align 8
  %75 = getelementptr inbounds %struct.pn533_i2c_phy, %struct.pn533_i2c_phy* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_3__*, %struct.TYPE_3__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 0
  %80 = load i32 (i32*)*, i32 (i32*)** %79, align 8
  %81 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %82 = load %struct.sk_buff*, %struct.sk_buff** %81, align 8
  %83 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %82, i32 0, i32 0
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 %80(i32* %84)
  %86 = call i32 @skb_trim(%struct.sk_buff* %73, i32 %85)
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %68, %59, %39, %25
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @nfc_err(i32*, i8*, ...) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_trim(%struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
