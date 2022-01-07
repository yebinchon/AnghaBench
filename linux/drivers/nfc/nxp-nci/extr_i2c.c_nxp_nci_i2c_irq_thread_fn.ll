; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nxp-nci/extr_i2c.c_nxp_nci_i2c_irq_thread_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nxp-nci/extr_i2c.c_nxp_nci_i2c_irq_thread_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nxp_nci_i2c_phy = type { i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32, i32 }
%struct.nxp_nci_info = type { i32, i32 }
%struct.sk_buff = type { i32 }

@EREMOTEIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Read failed with error %d\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @nxp_nci_i2c_irq_thread_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxp_nci_i2c_irq_thread_fn(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.nxp_nci_i2c_phy*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.nxp_nci_info*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.nxp_nci_i2c_phy*
  store %struct.nxp_nci_i2c_phy* %12, %struct.nxp_nci_i2c_phy** %6, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  store i32 0, i32* %10, align 4
  %13 = load %struct.nxp_nci_i2c_phy*, %struct.nxp_nci_i2c_phy** %6, align 8
  %14 = icmp ne %struct.nxp_nci_i2c_phy* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.nxp_nci_i2c_phy*, %struct.nxp_nci_i2c_phy** %6, align 8
  %17 = getelementptr inbounds %struct.nxp_nci_i2c_phy, %struct.nxp_nci_i2c_phy* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %15, %2
  br label %105

21:                                               ; preds = %15
  %22 = load %struct.nxp_nci_i2c_phy*, %struct.nxp_nci_i2c_phy** %6, align 8
  %23 = getelementptr inbounds %struct.nxp_nci_i2c_phy, %struct.nxp_nci_i2c_phy* %22, i32 0, i32 2
  %24 = load %struct.i2c_client*, %struct.i2c_client** %23, align 8
  store %struct.i2c_client* %24, %struct.i2c_client** %7, align 8
  %25 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %26 = icmp ne %struct.i2c_client* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %27, %21
  br label %105

34:                                               ; preds = %27
  %35 = load %struct.nxp_nci_i2c_phy*, %struct.nxp_nci_i2c_phy** %6, align 8
  %36 = getelementptr inbounds %struct.nxp_nci_i2c_phy, %struct.nxp_nci_i2c_phy* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.nxp_nci_info* @nci_get_drvdata(i32 %37)
  store %struct.nxp_nci_info* %38, %struct.nxp_nci_info** %8, align 8
  %39 = load %struct.nxp_nci_info*, %struct.nxp_nci_info** %8, align 8
  %40 = icmp ne %struct.nxp_nci_info* %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  br label %105

42:                                               ; preds = %34
  %43 = load %struct.nxp_nci_info*, %struct.nxp_nci_info** %8, align 8
  %44 = getelementptr inbounds %struct.nxp_nci_info, %struct.nxp_nci_info* %43, i32 0, i32 1
  %45 = call i32 @mutex_lock(i32* %44)
  %46 = load %struct.nxp_nci_i2c_phy*, %struct.nxp_nci_i2c_phy** %6, align 8
  %47 = getelementptr inbounds %struct.nxp_nci_i2c_phy, %struct.nxp_nci_i2c_phy* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  br label %100

51:                                               ; preds = %42
  %52 = load %struct.nxp_nci_info*, %struct.nxp_nci_info** %8, align 8
  %53 = getelementptr inbounds %struct.nxp_nci_info, %struct.nxp_nci_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  switch i32 %54, label %64 [
    i32 128, label %55
    i32 129, label %58
    i32 130, label %61
  ]

55:                                               ; preds = %51
  %56 = load %struct.nxp_nci_i2c_phy*, %struct.nxp_nci_i2c_phy** %6, align 8
  %57 = call i32 @nxp_nci_i2c_nci_read(%struct.nxp_nci_i2c_phy* %56, %struct.sk_buff** %9)
  store i32 %57, i32* %10, align 4
  br label %64

58:                                               ; preds = %51
  %59 = load %struct.nxp_nci_i2c_phy*, %struct.nxp_nci_i2c_phy** %6, align 8
  %60 = call i32 @nxp_nci_i2c_fw_read(%struct.nxp_nci_i2c_phy* %59, %struct.sk_buff** %9)
  store i32 %60, i32* %10, align 4
  br label %64

61:                                               ; preds = %51
  %62 = load i32, i32* @EREMOTEIO, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %51, %61, %58, %55
  %65 = load i32, i32* %10, align 4
  %66 = load i32, i32* @EREMOTEIO, align 4
  %67 = sub nsw i32 0, %66
  %68 = icmp eq i32 %65, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %64
  %70 = load i32, i32* %10, align 4
  %71 = load %struct.nxp_nci_i2c_phy*, %struct.nxp_nci_i2c_phy** %6, align 8
  %72 = getelementptr inbounds %struct.nxp_nci_i2c_phy, %struct.nxp_nci_i2c_phy* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %9, align 8
  br label %82

73:                                               ; preds = %64
  %74 = load i32, i32* %10, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %73
  %77 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %78 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %77, i32 0, i32 1
  %79 = load i32, i32* %10, align 4
  %80 = call i32 @nfc_err(i32* %78, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %79)
  br label %100

81:                                               ; preds = %73
  br label %82

82:                                               ; preds = %81, %69
  %83 = load %struct.nxp_nci_info*, %struct.nxp_nci_info** %8, align 8
  %84 = getelementptr inbounds %struct.nxp_nci_info, %struct.nxp_nci_info* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  switch i32 %85, label %99 [
    i32 128, label %86
    i32 129, label %92
    i32 130, label %98
  ]

86:                                               ; preds = %82
  %87 = load %struct.nxp_nci_i2c_phy*, %struct.nxp_nci_i2c_phy** %6, align 8
  %88 = getelementptr inbounds %struct.nxp_nci_i2c_phy, %struct.nxp_nci_i2c_phy* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %91 = call i32 @nci_recv_frame(i32 %89, %struct.sk_buff* %90)
  br label %99

92:                                               ; preds = %82
  %93 = load %struct.nxp_nci_i2c_phy*, %struct.nxp_nci_i2c_phy** %6, align 8
  %94 = getelementptr inbounds %struct.nxp_nci_i2c_phy, %struct.nxp_nci_i2c_phy* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %97 = call i32 @nxp_nci_fw_recv_frame(i32 %95, %struct.sk_buff* %96)
  br label %99

98:                                               ; preds = %82
  br label %99

99:                                               ; preds = %82, %98, %92, %86
  br label %100

100:                                              ; preds = %99, %76, %50
  %101 = load %struct.nxp_nci_info*, %struct.nxp_nci_info** %8, align 8
  %102 = getelementptr inbounds %struct.nxp_nci_info, %struct.nxp_nci_info* %101, i32 0, i32 1
  %103 = call i32 @mutex_unlock(i32* %102)
  %104 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %104, i32* %3, align 4
  br label %108

105:                                              ; preds = %41, %33, %20
  %106 = call i32 @WARN_ON_ONCE(i32 1)
  %107 = load i32, i32* @IRQ_NONE, align 4
  store i32 %107, i32* %3, align 4
  br label %108

108:                                              ; preds = %105, %100
  %109 = load i32, i32* %3, align 4
  ret i32 %109
}

declare dso_local %struct.nxp_nci_info* @nci_get_drvdata(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nxp_nci_i2c_nci_read(%struct.nxp_nci_i2c_phy*, %struct.sk_buff**) #1

declare dso_local i32 @nxp_nci_i2c_fw_read(%struct.nxp_nci_i2c_phy*, %struct.sk_buff**) #1

declare dso_local i32 @nfc_err(i32*, i8*, i32) #1

declare dso_local i32 @nci_recv_frame(i32, %struct.sk_buff*) #1

declare dso_local i32 @nxp_nci_fw_recv_frame(i32, %struct.sk_buff*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
