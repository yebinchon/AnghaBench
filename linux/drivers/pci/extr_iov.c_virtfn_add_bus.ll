; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/extr_iov.c_virtfn_add_bus.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/extr_iov.c_virtfn_add_bus.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_bus = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.pci_bus* (%struct.pci_bus*, i32)* @virtfn_add_bus to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.pci_bus* @virtfn_add_bus(%struct.pci_bus* %0, i32 %1) #0 {
  %3 = alloca %struct.pci_bus*, align 8
  %4 = alloca %struct.pci_bus*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pci_bus*, align 8
  store %struct.pci_bus* %0, %struct.pci_bus** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %8 = getelementptr inbounds %struct.pci_bus, %struct.pci_bus* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp eq i32 %9, %10
  br i1 %11, label %12, label %14

12:                                               ; preds = %2
  %13 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  store %struct.pci_bus* %13, %struct.pci_bus** %3, align 8
  br label %36

14:                                               ; preds = %2
  %15 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %16 = call i32 @pci_domain_nr(%struct.pci_bus* %15)
  %17 = load i32, i32* %5, align 4
  %18 = call %struct.pci_bus* @pci_find_bus(i32 %16, i32 %17)
  store %struct.pci_bus* %18, %struct.pci_bus** %6, align 8
  %19 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %20 = icmp ne %struct.pci_bus* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %14
  %22 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  store %struct.pci_bus* %22, %struct.pci_bus** %3, align 8
  br label %36

23:                                               ; preds = %14
  %24 = load %struct.pci_bus*, %struct.pci_bus** %4, align 8
  %25 = load i32, i32* %5, align 4
  %26 = call %struct.pci_bus* @pci_add_new_bus(%struct.pci_bus* %24, i32* null, i32 %25)
  store %struct.pci_bus* %26, %struct.pci_bus** %6, align 8
  %27 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %28 = icmp ne %struct.pci_bus* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %23
  store %struct.pci_bus* null, %struct.pci_bus** %3, align 8
  br label %36

30:                                               ; preds = %23
  %31 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @pci_bus_insert_busn_res(%struct.pci_bus* %31, i32 %32, i32 %33)
  %35 = load %struct.pci_bus*, %struct.pci_bus** %6, align 8
  store %struct.pci_bus* %35, %struct.pci_bus** %3, align 8
  br label %36

36:                                               ; preds = %30, %29, %21, %12
  %37 = load %struct.pci_bus*, %struct.pci_bus** %3, align 8
  ret %struct.pci_bus* %37
}

declare dso_local %struct.pci_bus* @pci_find_bus(i32, i32) #1

declare dso_local i32 @pci_domain_nr(%struct.pci_bus*) #1

declare dso_local %struct.pci_bus* @pci_add_new_bus(%struct.pci_bus*, i32*, i32) #1

declare dso_local i32 @pci_bus_insert_busn_res(%struct.pci_bus*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
