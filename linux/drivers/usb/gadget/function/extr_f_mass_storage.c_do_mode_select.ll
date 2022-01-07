; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_do_mode_select.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_do_mode_select.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_common = type { %struct.fsg_lun* }
%struct.fsg_lun = type { i32 }
%struct.fsg_buffhd = type { i32 }

@SS_INVALID_COMMAND = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_common*, %struct.fsg_buffhd*)* @do_mode_select to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_mode_select(%struct.fsg_common* %0, %struct.fsg_buffhd* %1) #0 {
  %3 = alloca %struct.fsg_common*, align 8
  %4 = alloca %struct.fsg_buffhd*, align 8
  %5 = alloca %struct.fsg_lun*, align 8
  store %struct.fsg_common* %0, %struct.fsg_common** %3, align 8
  store %struct.fsg_buffhd* %1, %struct.fsg_buffhd** %4, align 8
  %6 = load %struct.fsg_common*, %struct.fsg_common** %3, align 8
  %7 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %6, i32 0, i32 0
  %8 = load %struct.fsg_lun*, %struct.fsg_lun** %7, align 8
  store %struct.fsg_lun* %8, %struct.fsg_lun** %5, align 8
  %9 = load %struct.fsg_lun*, %struct.fsg_lun** %5, align 8
  %10 = icmp ne %struct.fsg_lun* %9, null
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @SS_INVALID_COMMAND, align 4
  %13 = load %struct.fsg_lun*, %struct.fsg_lun** %5, align 8
  %14 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %13, i32 0, i32 0
  store i32 %12, i32* %14, align 4
  br label %15

15:                                               ; preds = %11, %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  ret i32 %17
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
