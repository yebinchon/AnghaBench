; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/olpc/extr_olpc-ec.c_olpc_ec_driver_register.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/olpc/extr_olpc-ec.c_olpc_ec_driver_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.olpc_ec_driver = type { i32 }

@ec_driver = common dso_local global %struct.olpc_ec_driver* null, align 8
@ec_cb_arg = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @olpc_ec_driver_register(%struct.olpc_ec_driver* %0, i8* %1) #0 {
  %3 = alloca %struct.olpc_ec_driver*, align 8
  %4 = alloca i8*, align 8
  store %struct.olpc_ec_driver* %0, %struct.olpc_ec_driver** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.olpc_ec_driver*, %struct.olpc_ec_driver** %3, align 8
  store %struct.olpc_ec_driver* %5, %struct.olpc_ec_driver** @ec_driver, align 8
  %6 = load i8*, i8** %4, align 8
  store i8* %6, i8** @ec_cb_arg, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
