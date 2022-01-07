; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss.c_omap4iss_flush.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/media/omap4iss/extr_iss.c_omap4iss_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iss_device = type { i32 }

@OMAP4_ISS_MEM_TOP = common dso_local global i32 0, align 4
@ISS_HL_REVISION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iss_device*)* @omap4iss_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap4iss_flush(%struct.iss_device* %0) #0 {
  %2 = alloca %struct.iss_device*, align 8
  store %struct.iss_device* %0, %struct.iss_device** %2, align 8
  %3 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %4 = load i32, i32* @OMAP4_ISS_MEM_TOP, align 4
  %5 = load i32, i32* @ISS_HL_REVISION, align 4
  %6 = call i32 @iss_reg_write(%struct.iss_device* %3, i32 %4, i32 %5, i32 0)
  %7 = load %struct.iss_device*, %struct.iss_device** %2, align 8
  %8 = load i32, i32* @OMAP4_ISS_MEM_TOP, align 4
  %9 = load i32, i32* @ISS_HL_REVISION, align 4
  %10 = call i32 @iss_reg_read(%struct.iss_device* %7, i32 %8, i32 %9)
  ret void
}

declare dso_local i32 @iss_reg_write(%struct.iss_device*, i32, i32, i32) #1

declare dso_local i32 @iss_reg_read(%struct.iss_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
