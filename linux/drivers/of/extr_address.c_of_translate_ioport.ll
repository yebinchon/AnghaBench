; ModuleID = '/home/carl/AnghaBench/linux/drivers/of/extr_address.c_of_translate_ioport.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/of/extr_address.c_of_translate_ioport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }

@of_get_parent = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"ranges\00", align 1
@OF_BAD_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device_node*, i32*, i64)* @of_translate_ioport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @of_translate_ioport(%struct.device_node* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.device_node*, align 8
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.device_node*, %struct.device_node** %5, align 8
  %12 = load i32, i32* @of_get_parent, align 4
  %13 = load i32*, i32** %6, align 8
  %14 = call i64 @__of_translate_address(%struct.device_node* %11, i32 %12, i32* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), %struct.device_node** %10)
  store i64 %14, i64* %8, align 8
  %15 = load %struct.device_node*, %struct.device_node** %10, align 8
  %16 = icmp ne %struct.device_node* %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %3
  %18 = load %struct.device_node*, %struct.device_node** %10, align 8
  %19 = getelementptr inbounds %struct.device_node, %struct.device_node* %18, i32 0, i32 0
  %20 = load i64, i64* %8, align 8
  %21 = load i64, i64* %7, align 8
  %22 = call i64 @logic_pio_trans_hwaddr(i32* %19, i64 %20, i64 %21)
  store i64 %22, i64* %9, align 8
  %23 = load %struct.device_node*, %struct.device_node** %10, align 8
  %24 = call i32 @of_node_put(%struct.device_node* %23)
  br label %28

25:                                               ; preds = %3
  %26 = load i64, i64* %8, align 8
  %27 = call i64 @pci_address_to_pio(i64 %26)
  store i64 %27, i64* %9, align 8
  br label %28

28:                                               ; preds = %25, %17
  %29 = load i64, i64* %9, align 8
  %30 = icmp eq i64 %29, -1
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = load i64, i64* @OF_BAD_ADDR, align 8
  store i64 %32, i64* %4, align 8
  br label %35

33:                                               ; preds = %28
  %34 = load i64, i64* %9, align 8
  store i64 %34, i64* %4, align 8
  br label %35

35:                                               ; preds = %33, %31
  %36 = load i64, i64* %4, align 8
  ret i64 %36
}

declare dso_local i64 @__of_translate_address(%struct.device_node*, i32, i32*, i8*, %struct.device_node**) #1

declare dso_local i64 @logic_pio_trans_hwaddr(i32*, i64, i64) #1

declare dso_local i32 @of_node_put(%struct.device_node*) #1

declare dso_local i64 @pci_address_to_pio(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
