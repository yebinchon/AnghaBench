; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_..uwbincludespec.h_uwb_ie_drp_set_reason_code.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/wusbcore/extr_..uwbincludespec.h_uwb_ie_drp_set_reason_code.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uwb_ie_drp = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uwb_ie_drp*, i32)* @uwb_ie_drp_set_reason_code to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @uwb_ie_drp_set_reason_code(%struct.uwb_ie_drp* %0, i32 %1) #0 {
  %3 = alloca %struct.uwb_ie_drp*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uwb_ie_drp* %0, %struct.uwb_ie_drp** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %3, align 8
  %7 = getelementptr inbounds %struct.uwb_ie_drp, %struct.uwb_ie_drp* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @le16_to_cpu(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %3, align 8
  %11 = getelementptr inbounds %struct.uwb_ie_drp, %struct.uwb_ie_drp* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, -449
  %14 = load i32, i32* %4, align 4
  %15 = shl i32 %14, 6
  %16 = or i32 %13, %15
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @cpu_to_le16(i32 %17)
  %19 = load %struct.uwb_ie_drp*, %struct.uwb_ie_drp** %3, align 8
  %20 = getelementptr inbounds %struct.uwb_ie_drp, %struct.uwb_ie_drp* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
