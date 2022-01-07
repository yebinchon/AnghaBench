; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-hcd.c_isp1760_hub_status_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/isp1760/extr_isp1760-hcd.c_isp1760_hub_status_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { i32, i32 }
%struct.isp1760_hcd = type { i32, i32 }

@PORT_CSC = common dso_local global i32 0, align 4
@HC_PORTSC1 = common dso_local global i32 0, align 4
@PORT_OWNER = common dso_local global i32 0, align 4
@PORT_RESUME = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@STS_PCD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_hcd*, i8*)* @isp1760_hub_status_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @isp1760_hub_status_data(%struct.usb_hcd* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.isp1760_hcd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.usb_hcd* %0, %struct.usb_hcd** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %13 = call %struct.isp1760_hcd* @hcd_to_priv(%struct.usb_hcd* %12)
  store %struct.isp1760_hcd* %13, %struct.isp1760_hcd** %6, align 8
  store i32 0, i32* %8, align 4
  store i32 1, i32* %10, align 4
  %14 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %15 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @HC_IS_RUNNING(i32 %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %92

20:                                               ; preds = %2
  %21 = load i8*, i8** %5, align 8
  %22 = getelementptr inbounds i8, i8* %21, i64 0
  store i8 0, i8* %22, align 1
  %23 = load i32, i32* @PORT_CSC, align 4
  store i32 %23, i32* %9, align 4
  %24 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %6, align 8
  %25 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %24, i32 0, i32 0
  %26 = load i64, i64* %11, align 8
  %27 = call i32 @spin_lock_irqsave(i32* %25, i64 %26)
  %28 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %29 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @HC_PORTSC1, align 4
  %32 = call i32 @reg_read32(i32 %30, i32 %31)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @PORT_OWNER, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %54

37:                                               ; preds = %20
  %38 = load i32, i32* %7, align 4
  %39 = load i32, i32* @PORT_CSC, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %53

42:                                               ; preds = %37
  %43 = load i32, i32* @PORT_CSC, align 4
  %44 = xor i32 %43, -1
  %45 = load i32, i32* %7, align 4
  %46 = and i32 %45, %44
  store i32 %46, i32* %7, align 4
  %47 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %48 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @HC_PORTSC1, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 @reg_write32(i32 %49, i32 %50, i32 %51)
  br label %80

53:                                               ; preds = %37
  br label %54

54:                                               ; preds = %53, %20
  %55 = load i32, i32* %7, align 4
  %56 = load i32, i32* %9, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %71, label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @PORT_RESUME, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %79

64:                                               ; preds = %59
  %65 = load i32, i32* @jiffies, align 4
  %66 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %6, align 8
  %67 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @time_after_eq(i32 %65, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %79

71:                                               ; preds = %64, %54
  %72 = load i8*, i8** %5, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 0
  %74 = load i8, i8* %73, align 1
  %75 = sext i8 %74 to i32
  %76 = or i32 %75, 2
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %73, align 1
  %78 = load i32, i32* @STS_PCD, align 4
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %71, %64, %59
  br label %80

80:                                               ; preds = %79, %42
  %81 = load %struct.isp1760_hcd*, %struct.isp1760_hcd** %6, align 8
  %82 = getelementptr inbounds %struct.isp1760_hcd, %struct.isp1760_hcd* %81, i32 0, i32 0
  %83 = load i64, i64* %11, align 8
  %84 = call i32 @spin_unlock_irqrestore(i32* %82, i64 %83)
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %80
  %88 = load i32, i32* %10, align 4
  br label %90

89:                                               ; preds = %80
  br label %90

90:                                               ; preds = %89, %87
  %91 = phi i32 [ %88, %87 ], [ 0, %89 ]
  store i32 %91, i32* %3, align 4
  br label %92

92:                                               ; preds = %90, %19
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local %struct.isp1760_hcd* @hcd_to_priv(%struct.usb_hcd*) #1

declare dso_local i32 @HC_IS_RUNNING(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @reg_read32(i32, i32) #1

declare dso_local i32 @reg_write32(i32, i32, i32) #1

declare dso_local i64 @time_after_eq(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
