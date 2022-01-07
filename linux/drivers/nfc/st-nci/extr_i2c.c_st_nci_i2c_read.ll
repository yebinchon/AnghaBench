; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_i2c.c_st_nci_i2c_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_i2c.c_st_nci_i2c_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_nci_i2c_phy = type { %struct.i2c_client* }
%struct.i2c_client = type { i32 }
%struct.sk_buff = type { i64 }

@ST_NCI_I2C_MAX_SIZE = common dso_local global i32 0, align 4
@ST_NCI_I2C_MIN_SIZE = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"invalid frame len\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_nci_i2c_phy*, %struct.sk_buff**)* @st_nci_i2c_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_nci_i2c_read(%struct.st_nci_i2c_phy* %0, %struct.sk_buff** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.st_nci_i2c_phy*, align 8
  %5 = alloca %struct.sk_buff**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.i2c_client*, align 8
  %11 = alloca i32, align 4
  store %struct.st_nci_i2c_phy* %0, %struct.st_nci_i2c_phy** %4, align 8
  store %struct.sk_buff** %1, %struct.sk_buff*** %5, align 8
  %12 = load i32, i32* @ST_NCI_I2C_MAX_SIZE, align 4
  %13 = zext i32 %12 to i64
  %14 = call i8* @llvm.stacksave()
  store i8* %14, i8** %8, align 8
  %15 = alloca i32, i64 %13, align 16
  store i64 %13, i64* %9, align 8
  %16 = load %struct.st_nci_i2c_phy*, %struct.st_nci_i2c_phy** %4, align 8
  %17 = getelementptr inbounds %struct.st_nci_i2c_phy, %struct.st_nci_i2c_phy* %16, i32 0, i32 0
  %18 = load %struct.i2c_client*, %struct.i2c_client** %17, align 8
  store %struct.i2c_client* %18, %struct.i2c_client** %10, align 8
  %19 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %20 = load i32, i32* @ST_NCI_I2C_MIN_SIZE, align 4
  %21 = call i32 @i2c_master_recv(%struct.i2c_client* %19, i32* %15, i32 %20)
  store i32 %21, i32* %6, align 4
  %22 = load i32, i32* %6, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = call i32 @usleep_range(i32 1000, i32 4000)
  %26 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %27 = load i32, i32* @ST_NCI_I2C_MIN_SIZE, align 4
  %28 = call i32 @i2c_master_recv(%struct.i2c_client* %26, i32* %15, i32 %27)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %24, %2
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @ST_NCI_I2C_MIN_SIZE, align 4
  %32 = icmp ne i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %29
  %34 = load i32, i32* @EREMOTEIO, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %107

36:                                               ; preds = %29
  %37 = getelementptr inbounds i32, i32* %15, i64 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @be16_to_cpu(i32 %38)
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* @ST_NCI_I2C_MAX_SIZE, align 4
  %42 = icmp sgt i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %36
  %44 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %45 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %44, i32 0, i32 0
  %46 = call i32 @nfc_err(i32* %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %47 = load i32, i32* @EBADMSG, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %107

49:                                               ; preds = %36
  %50 = load i32, i32* @ST_NCI_I2C_MIN_SIZE, align 4
  %51 = load i32, i32* %7, align 4
  %52 = add nsw i32 %50, %51
  %53 = load i32, i32* @GFP_KERNEL, align 4
  %54 = call %struct.sk_buff* @alloc_skb(i32 %52, i32 %53)
  %55 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  store %struct.sk_buff* %54, %struct.sk_buff** %55, align 8
  %56 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %56, align 8
  %58 = icmp eq %struct.sk_buff* %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %49
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %107

62:                                               ; preds = %49
  %63 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %63, align 8
  %65 = load i32, i32* @ST_NCI_I2C_MIN_SIZE, align 4
  %66 = call i32 @skb_reserve(%struct.sk_buff* %64, i32 %65)
  %67 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %68 = load %struct.sk_buff*, %struct.sk_buff** %67, align 8
  %69 = load i32, i32* @ST_NCI_I2C_MIN_SIZE, align 4
  %70 = call i32 @skb_put(%struct.sk_buff* %68, i32 %69)
  %71 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %71, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i32, i32* @ST_NCI_I2C_MIN_SIZE, align 4
  %76 = call i32 @memcpy(i64 %74, i32* %15, i32 %75)
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %80, label %79

79:                                               ; preds = %62
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %107

80:                                               ; preds = %62
  %81 = load %struct.i2c_client*, %struct.i2c_client** %10, align 8
  %82 = load i32, i32* %7, align 4
  %83 = call i32 @i2c_master_recv(%struct.i2c_client* %81, i32* %15, i32 %82)
  store i32 %83, i32* %6, align 4
  %84 = load i32, i32* %6, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %80
  %88 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %89 = load %struct.sk_buff*, %struct.sk_buff** %88, align 8
  %90 = call i32 @kfree_skb(%struct.sk_buff* %89)
  %91 = load i32, i32* @EREMOTEIO, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %107

93:                                               ; preds = %80
  %94 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %95 = load %struct.sk_buff*, %struct.sk_buff** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @skb_put(%struct.sk_buff* %95, i32 %96)
  %98 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %99 = load %struct.sk_buff*, %struct.sk_buff** %98, align 8
  %100 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i32, i32* @ST_NCI_I2C_MIN_SIZE, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %101, %103
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @memcpy(i64 %104, i32* %15, i32 %105)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %107

107:                                              ; preds = %93, %87, %79, %59, %43, %33
  %108 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %108)
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @i2c_master_recv(%struct.i2c_client*, i32*, i32) #2

declare dso_local i32 @usleep_range(i32, i32) #2

declare dso_local i32 @be16_to_cpu(i32) #2

declare dso_local i32 @nfc_err(i32*, i8*) #2

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #2

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #2

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #2

declare dso_local i32 @memcpy(i64, i32*, i32) #2

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
