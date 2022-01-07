; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_spi.c_st_nci_spi_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_spi.c_st_nci_spi_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.st_nci_spi_phy = type { %struct.TYPE_2__*, %struct.spi_device* }
%struct.TYPE_2__ = type { i64 }
%struct.spi_device = type { i32 }
%struct.spi_transfer = type { i32, i32*, i32 }

@ST_NCI_SPI_MAX_SIZE = common dso_local global i32 0, align 4
@NCI_DATA_HDR_SIZE = common dso_local global i32 0, align 4
@ST_NCI_FRAME_HEADROOM = common dso_local global i32 0, align 4
@ST_NCI_FRAME_TAILROOM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.sk_buff*)* @st_nci_spi_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_nci_spi_write(i8* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.st_nci_spi_phy*, align 8
  %8 = alloca %struct.spi_device*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.spi_transfer, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %14 = load i8*, i8** %4, align 8
  %15 = bitcast i8* %14 to %struct.st_nci_spi_phy*
  store %struct.st_nci_spi_phy* %15, %struct.st_nci_spi_phy** %7, align 8
  %16 = load %struct.st_nci_spi_phy*, %struct.st_nci_spi_phy** %7, align 8
  %17 = getelementptr inbounds %struct.st_nci_spi_phy, %struct.st_nci_spi_phy* %16, i32 0, i32 1
  %18 = load %struct.spi_device*, %struct.spi_device** %17, align 8
  store %struct.spi_device* %18, %struct.spi_device** %8, align 8
  %19 = load i32, i32* @ST_NCI_SPI_MAX_SIZE, align 4
  %20 = load i32, i32* @NCI_DATA_HDR_SIZE, align 4
  %21 = add nsw i32 %19, %20
  %22 = load i32, i32* @ST_NCI_FRAME_HEADROOM, align 4
  %23 = add nsw i32 %21, %22
  %24 = load i32, i32* @ST_NCI_FRAME_TAILROOM, align 4
  %25 = add nsw i32 %23, %24
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %10, align 8
  %28 = alloca i32, i64 %26, align 16
  store i64 %26, i64* %11, align 8
  %29 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 0
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %29, align 8
  %33 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 1
  store i32* %28, i32** %33, align 8
  %34 = getelementptr inbounds %struct.spi_transfer, %struct.spi_transfer* %12, i32 0, i32 2
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %34, align 8
  %38 = load %struct.st_nci_spi_phy*, %struct.st_nci_spi_phy** %7, align 8
  %39 = getelementptr inbounds %struct.st_nci_spi_phy, %struct.st_nci_spi_phy* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %2
  %45 = load %struct.st_nci_spi_phy*, %struct.st_nci_spi_phy** %7, align 8
  %46 = getelementptr inbounds %struct.st_nci_spi_phy, %struct.st_nci_spi_phy* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %88

51:                                               ; preds = %2
  %52 = load %struct.spi_device*, %struct.spi_device** %8, align 8
  %53 = call i32 @spi_sync_transfer(%struct.spi_device* %52, %struct.spi_transfer* %12, i32 1)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %85, label %56

56:                                               ; preds = %51
  %57 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %58 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @GFP_KERNEL, align 4
  %61 = call %struct.sk_buff* @alloc_skb(i32 %59, i32 %60)
  store %struct.sk_buff* %61, %struct.sk_buff** %9, align 8
  %62 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %63 = icmp ne %struct.sk_buff* %62, null
  br i1 %63, label %67, label %64

64:                                               ; preds = %56
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %6, align 4
  br label %86

67:                                               ; preds = %56
  %68 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @skb_put(%struct.sk_buff* %68, i32 %71)
  %73 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %74 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @memcpy(i32 %75, i32* %28, i32 %78)
  %80 = load %struct.st_nci_spi_phy*, %struct.st_nci_spi_phy** %7, align 8
  %81 = getelementptr inbounds %struct.st_nci_spi_phy, %struct.st_nci_spi_phy* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %84 = call i32 @ndlc_recv(%struct.TYPE_2__* %82, %struct.sk_buff* %83)
  br label %85

85:                                               ; preds = %67, %51
  br label %86

86:                                               ; preds = %85, %64
  %87 = load i32, i32* %6, align 4
  store i32 %87, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %88

88:                                               ; preds = %86, %44
  %89 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %89)
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @spi_sync_transfer(%struct.spi_device*, %struct.spi_transfer*, i32) #2

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #2

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #2

declare dso_local i32 @memcpy(i32, i32*, i32) #2

declare dso_local i32 @ndlc_recv(%struct.TYPE_2__*, %struct.sk_buff*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
