; ModuleID = '/home/carl/AnghaBench/linux/drivers/siox/extr_siox.h_siox_master_get_devdata.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/siox/extr_siox.h_siox_master_get_devdata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.siox_master = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.siox_master*)* @siox_master_get_devdata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @siox_master_get_devdata(%struct.siox_master* %0) #0 {
  %2 = alloca %struct.siox_master*, align 8
  store %struct.siox_master* %0, %struct.siox_master** %2, align 8
  %3 = load %struct.siox_master*, %struct.siox_master** %2, align 8
  %4 = getelementptr inbounds %struct.siox_master, %struct.siox_master* %3, i32 0, i32 0
  %5 = call i8* @dev_get_drvdata(i32* %4)
  ret i8* %5
}

declare dso_local i8* @dev_get_drvdata(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
