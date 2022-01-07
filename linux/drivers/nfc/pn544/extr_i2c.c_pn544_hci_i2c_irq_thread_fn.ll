; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn544/extr_i2c.c_pn544_hci_i2c_irq_thread_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn544/extr_i2c.c_pn544_hci_i2c_irq_thread_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn544_i2c_phy = type { i32, i64, i32, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32, i32 }
%struct.sk_buff = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"IRQ\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@PN544_FW_MODE = common dso_local global i64 0, align 8
@EREMOTEIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pn544_hci_i2c_irq_thread_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn544_hci_i2c_irq_thread_fn(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pn544_i2c_phy*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.pn544_i2c_phy*
  store %struct.pn544_i2c_phy* %11, %struct.pn544_i2c_phy** %6, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  %12 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %6, align 8
  %13 = icmp ne %struct.pn544_i2c_phy* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %6, align 8
  %17 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %16, i32 0, i32 5
  %18 = load %struct.i2c_client*, %struct.i2c_client** %17, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %15, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %14, %2
  %23 = call i32 @WARN_ON_ONCE(i32 1)
  %24 = load i32, i32* @IRQ_NONE, align 4
  store i32 %24, i32* %3, align 4
  br label %89

25:                                               ; preds = %14
  %26 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %6, align 8
  %27 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %26, i32 0, i32 5
  %28 = load %struct.i2c_client*, %struct.i2c_client** %27, align 8
  store %struct.i2c_client* %28, %struct.i2c_client** %7, align 8
  %29 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 1
  %31 = call i32 @dev_dbg(i32* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %6, align 8
  %33 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %37, i32* %3, align 4
  br label %89

38:                                               ; preds = %25
  %39 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %6, align 8
  %40 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @PN544_FW_MODE, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %52

44:                                               ; preds = %38
  %45 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %6, align 8
  %46 = call i32 @pn544_hci_i2c_fw_read_status(%struct.pn544_i2c_phy* %45)
  %47 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %6, align 8
  %48 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 8
  %49 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %6, align 8
  %50 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %49, i32 0, i32 3
  %51 = call i32 @schedule_work(i32* %50)
  br label %87

52:                                               ; preds = %38
  %53 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %6, align 8
  %54 = call i32 @pn544_hci_i2c_read(%struct.pn544_i2c_phy* %53, %struct.sk_buff** %8)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* @EREMOTEIO, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %52
  %60 = load i32, i32* %9, align 4
  %61 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %6, align 8
  %62 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %6, align 8
  %64 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @nfc_hci_recv_frame(i32 %65, %struct.sk_buff* null)
  %67 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %67, i32* %3, align 4
  br label %89

68:                                               ; preds = %52
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %78, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @EBADMSG, align 4
  %76 = sub nsw i32 0, %75
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %73, %68
  %79 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %79, i32* %3, align 4
  br label %89

80:                                               ; preds = %73
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.pn544_i2c_phy*, %struct.pn544_i2c_phy** %6, align 8
  %83 = getelementptr inbounds %struct.pn544_i2c_phy, %struct.pn544_i2c_phy* %82, i32 0, i32 2
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %86 = call i32 @nfc_hci_recv_frame(i32 %84, %struct.sk_buff* %85)
  br label %87

87:                                               ; preds = %81, %44
  %88 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %87, %78, %59, %36, %22
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @pn544_hci_i2c_fw_read_status(%struct.pn544_i2c_phy*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @pn544_hci_i2c_read(%struct.pn544_i2c_phy*, %struct.sk_buff**) #1

declare dso_local i32 @nfc_hci_recv_frame(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
