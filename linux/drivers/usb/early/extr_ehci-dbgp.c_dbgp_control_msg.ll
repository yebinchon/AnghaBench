; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/early/extr_ehci-dbgp.c_dbgp_control_msg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/early/extr_ehci-dbgp.c_dbgp_control_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.usb_ctrlrequest = type { i32, i32, i8*, i8*, i8* }

@USB_DIR_IN = common dso_local global i32 0, align 4
@DBGP_MAX_PACKET = common dso_local global i32 0, align 4
@USB_PID_DATA0 = common dso_local global i32 0, align 4
@USB_PID_SETUP = common dso_local global i32 0, align 4
@ehci_debug = common dso_local global %struct.TYPE_2__* null, align 8
@DBGP_OUT = common dso_local global i32 0, align 4
@DBGP_GO = common dso_local global i32 0, align 4
@DBGP_LOOPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32, i32, i8*, i32)* @dbgp_control_msg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbgp_control_msg(i32 %0, i32 %1, i32 %2, i32 %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.usb_ctrlrequest, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @USB_DIR_IN, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %20, align 4
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* %20, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %7
  %31 = load i32, i32* @DBGP_MAX_PACKET, align 4
  br label %33

32:                                               ; preds = %7
  br label %33

33:                                               ; preds = %32, %30
  %34 = phi i32 [ %31, %30 ], [ 0, %32 ]
  %35 = icmp sgt i32 %27, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 -1, i32* %8, align 4
  br label %89

37:                                               ; preds = %33
  %38 = load i32, i32* %10, align 4
  %39 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %19, i32 0, i32 0
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* %11, align 4
  %41 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %19, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* %12, align 4
  %43 = call i8* @cpu_to_le16(i32 %42)
  %44 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %19, i32 0, i32 4
  store i8* %43, i8** %44, align 8
  %45 = load i32, i32* %13, align 4
  %46 = call i8* @cpu_to_le16(i32 %45)
  %47 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %19, i32 0, i32 3
  store i8* %46, i8** %47, align 8
  %48 = load i32, i32* %15, align 4
  %49 = call i8* @cpu_to_le16(i32 %48)
  %50 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %19, i32 0, i32 2
  store i8* %49, i8** %50, align 8
  %51 = load i32, i32* @USB_PID_DATA0, align 4
  %52 = load i32, i32* @USB_PID_SETUP, align 4
  %53 = call i32 @DBGP_PID_SET(i32 %51, i32 %52)
  store i32 %53, i32* %16, align 4
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @DBGP_EPADDR(i32 %54, i32 0)
  store i32 %55, i32* %17, align 4
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehci_debug, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = call i32 @readl(i32* %57)
  store i32 %58, i32* %18, align 4
  %59 = load i32, i32* %18, align 4
  %60 = call i32 @dbgp_len_update(i32 %59, i32 32)
  store i32 %60, i32* %18, align 4
  %61 = load i32, i32* @DBGP_OUT, align 4
  %62 = load i32, i32* %18, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %18, align 4
  %64 = load i32, i32* @DBGP_GO, align 4
  %65 = load i32, i32* %18, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %18, align 4
  %67 = call i32 @dbgp_set_data(%struct.usb_ctrlrequest* %19, i32 32)
  %68 = load i32, i32* %17, align 4
  %69 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehci_debug, align 8
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  %71 = call i32 @writel(i32 %68, i32* %70)
  %72 = load i32, i32* %16, align 4
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehci_debug, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = call i32 @writel(i32 %72, i32* %74)
  %76 = load i32, i32* %18, align 4
  %77 = load i32, i32* @DBGP_LOOPS, align 4
  %78 = call i32 @dbgp_wait_until_done(i32 %76, i32 %77)
  store i32 %78, i32* %21, align 4
  %79 = load i32, i32* %21, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %37
  %82 = load i32, i32* %21, align 4
  store i32 %82, i32* %8, align 4
  br label %89

83:                                               ; preds = %37
  %84 = load i32, i32* %9, align 4
  %85 = load i8*, i8** %14, align 8
  %86 = load i32, i32* %15, align 4
  %87 = load i32, i32* @DBGP_LOOPS, align 4
  %88 = call i32 @dbgp_bulk_read(i32 %84, i32 0, i8* %85, i32 %86, i32 %87)
  store i32 %88, i32* %8, align 4
  br label %89

89:                                               ; preds = %83, %81, %36
  %90 = load i32, i32* %8, align 4
  ret i32 %90
}

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @DBGP_PID_SET(i32, i32) #1

declare dso_local i32 @DBGP_EPADDR(i32, i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @dbgp_len_update(i32, i32) #1

declare dso_local i32 @dbgp_set_data(%struct.usb_ctrlrequest*, i32) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @dbgp_wait_until_done(i32, i32) #1

declare dso_local i32 @dbgp_bulk_read(i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
