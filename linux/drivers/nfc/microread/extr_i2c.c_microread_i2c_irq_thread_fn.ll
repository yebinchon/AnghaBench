; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/microread/extr_i2c.c_microread_i2c_irq_thread_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/microread/extr_i2c.c_microread_i2c_irq_thread_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.microread_i2c_phy = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.sk_buff = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @microread_i2c_irq_thread_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @microread_i2c_irq_thread_fn(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.microread_i2c_phy*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.microread_i2c_phy*
  store %struct.microread_i2c_phy* %10, %struct.microread_i2c_phy** %6, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  %11 = load %struct.microread_i2c_phy*, %struct.microread_i2c_phy** %6, align 8
  %12 = icmp ne %struct.microread_i2c_phy* %11, null
  br i1 %12, label %13, label %21

13:                                               ; preds = %2
  %14 = load i32, i32* %4, align 4
  %15 = load %struct.microread_i2c_phy*, %struct.microread_i2c_phy** %6, align 8
  %16 = getelementptr inbounds %struct.microread_i2c_phy, %struct.microread_i2c_phy* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %14, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %13, %2
  %22 = call i32 @WARN_ON_ONCE(i32 1)
  %23 = load i32, i32* @IRQ_NONE, align 4
  store i32 %23, i32* %3, align 4
  br label %67

24:                                               ; preds = %13
  %25 = load %struct.microread_i2c_phy*, %struct.microread_i2c_phy** %6, align 8
  %26 = getelementptr inbounds %struct.microread_i2c_phy, %struct.microread_i2c_phy* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %24
  %30 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %30, i32* %3, align 4
  br label %67

31:                                               ; preds = %24
  %32 = load %struct.microread_i2c_phy*, %struct.microread_i2c_phy** %6, align 8
  %33 = call i32 @microread_i2c_read(%struct.microread_i2c_phy* %32, %struct.sk_buff** %7)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @EREMOTEIO, align 4
  %36 = sub nsw i32 0, %35
  %37 = icmp eq i32 %34, %36
  br i1 %37, label %38, label %47

38:                                               ; preds = %31
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.microread_i2c_phy*, %struct.microread_i2c_phy** %6, align 8
  %41 = getelementptr inbounds %struct.microread_i2c_phy, %struct.microread_i2c_phy* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.microread_i2c_phy*, %struct.microread_i2c_phy** %6, align 8
  %43 = getelementptr inbounds %struct.microread_i2c_phy, %struct.microread_i2c_phy* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @nfc_hci_recv_frame(i32 %44, %struct.sk_buff* null)
  %46 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %46, i32* %3, align 4
  br label %67

47:                                               ; preds = %31
  %48 = load i32, i32* %8, align 4
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  %51 = icmp eq i32 %48, %50
  br i1 %51, label %57, label %52

52:                                               ; preds = %47
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @EBADMSG, align 4
  %55 = sub nsw i32 0, %54
  %56 = icmp eq i32 %53, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %52, %47
  %58 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %58, i32* %3, align 4
  br label %67

59:                                               ; preds = %52
  br label %60

60:                                               ; preds = %59
  %61 = load %struct.microread_i2c_phy*, %struct.microread_i2c_phy** %6, align 8
  %62 = getelementptr inbounds %struct.microread_i2c_phy, %struct.microread_i2c_phy* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %65 = call i32 @nfc_hci_recv_frame(i32 %63, %struct.sk_buff* %64)
  %66 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %60, %57, %38, %29, %21
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @microread_i2c_read(%struct.microread_i2c_phy*, %struct.sk_buff**) #1

declare dso_local i32 @nfc_hci_recv_frame(i32, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
