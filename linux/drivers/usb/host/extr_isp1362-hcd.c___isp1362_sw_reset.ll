; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_isp1362-hcd.c___isp1362_sw_reset.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_isp1362-hcd.c___isp1362_sw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1362_hcd = type { i32 }

@HCSWRES = common dso_local global i32 0, align 4
@HCSWRES_MAGIC = common dso_local global i32 0, align 4
@HCCMDSTAT = common dso_local global i32 0, align 4
@OHCI_HCR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Software reset timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp1362_hcd*)* @__isp1362_sw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__isp1362_sw_reset(%struct.isp1362_hcd* %0) #0 {
  %2 = alloca %struct.isp1362_hcd*, align 8
  %3 = alloca i32, align 4
  store %struct.isp1362_hcd* %0, %struct.isp1362_hcd** %2, align 8
  store i32 20, i32* %3, align 4
  %4 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %5 = load i32, i32* @HCSWRES, align 4
  %6 = load i32, i32* @HCSWRES_MAGIC, align 4
  %7 = call i32 @isp1362_write_reg16(%struct.isp1362_hcd* %4, i32 %5, i32 %6)
  %8 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %9 = load i32, i32* @HCCMDSTAT, align 4
  %10 = load i32, i32* @OHCI_HCR, align 4
  %11 = call i32 @isp1362_write_reg32(%struct.isp1362_hcd* %8, i32 %9, i32 %10)
  br label %12

12:                                               ; preds = %25, %1
  %13 = load i32, i32* %3, align 4
  %14 = add nsw i32 %13, -1
  store i32 %14, i32* %3, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %12
  %17 = call i32 @mdelay(i32 1)
  %18 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %2, align 8
  %19 = load i32, i32* @HCCMDSTAT, align 4
  %20 = call i32 @isp1362_read_reg32(%struct.isp1362_hcd* %18, i32 %19)
  %21 = load i32, i32* @OHCI_HCR, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %16
  br label %26

25:                                               ; preds = %16
  br label %12

26:                                               ; preds = %24, %12
  %27 = load i32, i32* %3, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %26
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %26
  ret void
}

declare dso_local i32 @isp1362_write_reg16(%struct.isp1362_hcd*, i32, i32) #1

declare dso_local i32 @isp1362_write_reg32(%struct.isp1362_hcd*, i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @isp1362_read_reg32(%struct.isp1362_hcd*, i32) #1

declare dso_local i32 @pr_err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
