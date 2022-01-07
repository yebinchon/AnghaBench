; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-smbios-wmi.c_find_b1.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell-smbios-wmi.c_find_b1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dmi_header = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dmi_header*, i8*)* @find_b1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_b1(%struct.dmi_header* %0, i8* %1) #0 {
  %3 = alloca %struct.dmi_header*, align 8
  %4 = alloca i8*, align 8
  store %struct.dmi_header* %0, %struct.dmi_header** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.dmi_header*, %struct.dmi_header** %3, align 8
  %6 = getelementptr inbounds %struct.dmi_header, %struct.dmi_header* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %11 [
    i32 177, label %8
  ]

8:                                                ; preds = %2
  %9 = load %struct.dmi_header*, %struct.dmi_header** %3, align 8
  %10 = call i32 @parse_b1_table(%struct.dmi_header* %9)
  br label %11

11:                                               ; preds = %2, %8
  ret void
}

declare dso_local i32 @parse_b1_table(%struct.dmi_header*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
