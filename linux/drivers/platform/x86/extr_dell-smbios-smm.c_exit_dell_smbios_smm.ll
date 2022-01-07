; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-smbios-smm.c_exit_dell_smbios_smm.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-smbios-smm.c_exit_dell_smbios_smm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@platform_device = common dso_local global %struct.TYPE_3__* null, align 8
@buffer = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @exit_dell_smbios_smm() #0 {
  %1 = load %struct.TYPE_3__*, %struct.TYPE_3__** @platform_device, align 8
  %2 = icmp ne %struct.TYPE_3__* %1, null
  br i1 %2, label %3, label %11

3:                                                ; preds = %0
  %4 = load %struct.TYPE_3__*, %struct.TYPE_3__** @platform_device, align 8
  %5 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %6 = call i32 @dell_smbios_unregister_device(i32* %5)
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** @platform_device, align 8
  %8 = call i32 @platform_device_unregister(%struct.TYPE_3__* %7)
  %9 = load i64, i64* @buffer, align 8
  %10 = call i32 @free_page(i64 %9)
  br label %11

11:                                               ; preds = %3, %0
  ret void
}

declare dso_local i32 @dell_smbios_unregister_device(i32*) #1

declare dso_local i32 @platform_device_unregister(%struct.TYPE_3__*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
