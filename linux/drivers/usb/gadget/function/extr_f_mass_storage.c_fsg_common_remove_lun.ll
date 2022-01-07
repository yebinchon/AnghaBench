; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_fsg_common_remove_lun.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_fsg_common_remove_lun.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsg_lun = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @fsg_common_remove_lun(%struct.fsg_lun* %0) #0 {
  %2 = alloca %struct.fsg_lun*, align 8
  store %struct.fsg_lun* %0, %struct.fsg_lun** %2, align 8
  %3 = load %struct.fsg_lun*, %struct.fsg_lun** %2, align 8
  %4 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %3, i32 0, i32 0
  %5 = call i64 @device_is_registered(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load %struct.fsg_lun*, %struct.fsg_lun** %2, align 8
  %9 = getelementptr inbounds %struct.fsg_lun, %struct.fsg_lun* %8, i32 0, i32 0
  %10 = call i32 @device_unregister(i32* %9)
  br label %11

11:                                               ; preds = %7, %1
  %12 = load %struct.fsg_lun*, %struct.fsg_lun** %2, align 8
  %13 = call i32 @fsg_lun_close(%struct.fsg_lun* %12)
  %14 = load %struct.fsg_lun*, %struct.fsg_lun** %2, align 8
  %15 = call i32 @kfree(%struct.fsg_lun* %14)
  ret void
}

declare dso_local i64 @device_is_registered(i32*) #1

declare dso_local i32 @device_unregister(i32*) #1

declare dso_local i32 @fsg_lun_close(%struct.fsg_lun*) #1

declare dso_local i32 @kfree(%struct.fsg_lun*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
