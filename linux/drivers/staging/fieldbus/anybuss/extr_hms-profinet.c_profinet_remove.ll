; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_hms-profinet.c_profinet_remove.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/fieldbus/anybuss/extr_hms-profinet.c_profinet_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.anybuss_client = type { i32 }
%struct.profi_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.anybuss_client*)* @profinet_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @profinet_remove(%struct.anybuss_client* %0) #0 {
  %2 = alloca %struct.anybuss_client*, align 8
  %3 = alloca %struct.profi_priv*, align 8
  store %struct.anybuss_client* %0, %struct.anybuss_client** %2, align 8
  %4 = load %struct.anybuss_client*, %struct.anybuss_client** %2, align 8
  %5 = call %struct.profi_priv* @anybuss_get_drvdata(%struct.anybuss_client* %4)
  store %struct.profi_priv* %5, %struct.profi_priv** %3, align 8
  %6 = load %struct.profi_priv*, %struct.profi_priv** %3, align 8
  %7 = getelementptr inbounds %struct.profi_priv, %struct.profi_priv* %6, i32 0, i32 0
  %8 = call i32 @fieldbus_dev_unregister(i32* %7)
  ret i32 0
}

declare dso_local %struct.profi_priv* @anybuss_get_drvdata(%struct.anybuss_client*) #1

declare dso_local i32 @fieldbus_dev_unregister(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
