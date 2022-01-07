; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_spi.c_st_nci_spi_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_spi.c_st_nci_spi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_nci_spi_phy = type { %struct.TYPE_2__*, %struct.spi_device* }
%struct.TYPE_2__ = type { i32 }
%struct.spi_device = type { i32 }
%struct.sk_buff = type { i32 }
%struct.spi_transfer = type { i32*, i32 }

@ST_NCI_SPI_MAX_SIZE = common dso_local global i32 0, align 4
@ST_NCI_SPI_MIN_SIZE = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"invalid frame len\0A\00", align 1
@EBADMSG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.st_nci_spi_phy*, %struct.sk_buff**)* @st_nci_spi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_nci_spi_read(%struct.st_nci_spi_phy* %0, %struct.sk_buff** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.st_nci_spi_phy*, align 8
  %5 = alloca %struct.sk_buff**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.spi_device*, align 8
  %11 = alloca %struct.spi_transfer, align 8
  %12 = alloca i32, align 4
  store %struct.st_nci_spi_phy* %0, %struct.st_nci_spi_phy** %4, align 8
  store %struct.sk_buff** %1, %struct.sk_buff*** %5, align 8
  %13 = load i32, i32* @ST_NCI_SPI_MAX_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i32, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.st_nci_spi_phy*, %struct.st_nci_spi_phy** %4, align 8
  %18 = getelementptr inbounds %struct.st_nci_spi_phy, %struct.st_nci_spi_phy* %17, i32 0, i32 1
  %19 = load %struct.spi_device*, %struct.spi_device** %18, align 8
  store %struct.spi_device* %19, %struct.spi_device** %10, align 8
  %20 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 0
  store i32* %16, i32** %20, align 8
  %21 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 1
  %22 = load i32, i32* @ST_NCI_SPI_MIN_SIZE, align 4
  store i32 %22, i32* %21, align 8
  %23 = load %struct.spi_device*, %struct.spi_device** %10, align 8
  %24 = call i32 @spi_sync_transfer(%struct.spi_device* %23, %struct.spi_transfer* %11, i32 1)
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %2
  %28 = load i32, i32* @EREMOTEIO, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %104

30:                                               ; preds = %2
  %31 = getelementptr inbounds i32, i32* %16, i64 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @be16_to_cpu(i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @ST_NCI_SPI_MAX_SIZE, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %47

37:                                               ; preds = %30
  %38 = load %struct.spi_device*, %struct.spi_device** %10, align 8
  %39 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %38, i32 0, i32 0
  %40 = call i32 @nfc_err(i32* %39, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.st_nci_spi_phy*, %struct.st_nci_spi_phy** %4, align 8
  %42 = getelementptr inbounds %struct.st_nci_spi_phy, %struct.st_nci_spi_phy* %41, i32 0, i32 0
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  %45 = load i32, i32* @EBADMSG, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %104

47:                                               ; preds = %30
  %48 = load i32, i32* @ST_NCI_SPI_MIN_SIZE, align 4
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %48, %49
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.sk_buff* @alloc_skb(i32 %50, i32 %51)
  %53 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  store %struct.sk_buff* %52, %struct.sk_buff** %53, align 8
  %54 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %54, align 8
  %56 = icmp eq %struct.sk_buff* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %47
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %104

60:                                               ; preds = %47
  %61 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %61, align 8
  %63 = load i32, i32* @ST_NCI_SPI_MIN_SIZE, align 4
  %64 = call i32 @skb_reserve(%struct.sk_buff* %62, i32 %63)
  %65 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %65, align 8
  %67 = load i32, i32* @ST_NCI_SPI_MIN_SIZE, align 4
  %68 = call i32 @skb_put(%struct.sk_buff* %66, i32 %67)
  %69 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %70 = load %struct.sk_buff*, %struct.sk_buff** %69, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ST_NCI_SPI_MIN_SIZE, align 4
  %74 = call i32 @memcpy(i32 %72, i32* %16, i32 %73)
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %60
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %104

78:                                               ; preds = %60
  %79 = load i32, i32* %7, align 4
  %80 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %11, i32 0, i32 1
  store i32 %79, i32* %80, align 8
  %81 = load %struct.spi_device*, %struct.spi_device** %10, align 8
  %82 = call i32 @spi_sync_transfer(%struct.spi_device* %81, %struct.spi_transfer* %11, i32 1)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %91

85:                                               ; preds = %78
  %86 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %86, align 8
  %88 = call i32 @kfree_skb(%struct.sk_buff* %87)
  %89 = load i32, i32* @EREMOTEIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %104

91:                                               ; preds = %78
  %92 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %93 = load %struct.sk_buff*, %struct.sk_buff** %92, align 8
  %94 = load i32, i32* %7, align 4
  %95 = call i32 @skb_put(%struct.sk_buff* %93, i32 %94)
  %96 = load %struct.sk_buff**, %struct.sk_buff*** %5, align 8
  %97 = load %struct.sk_buff*, %struct.sk_buff** %96, align 8
  %98 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @ST_NCI_SPI_MIN_SIZE, align 4
  %101 = add nsw i32 %99, %100
  %102 = load i32, i32* %7, align 4
  %103 = call i32 @memcpy(i32 %101, i32* %16, i32 %102)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %12, align 4
  br label %104

104:                                              ; preds = %91, %85, %77, %57, %37, %27
  %105 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %105)
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @spi_sync_transfer(%struct.spi_device*, %struct.spi_transfer*, i32) #2

declare dso_local i32 @be16_to_cpu(i32) #2

declare dso_local i32 @nfc_err(i32*, i8*) #2

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #2

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #2

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

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
