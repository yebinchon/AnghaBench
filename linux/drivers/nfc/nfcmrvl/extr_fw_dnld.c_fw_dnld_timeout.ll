; ModuleID = '/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_fw_dnld.c_fw_dnld_timeout.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nfc/nfcmrvl/extr_fw_dnld.c_fw_dnld_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.nfcmrvl_private = type { %struct.TYPE_3__, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.timer_list = type { i32 }

@fw_dnld = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str = private unnamed_addr constant [19 x i8] c"FW loading timeout\00", align 1
@STATE_RESET = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@priv = common dso_local global %struct.nfcmrvl_private* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @fw_dnld_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fw_dnld_timeout(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.nfcmrvl_private*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %4 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %3, align 8
  %5 = ptrtoint %struct.nfcmrvl_private* %4 to i32
  %6 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @fw_dnld, i32 0, i32 0), align 4
  %8 = call %struct.nfcmrvl_private* @from_timer(i32 %5, %struct.timer_list* %6, i32 %7)
  store %struct.nfcmrvl_private* %8, %struct.nfcmrvl_private** %3, align 8
  %9 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %3, align 8
  %10 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @nfc_err(i32 %11, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %13 = load i32, i32* @STATE_RESET, align 4
  %14 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %3, align 8
  %15 = getelementptr inbounds %struct.nfcmrvl_private, %struct.nfcmrvl_private* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store i32 %13, i32* %16, align 4
  %17 = load %struct.nfcmrvl_private*, %struct.nfcmrvl_private** %3, align 8
  %18 = load i32, i32* @ETIMEDOUT, align 4
  %19 = sub nsw i32 0, %18
  %20 = call i32 @fw_dnld_over(%struct.nfcmrvl_private* %17, i32 %19)
  ret void
}

declare dso_local %struct.nfcmrvl_private* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @nfc_err(i32, i8*) #1

declare dso_local i32 @fw_dnld_over(%struct.nfcmrvl_private*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
