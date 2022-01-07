; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss.c_iss_disable_interrupts.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss.c_iss_disable_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_device = type { i64* }

@OMAP4_ISS_MEM_ISP_SYS1 = common dso_local global i64 0, align 8
@OMAP4_ISS_MEM_TOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iss_device*)* @iss_disable_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iss_disable_interrupts(%struct.iss_device* %0) #0 {
  %2 = alloca %struct.iss_device*, align 8
  store %struct.iss_device* %0, %struct.iss_device** %2, align 8
  %3 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %4 = getelementptr inbounds %struct.iss_device, %struct.iss_device* %3, i32 0, i32 0
  %5 = load i64*, i64** %4, align 8
  %6 = load i64, i64* @OMAP4_ISS_MEM_ISP_SYS1, align 8
  %7 = getelementptr inbounds i64, i64* %5, i64 %6
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %12 = call i32 @omap4iss_isp_disable_interrupts(%struct.iss_device* %11)
  br label %13

13:                                               ; preds = %10, %1
  %14 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %15 = load i32, i32* @OMAP4_ISS_MEM_TOP, align 4
  %16 = call i32 @ISS_HL_IRQENABLE_CLR(i32 5)
  %17 = call i32 @iss_reg_write(%struct.iss_device* %14, i32 %15, i32 %16, i32 -1)
  ret void
}

declare dso_local i32 @omap4iss_isp_disable_interrupts(%struct.iss_device*) #1

declare dso_local i32 @iss_reg_write(%struct.iss_device*, i32, i32, i32) #1

declare dso_local i32 @ISS_HL_IRQENABLE_CLR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
