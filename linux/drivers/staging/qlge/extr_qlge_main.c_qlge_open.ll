; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_qlge_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/qlge/extr_qlge_main.c_qlge_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ql_adapter = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @qlge_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qlge_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ql_adapter*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ql_adapter* @netdev_priv(%struct.net_device* %6)
  store %struct.ql_adapter* %7, %struct.ql_adapter** %5, align 8
  %8 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %9 = call i32 @ql_adapter_reset(%struct.ql_adapter* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* %4, align 4
  store i32 %13, i32* %2, align 4
  br label %39

14:                                               ; preds = %1
  %15 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %16 = call i32 @ql_configure_rings(%struct.ql_adapter* %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %39

21:                                               ; preds = %14
  %22 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %23 = call i32 @ql_get_adapter_resources(%struct.ql_adapter* %22)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %35

27:                                               ; preds = %21
  %28 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %29 = call i32 @ql_adapter_up(%struct.ql_adapter* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %35

33:                                               ; preds = %27
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* %2, align 4
  br label %39

35:                                               ; preds = %32, %26
  %36 = load %struct.ql_adapter*, %struct.ql_adapter** %5, align 8
  %37 = call i32 @ql_release_adapter_resources(%struct.ql_adapter* %36)
  %38 = load i32, i32* %4, align 4
  store i32 %38, i32* %2, align 4
  br label %39

39:                                               ; preds = %35, %33, %19, %12
  %40 = load i32, i32* %2, align 4
  ret i32 %40
}

declare dso_local %struct.ql_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ql_adapter_reset(%struct.ql_adapter*) #1

declare dso_local i32 @ql_configure_rings(%struct.ql_adapter*) #1

declare dso_local i32 @ql_get_adapter_resources(%struct.ql_adapter*) #1

declare dso_local i32 @ql_adapter_up(%struct.ql_adapter*) #1

declare dso_local i32 @ql_release_adapter_resources(%struct.ql_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
