; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_spi.c_st_nci_irq_thread_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/st-nci/extr_spi.c_st_nci_irq_thread_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.st_nci_spi_phy = type { %struct.TYPE_2__*, %struct.spi_device* }
%struct.TYPE_2__ = type { i32, i64 }
%struct.spi_device = type { i32, i32 }
%struct.sk_buff = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"IRQ\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @st_nci_irq_thread_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @st_nci_irq_thread_fn(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.st_nci_spi_phy*, align 8
  %7 = alloca %struct.spi_device*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.st_nci_spi_phy*
  store %struct.st_nci_spi_phy* %11, %struct.st_nci_spi_phy** %6, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  %12 = load %struct.st_nci_spi_phy*, %struct.st_nci_spi_phy** %6, align 8
  %13 = icmp ne %struct.st_nci_spi_phy* %12, null
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load %struct.st_nci_spi_phy*, %struct.st_nci_spi_phy** %6, align 8
  %16 = getelementptr inbounds %struct.st_nci_spi_phy, %struct.st_nci_spi_phy* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = icmp ne %struct.TYPE_2__* %17, null
  br i1 %18, label %19, label %27

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.st_nci_spi_phy*, %struct.st_nci_spi_phy** %6, align 8
  %22 = getelementptr inbounds %struct.st_nci_spi_phy, %struct.st_nci_spi_phy* %21, i32 0, i32 1
  %23 = load %struct.spi_device*, %struct.spi_device** %22, align 8
  %24 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %20, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %19, %14, %2
  %28 = call i32 @WARN_ON_ONCE(i32 1)
  %29 = load i32, i32* @IRQ_NONE, align 4
  store i32 %29, i32* %3, align 4
  br label %82

30:                                               ; preds = %19
  %31 = load %struct.st_nci_spi_phy*, %struct.st_nci_spi_phy** %6, align 8
  %32 = getelementptr inbounds %struct.st_nci_spi_phy, %struct.st_nci_spi_phy* %31, i32 0, i32 1
  %33 = load %struct.spi_device*, %struct.spi_device** %32, align 8
  store %struct.spi_device* %33, %struct.spi_device** %7, align 8
  %34 = load %struct.spi_device*, %struct.spi_device** %7, align 8
  %35 = getelementptr inbounds %struct.spi_device, %struct.spi_device* %34, i32 0, i32 1
  %36 = call i32 @dev_dbg(i32* %35, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.st_nci_spi_phy*, %struct.st_nci_spi_phy** %6, align 8
  %38 = getelementptr inbounds %struct.st_nci_spi_phy, %struct.st_nci_spi_phy* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %30
  %44 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %44, i32* %3, align 4
  br label %82

45:                                               ; preds = %30
  %46 = load %struct.st_nci_spi_phy*, %struct.st_nci_spi_phy** %6, align 8
  %47 = getelementptr inbounds %struct.st_nci_spi_phy, %struct.st_nci_spi_phy* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %45
  %53 = load %struct.st_nci_spi_phy*, %struct.st_nci_spi_phy** %6, align 8
  %54 = call i32 @st_nci_spi_disable(%struct.st_nci_spi_phy* %53)
  %55 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %55, i32* %3, align 4
  br label %82

56:                                               ; preds = %45
  %57 = load %struct.st_nci_spi_phy*, %struct.st_nci_spi_phy** %6, align 8
  %58 = call i32 @st_nci_spi_read(%struct.st_nci_spi_phy* %57, %struct.sk_buff** %8)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @EREMOTEIO, align 4
  %61 = sub nsw i32 0, %60
  %62 = icmp eq i32 %59, %61
  br i1 %62, label %73, label %63

63:                                               ; preds = %56
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* @ENOMEM, align 4
  %66 = sub nsw i32 0, %65
  %67 = icmp eq i32 %64, %66
  br i1 %67, label %73, label %68

68:                                               ; preds = %63
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @EBADMSG, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %75

73:                                               ; preds = %68, %63, %56
  %74 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %74, i32* %3, align 4
  br label %82

75:                                               ; preds = %68
  %76 = load %struct.st_nci_spi_phy*, %struct.st_nci_spi_phy** %6, align 8
  %77 = getelementptr inbounds %struct.st_nci_spi_phy, %struct.st_nci_spi_phy* %76, i32 0, i32 0
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %80 = call i32 @ndlc_recv(%struct.TYPE_2__* %78, %struct.sk_buff* %79)
  %81 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %75, %73, %52, %43, %27
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @st_nci_spi_disable(%struct.st_nci_spi_phy*) #1

declare dso_local i32 @st_nci_spi_read(%struct.st_nci_spi_phy*, %struct.sk_buff**) #1

declare dso_local i32 @ndlc_recv(%struct.TYPE_2__*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
