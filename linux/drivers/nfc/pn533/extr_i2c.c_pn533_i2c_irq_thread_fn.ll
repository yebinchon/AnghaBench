; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_i2c.c_pn533_i2c_irq_thread_fn.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/pn533/extr_i2c.c_pn533_i2c_irq_thread_fn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pn533_i2c_phy = type { i32, i32, i32, %struct.i2c_client* }
%struct.i2c_client = type { i32, i32 }
%struct.sk_buff = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"IRQ\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@EREMOTEIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBADMSG = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @pn533_i2c_irq_thread_fn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pn533_i2c_irq_thread_fn(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.pn533_i2c_phy*, align 8
  %7 = alloca %struct.i2c_client*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.pn533_i2c_phy*
  store %struct.pn533_i2c_phy* %11, %struct.pn533_i2c_phy** %6, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %8, align 8
  %12 = load %struct.pn533_i2c_phy*, %struct.pn533_i2c_phy** %6, align 8
  %13 = icmp ne %struct.pn533_i2c_phy* %12, null
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.pn533_i2c_phy*, %struct.pn533_i2c_phy** %6, align 8
  %17 = getelementptr inbounds %struct.pn533_i2c_phy, %struct.pn533_i2c_phy* %16, i32 0, i32 3
  %18 = load %struct.i2c_client*, %struct.i2c_client** %17, align 8
  %19 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %15, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %14, %2
  %23 = call i32 @WARN_ON_ONCE(i32 1)
  %24 = load i32, i32* @IRQ_NONE, align 4
  store i32 %24, i32* %3, align 4
  br label %87

25:                                               ; preds = %14
  %26 = load %struct.pn533_i2c_phy*, %struct.pn533_i2c_phy** %6, align 8
  %27 = getelementptr inbounds %struct.pn533_i2c_phy, %struct.pn533_i2c_phy* %26, i32 0, i32 3
  %28 = load %struct.i2c_client*, %struct.i2c_client** %27, align 8
  store %struct.i2c_client* %28, %struct.i2c_client** %7, align 8
  %29 = load %struct.i2c_client*, %struct.i2c_client** %7, align 8
  %30 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %29, i32 0, i32 1
  %31 = call i32 @dev_dbg(i32* %30, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %32 = load %struct.pn533_i2c_phy*, %struct.pn533_i2c_phy** %6, align 8
  %33 = getelementptr inbounds %struct.pn533_i2c_phy, %struct.pn533_i2c_phy* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %37, i32* %3, align 4
  br label %87

38:                                               ; preds = %25
  %39 = load %struct.pn533_i2c_phy*, %struct.pn533_i2c_phy** %6, align 8
  %40 = call i32 @pn533_i2c_read(%struct.pn533_i2c_phy* %39, %struct.sk_buff** %8)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @EREMOTEIO, align 4
  %43 = sub nsw i32 0, %42
  %44 = icmp eq i32 %41, %43
  br i1 %44, label %45, label %56

45:                                               ; preds = %38
  %46 = load i32, i32* %9, align 4
  %47 = load %struct.pn533_i2c_phy*, %struct.pn533_i2c_phy** %6, align 8
  %48 = getelementptr inbounds %struct.pn533_i2c_phy, %struct.pn533_i2c_phy* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load %struct.pn533_i2c_phy*, %struct.pn533_i2c_phy** %6, align 8
  %50 = getelementptr inbounds %struct.pn533_i2c_phy, %struct.pn533_i2c_phy* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @EREMOTEIO, align 4
  %53 = sub nsw i32 0, %52
  %54 = call i32 @pn533_recv_frame(i32 %51, %struct.sk_buff* null, i32 %53)
  %55 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %55, i32* %3, align 4
  br label %87

56:                                               ; preds = %38
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  %60 = icmp eq i32 %57, %59
  br i1 %60, label %71, label %61

61:                                               ; preds = %56
  %62 = load i32, i32* %9, align 4
  %63 = load i32, i32* @EBADMSG, align 4
  %64 = sub nsw i32 0, %63
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %71, label %66

66:                                               ; preds = %61
  %67 = load i32, i32* %9, align 4
  %68 = load i32, i32* @EBUSY, align 4
  %69 = sub nsw i32 0, %68
  %70 = icmp eq i32 %67, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %66, %61, %56
  %72 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %72, i32* %3, align 4
  br label %87

73:                                               ; preds = %66
  br label %74

74:                                               ; preds = %73
  %75 = load %struct.pn533_i2c_phy*, %struct.pn533_i2c_phy** %6, align 8
  %76 = getelementptr inbounds %struct.pn533_i2c_phy, %struct.pn533_i2c_phy* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %74
  %80 = load %struct.pn533_i2c_phy*, %struct.pn533_i2c_phy** %6, align 8
  %81 = getelementptr inbounds %struct.pn533_i2c_phy, %struct.pn533_i2c_phy* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %84 = call i32 @pn533_recv_frame(i32 %82, %struct.sk_buff* %83, i32 0)
  br label %85

85:                                               ; preds = %79, %74
  %86 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %85, %71, %45, %36, %22
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @pn533_i2c_read(%struct.pn533_i2c_phy*, %struct.sk_buff**) #1

declare dso_local i32 @pn533_recv_frame(i32, %struct.sk_buff*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
