; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_do_synchronize_cache.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_do_synchronize_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_common = type { %struct.fsg_lun* }
%struct.fsg_lun = type { i32 }

@SS_WRITE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsg_common*)* @do_synchronize_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_synchronize_cache(%struct.fsg_common* %0) #0 {
  %2 = alloca %struct.fsg_common*, align 8
  %3 = alloca %struct.fsg_lun*, align 8
  %4 = alloca i32, align 4
  store %struct.fsg_common* %0, %struct.fsg_common** %2, align 8
  %5 = load %struct.fsg_common*, %struct.fsg_common** %2, align 8
  %6 = getelementptr inbounds %struct.fsg_common, %struct.fsg_common* %5, i32 0, i32 0
  %7 = load %struct.fsg_lun*, %struct.fsg_lun** %6, align 8
  store %struct.fsg_lun* %7, %struct.fsg_lun** %3, align 8
  %8 = load %struct.fsg_lun*, %struct.fsg_lun** %3, align 8
  %9 = call i32 @fsg_lun_fsync_sub(%struct.fsg_lun* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %1
  %13 = load i32, i32* @SS_WRITE_ERROR, align 4
  %14 = load %struct.fsg_lun*, %struct.fsg_lun** %3, align 8
  %15 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  br label %16

16:                                               ; preds = %12, %1
  ret i32 0
}

declare dso_local i32 @fsg_lun_fsync_sub(%struct.fsg_lun*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
