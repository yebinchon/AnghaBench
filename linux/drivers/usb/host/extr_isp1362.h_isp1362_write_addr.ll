; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/host/extr_isp1362.h_isp1362_write_addr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/host/extr_isp1362.h_isp1362_write_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.isp1362_hcd = type { i32 }

@DUMMY_DELAY_ACCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.isp1362_hcd*, i32)* @isp1362_write_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isp1362_write_addr(%struct.isp1362_hcd* %0, i32 %1) #0 {
  %3 = alloca %struct.isp1362_hcd*, align 8
  %4 = alloca i32, align 4
  store %struct.isp1362_hcd* %0, %struct.isp1362_hcd** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @REG_ACCESS_TEST(i32 %5)
  %7 = load i32, i32* @DUMMY_DELAY_ACCESS, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @ISP1362_REG_NO(i32 %8)
  %10 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %3, align 8
  %11 = getelementptr inbounds %struct.isp1362_hcd, %struct.isp1362_hcd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @writew(i32 %9, i32 %12)
  %14 = load i32, i32* @DUMMY_DELAY_ACCESS, align 4
  %15 = load %struct.isp1362_hcd*, %struct.isp1362_hcd** %3, align 8
  %16 = call i32 @isp1362_delay(%struct.isp1362_hcd* %15, i32 1)
  ret void
}

declare dso_local i32 @REG_ACCESS_TEST(i32) #1

declare dso_local i32 @writew(i32, i32) #1

declare dso_local i32 @ISP1362_REG_NO(i32) #1

declare dso_local i32 @isp1362_delay(%struct.isp1362_hcd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
