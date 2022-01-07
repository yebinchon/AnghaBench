; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/early/extr_ehci-dbgp.c_dbgp_bulk_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/early/extr_ehci-dbgp.c_dbgp_bulk_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }

@DBGP_MAX_PACKET = common dso_local global i32 0, align 4
@ehci_debug = common dso_local global %struct.TYPE_2__* null, align 8
@USB_PID_IN = common dso_local global i32 0, align 4
@DBGP_OUT = common dso_local global i32 0, align 4
@DBGP_GO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i32, i32)* @dbgp_bulk_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dbgp_bulk_read(i32 %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* %10, align 4
  %17 = load i32, i32* @DBGP_MAX_PACKET, align 4
  %18 = icmp sgt i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %5
  store i32 -1, i32* %6, align 4
  br label %69

20:                                               ; preds = %5
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @DBGP_EPADDR(i32 %21, i32 %22)
  store i32 %23, i32* %13, align 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehci_debug, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = call i32 @readl(i32* %25)
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* @USB_PID_IN, align 4
  %29 = call i32 @dbgp_pid_read_update(i32 %27, i32 %28)
  store i32 %29, i32* %12, align 4
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehci_debug, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = call i32 @readl(i32* %31)
  store i32 %32, i32* %14, align 4
  %33 = load i32, i32* %14, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @dbgp_len_update(i32 %33, i32 %34)
  store i32 %35, i32* %14, align 4
  %36 = load i32, i32* @DBGP_OUT, align 4
  %37 = xor i32 %36, -1
  %38 = load i32, i32* %14, align 4
  %39 = and i32 %38, %37
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* @DBGP_GO, align 4
  %41 = load i32, i32* %14, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %14, align 4
  %43 = load i32, i32* %13, align 4
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehci_debug, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = call i32 @writel(i32 %43, i32* %45)
  %47 = load i32, i32* %12, align 4
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** @ehci_debug, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = call i32 @writel(i32 %47, i32* %49)
  %51 = load i32, i32* %14, align 4
  %52 = load i32, i32* %11, align 4
  %53 = call i32 @dbgp_wait_until_done(i32 %51, i32 %52)
  store i32 %53, i32* %15, align 4
  %54 = load i32, i32* %15, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %58

56:                                               ; preds = %20
  %57 = load i32, i32* %15, align 4
  store i32 %57, i32* %6, align 4
  br label %69

58:                                               ; preds = %20
  %59 = load i32, i32* %10, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp sgt i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %58
  %63 = load i32, i32* %15, align 4
  store i32 %63, i32* %10, align 4
  br label %64

64:                                               ; preds = %62, %58
  %65 = load i8*, i8** %9, align 8
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @dbgp_get_data(i8* %65, i32 %66)
  %68 = load i32, i32* %15, align 4
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %64, %56, %19
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @DBGP_EPADDR(i32, i32) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @dbgp_pid_read_update(i32, i32) #1

declare dso_local i32 @dbgp_len_update(i32, i32) #1

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @dbgp_wait_until_done(i32, i32) #1

declare dso_local i32 @dbgp_get_data(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
